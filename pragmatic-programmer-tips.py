import random
import subprocess

def load_tips_from_file(file_path):
    ''' Load tips from a text file '''
    tips = []
    try:
        with open(file_path, 'r') as f:
            for line in f:
                if '|' in line:
                    title, description = line.strip().split('|', 1)
                    tips.append((title.strip(), description.strip()))
    except FileNotFoundError:
        print(f"Error: File {file_path} not found.")
    except Exception as e:
        print(f"Error loading tips: {e}")
    return tips

tips = load_tips_from_file('pragmatic_programmer_tips.txt')
def notify():
    ''' notify via mac os notification '''
    idx = random.randrange(0, len(tips))
    command = [
        "osascript",
        "-e",
        f'display notification "{tips[idx][1]}" with title "{tips[idx][0]}"'
    ]
    subprocess.run(command)


notify()