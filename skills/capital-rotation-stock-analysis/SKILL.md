---
name: capital-rotation-stock-analysis
description: Analyze stock-market capital rotation and sector/theme migration, especially AI, semiconductor, software, datacenter infrastructure, power, optical interconnect, edge/Physical AI, crypto-linked equities, and macro-sensitive growth stocks. Use when Codex needs to answer questions about 资金轮动, 板块轮动, where money is flowing next, whether a move is scarcity/upgrade/far-future driven, whether a pullback is valuation/earnings/thesis damage, or how to rotate a watchlist/portfolio across stock themes.
---

# Capital Rotation Stock Analysis

## Overview

Use this skill to diagnose where equity capital is rotating, why the rotation is happening, and whether the move is early, confirmed, crowded, or breaking. The method is inspired by the supplied qinbafrank interview, but current facts must be verified because market data, earnings, macro events, IPO calendars, and sector narratives are time-sensitive.

For the interview-derived framework, read [references/frank-rotation-framework.md](references/frank-rotation-framework.md) when the request involves AI capital rotation, correction levels, liquidity shocks, or the `scarcity / upgrade / far-future` model.

## Required Guardrails

- Treat all outputs as research, not personal financial advice.
- Browse for current prices, relative strength, earnings, guidance, macro data, IPO/index-flow events, and sector news when the user asks for latest/current/today or when facts may have changed.
- Prefer primary sources for company facts: filings, earnings transcripts, investor decks, official product/customer announcements, exchange/index notices, and central-bank or government data.
- Separate evidence, inference, and speculation. Do not turn narrative momentum into certainty.
- Do not rely on date-specific claims from the interview without fresh verification.
- Use action labels such as `accumulate research`, `hold/watch`, `wait for pullback`, `rotate candidate`, or `avoid until evidence improves`; avoid absolute buy/sell commands.

## Workflow

### 1. Scope the Rotation

Infer or clarify:

- universe: US, China/HK, Taiwan, global, crypto equities, or a user watchlist
- horizon: days/weeks, 1-3 months, 6-18 months
- unit of analysis: sectors, themes, ETFs, or individual tickers
- objective: detect the next lane, defend an existing position, compare candidates, or build a rotation map

If the user is vague, default to global AI and technology equities over a 1-6 month horizon.

### 2. Classify the Market Regime

Start from the funding environment:

- broad liquidity: policy rates, Fed balance sheet, TGA/RRP where relevant, credit spreads, dollar strength, long yields
- macro shocks: CPI/inflation, oil, geopolitics, recession signals, yen carry or other forced-flow events
- risk appetite: breadth, equal-weight vs cap-weight performance, high beta, small caps, IPO demand
- AI/business validation: hyperscaler cloud growth, AI capex, model-company revenue/ARR, token usage, enterprise adoption, pricing/ARPU

Decide whether the tape is:

- broad liquidity bull
- structured bull led by a few themes
- valuation reset
- earnings reset
- thesis reset
- macro-logic reset

### 3. Map Source and Destination of Funds

Build a rotation table with:

- `source`: crowded winners, weakened themes, defensive assets, crypto, cash, or broad indices
- `destination`: theme/lane receiving capital
- `reason`: earnings validation, scarcity, architecture upgrade, far-future option, macro hedge, or forced flow
- `proof`: price/volume/relative strength plus fundamental evidence
- `risk`: crowding, weak revenue conversion, macro shock, thesis invalidation, or liquidity overhang

Do not assume a rising group is receiving durable capital. Require a fundamental or flow reason.

### 4. Assign Rotation Logic

Classify each destination lane:

- `scarcity`: capacity shortage, pricing power, lead-time extension, allocation, backlog, or supply-chain compression
- `upgrade`: architecture or efficiency shift that forces new components, materials, power systems, packaging, test, or networking
- `far-future`: option value from a later adoption curve such as edge AI, Physical AI, robotics, autonomous driving, or AI-RAN

Scarcity usually needs current evidence. Upgrade needs roadmap and customer adoption proof. Far-future needs lower sizing, clear milestones, and stricter valuation discipline.

### 5. Stress-Test Pullbacks

Classify drawdowns by cause:

- `valuation kill`: price outran proof; business logic still intact
- `earnings kill`: growth or guidance missed expectations; confidence needs new data
- `thesis kill`: strategic role, customer qualification, architecture, or market structure broke

For index-level corrections, use current Nasdaq/sector drawdowns as context and classify:

- small: mostly valuation and macro noise
- medium: macro event plus growth/earnings worry
- large: macro logic or core AI commercialization logic reset

### 6. Score Candidate Lanes

Score each lane from 1-5:

- demand proof
- supply tightness or upgrade inevitability
- earnings conversion timing
- relative-strength confirmation
- crowding/valuation risk, scored inversely
- invalidation clarity

Prefer a ranked watchlist over a long list of tickers. When tickers are included, explain their role in the rotation rather than presenting them as generic picks.

### 7. Produce the Output

For quick answers, provide:

- rotation verdict
- top receiving lanes
- source of funds
- evidence to confirm
- invalidation signals

For full reports, include:

- regime snapshot
- sector/theme heat map
- `scarcity / upgrade / far-future` rotation matrix
- ticker watchlist grouped by role
- pullback classification
- catalyst calendar
- what would cause rotation out
- sources and disclaimer

## Coordination With Other Skills

Use this skill for the top-down rotation layer. If the task turns into deep supply-chain bottleneck research, combine with `ai-supply-chain-bottleneck-hunter`. If it turns into a single-name public-equity report, combine with `serenity-stock-research` or a relevant public-equity research workflow.
