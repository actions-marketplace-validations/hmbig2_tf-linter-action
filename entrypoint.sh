#!/bin/sh

sh -c "/usr/bin/tf-linter ${INPUT_FIELDS} ./... \
    | reviewdog -efm="%f:%l:%c: %m" \
        -filter-mode="${INPUT_FILTER_MODE:-added}" \
        -name="tflint-action" \
        -reporter="${INPUT_REPORTER:-github-pr-check}" \
        -level="${INPUT_LEVEL}" \
        -fail-on-error="${INPUT_FAIL_ON_ERROR}" "
