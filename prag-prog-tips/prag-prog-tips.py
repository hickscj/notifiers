import random
import subprocess
from datetime import datetime

tips_file = "prag-prog-tips.txt"
desc_file = "prag-prog-desc.txt"


def load_text_from_file(file_path):
    """Load strings from a text file"""
    strings = []
    try:
        with open(file_path, "r") as f:
            for line in f:
                line = line[0 : len(line) - 2]
                strings.append(line.strip().replace('"', ""))

    except FileNotFoundError:
        print(f"Error: File {file_path} not found.")

    except Exception as e:
        print(f"Error loading text from file: {e}")

    return strings


def notify():
    """notify via mac os notification"""
    tips = load_text_from_file(tips_file)
    desc = load_text_from_file(desc_file)

    idx = random.randrange(0, len(tips))

    current_date = datetime.now().strftime("%c")

    dialogText = current_date + "\n\n" + tips[idx] + "\n\n" + desc[idx]

    command = [
        "osascript",
        "-e",
        'display dialog "{}"'.format(dialogText),
    ]
    subprocess.run(command)


notify()
