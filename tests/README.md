# Colorize Test Suite

This directory contains unit tests for the colorize library.

## Running Tests

Run all tests using nimble:

```bash
nimble test
```

## Environment-Aware Testing

The test suite is **environment-aware** and will pass whether or not 
[`NO_COLOR` is set](https://no-color.org/):

- **Without NO_COLOR**: Tests verify that ANSI color codes are properly added
- **With NO_COLOR**: Tests verify that plain text is returned (colors disabled)

The tests automatically detect the `NO_COLOR` environment variable and adjust expectations accordingly.

### Testing NO_COLOR behavior

```bash
# Test with NO_COLOR disabled (colors enabled)
NO_COLOR="" nim c -r tests/test_colorize.nim

# Test with NO_COLOR enabled (colors disabled)
NO_COLOR=1 nim c -r tests/test_colorize.nim
```

