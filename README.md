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

### Option 1: Docker (recommended)

Requires Docker and Docker Compose. From the repo root:

```bash
docker compose up --build
```

The first run builds the `jekyll-site` image (Ruby 3.2 plus the gems in `Gemfile`), which takes a few minutes. Later runs reuse the image and start in seconds. Then open http://localhost:4001. Host port 4000 is used by NoMachine on this machine, so the container serves on port 4001 and `docker-compose.yaml` maps it straight through. The `Server address` line in the log therefore shows port 4001, matching the URL you open.

Edits to Markdown, HTML, and Sass rebuild automatically and the browser reloads through LiveReload. Changes to `_config.yml` are not picked up while serving: stop the container with `Ctrl-C` and run `docker compose up` again. If you change `Gemfile`, rerun with `--build`.

The same setup is exposed as a VS Code Dev Container through `.devcontainer/devcontainer.json`.

### Option 2: Native Ruby

Requires Ruby 3.2 and Bundler (`gem install bundler`). The system gem directory is not writable on this machine, so install gems into the project instead:

```bash
bundle config set --local path vendor/bundle
bundle install
```

This writes `.bundle/config` and `vendor/bundle/`, both of which are ignored by git. Then serve the site:

```bash
bundle exec jekyll serve -l -H localhost -P 4001
```

Open http://localhost:4001. The `-l` flag enables LiveReload, and `-P 4001` avoids the NoMachine conflict on port 4000 (omit it on machines where 4000 is free). As with Docker, restart the server after editing `_config.yml`.

To only build the static output without serving it:

```bash
bundle exec jekyll build
```

The generated site lands in `_site/`, which is ignored by git.

### Troubleshooting

- **`bundler: command not found: jekyll`** means the gems are not installed. Run the `bundle config` and `bundle install` steps above.
- **`You don't have write permissions for the /var/lib/gems/3.2.0 directory`** means Bundler is trying to install system-wide. Set the local `vendor/bundle` path as shown above.
- **Port already in use** means something else (usually NoMachine on 4000) holds the port. Pick another one with `-P` or edit the host side of the port mapping in `docker-compose.yaml`.

## Credits

Based on the [Academic Pages](https://github.com/academicpages/academicpages.github.io) template, which is derived from the [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) Jekyll theme by Michael Rose. Released under the MIT License (see `LICENSE`).
