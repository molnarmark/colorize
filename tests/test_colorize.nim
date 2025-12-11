import unittest
import os
import ../colorize

# Check if NO_COLOR is set in the environment
let hasNoColor = getEnv("NO_COLOR", "") != ""

# Helper to get expected result based on NO_COLOR
proc expect(code: string, text: string): string =
  if hasNoColor: text else: code & text & "\e[0m"

suite "Foreground Colors":
  test "fgRed adds red color codes":
    let result = fgRed("test")
    check result == expect("\e[31m", "test")

  test "fgBlack adds black color codes":
    let result = fgBlack("test")
    check result == expect("\e[30m", "test")

  test "fgGreen adds green color codes":
    let result = fgGreen("test")
    check result == expect("\e[32m", "test")

  test "fgYellow adds yellow color codes":
    let result = fgYellow("test")
    check result == expect("\e[33m", "test")

  test "fgBlue adds blue color codes":
    let result = fgBlue("test")
    check result == expect("\e[34m", "test")

  test "fgMagenta adds magenta color codes":
    let result = fgMagenta("test")
    check result == expect("\e[35m", "test")

  test "fgCyan adds cyan color codes":
    let result = fgCyan("test")
    check result == expect("\e[36m", "test")

  test "fgLightGray adds light gray color codes":
    let result = fgLightGray("test")
    check result == expect("\e[37m", "test")

  test "fgDarkGray adds dark gray color codes":
    let result = fgDarkGray("test")
    check result == expect("\e[90m", "test")

  test "fgLightRed adds light red color codes":
    let result = fgLightRed("test")
    check result == expect("\e[91m", "test")

  test "fgLightGreen adds light green color codes":
    let result = fgLightGreen("test")
    check result == expect("\e[92m", "test")

  test "fgLightYellow adds light yellow color codes":
    let result = fgLightYellow("test")
    check result == expect("\e[93m", "test")

  test "fgLightBlue adds light blue color codes":
    let result = fgLightBlue("test")
    check result == expect("\e[94m", "test")

  test "fgLightMagenta adds light magenta color codes":
    let result = fgLightMagenta("test")
    check result == expect("\e[95m", "test")

  test "fgLightCyan adds light cyan color codes":
    let result = fgLightCyan("test")
    check result == expect("\e[96m", "test")

  test "fgWhite adds white color codes":
    let result = fgWhite("test")
    check result == expect("\e[97m", "test")

suite "Background Colors":
  test "bgBlack adds black background codes":
    let result = bgBlack("test")
    check result == expect("\e[40m", "test")

  test "bgRed adds red background codes":
    let result = bgRed("test")
    check result == expect("\e[41m", "test")

  test "bgGreen adds green background codes":
    let result = bgGreen("test")
    check result == expect("\e[42m", "test")

  test "bgYellow adds yellow background codes":
    let result = bgYellow("test")
    check result == expect("\e[43m", "test")

  test "bgBlue adds blue background codes":
    let result = bgBlue("test")
    check result == expect("\e[44m", "test")

  test "bgMagenta adds magenta background codes":
    let result = bgMagenta("test")
    check result == expect("\e[45m", "test")

  test "bgCyan adds cyan background codes":
    let result = bgCyan("test")
    check result == expect("\e[46m", "test")

  test "bgLightGray adds light gray background codes":
    let result = bgLightGray("test")
    check result == expect("\e[47m", "test")

  test "bgDarkGray adds dark gray background codes":
    let result = bgDarkGray("test")
    check result == expect("\e[100m", "test")

  test "bgLightRed adds light red background codes":
    let result = bgLightRed("test")
    check result == expect("\e[101m", "test")

  test "bgLightGreen adds light green background codes":
    let result = bgLightGreen("test")
    check result == expect("\e[102m", "test")

  test "bgLightYellow adds light yellow background codes":
    let result = bgLightYellow("test")
    check result == expect("\e[103m", "test")

  test "bgLightBlue adds light blue background codes":
    let result = bgLightBlue("test")
    check result == expect("\e[104m", "test")

  test "bgLightMagenta adds light magenta background codes":
    let result = bgLightMagenta("test")
    check result == expect("\e[105m", "test")

  test "bgLightCyan adds light cyan background codes":
    let result = bgLightCyan("test")
    check result == expect("\e[106m", "test")

  test "bgWhite adds white background codes":
    let result = bgWhite("test")
    check result == expect("\e[107m", "test")

suite "Formatting Functions":
  test "bold adds bold formatting codes":
    let result = bold("test")
    check result == expect("\e[1m", "test")

  test "underline adds underline formatting codes":
    let result = underline("test")
    check result == expect("\e[4m", "test")

  test "hidden adds hidden formatting codes":
    let result = hidden("test")
    check result == expect("\e[8m", "test")

  test "invert adds invert formatting codes":
    let result = invert("test")
    check result == expect("\e[7m", "test")

suite "Chaining Functions":
  test "can chain foreground color with formatting":
    let result = fgBlue(bold("test"))
    if hasNoColor:
      check result == "test"
    else:
      check result == "\e[34m\e[1mtest\e[0m\e[0m"

  test "can chain multiple formatting functions":
    let result = bold(underline("test"))
    if hasNoColor:
      check result == "test"
    else:
      check result == "\e[1m\e[4mtest\e[0m\e[0m"

  test "can chain foreground and background colors":
    let result = fgRed(bgYellow("test"))
    if hasNoColor:
      check result == "test"
    else:
      check result == "\e[31m\e[43mtest\e[0m\e[0m"

suite "Empty String Handling":
  test "fgRed handles empty string":
    let result = fgRed("")
    if hasNoColor:
      check result == ""
    else:
      check result == "\e[31m\e[0m"

  test "bold handles empty string":
    let result = bold("")
    if hasNoColor:
      check result == ""
    else:
      check result == "\e[1m\e[0m"

  test "bgBlue handles empty string":
    let result = bgBlue("")
    if hasNoColor:
      check result == ""
    else:
      check result == "\e[44m\e[0m"

suite "Special Characters":
  test "handles newlines in strings":
    let result = fgRed("line1\nline2")
    check result == expect("\e[31m", "line1\nline2")

  test "handles tabs in strings":
    let result = fgGreen("text\twith\ttabs")
    check result == expect("\e[32m", "text\twith\ttabs")

  test "handles unicode characters":
    let result = fgBlue("Hello 世界")
    check result == expect("\e[34m", "Hello 世界")
