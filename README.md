# Aaryan Pawar's Personal Website

Source for [elitecoder21.github.io](https://elitecoder21.github.io), built with Jekyll and served by GitHub Pages.

## Content

| Folder | What it holds |
|---|---|
| `_pages/` | Top-level pages (About, CV, Awards, Volunteer Work, archives) |
| `_posts/` | Blog posts (`YYYY-MM-DD-slug.md`) |
| `_portfolio/` | Project write-ups |
| `_publications/` | Papers |
| `_classes/` | Coursework, grouped by the `category` field (`cse`, `ee`, `gened`) |
| `_data/navigation.yml` | Header links |
| `files/` | PDFs served at `/files/...` |
| `images/` | Profile photo, favicons, and post/portfolio images |

Site-wide settings (name, bio, social links) are in `_config.yml`.

## Running locally

With Docker:

```bash
docker compose up
```

Then open http://localhost:4001 (host port 4000 is taken by NoMachine on this machine). Changes to Markdown and HTML rebuild automatically; restart the container after editing `_config.yml`.

Without Docker, install Ruby and Bundler, then:

```bash
bundle install
bundle exec jekyll serve -l -H localhost
```

## Credits

Based on the [Academic Pages](https://github.com/academicpages/academicpages.github.io) template, which is derived from the [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) Jekyll theme by Michael Rose. Released under the MIT License (see `LICENSE`).
