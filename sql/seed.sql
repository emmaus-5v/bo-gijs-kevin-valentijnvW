-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--


insert into categories (name, description) values ('Schilderijen', ' Zeg je kunst, zeg je schilderijen. Daarom bieden wij van bijvoorbeeld goedkope abstracte schilderijen tot grote schilderijen voor op kantoor en schilderijen van Nederlanse betaalbare kunstenaars. Eén ding hebben ze gemeen: ze zijn alle met passie en met de hand geschilderd.'); -- 1
insert into categories (name, description) values ('Fotografie', 'Fotografie is een latere en daarom een modernere kunstvorm. Een mooie foto misstaat echter bijna geen elk interieur. Een eventuele te strakke uitstraling kan bijvoorbeeld worden gecompenseerd met een klassieke foto. Een goed voorbeeld is de urban fotografie van Lacour.'); -- 2
insert into categories (name, description) values ('Beelden', 'Beelden zijn ware sieraden voor je huis. Evenals een schilderij of ander kunstwerk aan de muur, geeft bijvoorbeeld een bronzen beeld je huis karakter. Het laat iets van jezelf zien en dat je zorgt voor je omgeving. En wij zorgen uiteraard voor een mooie prijs.'); -- 3
insert into categories (name, description) values ('Kunst op maat', 'Een schilderij op maat laten maken is wellicht het meest persoonlijke stukje kunst dat je je kunt aanmeten. Laat door ons je foto met speciale herinneringen of je favoriete schilderij naschilderen. Maatwerk kan al vanaf 250 euro incl. btw en verzending.'); -- 4

-- Schilderijen
insert into products (name, description, category_id, code, price) values ('Van Gogh - De Nachtwacht', 'De geschatte waarde van het wereldberoemde schilderij De Nachtwacht van Rembrandt ligt
op 500 miljoen euro. Maar met minimaal 30.000 euro kun je een aardig eind komen m een exacte replica te laten maken. Bij ons kan je de originele Nachtwacht kopen, voor slechts 400 miljoen euro (dus nog 100 miljoen euro minder dan de geschatte waarde!!)', 1, '01819-1', 400000000);
insert into products (name, description, category_id, code, price) values ('Van Gogh - Zonnebloemen', 'Van Goghs "Zonnebloemen" wordt verkocht voor bijna 40 miljoen dollar. Zonnebloemen is een schilderij uit een serie schilderijen van de beroemde Nederlandse
kunstschilder Vincent van Gogh. Vincent van Gogh maakt de schilderijen om zijn logeerkamer te versieren voor zijn vriend Paul Gauguin. Die komt bij hem logeren. Bij ons kun je dit schilderij voor slechts
30 miljoen euro aanschaffen.', 1, '01819-2', 30000000);
insert into products (name, description, category_id, code, price) values ('Da Vinci - Mona Lisa', 'Na de Franse revolutie in 1789 kwamen de paleizen, zoals het Louvre, en privé verzamelingen van de rijken in handen van het volk. Zo kwam de Mona Lisa in handen van de Franse staat. Het Louvre
heeft dus geluk gehad en nooit iets hoeven betalen voor de beroemde dame. De prijs waarvoor Leonardo Da Vinci het destijds verkocht, was 4000 goudstukken. Bij ons kun je de originele Mona Lisa voor slechts €0,99 kopen.', 1, '01819-3', 0.99);

-- Fotografie
insert into products (name, description, category_id, code, price) values ('Standaard fotoshoot (60 min)', 'Laat een professionele fotograaf jou fotograferen voor een uur lang! En wees niet bang dat je te lelijk bent voor een mooie foto, wij hebben heel wat lelijke mensen goed op de foto gekregen! Dus wacht niet langer, en bestel een professionele fotoshoot van Arnolds.', 2, '01820-1', 45);
insert into products (name, description, category_id, code, price) values ('Standaard fotoshoot (120 min)', 'Laat een professionele fotograaf jou fotograferen voor twee uur lang! En wees niet bang dat je te lelijk bent voor een mooie foto, wij hebben heel wat lelijke mensen goed op de foto gekregen! Dus wacht niet langer, en bestel een professionele fotoshoot van Arnolds.', 2, '01820-2', 85);
insert into products (name, description, category_id, code, price) values ('Naaktshoot (90 min)', 'Hoewel wij geen NSWF content schieten, zijn onze fotografen wel bereid om naaktshoots te schieten. U betaalt slechts 69 euro. Wij hebben deze prijs mede gekozen omdat het getal 69 bij het thema van de shoot past.', 2, '01820-3', 69);


-- Beelden
insert into products (name, description, category_id, code, price) values ('Bokito', 'Koop een beeld van Bokito en je krijgt er gratis vogelvoer bij t.w.v. 8 euro!', 3, '01821-1', 119.99);
insert into products (name, description, category_id, code, price) values ('Rhino', 'Rustig maar, deze Rhino is niet echt en zal je niet aanvallen. Maar wel mooi toch? Koop hem voor slechts 900 euro, en geniet van dit mooie beeld.', 3, '01821-2', 899.99);
insert into products (name, description, category_id, code, price) values ('WISE', 'Zoals met alle abstracte kunst, mag je de betekenis van dit beeld zelf opmaken. Wij van Arnolds hebben ook werkelijk geen idee wat de kunstenaar met dit beeld wil zeggen, en vinden het ook helemaal niet mooi. Daarom willen wij zo snel mogelijk van dit beeld af.
Dus voor 99 eurocent kunt u hem bestellen.', 3, '01821-3', 0.99);

-- Kunst op maat
insert into products (name, description, category_id, code, price) values ('Schilderij op maat (80x80cm)', 'Een prachtig schilderij, gemaakt door de enige echte Bo Goedhart. Dit schilderij heeft een canvas van 80x80cm, en wordt met liefde en passie gemaakt.', 4, '01823-1', 200);
insert into products (name, description, category_id, code, price) values ('Schilderij op maat (150x80cm)', 'Een prachtig schilderij, gemaakt door de enige echte Bo Goedhart. Dit schilderij heeft een canvas van 150, en wordt met liefde en passie gemaakt.', 4, '01823-2', 350);
insert into products (name, description, category_id, code, price) values ('Schilderij op maat (200x200cm)', 'Een prachtig schilderij, gemaakt door de enige echte Bo Goedhart. Dit schilderij heeft een canvas van 200x200cm, en wordt met liefde en passie gemaakt.', 4, '01823-3', 550);
insert into products (name, description, category_id, code, price) values ('SuperSchilderij op maat (300x200cm)', 'Een megamooi schilderij, gemaakt door de enige echte Bo Goedhart. Dit schilderij heeft een canvas van maar liefst 300x200cm, en wordt met liefde en passie gemaakt.', 4, '01823-4', 700);
