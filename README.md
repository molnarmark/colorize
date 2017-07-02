## Colorize ##

Colorize is a lightweight and simple terminal coloring library. It makes it easy to make your terminal outputs beautiful.
#### Procs ####
Available procs for `foreground` coloring:
```nim
proc fgRed*(s: string): string
proc fgBlack*(s: string): string
proc fgGreen*(s: string): string
proc fgYellow*(s: string): string
proc fgBlue*(s: string): string
proc fgMagenta*(s: string): string
proc fgCyan*(s: string): string
proc fgLightGray*(s: string): string
proc fgDarkGray*(s: string): string
proc fgLightRed*(s: string): string
proc fgLightGreen*(s: string): string
proc fgLightYellow*(s: string): string
proc fgLightBlue*(s: string): string
proc fgLightMagenta*(s: string): string
proc fgLightCyan*(s: string): string
proc fgWhite*(s: string): string
```
Available procs for `background` coloring:
```nim
proc bgBlack*(s: string): string
proc bgRed*(s: string): string
proc bgGreen*(s: string): string
proc bgYellow*(s: string): string
proc bgBlue*(s: string): string
proc bgMagenta*(s: string): string
proc bgCyan*(s: string): string
proc bgLightGray*(s: string): string
proc bgDarkGray*(s: string): string
proc bgLightRed*(s: string): string
proc bgLightGreen*(s: string): string
proc bgLightYellow*(s: string): string
proc bgLightBlue*(s: string): string
proc bgLightMagenta*(s: string): string
proc bgLightCyan*(s: string): string
proc bgWhite*(s: string): string
```
Available procs for `formatting`:
```nim
proc bold*(s: string): string
proc underline*(s: string): string
proc hidden*(s: string): string
proc invert*(s: string): string
```
#### Usage ####
```nim
echo "Hello, I am a blue text.".fgBlue
echo "Hello, I am now also bold!".bold.fgBlue
```

#### Developer ####

 - Mark Molnar

#### License ####
[MIT](https://opensource.org/licenses/mit-license.php)