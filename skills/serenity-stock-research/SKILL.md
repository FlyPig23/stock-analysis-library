---
name: serenity-stock-research
description: "Research public equities with a Serenity-style supply-chain chokepoint and Bayesian/贝叶斯 update method. Use when Codex needs to research stocks, tickers, AI/crypto supply chains, Serenity/@aleabitoreddit recommendations, low/high-position candidates, conviction/后验 updates, portfolio rotation, or Markdown/HTML equity reports."
---

# Serenity Stock Research

## Overview

Use this skill to turn a ticker, theme, or influencer watchlist into a defensible research report. The core method combines the “紫苏叶 / shiso leaf” framework with Bayesian investing: start from a large visible demand wave, drill down through every dependency layer, form a high-quality prior about the hidden bottleneck, then update conviction as new evidence arrives. For foundry, materials, power-semiconductor, MEMS, and photonics names, also test whether government validation and replacement value create downside protection before consensus revenue appears.

For the detailed Serenity framework, Bayesian extension, and case patterns distilled from the user articles and public Serenity tracking, read [references/serenity-framework.md](references/serenity-framework.md) when the request involves Serenity, AI hardware, CPO/silicon photonics, crypto infrastructure, portfolio rotation, or methodology explanation.

## Required Guardrails

- Treat all work as research, not personal financial advice. Include a short disclaimer in final reports.
- Browse for current prices, market caps, recent filings, earnings, analyst/news changes, regulations, and influencer posts. Market data and social posts are time-sensitive.
- Prefer primary sources for company facts: filings, earnings transcripts, investor decks, exchange releases, patents, customer announcements, and official product pages.
- Separate thesis, evidence, inference, and speculation. Label each clearly.
- Do not assume an influencer still holds a position unless there is a current explicit disclosure.
- For social-media-derived claims, state whether the source is X primary content, a mirror/index, or a secondary summary. Do not claim exhaustive X coverage unless a complete archive is available.

## Workflow

### 1. Define the Research Universe

Clarify or infer the tickers, geography, time window, and output format. If the user asks for “Serenity stocks,” include direct mentions, repeated replies, and clear watchlist names; separate core recommendations from casual mentions.

Create an initial table with:

- ticker and local listing/ADR/OTC mapping
- company name and market
- theme bucket
- why it entered the universe
- investability notes such as OTC liquidity, foreign-market access, and currency

### 2. Build the Demand Cascade

Start from the top-level demand wave and drill down until reaching suppliers or materials:

`end demand -> system -> subsystem -> component -> material/equipment/process -> supplier`

At every layer, ask:

- What must exist for the previous layer to work?
- What is scarce, slow to qualify, regulated, patented, or hard to replace?
- Which suppliers have volume capacity today, not only lab demos?
- What breaks the thesis if the architecture changes?

### 3. Identify the Chokepoint

Score each candidate chokepoint:

- supplier count: monopoly, duopoly, oligopoly, or competitive market
- substitutability: direct substitute, partial workaround, or no near-term substitute
- expansion lead time: months, years, or structurally constrained
- qualification barrier: customer validation, process know-how, IP, reliability, regulation
- pricing power: explicit price increases, backlog, constrained allocation, or margin inflection

Pass on “three-plus supplier” markets unless a candidate has a separate edge such as superior yield, protected customer qualification, or unmatched capacity.

### 4. Verify With Non-Obvious Evidence

Look beyond standard PE and revenue growth. Use at least three of:

- earnings call transcripts and backlog/order language
- patents and technical papers
- customer/supplier named relationships
- government grants and strategic-supply-chain programs
- trade/import/export or procurement records where available
- job postings and capex plans
- developer forums, GitHub trends, product shortages, and community buying signals
- industry conference slides, standards bodies, and roadmap documents

Prefer evidence that appears before consensus financial estimates change.

### 5. Test Policy-Backed Replacement Value

When the candidate is a fab, foundry, specialty manufacturer, or strategic supplier, run the XFAB-style policy and asset test:

- Start from the architecture push: for example `NVIDIA 800V DC -> power semis -> fabless/fab-lite designers -> merchant SiC/GaN foundry`.
- Prefer horizontal chokepoints that many winners must use, especially merchant foundries or qualified component suppliers, over vertically integrated incumbents with diluted exposure.
- Check whether Western supply-chain scarcity creates a valuation premium versus Asian capacity risk.
- Treat government grants, CHIPS Act awards, national-security language, and supply-chain blueprints as validation of criticality and potential capex backstop, not as revenue.
- Cross-read customers and partners: if NVIDIA, Nokia, hyperscalers, or listed fabless partners validate adjacent players, trace who supplies their production path.
- Separate hidden growth segments from blended cyclicality. A fast-growing SiC, GaN, MEMS, or silicon-photonics segment can be masked by automotive, legacy SOI, or mature-node weakness.
- Estimate replacement value, not only accounting book value: compare market cap and P/B against what it would cost and how long it would take to recreate qualified capacity.
- Look for a near-term bridge plus long-term option: SiC revenue today, GaN ramp next, silicon photonics/CPO later.

This setup is not automatically a 10x stock. Often the thesis is a lower-downside, 2x-4x rerating candidate if asset value, subsidies, and strategic qualification converge.

### 6. Apply Bayesian Conviction Updates

Treat the thesis as a hypothesis:

`H = this company is becoming a scarce, underpriced chokepoint for a growing demand wave`

For each candidate, maintain:

- prior: why the supply-chain structure makes the hypothesis plausible before market confirmation
- evidence: new facts collected after the initial thesis
- likelihood impact: whether the evidence is strong positive, weak positive, neutral, weak negative, or strong negative
- posterior action: add, hold, trim, downgrade to watch only, or exit from the research list

Do not wait for certainty. A position can be justified when the expected value is favorable and the market still prices a lower probability than the research implies. Conversely, do not let price action override a broken thesis: sell or downgrade when the evidence invalidates the original bottleneck logic.

Use this update loop in reports:

`initial structure -> prior conviction -> new evidence -> posterior conviction -> position/action label -> next evidence needed`

### 7. Price and Position Filter

For every ticker, collect:

- latest price, market cap, currency, average volume
- 52-week position: `(price - 52w low) / (52w high - 52w low)`
- 3-month and 1-year returns
- revenue growth, gross margin, operating margin, cash/debt, dilution, and forward estimates when available
- P/B, tangible book, replacement-value estimate, funded capex, and grants/subsidies for asset-heavy manufacturers
- segment revenue growth where a hidden high-growth segment is masked by a weak legacy business
- analyst coverage and institutional ownership when relevant

Classify position:

- `<35%`: relative low, but not automatically cheap
- `35%-70%`: mid-position
- `70%-90%`: extended
- `>90%`: near-high; demand stronger proof or wait for pullback

### 8. Run Adversarial Checks

Before assigning a positive view, actively try to disprove it:

- Identify alternate suppliers and hidden competitors.
- Test whether the bottleneck is temporary inventory tightness rather than structural scarcity.
- Check whether government grants, sampling, or qualifications are being confused with revenue.
- Check whether replacement-value math ignores obsolete assets, stranded fabs, capex overruns, or unprofitable capacity.
- Check customer concentration, dilution, low float, short interest, and influencer-driven reflexivity.
- Check whether TAM math assumes one architecture wins permanently.
- Find credible bear comments, expert rebuttals, or technical objections.

If the thesis cannot survive adversarial review, downgrade it to “watch only.”

### 9. Compare Opportunity Cost and Rotate

Compare the posterior conviction of current holdings/candidates against new supply-chain bottlenecks. Rotation is justified when:

- a new candidate has higher posterior conviction and better expected value
- the old thesis has played out, become consensus, or moved near a high valuation position without new evidence
- the demand bottleneck has shifted to a different layer of the chain
- the original thesis is weakened by architecture change, alternative suppliers, dilution, or customer behavior

Do not rotate merely because another stock is moving faster. Rotate because the probability-weighted opportunity set changed.

### 10. Build Scenarios

Use at least three scenarios:

- Bear: architecture changes, supplier loses qualification, dilution, demand pause, or margin fails to expand.
- Base: demand grows, but market share and margins normalize.
- Bull: chokepoint supplier captures scarce allocation, pricing power, and multiple expansion.

Tie every scenario to measurable triggers: revenue inflection, backlog, gross margin, customer names, capex, grants, standard adoption, or qualification announcements.

### 11. Produce the Report

For a Markdown or HTML report, include:

- executive summary and watchlist ranking
- low-position candidates and high-position but high-quality candidates
- table of all tickers with theme, price position, risk, and action
- Bayesian conviction table: prior, evidence update, posterior direction, next evidence needed
- one-page deep dive per priority ticker
- catalyst calendar
- invalidation checklist
- sources with links
- disclaimer

Use action labels instead of absolute buy/sell commands:

- core candidate
- small speculative candidate
- wait for pullback
- watch only
- avoid unless new evidence appears

## Serenity-Specific Extraction Rules

When tracking Serenity/@aleabitoreddit:

- Use X primary pages where accessible, plus mirrors such as TopicDigg, TwiScan, Sotwe, and other public indexes.
- Track originals, replies/comments, reposts/quote-posts, and media screenshots separately.
- Extract tickers, stated rationale, conviction language, time horizon, catalysts, and whether he says he owns or took a position.
- Mark data gaps. X mirrors may omit replies, deleted posts, image-only details, or chronological pages.
- Treat self-reported performance, identity, and holdings as unverified unless supported by independent records.
