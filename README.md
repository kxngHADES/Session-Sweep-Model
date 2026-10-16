# Session Sweep Model

A TradingView Pine Script v6 indicator that signals **liquidity sweep + break of structure** setups around the Asian, London and New York sessions. Built for the **M5** chart.

> Educational tool only, not financial advice. Trading carries substantial risk of loss.

## How it works

1. **Reference range** is built for the session:
   - Asian range: 02:00 SAST until London open (08:00 London), used for the London window.
   - London range: 08:00 London until NY open (09:30 New York), used for the New York window.
2. **Sweep**: price trades beyond the range high or low during the trading window.
3. **Reclaim**: price closes back inside the range within N candles (default 4, including the sweep candle).
4. **BOS**: price closes through the last opposite swing within N candles of the sweep extreme (default 12).
5. **Trade**: stop beyond the sweep extreme plus a buffer, take profit at Reward:Risk (default 2R). Setups with a stop larger than 3x ATR(14) are skipped.

If both sides of the range are swept in a window, no trade is taken. Only one position is managed at a time.

| Window | Time | Instruments | Reference |
|---|---|---|---|
| London | 08:00-11:00 London | Forex, Gold | Asian range |
| New York | 09:30-11:30 New York | Gold, NAS100 | London range |

Session times are computed in their home time zones, so daylight-saving changes are handled automatically. **Hard close at 22:00 SAST**: open trades are closed and pending orders cancelled.

## Installation

1. Open TradingView and the Pine Editor.
2. Paste the contents of [`session-sweep.pine`](session-sweep.pine) and click **Add to chart**.
3. Switch to the **M5** timeframe (the stats panel warns if you are on another).

## Settings

- **Instrument profile**: auto-detects Gold (XAU/GOLD), NAS100 (NAS/NDX/US100/USTEC) or Forex; can be overridden.
- **Entry type**: Market (default), Limit at the BOS level, or Stop beyond the BOS candle.
- **Reward:Risk, pending expiry, max stop (x ATR), reclaim and BOS candle limits, hard close hour.**
- **Stop buffers**: Forex pips, Gold dollars, NAS100 points.
- **Display**: ranges, window shading, sweep/BOS marks, swing points, skipped setups, stats panel.

## Alerts

- Create an alert on the indicator and pick **Any alert() function call** to receive signal, fill, TP, SL, cancel and hard-close messages.
- Or use the simple **Session Sweep: BUY / SELL** alert conditions.
- For Telegram, set the format to *Telegram JSON*, enter your chat ID, and use `https://api.telegram.org/bot<YOUR_BOT_TOKEN>/sendMessage` as the alert's webhook URL.

## Not automated

Check these by hand: high-impact news, spread, firm-wide loss limits, and the EURUSD/GBPUSD "first pair only" rule.

The stats panel is a simulation on chart history (SL wins if SL and TP are hit in the same candle). It is not a guarantee of future results.

## Releases and contributing

See [CHANGELOG.md](CHANGELOG.md) and [CONTRIBUTING.md](CONTRIBUTING.md) for the release process.

## License

Proprietary, all rights reserved. Personal, non-commercial use only. You may not sell, resell, redistribute or re-publish this indicator. See [LICENSE](LICENSE).
