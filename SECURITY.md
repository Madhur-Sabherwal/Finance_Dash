# Security & privacy

findash is designed to keep your financial data on your computer.

- PDFs are read locally. Results are stored in a local SQLite file (`state.db`) inside the output folder.
- Only **cleaned merchant names** (no amounts, dates or account numbers) go to the search/AI provider you choose when identifying merchants.
- The AI Advisor receives **summary numbers only** (totals, trends, category shares). People are labelled "Partner A/B"; no account numbers or descriptions.
- Text from non-statement documents is **redacted** (tax file numbers, long numbers, emails, phones, names) before it is stored or sent anywhere, and only if you pass `--ai-docs`.
- `--offline` disables every network call. A local OpenAI-compatible server (e.g. Ollama) keeps even the Advisor on your machine.
- **Never commit your output folders, `state.db`, PDFs or API keys.** The provided `.gitignore` excludes them. Put API keys in environment variables, not in files.

Found a vulnerability? Please open a private security advisory on GitHub rather than a public issue.

- The `knowledge/` folder contains merchant names and categories (no amounts or account numbers). It is excluded by `.gitignore`; review it before sharing.
