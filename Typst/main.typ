#import "template.typ": project

#show: project.with(
  title: "Hier kommt der Titel der wissenschaftlichen Arbeit hin",
  subtitle: "Modulnummer - Modulname ",
  author: "Max Mustermann",
  supervisor: "Prof. Dr. Erika Musterfrau",
  faculty: "Fakultät Ingenieurwissenschaften",
  date: "26. März 2026",
)

// Hier werden die einzelnen Kapitel (Sektionen) eingebunden.
// Dies sorgt für eine übersichtliche Hauptdatei.

#include "Sections/01_Einleitung.typ"
#pagebreak()
#include "Sections/02_Grundlagen.typ"
#include "Sections/03_Methodik.typ"
#include "Sections/04_Ergebnisse.typ"

// ==========================================
// LITERATURVERZEICHNIS
// ==========================================

#pagebreak()
#bibliography("references.bib", style: "ieee")
