// arc: the angle at a vertex between two rays, named or not, with or without its size.
#import "/lib.typ": *
#set page(width: 18cm, height: auto, margin: 1cm)

// a triangle's three corners: a name, a name with the measured size, the size only
#let (q2, q1, A) = ((-3, 0), (3, 0), (0, 4))
#graph(x: (-4, 4), y: (-1, 5), scale: 10mm,
  points((..q2, $q_2$), (..q1, $q_1$), (..A, $A$), connect: "all"),
  arc(q2, q1, A, $alpha$),
  arc(A, q2, q1, $beta$, value: auto),
  arc(q1, A, q2, value: auto, stroke: red, fill: auto),
)

// no name and no size; a given size (drawing not to scale); a right angle; order of rays
#graph(x: (-1, 6), y: (-1, 5), scale: 10mm,
  segment((0, 0), (5, 0)), segment((0, 0), (3, 4)),
  arc((0, 0), (5, 0), (3, 4)),
  segment((4, 1), (4, 4)), segment((4, 1), (5.5, 1)),
  arc((4, 1), (4, 4), (5.5, 1), $theta$, value: 60deg),
  segment((1, 3), (1, 4.5)), segment((1, 3), (2.5, 3)),
  arc((1, 3), (2.5, 3), (1, 4.5)),
  arc((1, 3), (1, 4.5), (2.5, 3), right: false, radius: 9mm, value: 90, label: [not square]),
)

// wide angles, angles opening downwards and to the left, different x and y scales
#graph(x: (-5, 5), y: (-3, 3), x-scale: 8mm, y-scale: 12mm,
  segment((0, 0), (4, 1)), segment((0, 0), (-4, 1)),
  arc((0, 0), (4, 1), (-4, 1), $gamma$, value: auto),
  segment((-2, -2), (-4, -1)), segment((-2, -2), (-4, -3)),
  arc((-2, -2), (-4, -1), (-4, -3), $delta$),
  arc((3, -2), (4, -2), (3, -1), [$90 degree$]),
)

// alone in a graph (the window fits its vertex); a Hebrew name
#graph(arc((1, 1), (2, 1), (1, 2), [ב]))

// a vertex on the y axis: the tick number 3.5 would hide the arc, so it is left out
#graph(x: (-4, 4), y: (-1, 5), scale: 12mm,
  points((-3, 0, $q_2$), (3, 0, $q_1$), (0, 4, $A$), connect: "all"),
  segment((0, 0), (0, 4), stroke: 1.3pt + blue),
  arc((0, 4), (0, 0), (-3, 0)),
)
