import os
import platform
from pathlib import Path

from pydantic import BaseSettings

class Paths(BaseSettings):
    BASE: Path = Path(__file__).parent.parent.parent
    DATA = BASE / "data"

paths = Paths()
