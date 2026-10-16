<p align="center">
  <img src="assets/banner.svg" alt="Session Sweep Model" width="100%">
</p>

<p align="center">
  <a href="https://github.com/kxngHADES/Session-Sweep-Model/releases/latest"><img alt="Release" src="https://img.shields.io/github/v/release/kxngHADES/Session-Sweep-Model?style=for-the-badge&logo=github&color=2E7D32"></a>
  <img alt="Pine Script v6" src="https://img.shields.io/badge/Pine_Script-v6-1E53E5?style=for-the-badge&logo=tradingview&logoColor=white">
  <img alt="Timeframe M5" src="https://img.shields.io/badge/Timeframe-M5-5B7DB1?style=for-the-badge">
  <img alt="License" src="https://img.shields.io/badge/License-Proprietary-C62828?style=for-the-badge">
  <a href="https://github.com/kxngHADES/Session-Sweep-Model/wiki"><img alt="Wiki" src="https://img.shields.io/badge/Docs-Wiki-E07A00?style=for-the-badge&logo=gitbook&logoColor=white"></a>
</p>

<p align="center">
  <b>Liquidity sweep + break of structure signals for Forex, Gold and NAS100</b><br>
  <sub>Session ranges · Entry, SL and TP drawn on chart · Telegram-ready alerts</sub>
</p>

> <img src="assets/icons/warning.svg" width="16" height="16" align="absmiddle" alt=""> Educational tool only, not financial advice. Trading carries substantial risk of loss.

---

## <img src="assets/icons/brain.svg" width="24" height="24" align="absmiddle" alt=""> How it works

<p align="center">
  <img src="assets/flow.svg" alt="Range, sweep, reclaim, BOS, trade" width="100%">
</p>

| Step | | What happens |
|---|---|---|
| 1 | <img src="assets/icons/dot-blue.svg" width="14" alt=""> **Range** | The session reference range is built (Asian for London, London for New York). |
| 2 | <img src="assets/icons/dot-orange.svg" width="14" alt=""> **Sweep** | Price trades beyond the range high or low inside the trading window. |
| 3 | <img src="assets/icons/dot-yellow.svg" width="14" alt=""> **Reclaim** | Price closes back inside the range within N candles (default 4). |
| 4 | <img src="assets/icons/dot-red.svg" width="14" alt=""> **BOS** | Price closes through the last opposite swing within N candles (default 12). |
| 5 | <img src="assets/icons/dot-green.svg" width="14" alt=""> **Trade** | Stop beyond the sweep extreme plus buffer, take profit at 2R (default). |

Setups with a stop larger than 3x ATR(14) are skipped. If both sides of the range are swept, no trade is taken. One position at a time.

## <img src="assets/icons/clock.svg" width="24" height="24" align="absmiddle" alt=""> Sessions

| Window | Time | Instruments | Reference |
|---|---|---|---|
| London | 08:00-11:00 London | Forex, Gold | Asian range |
| New York | 09:30-11:30 New York | Gold, NAS100 | London range |

Times are computed in their home time zones, so daylight-saving changes are handled automatically. **Hard close at 22:00 SAST**: open trades are closed and pending orders cancelled.

## <img src="assets/icons/download.svg" width="24" height="24" align="absmiddle" alt=""> Installation

1. Open TradingView and the **Pine Editor**.
2. Paste the contents of [`session-sweep.pine`](session-sweep.pine) and click **Add to chart**.
3. Switch to the **M5** timeframe (the stats panel warns if you are on another).

## <img src="assets/icons/settings.svg" width="24" height="24" align="absmiddle" alt=""> Settings

- **Instrument profile**: auto-detects Gold, NAS100 or Forex; can be overridden.
- **Entry type**: Market (default), Limit at the BOS level, or Stop beyond the BOS candle.
- **Reward:Risk, pending expiry, max stop (x ATR), reclaim and BOS candle limits, hard close hour.**
- **Stop buffers**: Forex pips, Gold dollars, NAS100 points.
- **Display**: ranges, window shading, sweep/BOS marks, swing points, skipped setups, stats panel.

## <img src="assets/icons/bell.svg" width="24" height="24" align="absmiddle" alt=""> Alerts

- Create an alert on the indicator and choose **Any alert() function call** for signal, fill, TP, SL, cancel and hard-close messages.
- Or use the simple **Session Sweep: BUY / SELL** alert conditions.
- Telegram: set the format to *Telegram JSON*, enter your chat ID and use the Bot API `sendMessage` URL as the webhook. Full guide in the [Wiki](https://github.com/kxngHADES/Session-Sweep-Model/wiki/Telegram-Bot-Setup).

## <img src="assets/icons/book.svg" width="24" height="24" align="absmiddle" alt=""> Wiki

| Guide | |
|---|---|
| [How to trade it](https://github.com/kxngHADES/Session-Sweep-Model/wiki/How-to-Trade-It) | Rules, entries, risk, examples |
| [Telegram bot setup](https://github.com/kxngHADES/Session-Sweep-Model/wiki/Telegram-Bot-Setup) | Signals straight to your channel |
| [Settings reference](https://github.com/kxngHADES/Session-Sweep-Model/wiki/Settings-Reference) | Every input explained |
| [FAQ and troubleshooting](https://github.com/kxngHADES/Session-Sweep-Model/wiki/FAQ-and-Troubleshooting) | Common problems |

## <img src="assets/icons/ban.svg" width="24" height="24" align="absmiddle" alt=""> Not automated

Check by hand: high-impact news, spread, firm-wide loss limits, and the EURUSD/GBPUSD "first pair only" rule.

The stats panel is a simulation on chart history (SL wins if SL and TP are hit in the same candle). It is not a guarantee of future results.

## <img src="assets/icons/refresh.svg" width="24" height="24" align="absmiddle" alt=""> Releases and contributing

See [CHANGELOG.md](CHANGELOG.md) and [CONTRIBUTING.md](CONTRIBUTING.md).

## <img src="assets/icons/file.svg" width="24" height="24" align="absmiddle" alt=""> License

Proprietary, all rights reserved. Personal, non-commercial use only. You may not sell, resell, redistribute or re-publish this indicator. See [LICENSE](LICENSE).
