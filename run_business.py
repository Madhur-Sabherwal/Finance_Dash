#!/usr/bin/env python3
"""Run the business edition straight from a clone (no install needed):  python run_business.py [folder] [options]"""
import sys

from findash.cli import main

if __name__ == "__main__":      # required on Windows: worker processes re-import this file
    main(["business"] + sys.argv[1:])
