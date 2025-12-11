import os

let noColor = existsEnv("NO_COLOR")

proc color(code, s: string): string =
  if noColor: s else: code & s & "\e[0m"

# foreground colors
proc fgRed*(s: string): string {.procvar.} = color("\e[31m", s)
proc fgBlack*(s: string): string {.procvar.} = color("\e[30m", s)
proc fgGreen*(s: string): string {.procvar.} = color("\e[32m", s)
proc fgYellow*(s: string): string {.procvar.} = color("\e[33m", s)
proc fgBlue*(s: string): string {.procvar.} = color("\e[34m", s)
proc fgMagenta*(s: string): string {.procvar.} = color("\e[35m", s)
proc fgCyan*(s: string): string {.procvar.} = color("\e[36m", s)
proc fgLightGray*(s: string): string {.procvar.} = color("\e[37m", s)
proc fgDarkGray*(s: string): string {.procvar.} = color("\e[90m", s)
proc fgLightRed*(s: string): string {.procvar.} = color("\e[91m", s)
proc fgLightGreen*(s: string): string {.procvar.} = color("\e[92m", s)
proc fgLightYellow*(s: string): string {.procvar.} = color("\e[93m", s)
proc fgLightBlue*(s: string): string {.procvar.} = color("\e[94m", s)
proc fgLightMagenta*(s: string): string {.procvar.} = color("\e[95m", s)
proc fgLightCyan*(s: string): string {.procvar.} = color("\e[96m", s)
proc fgWhite*(s: string): string {.procvar.} = color("\e[97m", s)

# background colors
proc bgBlack*(s: string): string {.procvar.} = color("\e[40m", s)
proc bgRed*(s: string): string {.procvar.} = color("\e[41m", s)
proc bgGreen*(s: string): string {.procvar.} = color("\e[42m", s)
proc bgYellow*(s: string): string {.procvar.} = color("\e[43m", s)
proc bgBlue*(s: string): string {.procvar.} = color("\e[44m", s)
proc bgMagenta*(s: string): string {.procvar.} = color("\e[45m", s)
proc bgCyan*(s: string): string {.procvar.} = color("\e[46m", s)
proc bgLightGray*(s: string): string {.procvar.} = color("\e[47m", s)
proc bgDarkGray*(s: string): string {.procvar.} = color("\e[100m", s)
proc bgLightRed*(s: string): string {.procvar.} = color("\e[101m", s)
proc bgLightGreen*(s: string): string {.procvar.} = color("\e[102m", s)
proc bgLightYellow*(s: string): string {.procvar.} = color("\e[103m", s)
proc bgLightBlue*(s: string): string {.procvar.} = color("\e[104m", s)
proc bgLightMagenta*(s: string): string {.procvar.} = color("\e[105m", s)
proc bgLightCyan*(s: string): string {.procvar.} = color("\e[106m", s)
proc bgWhite*(s: string): string {.procvar.} = color("\e[107m", s)

# formatting functions
proc bold*(s: string): string {.procvar.} = color("\e[1m", s)
proc underline*(s: string): string {.procvar.} = color("\e[4m", s)
proc hidden*(s: string): string {.procvar.} = color("\e[8m", s)
proc invert*(s: string): string {.procvar.} = color("\e[7m", s)
