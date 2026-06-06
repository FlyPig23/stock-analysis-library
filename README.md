# Stock Analysis Library

A curated Codex skill library for equity research, stock-theme analysis, political-trade signals, and AI supply-chain bottleneck research.

This repository packages several local Codex skills into one portable project. It is meant for investors, analysts, and AI agents that need repeatable research workflows rather than one-off prompts.

> Research only. Nothing in this repository is financial advice, investment advice, or a recommendation to buy or sell securities.

## What Is Included

| Skill | Best For | Typical User Prompt | Primary Output |
|---|---|---|---|
| `stock-deep-analyzer` | Full individual-stock research for A-share, HK, and US equities | "深度分析 贵州茅台", "Analyze AAPL with DCF", "生成投委会 memo" | HTML report, valuation views, investor-panel scoring, trap checks |
| `serenity-stock-research` | Serenity-style supply-chain chokepoint research and Bayesian thesis updates | "找 AI 供应链瓶颈股", "用 Serenity 框架分析 CRDO" | Thesis, evidence map, prior/posterior updates, risk checks |
| `capital-rotation-stock-analysis` | Sector rotation, theme migration, and portfolio/watchlist rotation | "AI 资金下一步轮动到哪里", "这个回调是估值杀还是逻辑坏了" | Rotation map, stage diagnosis, watch/avoid/rotate labels |
| `us-political-stock-signal-analysis` | U.S. political stock disclosures and policy-linked trade signals | "Trump administration 买了哪些 AI 股票", "国会议员买入和委员会重叠" | Transaction table, role-sector overlap, catalyst timeline, signal score |
| `ai-supply-chain-bottleneck-hunter` | AI/semiconductor/photonics bottleneck mapping before naming stocks | "梳理 CPO 产业链瓶颈", "找数据中心电力的卡点" | Supply-chain stack, bottleneck thesis, evidence ladder, candidate lanes |

## Attribution And Source Notes

Not every skill in this repository is original work. This library is a curated integration of local skills and public/third-party research workflows. The table below summarizes the current source status.

| Skill | Source Status | Notes |
|---|---|---|
| `capital-rotation-stock-analysis` | Original/local skill | Created locally for capital-flow and sector-rotation analysis. |
| `us-political-stock-signal-analysis` | Original/local skill | Created locally by merging the previous U.S. official-trade and congressional-trade signal workflows. |
| `stock-deep-analyzer` | Third-party integration | Integrated from `wbh604/UZI-Skill`, `skills/deep-analysis`, then renamed and packaged here as `stock-deep-analyzer`. |
| `serenity-stock-research` | Public online framework integration | Built around publicly available Serenity/@aleabitoreddit-style research ideas, Bayesian thesis updating, and supply-chain chokepoint analysis. |
| `ai-supply-chain-bottleneck-hunter` | Public online framework integration | Built around public Serenity/Crux-style AI supply-chain bottleneck research patterns and question ladders. |

If attribution needs to be corrected or expanded, update this section and `NOTICE.md` together.

## Skill Selection Guide

Use the library as a router:

1. **Single company, valuation, DCF, full report**
   - Use `stock-deep-analyzer`.
   - Best when the output should be a structured report or investment memo.

2. **One ticker or theme through Serenity / bottleneck logic**
   - Use `serenity-stock-research`.
   - Best when the question starts from a demand wave and asks what hidden dependency captures value.

3. **Market flow, style shift, theme rotation**
   - Use `capital-rotation-stock-analysis`.
   - Best when comparing AI, chips, software, power, optics, crypto-linked equities, or macro-sensitive growth stocks.

4. **Trump, cabinet, Congress, OGE, STOCK Act, Capitol Trades**
   - Use `us-political-stock-signal-analysis`.
   - Best when the signal comes from public political disclosures and needs policy/catalyst interpretation.

5. **AI hardware stack before ticker picking**
   - Use `ai-supply-chain-bottleneck-hunter`.
   - Best when the right answer should begin with supply-chain physics, qualification constraints, or capacity bottlenecks.

## Repository Layout

```text
stock-analysis-library/
├── README.md
├── AGENTS.md
├── LICENSE
├── NOTICE.md
├── skills.json
├── skills/
│   ├── ai-supply-chain-bottleneck-hunter/
│   ├── capital-rotation-stock-analysis/
│   ├── serenity-stock-research/
│   ├── stock-deep-analyzer/
│   └── us-political-stock-signal-analysis/
├── scripts/
│   ├── install.sh
│   └── verify-skills.py
└── docs/
    └── MAINTENANCE.md
```

Each folder under `skills/` is a Codex-compatible skill directory with a `SKILL.md` file. Some skills include `references/`, `assets/`, `personas/`, or Python scripts.

## Installation

### Install Into Codex

From the repository root:

```bash
./scripts/install.sh
```

By default this copies the skills into:

```bash
~/.codex/skills
```

To install somewhere else:

```bash
CODEX_HOME=/path/to/codex ./scripts/install.sh
```

Restart Codex after installation so the new skills are picked up.

### Verify Skill Metadata

```bash
python3 scripts/verify-skills.py
```

The verifier checks:

- every skill directory has `SKILL.md`
- frontmatter includes `name` and `description`
- the frontmatter `name` matches the directory name
- descriptions are not empty

## Using The Skills

After installing and restarting Codex, call skills naturally by task:

```text
用 stock-deep-analyzer 深度分析 贵州茅台
```

```text
用 capital-rotation-stock-analysis 看 AI 资金接下来会不会从算力轮到电力
```

```text
用 us-political-stock-signal-analysis 查最近 Trump / cabinet / Congress 相关的核能股票交易信号
```

```text
用 serenity-stock-research 研究 CRDO 的 Serenity-style bottleneck thesis
```

```text
用 ai-supply-chain-bottleneck-hunter 梳理 CPO 产业链最窄瓶颈
```

## Stock Deep Analyzer Runtime Notes

`stock-deep-analyzer` contains Python scripts and a `requirements.txt`. The repository does not commit virtual environments, caches, generated reports, browser binaries, or downloaded data.

To run it manually:

```bash
cd skills/stock-deep-analyzer
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python -m playwright install chromium
.venv/bin/python run.py 贵州茅台 --no-browser
```

Generated reports are written under:

```text
skills/stock-deep-analyzer/scripts/reports/
```

Those reports are intentionally ignored by git.

## Research Standards

The skills share a few common standards:

- **Use current data.** Prices, filings, disclosures, earnings calendars, and policy catalysts change.
- **Prefer primary sources.** Company filings, earnings calls, official disclosures, agency releases, and original PDFs outrank secondary summaries.
- **Separate facts from inference.** Label evidence, estimates, speculation, and scenario analysis clearly.
- **Avoid false precision.** Political disclosures often use amount ranges; valuation models depend on assumptions.
- **No blind copy-trading.** Political trades, influencer mentions, or sector momentum are inputs, not automatic actions.
- **No illegality claims without evidence.** Public disclosures can show timing concerns or conflict-risk signals; they do not by themselves prove insider trading.

## Example Workflows

### Full Individual Stock Report

Use `stock-deep-analyzer` when the user wants a complete report:

```text
深度分析 600519.SH，包含 DCF、可比公司、催化剂和风险
```

Expected flow:

1. Resolve ticker or company name.
2. Gather market, financial, valuation, news, sector, and event data.
3. Score the company using investor-persona and rules-based panels.
4. Build valuation and thesis conflict points.
5. Generate an HTML report.

### AI Supply Chain Bottleneck Hunt

Use `ai-supply-chain-bottleneck-hunter` or `serenity-stock-research` when the question is theme-first:

```text
不要先报股票，先找 AI 数据中心电力链条里真正的瓶颈
```

Expected flow:

1. Start from the demand wave.
2. Map the full stack.
3. Identify physical, qualification, capacity, or regulatory constraints.
4. Verify with multiple sources.
5. Only then discuss candidate companies.

### Political Stock Signal Analysis

Use `us-political-stock-signal-analysis` when the user asks about public official trades:

```text
最近国会议员和 Trump administration 有没有买入核能、无人机、AI 芯片相关股票？
```

Expected flow:

1. Collect transaction records from disclosure sources.
2. Normalize tickers, dates, amount ranges, owner/account, and transaction type.
3. Map official role or committee jurisdiction to sector exposure.
4. Build trade date -> filing date -> catalyst timeline.
5. Score signal quality and caveats.

## Updating This Library

When local skills change, update this repository from your Codex skills directory:

```bash
rsync -a --delete --exclude '.venv/' --exclude '.cache/' --exclude 'reports/' --exclude '__pycache__/' --exclude '*.pyc' ~/.codex/skills/stock-deep-analyzer/ skills/stock-deep-analyzer/
rsync -a --delete ~/.codex/skills/serenity-stock-research/ skills/serenity-stock-research/
rsync -a --delete ~/.codex/skills/capital-rotation-stock-analysis/ skills/capital-rotation-stock-analysis/
rsync -a --delete ~/.codex/skills/us-political-stock-signal-analysis/ skills/us-political-stock-signal-analysis/
rsync -a --delete ~/.codex/skills/ai-supply-chain-bottleneck-hunter/ skills/ai-supply-chain-bottleneck-hunter/
python3 scripts/verify-skills.py
```

See [docs/MAINTENANCE.md](docs/MAINTENANCE.md) for a safer maintenance checklist.

## GitHub Publishing

Recommended repository name:

```text
stock-analysis-library
```

Suggested GitHub project title:

```text
Stock Analysis Library
```

If publishing manually:

```bash
git init
git add .
git commit -m "Initial stock analysis skill library"
git branch -M main
git remote add origin git@github.com:<owner>/stock-analysis-library.git
git push -u origin main
```

Replace `<owner>` with the GitHub user or organization that should own the repository.

If GitHub CLI is installed and authenticated:

```bash
OWNER=<owner> VISIBILITY=private ./scripts/publish-github.sh
```

Use `VISIBILITY=public` only if you intentionally want the repository public.

## License

This library is released under the MIT License. Some components are adapted from upstream projects; see [NOTICE.md](NOTICE.md) for attribution notes.

## Disclaimer

This project is for research automation and educational analysis. It does not provide financial, legal, tax, or investment advice. Always verify data independently and make investment decisions based on your own process and risk constraints.
