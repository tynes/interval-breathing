# Breathing Interval Timer

A minimal single-page breathing timer. Pick an inhale/exhale pattern (or define
your own), optionally add a hold, hit Start. Audible beeps and animated bars
mark each phase; the session runs for 20 minutes.

Live: <https://tynes.github.io/interval-breathing/>

Cloned from <https://breathing-interval-timer.netlify.app> (original app by
[@xHitsujikai](https://x.com/xHitsujikai), based on
["The Only Breathwork Exercise You'll Ever Need"](https://breatheless.substack.com/p/the-only-breathwork-exercise-you)
by [@BreatheLesss](https://x.com/BreatheLesss)).

## Local development

The app is a single static `index.html` — no build step, no dependencies.

```sh
just serve        # python3 -m http.server 8000
just serve 9000   # custom port
just open         # opens http://localhost:8000 in the default browser
```

If you don't have [`just`](https://github.com/casey/just) installed, run
`python3 -m http.server` directly from the repo root.

## Deployment

Pushes to `main` trigger `.github/workflows/deploy.yml`, which publishes the
repo root to GitHub Pages via `actions/deploy-pages`. Repo Settings → Pages
must have **Source = GitHub Actions**.

## License

MIT — see [`LICENSE`](LICENSE).
