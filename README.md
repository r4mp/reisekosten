reisekosten

Anmerkung zur Namenskonvention:

Da es sich um eine Software handelt, die für den deutschen "Markt" gedacht ist,
bitte ausnahmsweise deutsche Begrifflichkeiten verweden. Danke!

Neues Objekt anlegen (Beispiel):

	rails g scaffold pauschale stunden:integer betrag:monetize --skip-migration --orm mongoid
	rails g bootstrap:themed pauschales <-- auf das 's' achten!

	Anschließend aus der 'app/views/pauschales/index.html.haml' die 'created_at'-Spalte löschen, 
	da diese hier nicht funktionieren! 