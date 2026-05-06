#let in-outline = state("in-outline", false)

#let flex-caption(long, short) = context if in-outline.get() { 
  short 
} else { 
  long 
}

// Hier könntest du noch mehr Funktionen sammeln
#let my-color = rgb("#333333")