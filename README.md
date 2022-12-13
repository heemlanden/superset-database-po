# Superset container

Deze Codespace bevat een open source applicatie genaamd Apache Superset, die een PostgreSQL database gebruikt om data uit te visualiseren. Als je hier je eigen data in laadt, kun je vervolgens dashboards maken in Superset.

Als het goed is ben je hier gekomen door de Classroom link te accepteren die ik gemaild heb.

Volgende initialisatiestappen:
* Maak de codespace aan (klik op de groene knop Code hierboven, en klik in de dropdown op de Codespaces tab en dan op het + tekentje om een nieuwe codespace aan te maken)
* Open de codespace nadat die aangemaakt is in Visual Studio op je laptop (dus niet in de browser!) door in VS Code F1 ... Codespaces: Connect to Codespace te gebruiken en in de dropdown de naam van je repository/codespace te selecteren (`database-analyse-...`)
* Open, nadat de codespace geladen is, de Terminal en geef het commando `/app/docker/docker-init.sh`
* Open nu in je browser http://127.0.0.1:8088
* Login met admin/admin
* Ga naar [Data > Databases](http://127.0.0.1:8088/databaseview/list/), klik op + DATABASE rechtsboven en selecteer PostgreSQL. Vul in:
  - Host: `db`
  - Port: `5432`
  - Database name: `superset`
  - Username: `superset`
  - Password: `superset`
  - Display name: `PostgreSQL`
* Klik Connect en Finish

* Nu kun je je eigen data toevoegen. Maak een bestand aan met een naam die eindigt op `.pgsql`, plak daarin jouw database code (de gereviewde versie van Github) en voer die vervolgens uit met F5 (je kunt database db selecteren).
Opmerking: normaal gesproken zou je dit doen door de repository van de database opdracht te clonen in de Terminal van je Codespace, alleen moet je dan een nieuw PAT (Personal Access Token) genereren en configureren door een [bug](https://github.com/actions/checkout/issues/779) in Github, en dan wordt het wat ingewikkeld dus we laten dat even zitten.

* Ga in Superset naar [Data > Datasets](http://127.0.0.1:8088/tablemodelview/list/), klik op + DATASET rechtsboven en selecteer:
  - Database: `PostgreSQL`
  - Schema: <jouw schemanaam>
  - Table: <kies de tabel uit die je wilt analyseren>
* Voer de stap hierboven uit voor alle tabellen die je wilt gebruiken.

Je bent nu klaar om charts en dashboards van je data te maken. Probeer maar eens een van je voorbeeldqueries in SQL Lab te plakken en uit te voeren.
Zie ook de [dashboards tutorial](https://superset.apache.org/docs/creating-charts-dashboards/creating-your-first-dashboard).
