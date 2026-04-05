#!/usr/bin/env python3
from pathlib import Path
import sys


def require(text: str, needle: str) -> None:
    if needle not in text:
        raise SystemExit(f"missing required text: {needle}")


def main() -> int:
    root = Path(__file__).resolve().parents[1]
    skill = (root / "SKILL.md").read_text()

    ordered_needles = [
        "#### Step 1: Question the requirement",
        "#### Step 2: Delete parts or process",
        "#### Step 3: Simplify and optimize",
        "#### Step 4: Accelerate cycle time",
        "#### Step 5: Automate last",
    ]

    positions = []
    for needle in ordered_needles:
        require(skill, needle)
        positions.append(skill.index(needle))

    if positions != sorted(positions):
        raise SystemExit("step headings are out of order")

    for needle in ["- `Do now`", "- `Do later`", "- `Do not do`"]:
        require(skill, needle)

    print("skill structure check: ok")
    return 0


if __name__ == "__main__":
    sys.exit(main())
