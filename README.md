# ROCKET ELEVATORS INFORMATION SYSTEM


![](http://rocketelevator.ca/assets/R2-3c6296bf2343b849b947f8ccfce0de61dd34ba7f9e2a23a53d0a743bc4604e3c.png)

This repository contain the Ruby on Rails with MySQL Web framework for the Rocket Elevator Digital Presence Plan.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Used in the project

What things you need to install the software and how to install them.

```
Ruby Ver 2.6.1p33
Rails Ver 5.2.2
Nodejs Ver v8.15.1
MySQL  Ver 14.14 Distrib 5.7.25
PostgreSQL Ver 11
```

### Installing

Following these steps you'll have a environnment up and running.

```
Clone the git using : $ git clone https://github.com/olidenis/Rocket_Elevators_Information_System.git
Start the MySQL server on your machine, with $ sudo service mysql start
Include your database.yml in the /config foler
Inclue a file for PostgreSQL database, name dwh_database.yml
Permorm a rake db:reset
```

####For twilio:
```
- Go to application.yml and changes the phone number.
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Ruby](https://www.ruby-lang.org/en/) - Open source language
* [Rails](https://rubyonrails.org/) - Web framework
* [MySQL](https://www.mysql.com/) - Open source database
* 

## Contributing

Please read [CONTRIBUTING.md](https://github.com/olidenis/Rocket_Elevators_Information_System/blob/master/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

TODO.

## Authors

* **Samuel Asselin** - *IBM Watson, Google Map*
* **Gabriel Chevanel** - *Twilio, Zendesk*
* **Airton Negromonte** - *Google Map*
* **Oivier Denis** - *Sendgrid, Dropbox*
* **Jérémy Lefevbre** - *Slack*

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* CodeBoxx school

## List of required Gems
- rake	12.3.2
- concurrent-ruby	1.1.5
- i18n	1.6.0
- minitest	5.11.3
- thread_safe	0.3.6
- tzinfo	1.2.5
- activesupport	5.2.2.1
- builder	3.2.3
- erubi	1.8.0
- mini_portile2	2.4.0
- nokogiri	1.10.1
- rails-dom-testing	2.0.3
- crass	1.0.4
- loofah	2.2.3
- rails-html-sanitizer	1.0.4
- actionview	5.2.2.1
- rack	2.0.6
- rack-test	1.1.0
- actionpack	5.2.2.1
- nio4r	2.3.1
- websocket-extensions	0.1.3
- websocket-driver	0.7.0
- actioncable	5.2.2.1
- globalid	0.4.2
- activejob	5.2.2.1
- mini_mime	1.0.1
- mail	2.7.1
- actionmailer	5.2.2.1
- activemodel	5.2.2.1
- arel	9.0.0
- activerecord	5.2.2.1
- mimemagic	0.3.3
- marcel	0.3.3
- activestorage	5.2.2.1
- public_suffix	3.0.3
- addressable	2.6.0
- net-ssh	5.2.0
- net-scp	1.2.1
- sshkit	1.18.2
- airbrussh	1.3.1
- io-like	0.3.0
- archive-zip	0.12.0
- execjs	2.7.0
- autoprefixer-rails	9.5.0
- bcrypt	3.1.12
- bindex	0.5.0
- msgpack	1.2.9
- bootsnap	1.4.1
- rb-fsevent	0.10.3
- ffi	1.10.0
- rb-inotify	0.10.0
- sass-listen	4.0.0
- sass	3.7.3
- bootstrap-sass	3.3.7
- method_source	0.9.2
- thor	0.20.3
- railties	5.2.2.1
- bootstrap-social-rails	4.12.0
- bundler	2.0.1
- byebug	11.0.0
- capistrano	3.11.0
- capistrano-bundler	1.5.0
- capistrano-rails	1.4.0
- capistrano-rails-db	0.0.2
- capistrano-rake	0.2.0 
- puma	3.12.0
- capistrano3-puma	3.1.1
- regexp_parser	1.3.0
- xpath	3.2.0
- capybara	3.14.0
- sprockets	3.7.2
- sprockets-rails	3.2.1
- rails	5.2.2.1
- chartjs-ror	3.6.4
- childprocess	0.9.0
- chromedriver-helper	2.1.0
- chronic	0.10.2
- coffee-script-source	1.12.2
- coffee-script	2.4.1
- coffee-rails	4.2.2
- font-awesome-sass	4.3.2.1
- groupdate	4.1.1
- multi_json	1.13.1
- jbuilder	2.8.0
- jquery-rails	4.3.3
- jquery-ui-rails	6.0.1
- kaminari-core	1.1.1
- kaminari-actionview	1.1.1
- kaminari-activerecord	1.1.1
- kaminari	1.1.1
- ruby_dep	1.5.0
- listen	3.1.5
- mysql2	0.5.2
- owlcarousel-rails	2.2.3.5
- pg	1.1.4
- require_all	2.0.0
- rubyzip	1.2.2
- rvm1-capistrano3	1.4.0
- tilt	2.0.9
- sass-rails	5.0.7
- selenium-webdriver	3.141.0
- spring	2.0.2
- spring-watcher-listen	2.0.1
- trestle	0.8.11
- trestle-auth	0.2.5
- trestle-search	0.3.0
- turbolinks-source	5.2.0
- turbolinks	5.2.0
- uglifier	4.1.20
- web-console	3.7.0
- whenever	0.9.7


## Initial Configuration

### The Gem used to generate the Admin Panel and to generate the User/Employee 

- https://github.com/TrestleAdmin/trestle


### The Gem used to generate the Login Panel 

- https://github.com/TrestleAdmin/trestle-auth


## Initial User List
|First Name|Last Name|Title|Email|Password|
|-------------|-------------|-------------|-------------|-------------|
| Philippe | Bouillon | Comm Rep | philippe.bouillon@codeboxx.biz | 1234 |
| Felix-Antoine | Paradis | Engineer | felix-antoine.paradis@codeboxx.biz | 1234 |
| Remi | Gagnon | Engineer | remi.gagnon@codeboxx.biz | 1234 |
| Mathieu | LeFrançois | Engineer | mathieu.lefrancois@codeboxx.biz | 1234 |
| Mathieu | Houde | Engineer | mathieu.houde@codeboxx.biz | 1234 |
| Serge | Savoie | Engineer| serge.savoie@codeboxx.biz | 1234 |
| Nadya | Fortier | Director | nadya.fortier@codeboxx.biz | 1234 |
| Clary |	Ledson | Mechanic	|cledson0@photobucket.com	| 1234 |
| Lee 	| Mc Pake	| Mechanic	| lmc1@about.me	| 1234 |
| Britte |	Greeson |	Mechanic |	bgreeson2@imgur.com |	1234 |
| Jonathan |	Pagani |	Designer |	itedahl3@yandex.ru |	1234 |
| Bryana |	Shapland |	Mechanic |	bshapland4@bbb.org	| 1234 |
| Michelina |	Easthope	| Mechanic |	measthope5@flickr.com	| 1234 |
| Simon |	Fortier |	Designer |	getoverhere@konami.com |	1234 |
| Tomlin |	Paradyce |	Electrician |	tparadyce7@webeden.co.uk |	1234 |
| Juliette |	Blinman |	Electrician	| jblinman8@booking.com |	1234 |
| Nomi |	Rapkins |	Electrician	| nrapkins9@paginegialle.it	| 1234 |
| Samuel |	Asselin |	Designer |	samass@britney.com |	1234 |
| Alta |	Hardcastle |	Electrician |	ahardcastleb@wsj.com |	1234 |
| Eben |	Holcroft |	Electrician |	eholcroftc@zimbio.com |	1234 |
| Woody |	Buzz |	Electrician	| woodyandbuzz3@forever.com	| 1234 |
| Gabriel |	Chevanel |	Designer |	chevy.chialar@deliciousdays.com |	1234 |
| Maddie |	Canning |	Electrician |	mcanningf@bizjournals.com |	1234 |
| Alfonse |	Nafziger |	Electrician |	anafzigerg@reference.com |	1234 |
| Hilarius |	Leacock |	Electrician |	hleacockh@slideshare.net |	1234 |
| Sile |	Rack |	Electrician |	sracki@desdev.cn |	1234 |
| Colet |	Siburn |	Electrician |	csiburnj@godaddy.com |	1234 |
| Melina |	Bohling |	Electrician |	mbohlingk@goodreads.com |	1234 |
| Luciana |	Bordone |	Electrician |	lbordonel@irs.gov |	1234 |
| Benson |	Patry |	Electrician |	benson@wakanda.gov |	1234 |
| Hollis |	Guidotti |	Electrician |	hguidottin@cargocollective.com |	1234 |
| Morgen |	Herity |	Electrician |	mherityo@mac.com |	1234 |
| Martin |	Chantal |	Mechanic |	lebourgeois@tuto.com |	1234 |
| Scarface	| Antonoczyk |	Mechanic |	santonoczykq@sciencedaily.com |	1234 |
| Leandra |	Myott |	Mechanic |	lmyottr@twitter.com |	1234 |
| Svend | Lydster |	Mechanic |	slydsters@ifeng.com |	1234 |
| Kathrine |	Levensky |	Comm Rep |	klevenskyt@altervista.org |	1234 |
| Ollie |	McDavid |	Customer |	hjarad0@go.com |	1234 |
| Cyrille |	Chapiro |	Customer |	mkubicki1@slashdot.org |	1234 |
| Alli |	Ormesher |	Customer |	tlepard2@facebook.com |	1234 |
| Hillery |	Dunsmuir |	Customer |	ecorby3@google.ru |	1234 |
| Brock |	Durnford |	Customer |	mhinzer4@bizjournals.com |	1234 |
| Benedict |	Arend |	Customer |	ekehir5@ucoz.ru |	1234 |
| Gusta |	Phettis |	Customer |	awaterstone6@google.nl |	1234 |
| Adams |	Sowte	| Customer |	aquogan7@lulu.com |	1234 |
| Del |	Giorgi |	Customer |	mmcdell8@homestead.com |	1234 |
| Haleigh |	Bernardos |	Customer |	dmcgrotty9@mediafire.com |	1234 |
| Katey |	Jupp |	Customer |	rtingeya@spotify.com |	1234 |
| Justinn |	Kivlin |	Customer |	sdianob@alibaba.com |	1234 |
| Howard |	Pitkins |	Customer |	sfugglesc@ning.com |	1234 |
| Maurine |	Southam |	Customer |	vfealtyd@wikispaces.com |	1234 |
| Henrieta | Argontt	|	Customer |	zeaglinge@spotify.com	| 1234 |
| Kasper |	De Lascy |	Customer |	lkordesf@hibu.com |	1234 |
| Garth |	Sharrem |	Customer |	mvassmang@ask.com |	1234 |
| Bendicty |	Palphreyman |	Customer |	aouryh@msn.com |	1234 |
| Walden |	Phebee |	Customer |	gbloisi@state.tx.us |	1234 |
| Sterling |	Jeune |	Customer	| kyandellj@ucoz.com	| 1234 |
| Cammie |	Deevey	| Customer |	cgodfroyk@meetup.com |	1234 |
| Anya |	Adger	| Customer |	mhamsonl@yellowpages.com |	1234 |
| Mellisa |	Stothard |	Customer |	vbroadeym@smh.com.au |	1234 |
| Roxine |	Pounder |	Customer |	dskillicornn@independent.co.uk |	1234 |
| Cymbre  |	Andries |	Customer |	amaccaugheno@cam.ac.uk |	1234 |
| Gelya |	Domican	| Customer	| bmorriesonp@nifty.com	| 1234 |
| Estel |	Debrick	| Customer	| jarnallq@about.com	| 1234 |
| Lowell |	Obee	| Customer |	hferraraccior@barnesandnoble.com |	1234 |
| Randi |	Seyler |	Customer |	blelliotts@mail.ru |	1234 |
| Consalve |	Tompkin |	Customer |	amccallumt@hibu.com |	1234 |
| Matthias |	Whordley |	Customer |	adahleru@yahoo.com	| 1234 |
| Peyton |	Sondon	| Customer	| lhandasidev@booking.com |	1234 |
| Heloise |	Doblin |	Customer |	srentonw@ebay.com |	1234 |


# Rocket_Elevators_API
# Rocket_Elevators_API
