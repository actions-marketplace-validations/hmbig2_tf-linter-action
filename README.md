# tflint-action

Uses [tf-linter](https://github.com/chnsz/tf-linter).

## Usage

```yaml
on: [pull_request, push]

jobs:
  example:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2.0.0
    - uses: chnsz/tflint-action@master
      with:
        args: ./...
```

## Development and Testing

To locally test the Docker build:

```console
docker build -t tflint-action:latest .
```
