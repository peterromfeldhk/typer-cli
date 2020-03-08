import os
import subprocess


def test_script_completion_run():
    result = subprocess.run(
        ["coverage", "run", "-m", "typer_cli"],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        encoding="utf-8",
        env={
            **os.environ,
            "___MAIN__.PY_COMPLETE": "complete-bash",
            "COMP_WORDS": "typer tests/sample.py run hello --",
            "COMP_CWORD": "4",
        },
    )
    assert "--help" in result.stdout
