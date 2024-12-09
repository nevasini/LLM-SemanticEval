# SCEM (Semantic-Contextual Evaluation Metric)

## Overview

The SCEM (Semantic-Contextual Evaluation Metric) is a novel evaluation method for assessing the quality of generated text in **Summarization**, **Question Answering (QA)**, and **Translation** tasks. Unlike traditional metrics like **BLEU**, **ROUGE**, and **METEOR**, SCEM integrates **semantic similarity**, **compression ratio**, **factual accuracy**, and **coherence** into a single holistic evaluation score.

The project evaluates SCEM across different NLP tasks and compares it to traditional metrics to provide a more comprehensive analysis of text generation quality.

## Tasks Evaluated

- **Summarization**: Generating concise summaries from articles.
- **Question Answering**: Generating answers from a given passage of text.
- **Translation**: Translating text from one language (e.g., English) to another (e.g., French).

## Methodology

SCEM is calculated using the following components:
- **Cosine Similarity**: Measures the semantic similarity between the generated and reference text.
- **Compression Ratio**: Measures how much shorter the generated text is compared to the reference.
- **Factual Accuracy**: Measures how much factual content from the reference is preserved in the generated text.
- **Coherence**: Measures how logically consistent the generated text is.

SCEM is then computed using the formula:

\[
SCEM = \alpha \cdot \text{Cosine Similarity} + \beta \cdot (1 - \text{Compression Ratio}) + \gamma \cdot \text{Factual Accuracy} + \delta \cdot \text{Coherence}
\]

## Getting Started

1. **Install Dependencies**:
   - `nltk`
   - `scikit-learn`
   - `datasets`
   - `bert-score`
   - `torch`

   You can install these dependencies using the following command:

   ```bash
   pip install nltk scikit-learn datasets bert-score torch

2. Load the Dataset: You can load datasets such as CNN/Daily Mail for summarization, SQuAD for question answering, and WMT for translation. Data will be preprocessed to ensure compatibility with SCEM.

3. Run the SCEM Evaluation: The code provides functions to evaluate SCEM scores based on the four components for each task.


```# Load dataset (Example: CNN/Daily Mail for Summarization)
dataset = load_data('cnn_dailymail', task_type='summarization')

# Evaluate SCEM for Summarization
scem_score = evaluate_scem(dataset, task_type='summarization', num_samples=100, weights=weights['summarization'])
print(f"SCEM Score for Summarization: {scem_score:.4f}")```

4. Metrics: SCEM scores are compared with traditional metrics like BLEU, ROUGE, and METEOR for each task.

Results
This project compares SCEM's performance with traditional metrics and highlights its strengths and weaknesses. Visualizations and statistical analysis are included to help understand SCEM's effectiveness in evaluating text generation tasks.

Conclusion
SCEM provides a comprehensive evaluation that combines multiple evaluation aspects (semantic similarity, compression ratio, factual accuracy, and coherence). It offers a more nuanced view of text generation tasks, making it a promising alternative to traditional metrics.
