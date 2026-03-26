= Grundlagen <sec:grundlagen>

Um das Thema tiefgreifend analysieren zu können, ist es notwendig, die mathematischen und physikalischen Prinzipien zu verstehen.

== Mathematische Formeln

Die Navier-Stokes-Gleichungen sind ein fundamentales Konzept der Strömungsmechanik. Gleichung @eq:navier_stokes zeigt die inkompressiblen Navier-Stokes-Gleichungen in Tensornotation.

$ partial u_i / partial t + u_j partial u_i / partial x_j = - 1/rho partial P / partial x_i + nu (partial^2 u_i) / (partial x_j^2) $ <eq:navier_stokes>

Solche komplexen Formeln lassen sich leicht in Typst darstellen und referenzieren. Hierbei wird ein Ansatz verwendet, der sehr stark an die Schreibweise auf dem Papier erinnert, aber intern wie ein modernes Programmierframework funktioniert.

Ghia et al. haben diese Gleichungen intensiv untersucht und Lösungsansätze entwickelt, um Strömungen bei hohen Reynolds-Zahlen zu berechnen @ghia_1982. 
