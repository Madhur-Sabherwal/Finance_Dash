# Changelog

## 2.0.0
- **Licence keys**: findash only runs with a key issued by the owner (offline, signed). Owner tools in `tools/`.
- **Setup wizard** (`findash setup`): who it's for, profession, goals, risk comfort, PDF folder, AI provider and key (kept out of config.json).
- **Planner** page: financial health score, 10-step roadmap (household and business), net worth from your documents, 12-month cash-flow forecast, growth and loan calculators, key dates.
- **Opportunities** page: rule-based ideas from your own numbers, government support found by web search and kept only with a .gov.au source, strategies to research (never product picks), business growth ideas.
- Installers for Windows / macOS / Linux, proprietary licence, licence revocation list.

## 1.1.0
- If the AI quota runs out, findash asks for another provider; "no"/Enter (or `--no-prompt`) continues without AI and still publishes everything.
- `knowledge/` folder: saved merchant answers and dated tax-rule checks (restorable, shareable via `--knowledge-dir`).
- Built-in starter data: ~240 common Australian merchants and a tax-rules snapshot (clearly labelled as not checked online).
- Tax page falls back to the last online check or the snapshot when verification isn't possible.
- Windows fixes: launcher scripts guarded for multiprocessing; API keys tolerate stray spaces/quotes; zero-quota detection with model fallback.

## 1.0.0
- Two editions: **household** (single person or couple) and **business** (small business).
- Scans every PDF: bank / card / BNPL statements become transactions; ATO notices, income statements, payslips, super, loan,
  investment and insurance documents are classified and their key figures extracted.
- Merchants are identified online by an AI provider's live web search (Gemini, Claude, OpenAI, Perplexity, or any OpenAI-compatible
  server) and only trusted when backed by a source the search really returned - never guessed from the name.
- Australian tax rules are verified online against official .gov.au sources before they are relied on; unverified rules are labelled.
- Multi-page static dashboard, resumable parallel ingestion (10,000+ PDFs), rate-limit aware AI calls with automatic model fallback.
- AI Advisor: why you aren't saving, ideas to save money, household fairness / business profit and cash-flow analysis.
