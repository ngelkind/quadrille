#import "/lib.typ": *
#set page(width: 21cm, height: auto, margin: 0.6cm)
#set text(size: 10pt)

#std.grid(columns: 3, column-gutter: 0.6cm, align: bottom,
  graph(
    x: (-3, 3), y: (-1, 6), scale: 8mm,
    fn(x => x * x - 1, [$y = x^2 - 1$]),
    points((-1, 0, $A$), (1, 0, $B$), (2, 3, $C$)),
    segment((-1, 0), (2, 3), extend: true, stroke: (dash: "dashed")),
  ),
  graph(
    x: (0, 10), y: (0, 50), x-step: 1, y-step: 10, minor: 5,
    width: 6.5cm, height: 5cm, axes: "edge",
    x-label: [$t$ (s)], y-label: [$v$ (m/s)],
    points((0, 0), (2, 11), (4, 19), (6, 31), (8, 40), (10, 49), connect: true, label: [measured]),
    fn(x => 4.9 * x, stroke: (dash: "dashed"), label: $v = 4.9 t$),
    area(x => 4.9 * x, domain: (0, 4), [$Delta x$]),
  ),
  graph(
    x: (-1, 5), y: (-1, 4), scale: 1cm,
    points((0, 0, $O$), (4, 0, $P$), (1, 3, $Q$), close: true, fill: auto),
    vector((1, 3), (3.5, 3.5), $arrow(F)$, stroke: red),
    hline(3.5, $y = 3.5$),
  ),
)
#v(0.3cm)
#graph(
  x: (-2 * calc.pi, 2 * calc.pi), y: (-3, 3),
  x-step: calc.pi / 2, x-format: "pi", y-step: 1,
  width: 19.5cm, height: 4.5cm,
  fn(x => calc.tan(x), label: $tan x$),
  fn(x => 2 * calc.sin(x), label: $2 sin x$),
  vline(calc.pi / 2), vline(-calc.pi / 2), vline(3 * calc.pi / 2), vline(-3 * calc.pi / 2),
)
