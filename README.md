reisekosten

Neues Objekt anlegen (Beispiel):

	rails g scaffold pauschale stunden:integer betrag:monetize --skip-migration --orm mongoid
	rails g bootstrap:themed pauschales <-- auf das 's' achten!

	Anschließend aus der 'app/views/pauschales/index.html.haml' die 'created_at'-Spalte löschen, 
	da diese hier nicht funktionieren! 