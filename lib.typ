// quadrille - graph paper for Typst: functions, points, lines and vectors on a grid.
//
//   #import "@preview/quadrille:0.3.1": *
//   #graph(x: (-3, 3), y: (-1, 9), fn(x => x * x), points((2, 4, $A$)))

#import "src/graph.typ": graph
#import "src/elements.typ": fn, parametric, points, segment, vector, hline, vline, area, annotate, arc
#import "src/style.typ": palette, default-style
