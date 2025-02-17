# apache-mod-markdown
Lando plugin that installs an Apache webserver module to render Markdown files

## Requirements
- [Lando](https://docs.lando.dev/getting-started/) 3.23.26 or later
- A Lando application running Apache 2.4

## Installation
```bash
lando plugin-add https://github.com/uberhacker/apache-mod-markdown
```

## Usage
1. Add the following section to your application's `.lando.yml`:
```yaml
services:
  appserver:
    build_as_root:
      - /helpers/markdown.sh
```
2. Execute `lando rebuild -y`.
3. Visit any URL in your browser that ends in `.md` to see the rendered HTML.

## Uninstall
```bash
lando plugin-remove apache-mod-markdown
```
