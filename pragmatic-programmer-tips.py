import random
import subprocess

tips = [
    ('Care About Your Craft',
     'Why spend your life developing software unless you care about doing it well?'),
    ('Think! About Your Work',
     'Turn off the autopilot and take control. Constantly critique and appraise your work.'),
    ('You Have Agency', "It's your life. Grab hold of it and make it what you want."),
    ("Provide Options, Don't Make Lame Excuses",
     "Don't say it can't be done; explain what can be done."),
    ("Don't Live With Broken Windows",
     "Fix bad designs, wrong decisions, and poor code when you see them."),
    ("Be a Catalyst for Change",
     "You can't force change on people. Instead, show them how the future might be and help them participate in creating it."),
    ("Sign Your Work", "Artisans of an earlier age were proud to sign their work. You should be, too."),
    ("First, Do No Harm", "Failure is inevitable. Make sure no one will suffer because of it.")
]


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