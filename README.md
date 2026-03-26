# thesis-typesetting-lab-htwk

Eine experimentelle Sammlung von Templates und Workflows für das Schreiben wissenschaftlicher Arbeiten.

> ⚠️ **WICHTIGER HINWEIS:** 
> Dieses Repository ist **kein** offizielles Template der HTWK Leipzig. Es handelt sich um ein privates, experimentelles Projekt zum Testen verschiedener Typesetting-Tools und Automatisierungs-Pipelines. Die Nutzung für offizielle Abgaben erfolgt auf eigene Gefahr – Vorgaben der jeweiligen Fakultät müssen eigenständig abgeglichen werden!

---

## 📖 Über LaTeX und Typst

In diesem Repository werden zwei grundlegend verschiedene Textsatzsysteme (Typesetting Systems) gegenübergestellt:

- **LaTeX:** Der jahrzehntealte, unangefochtene Standard in der Wissenschaft. Es ist extrem flexibel und bietet durch ein gigantisches Ökosystem an Paketen Lösungen für jedes noch so komplexe Layout-Problem. Der Preis dafür: Eine relativ steile Lernkurve, oft kryptische Fehlermeldungen und spürbare Kompilierzeiten bei großen Dokumenten.
- **Typst:** Ein modernes, in Rust geschriebenes Textsatzsystem, das als direkte Alternative zu LaTeX entwickelt wurde. Es besticht durch eine leicht lesbare Syntax (ähnlich Markdown), klare Fehlermeldungen und eine **blitzschnelle Kompilierung**. Typst rendert Dokumente in Millisekunden, was eine echte, flüssige Live-Vorschau beim Tippen ermöglicht. Da es noch recht jung ist, ist das Ökosystem an speziellen Vorlagen allerdings noch nicht so groß wie bei LaTeX.

## 📂 Repository-Struktur

Das Projekt ist in zwei Hauptordner unterteilt, die jeweils eigenständige, funktionsfähige Templates enthalten:

```text
thesis-typesetting-lab/
├── .vscode/               # Empfohlene VS Code Einstellungen (inkl. Auto-Clean & Git-Excludes)
├── latex-template/        # Klassisches LaTeX-Setup (basierend auf TeX Live/MiKTeX)
│   ├── main.tex           # Hauptdokument
│   ├── packages.sty       # Ausgelagerte Paket-Konfiguration
│   └── references.bib     # Literaturdatenbank
└── typst-template/        # Modernes Typst-Setup
    ├── main.typ           # Hauptdokument inkl. Template-Definition
    └── references.bib     # Literaturdatenbank (kompatibel mit LaTeX)
```
## 🚀 Setup & Installation

Um in diesem Repository arbeiten zu können, wird **Visual Studio Code (VS Code)** als Editor empfohlen.

### 1. Typst Setup (Modern & Schnell)
Der Typst-Workflow kommt komplett ohne lokale Compiler-Installationen aus und läuft direkt im Editor:

1. Installiere die VS Code Extension **Tinymist Typst**.
2. Öffne den Ordner `typst-template/` und wähle die Datei `main.typ` aus.
3. Klicke oben rechts im Editor-Fenster auf das **Live Preview Icon** (ein kleines Dokument mit einer Lupe).
4. Das Dokument kompiliert beim Tippen sofort in Echtzeit und zeigt das PDF auf der rechten Seite.

### 2. LaTeX Setup (Klassisch via Windows / MiKTeX)
Für das klassische LaTeX-Template ist eine lokale Toolchain nötig. Diese Anleitung bezieht sich primär auf Windows-Systeme:

#### Voraussetzungen installieren:
1. **MiKTeX installieren:** Lade den [MiKTeX Installer](https://miktex.org/download) herunter. **Wichtig:** Wähle während der Installation bei der Frage *"Install missing packages on-the-fly"* zwingend **"Yes"** aus. Dadurch lädt LaTeX fehlende Pakete vollautomatisch während des Kompilierens herunter.
2. **Perl installieren:** Das Build-Tool `latexmk` benötigt Perl. Lade [Strawberry Perl](https://strawberryperl.com/) herunter und installiere es. 
   *(Tipp: Nach der Installation von Perl muss VS Code komplett geschlossen und neu geöffnet werden, damit der System-Pfad aktualisiert wird!)*

#### VS Code konfigurieren:
1. Installiere die VS Code Extension **LaTeX Workshop**.
2. Öffne den Ordner `latex-template/` und wähle die `main.tex`.
3. Speichere das Dokument (`Strg + S`) oder drücke den grünen Play-Button oben rechts, um das PDF zu generieren.

---

## ⚙️ VS Code Einstellungen (Best Practices)

In diesem Repository liegt ein `.vscode`-Ordner mit einer `settings.json`. Diese beinhaltet wichtige Komfort-Einstellungen für LaTeX:

- **Auto-Build on Save:** Kompiliert das Dokument nur, wenn du `Strg + S` drückst (nicht bei jedem Tastendruck).
- **Auto-Clean:** Löscht temporäre Build-Dateien nach erfolgreichem Kompilieren.
- **SyncTeX:** Erlaubt das Springen zwischen PDF und Quellcode. Halte `Strg` gedrückt und klicke im PDF auf einen Text, um direkt zur entsprechenden Code-Zeile in VS Code zu springen.
- **File Exclude:** Versteckt temporäre Dateien (`.aux`, `.bbl`, `.fls` etc.) im VS Code Datei-Explorer, damit das Projekt übersichtlich bleibt.

