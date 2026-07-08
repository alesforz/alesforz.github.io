# Resume Site

Static single-page resume site authored in plain HTML and CSS.

## Files That Matter

- `index.html`: page content and metadata
- `css/main.css`: all styling, including responsive and print rules
- `images/icons.svg`: reusable SVG sprite for social and PDF icons
- `images/` and `files/`: static assets

## Local Preview

### Docker

1. Build the image:

   ```sh
   make docker-image
   ```

2. Run the site on `http://localhost:4000`:

   ```sh
   make docker-run
   ```

   Stop a stale or background container with `make docker-stop`.

### Without Docker

Any static file server will work. For example:

```sh
python3 -m http.server 4000
```

## Editing

- Update content directly in `index.html`.
- Update styles in `css/main.css`.
- Add or replace assets in `images/` and `files/`.

There is no build step, no template engine, and no generated source.

## Deployment

The site is static. Any web server or static hosting platform can serve the
repository contents directly.

## License

The code and styles are licensed under the MIT license. See [LICENSE](LICENSE).
