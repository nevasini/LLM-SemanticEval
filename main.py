from src.data_loader import load_data
from src.generate_captions import generate_captions
from src.evaluation import evaluate_captions

def main():
    # Load data
    images, annotations = load_data('data/annotations/captions_train2017.json')

    # Generate captions
    generated_captions = generate_captions(images)

    # Evaluate captions
    scores = evaluate_captions(annotations, generated_captions)
    print(scores)

if __name__ == "__main__":
    main()
