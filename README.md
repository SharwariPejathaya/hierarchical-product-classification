# Hierarchical Product Classification System

A multi-task learning architecture for e-commerce product attribute prediction using DistilBERT embeddings, GECE hybrid classifier, and hierarchical constraint enforcement.

##  Project Overview

This project addresses the challenge of predicting structured product attributes (hierarchical categories L0-L4 and brand) from unstructured product text in e-commerce catalogs. We developed and compared three distinct approaches:

1. **Hierarchical BERT with Constraint Masking** - End-to-end BERT fine-tuning with inference-time constraint enforcement
2. **GECE Classifier** - Global-local hybrid architecture combining global supervision with local hierarchical constraints
3. **Hierarchical Masked Inference** - Multi-task flat classification with cascaded constraint application

##  Key Results

| Approach | Brand Acc | L0 Acc | L1 Acc | L2 Acc | L3 Acc | L4 Acc | Training Time |
|----------|-----------|--------|--------|--------|--------|--------|---------------|
| Hierarchical BERT | **98.62%** | **97.16%** | **94.81%** | **92.30%** | **88.82%** | **91.57%** | 15 hours |
| GECE Classifier | 93.78% | 91.24% | 89.16% | 88.81% | 86.86% | 90.06% | **20 min** |
| Masked Inference | 95.50% | 92.04% | 87.06% | 83.44% | 79.93% | 84.92% | **20 min** |

### Performance Highlights
-  **98% brand accuracy** with Hierarchical BERT
-  **88-91% hierarchical accuracy** across multiple classification levels
-  **45× inference speedup** through strategic embedding layer freezing
-  **Constraint-based prediction** preventing logically impossible taxonomy paths

##  Technical Architecture

### GECE (Global-local Enhanced Classification with taxonomy Enforcement)

```
Input Text → DistilBERT (768-dim) → Shared MLP (256-dim) → Parallel Heads
                                                              ├── Local Heads (L0, L1, L2, L3, L4, Brand)
                                                              └── Global Head (Full Path)
```

**Key Components:**
- **Multi-task learning** with independent classification heads
- **Hybrid loss function**: `L_total = L_global + L_local`
- **Hierarchical relationship enforcement** via masked inference
- **Precomputed embeddings** for 45× faster training

### Hierarchical BERT Architecture

```
Input → BERT-tiny → [CLS] Token → Multi-Head Classification
                                   ├── L0 Head → Mask L1
                                   ├── L1 Head → Mask L2
                                   ├── L2 Head → Mask L3
                                   ├── L3 Head → Mask L4
                                   ├── L4 Head → Mask Brand
                                   └── Brand Head
```

**Features:**
- **Constraint masking** during inference (L0→L1→L2→L3→L4→Brand)
- **Parent-child taxonomy enforcement** preventing impossible paths
- **Store-brand constraint** mappings
- **End-to-end training** with multi-task loss optimization

##  Dataset

**IndoML Datathon 2024** - E-commerce Product Attribute Prediction

- **Phase 1**: Product titles with 5-level hierarchical categories (L0-L4) + Brand
- **Phase 2**: Receipt-style descriptions with Supergroup/Group/Module + Brand
- **Categories**: L0: 10, L1: 67, L2: 292, L3: 944, L4: 2173
- **Brands**: 4,656 unique brands
- **Input**: Product titles + store information

##  Implementation Details

### Hierarchical BERT
- **Model**: BERT-tiny (4 layers, 128 hidden size, 2 attention heads)
- **Training**: 10 epochs × 1.5 hours = 15 hours total
- **Hardware**: 2× Kaggle T4 GPUs (DataParallel)
- **Optimizer**: Adam with mixed-precision (GradScaler)
- **Batch Size**: 128
- **Learning Rate**: 1e-5

### GECE & Masked Inference
- **Embeddings**: DistilBERT (768-dim, frozen)
- **Shared MLP**: 256-dim representation
- **Training**: 30 epochs in ~20 minutes
- **Optimizer**: Cross-entropy loss per head
- **Efficiency**: Precomputed embeddings eliminate transformer forward passes

##  Key Innovations

1. **Strategic Embedding Freezing**: 45× speedup while maintaining 88-91% accuracy
2. **Hybrid Global-Local Supervision**: Simultaneously optimizes individual attributes and full hierarchical paths
3. **Masked Inference Mechanism**: Enforces parent-child relationships at inference time
4. **Multi-Head Architecture**: Parallel predictions across all hierarchy levels
5. **Constraint-Based Prediction**: Prevents logically impossible category combinations

##  Performance Analysis

### Training Efficiency Trade-offs
- **Hierarchical BERT**: Highest accuracy (88-98%) but 15-hour training
- **GECE/Masked Inference**: Competitive accuracy (80-95%) with 45× faster training
- **Practical Utility**: All models >79% accuracy across all levels

### Architectural Strengths
- **End-to-end BERT**: Best for maximum accuracy scenarios
- **GECE**: Best for rapid prototyping and global path understanding
- **Masked Inference**: Best balance of performance and modularity

##  Repository Structure

```
├── BERT_nlp_final_project.ipynb    # Main implementation notebook
├── FinalProjectReport_NLP.pdf       # Comprehensive project report
├── NLP_Project_Report_Phase_I.pdf   # Initial phase report
├── README.md                         # This file
├── requirements.txt                  # Python dependencies
└── .gitignore                       # Git ignore rules
```

##  Methodology

### Training Phase
1. **Feature Extraction**: BERT/DistilBERT processes product text
2. **Multi-Task Learning**: Parallel optimization of all attribute heads
3. **Loss Computation**: `L = L_L0 + L_L1 + L_L2 + L_L3 + L_L4 + L_brand`

### Inference Phase
1. **Hierarchical Prediction**: Top-down prediction (L0 → L1 → ... → Brand)
2. **Constraint Masking**: Parent predictions restrict child candidate sets
3. **Store Constraints**: Store-specific brand availability filtering

##  References

- Wehrmann et al. (2018) - Hierarchical Multi-Label Classification Networks
- Silla & Freitas (2011) - Local Classifier per Node/Level paradigm
- Cesa-Bianchi et al. (2006) - Training-time hierarchical constraint analysis

##  Academic Context

This project was completed as part of an NLP course (November 2025), focusing on practical applications of transformer-based architectures for structured prediction in e-commerce domains.


```


