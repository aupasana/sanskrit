# Sanskrit Lessons (GitHub Pages)

This repository is a minimal Jekyll site intended for GitHub Pages. It uses a `lessons` collection; each lesson can embed a YouTube video and link to a PDF exercise.

Get started:

1. Replace `url` in `_config.yml` with `https://<your-username>.github.io`.
2. Add your PDF exercises to `assets/exercises/`.
3. Edit or add lesson files under `_lessons/` with front matter fields: `title`, `youtube_id`, `exercise`.

To test locally (requires Ruby + Bundler):

```bash
bundle install
bundle exec jekyll serve
```

Then open `http://127.0.0.1:4000`.

When ready, push to a GitHub repository named `<your-username>.github.io` or enable GitHub Pages from the repo settings.
