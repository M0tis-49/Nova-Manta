import os
import sys
from pathlib import Path

import webview


def resource_path(name):
    if getattr(sys, "frozen", False):
        return os.path.join(sys._MEIPASS, name)
    return os.path.join(os.path.dirname(os.path.abspath(__file__)), name)


def main():
    index = Path(resource_path("index.html")).resolve().as_uri()
    webview.create_window(
        "Nova Manta",
        index,
        width=1280,
        height=800,
        min_size=(800, 520),
        resizable=True,
        background_color="#080a0f",
    )
    webview.start()


if __name__ == "__main__":
    main()
