// Importing quadrille with `*` must not hide anything Typst itself provides:
// not in markup (std), and not in math ($arrow(F)$, the music-note symbols ...).
#import "/lib.typ" as q
#for name in dictionary(q).keys() {
  assert(name not in dictionary(std), message: name + " hides std." + name)
  assert(name not in dictionary(math), message: name + " hides math." + name)
  assert(name not in dictionary(sym), message: name + " hides sym." + name)
}
