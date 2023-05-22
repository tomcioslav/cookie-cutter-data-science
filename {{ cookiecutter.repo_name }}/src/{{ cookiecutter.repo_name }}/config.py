import os
import platform
from pathlib import Path

from pydantic import BaseSettings


class SystemSettings(BaseSettings):
    GPU_DEVICE: str = "cuda" if platform.system() == "Linux" else "mps"


system_settings = SystemSettings()


class Paths(BaseSettings):
    BASE = Path(os.getcwd())
    DATA = BASE / "data"

paths = Paths()
