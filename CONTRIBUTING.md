# Contributing

```bash
git clone <your fork> && cd findash
pip install -r requirements-dev.txt
python -m pytest -q          # ~5 s, uses fictional generated PDFs
python examples/make_demo_data.py demo_data
python run_household.py demo_data/household --offline
python run_business.py  demo_data/business  --offline
```

- Bank layouts differ: if a statement parses badly, add a **redacted** test PDF generator to `examples/` / `tests/` rather than committing real statements.
- Tax data lives in `findash/taxdata.py` (with sources). When a rule changes, update it, the `as at` date, and the tests.
- Never add a rule that guesses what a business is from its name; categories must come from statement wording or from verified web evidence.
- Module order matters (see `docs/ARCHITECTURE.md`); each module star-imports the ones before it.
