<!-- vim: set spell : -->
<!-- vim: set spelllang=de : -->
# PlÜS

PlÜS ist im Allgemeinen ein Werkzeug für die Validierung von Studienplänen. Das
genaue Ziel ist es existierende Studienpläne der
[Heinrich-Heine-Universität Düsseldorf](http://hhu.de) zu importieren, zu
validieren und letztlich in Bezug auf Planungsübersicht und Studierbarkeit zu
verbessern.
Eine Studierbarkeit impliziert, dass alle Studierenden in der Lage sind ihr
Studium in der vom Curriculum vorgeschriebenen Regelstudienzeit zu absolvieren.

![PlUES Timetable Validation Tool][timetable]

## Eigenschaften

Die grundsätzlichen Eigenschaften des PlÜS Werkzeug sind die:
* Überprüfung der Studierbarkeit:
  * einzelner Studiengänge
  * aller vorhandenen Studiengänge auf einmal
* Generierung von Studienplänen als PDF für:
  * einen einzelnen Studiengang
  * alle vorhandenen Studiengänge auf einmal
* Erkennung von Ursachen die mit einer Studierbarkeit in Konflikt stehen.

# Architektur

Die Validierung basiert im Kern auf der Verwendung der B-Methode und dem
[ProB](http://www3.hhu.de/stups/prob/index.php/Main_Page) Werkzeug.
Das B Model beschreibt die Eigenschaften die ein Studienplan erfüllen muss, um
als studierbar zu gelten.
ProB wird hierbei verwendet um diese Eigenschaften zu überprüfen und
entsprechende Studienpläne zu finden, welche die Regeln eines vorgeschriebenen
Curriculums erfüllen.

# Funktionsweise

Das Planungswerkzeug bietet eine vollständige Semesterübersicht aller an einer
Fakultät angebotenen Veranstaltungen.
Einzelne Veranstaltungen können hierbei innerhalb eines Semesters verschoben und
im Anschluss daran spezielle Studiengangskombinationen auf Studierbarkeit
überprüft werden. Sollte eine Fächerkombination studierbar sein, so gibt es die
Möglichkeit einen Studienverlaufsplan als PDF-Datei zu erstellen. Falls
Studierende einen besonderen Wert auf das Belegen einzelner Veranstaltungen
legen oder diese bereits absolviert haben, ist es ebenfalls möglich dies beim
Berechnen des Studienverlaufsplans zu berücksichtigen und einen partiellen
Studienplan zu erstellen. Des weiteren können automatisch alle vorhandenen
Kombinationen überprüft oder alle studierbaren Studienverlaufspläne generiert
werden.
Mögliche zeitliche Konflikte und Überschneidungen von einzelnen Kursen und
Modulen können während der Planung automatisch identifiziert werden. Zusätzlich
können derartige Konflikte schrittweise berechnet werden, so dass es dem
Anwender ermöglicht wird die Konfliktursache genauer zu untersuchen und somit
leichter beheben zu können.

Die Daten eines Studiengangs werden im XML-Format definiert. Unter Verwendung
des bereitgestellten Mincer-Werkzeug kann aus diesen Daten eine entsprechende
SQLite-Datenbank generiert werden. PlüS bietet zudem eine statische Analyse der
Daten eines Studiengangs. Hierbei werden Fehler in den Daten die zu einer nicht
Studierbarkeit führen in einem Bericht beschrieben. Dieser ist in zahlreiche
Kategorien unterteilt, so dass die fehlerhaften Daten möglichst einfach
identifiziert und somit korrigiert werden können. Der Bericht kann ebenso als
PDF-Datei exportiert und somit bei Bedarf gedruckt werden.

Das Planungswerkzeug wird aktuell von der
[philosophischen](http://www.philo.hhu.de/) und
[wirtschaftswissenschaftlichen](http://www.wiwi.hhu.de/) Fakultät sowie dem
[Institut für Informatik](http://www.cs.hhu.de) der
Mathematisch-Naturwissenschaftlichen Fakultät der Heinrich-Heine-Universität
Düsseldorf verwendet.

[timetable]: /images/timetable.png
