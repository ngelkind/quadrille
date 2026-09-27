// connect: "all" joins every two points: the whole figure.
#import "/lib.typ": *
#set page(width: 18cm, height: auto, margin: 1cm)

// three charges and a point: a triangle
#graph(x: (-4, 4), y: (-1, 5), scale: 8mm,
  points((-3, 0, $q_2$), (3, 0, $q_1$), (0, 4, $A$), connect: "all"))

// four points: all six sides and diagonals, filled in the order given, in the legend
#graph(x: (-1, 5), y: (-1, 4), scale: 8mm,
  points((0, 0, $A$), (4, 0, $B$), (4, 3, $C$), (0, 3, $D$), connect: "all", fill: auto,
    stroke: (dash: "dashed"), label: [figure]))

// partly outside the window: lines are cut at the edge
#graph(x: (0, 3), y: (0, 3),
  points((1, 1), (5, 1), (1, 5), (2, 2), connect: "all"))

// one point: nothing to join
#graph(points((1, 1), connect: "all"))

// marks on a function, all joined
#graph(x: (-2, 2), points(x => x * x, step: 1, connect: "all"))
