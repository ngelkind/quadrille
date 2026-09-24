// Every example of the README, so they are known to compile.
#import "/lib.typ": *
#import "/lib.typ" as quadrille
#set page(width: 18cm, height: auto, margin: 1cm)
#show heading: it => pagebreak(weak: true) + it

#pagebreak(weak: true)
#graph(
  x: (-3, 3), y: (-1, 6), scale: 8mm,
  fn(x => x * x - 1, [$y = x^2 - 1$]),
  points((-1, 0, $A$), (1, 0, $B$), (2, 3, $C$)),
  segment((-1, 0), (2, 3), extend: true, stroke: (dash: "dashed")),
)

#pagebreak(weak: true)
#graph(fn(x => if x != 0 { 1 / x }), fn(x => if x >= 0 { calc.sqrt(x) }))

#pagebreak(weak: true)
#graph(
  x: (0, 10), y: (0, 50), x-step: 1, y-step: 10, minor: 5,
  width: 12cm, height: 7cm, axes: "edge",
  x-label: [$t$ (s)], y-label: [$v$ (m/s)],
  points((0, 0), (2, 11), (4, 19), (6, 31), (8, 40), (10, 49), connect: true, label: [measured]),
  fn(x => 4.9 * x, stroke: (dash: "dashed"), label: $v = 4.9 t$),
  area(x => 4.9 * x, domain: (0, 4), [$Delta x$]),
)

#pagebreak(weak: true)
#let data = csv(bytes("t,x\n0,0\n1,2.1\n2,3.9\n3,6.2"), row-type: array)
#pagebreak(weak: true)
#graph(points(data.slice(1).map(r => r.map(float)), connect: true))

#pagebreak(weak: true)
#graph(x: (-2 * calc.pi, 2 * calc.pi), x-step: calc.pi / 2, x-format: "pi", fn(x => calc.sin(x)))

#pagebreak(weak: true)
#let (c1, c2) = (palette.at(0), palette.at(1))
#pagebreak(weak: true)
#graph(x: (-3, 3), y: (-2, 4), scale: 8mm,
  fn(x => x + 2, domain: (-3, 0), stroke: c1), points((0, 2), mark: "circle", stroke: c1),
  fn(x => x * x, domain: (0, 3), stroke: c2), points((0, 0), stroke: c2),
)

#pagebreak(weak: true)
#graph(x: (-1, 5), y: (-1, 4), scale: 1cm,
  vector((3, 2), $arrow(v)$),
  vector((3, 2), (4, 3.5), $arrow(F)$, stroke: red),
)

#let graph = graph.with(scale: 1cm, minor: 2, style: (grid: 0.4pt + luma(190)))
#pagebreak(weak: true)
#graph(x: (0, 4), y: (0, 3), fn(x => x / 2))
#std.grid(columns: (1fr, 1fr), column-gutter: 1em, quadrille.graph(fn(x => x * x), width: 100%), quadrille.graph(fn(x => -x), width: 100%, height: 3cm))
#pagebreak(weak: true)
#graph(area(4, domain: (0, 3)), annotate((1.5, 2), [$Delta x = v t$], pos: top))
