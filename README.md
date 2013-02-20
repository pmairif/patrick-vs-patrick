= Patrick vs. Patrick =

Vergleich von Webentwicklungsstrategien anhand einer vereinfachten realistischen Webanwendung.
Als Beispiel soll ein Tool zur Verwaltung und dem Versand von Newslettern dienen.

Dieses Projekt enthät die Resourcen auf die man sich gemeinsam geeinigt hat. Die einzelnen Projekte werden in separaten Projekten entwickelt.

Teilnahme willkommen!

== Vorgaben ==

- Layout und DB-Struktur vorgegeben
- HTML-Layout vorgegeben
- URL-Schema vorgegeben
- öffentliche Funktionen:
	- Newsletter-Anmeldung mit Double-opt-in (Bestätigungslink in Mail)
	- Abmelden (Links in Mail und auf Webseite)
- Admin-Funktionen:
   	- Admin muss sich authentifizieren (Nutzername/Passwort in DB hinterlegt)
	- Liste von Empfängern mit Name und E-Mail-Adr
   	- Admin kann Einträge hinzufügen, ändern und löschen
	- Newsletter erstellen und versenden
- Mails
	- Mailversand mit reinen Textmails, kein multipart, kein HTML
	- personalisierte Mails (Anrede)
	- Mails sollen Links zum Abmelden enthalten
	- keine Behandlung von Rückläufern nötig
	- Webanwendung informiert Browser (via AJAX) über Fortschritt des Mailversandes

== Kriterien ==

Die Projekte werden hinsichtlich folgender Kriterien bewertet:

	1. "Code-Eleganz": Wie einfach/aufwändig ist es die Aufgaben umzusetzen? Wie übersichtlcih ist der entstandene Code?
	2. Wartbarkeit & Flexibilität: Wie leicht können geänderte Anforderungen und neue Funktionen umgesetzt werden?
	3. Performanz: Einfacher Lasttest - Abfolge subscribe, confirm, unsubscribe. Wieviel pro Sekunde? Spielen die Lösungen in der gleichen Liga oder gibt es merkbare Unterschiede?
