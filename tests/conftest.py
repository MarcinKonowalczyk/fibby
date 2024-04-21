from pathlib import Path
import sys


# Add a command line option to pytest to specify the path to the project root
def pytest_addoption(parser):
    parser.addoption(
        "--dont-test-inplace",
        action="store_true",
        default=False,
        help="Don't test the package in-place",
    )


# Add the project root to the sys.path
def pytest_configure(config):
    if config.getoption("--dont-test-inplace"):
        return
    project_root = Path(__file__).parent.parent
    sys.path.insert(0, str(project_root))
