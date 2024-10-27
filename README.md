# LLM Evaluation Project

This project develops a novel evaluation metric for Large Language Models (LLMs), addressing limitations in traditional metrics like BLEU, ROUGE, and perplexity.

## Directory Structure
- `data/`: Holds dataset images and annotations.
- `notebooks/`: Contains Jupyter notebooks for exploratory data analysis.
- `src/`: Source code for data loading, caption generation, and metric evaluation.
- `main.py`: Entry point for running the project pipeline.

## Installation

1. Clone the repository:
   ```bash
   git clone <your-repo-url>
   cd llm-eval-project
   ```

2. Build and run the Docker container:
   ```bash
   ./build.sh
   ./run.sh
   ```

## Usage
Run the pipeline using:
```bash
python main.py
