# Changelog

All notable changes to this indicator are documented here.
Format based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/);
versions follow [Semantic Versioning](https://semver.org/).

## [1.0.1](https://github.com/kxngHADES/Session-Sweep-Model/compare/v1.0.0...v1.0.1) (2026-10-16)


### Bug Fixes

* plain-text alert messages, SVG icons and animated README ([#3](https://github.com/kxngHADES/Session-Sweep-Model/issues/3)) ([ddbc11a](https://github.com/kxngHADES/Session-Sweep-Model/commit/ddbc11ac21405a99b9347164701eccb0017bf041))

## [1.0.0] - 2026-10-16

### Added
- Session Sweep Model indicator (Pine Script v6) for the M5 chart: liquidity sweep, reclaim and break-of-structure (BOS) signals.
- Asian range reference for the London window (08:00-11:00 London) and London range reference for the New York window (09:30-11:30 New York), with daylight-saving handled automatically.
- Instrument profiles: Forex (London), Gold (London + New York), NAS100 (New York), with auto-detection from the symbol name.
- Entry types: Market, Limit (retest of BOS level) and Stop (break of BOS candle), with configurable Reward:Risk, stop buffers and max stop size (x ATR 14).
- Hard close at 22:00 SAST: open trades closed and pending orders cancelled.
- On-chart trade drawings, sweep/BOS markings, skipped/cancelled setup labels and a simulated stats panel.
- Alerts: signal, fill, TP, SL, cancel and hard-close messages in plain text or Telegram JSON webhook format, plus BUY/SELL `alertcondition`s.
- Repository setup: proprietary license, changelog, PR check and release workflows.
