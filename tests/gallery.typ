#import "/lib.typ": *
#set page(width: 18cm, height: auto, margin: 1cm)
#set text(size: 11pt)
#show heading: it => pagebreak(weak: true) + it

= 1. Functions, legend, captions
#graph(
  x: (-4, 4), y: (-3, 5),
  scale: 0.8cm,
  fn(x => x * x - 2, label: $x^2 - 2$),
  fn(x => calc.sin(x) * 2, $2 sin x$, label: $2 sin x$),
  fn(x => if x != 0 { 1 / x }, stroke: 1pt + red, label: $1 / x$),
  points((-1.414, 0, $A$), (1.414, 0, $B$)),
)

= 2. Physics: data, connect, labels, edge axes
#graph(
  x: (0, 10), y: (0, 50),
  x-step: 1, y-step: 10, minor: 5,
  width: 12cm, height: 7cm,
  x-label: $t$ + [ (s)], y-label: $v$ + [ (m/s)],
  axes: "edge",
  points((0, 0), (2, 11), (4, 19), (6, 31), (8, 40), (10, 49), connect: true, label: [measured]),
  fn(x => 4.9 * x, stroke: (dash: "dashed"), label: $v = 4.9 t$),
  area(x => 4.9 * x, domain: (0, 4), [$Delta x$]),
)

= 3. Trig with pi ticks, cropping a tangent
#graph(
  x: (-2 * calc.pi, 2 * calc.pi), y: (-4, 4),
  x-step: calc.pi / 2, x-format: "pi", y-step: 1,
  width: 14cm, height: 6cm,
  fn(x => calc.tan(x), label: $tan x$),
  fn(x => calc.cos(x), label: $cos x$),
  vline(calc.pi / 2, $x = pi/2$), vline(-calc.pi / 2),
  legend: bottom + right,
)

= 4. Geometry: triangle, segment through points, vectors, notes
#graph(
  x: (-1, 6), y: (-1, 5), scale: 1cm,
  points((0, 0, $A$), (4, 0, $B$), (1, 3, $C$), close: true, fill: auto),
  segment((0, 0), (1, 3), extend: true, stroke: (dash: "dotted")),
  vector((2, 1), (5, 4), $arrow(F)$),
  vector((3, 2), $arrow(v)$, stroke: blue),
  annotate((4.5, 0.5), [base], pos: top),
  segment((0, 0), (4, 0), $4$),
  hline(3, $y = 3$),
)

= 5. Parametric, open/closed marks, step sampling
#graph(
  x: (-3, 3), y: (-3, 3), scale: 7mm,
  parametric(t => (2 * calc.cos(t), 2 * calc.sin(t)), label: [circle]),
  parametric(t => (t * calc.cos(t) / 3, t * calc.sin(t) / 3), domain: (0, 4 * calc.pi)),
  points(x => x * x / 2 - 2, domain: (-2, 2), step: 0.5, mark: "circle"),
  fn(x => x * x / 2 - 2, step: 0.5, stroke: 0.6pt),
)

= 6. Auto everything (no ranges)
#graph(points((1, 120), (2, 180), (3, 260), (4, 300), connect: true))
#graph(fn(x => calc.exp(x), domain: (-2, 3)))

= 7. Scientific ticks and custom ticks
#graph(
  x: (0, 0.004), y: (0, 2e6),
  fn(x => 5e8 * x),
)
#graph(x: (0, 4), y: (0, 3), x-ticks: ((1, $a$), (3, $b$)), y-ticks: none, grid: false,
  fn(x => 2 - calc.pow(x - 2, 2) / 3))

= 8. Hebrew page (RTL)
#set text(lang: "he", font: ("Noto Serif Hebrew", "Libertinus Serif"))
גרף של פונקציה ריבועית:
#graph(x: (-3, 3), y: (-2, 6), scale: 6mm, fn(x => x * x - 1, [$y = x^2 - 1$]), x-label: $x$, y-label: $y$)
