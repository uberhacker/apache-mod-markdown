# apache-mod-markdown
Lando plugin that installs an Apache webserver module to render Markdown files

## Requirements
- [Lando](https://docs.lando.dev/getting-started/) 3.23.26 or later
- [Node.js](https://nodejs.org/en/download/) 20 or later
- A Lando application running Apache 2.4

## Installation (recommended)
```bash
/bin/bash -c "$(curl -fsSL https://tinyurl.com/3x2hnkhy)"
```

## Installation (manual)
```bash
lando plugin-add https://github.com/uberhacker/apache-mod-markdown
cd ~/.lando/plugins/apache-mod-markdown
npm install
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
