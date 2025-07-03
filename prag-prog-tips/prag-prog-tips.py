import random
import subprocess

tips_file = "prag-prog-tips.txt"
desc_file = "prag-prog-desc.txt"


def load_text_from_file(file_path):
    """Load strings from a text file"""
    strings = []
    try:
        with open(file_path, "r") as f:
            for line in f:
                line = line[0 : len(line) - 1]
                strings.append(line.strip().replace('"', ""))

    except FileNotFoundError:
        print(f"Error: File {file_path} not found.")

    except Exception as e:
        print(f"Error loading text from file: {e}")

    return strings


def notify():
    """notify via mac os notification"""
    # tips = ["first tip"]
    # titles = ["first title"]
    tips = load_text_from_file(tips_file)
    desc = load_text_from_file(desc_file)

    idx = random.randrange(0, len(tips))

    command = [
        "osascript",
        "-e",
        f'tell app "System Events" to display dialog "{tips[idx]}\n{desc[idx]}" with title "Tip"',
    ]
    subprocess.run(command)


notify()
