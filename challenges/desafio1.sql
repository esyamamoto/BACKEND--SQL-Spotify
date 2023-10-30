DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE
    plans_signature (
        id_plans INT auto_increment not null,
        name_plans VARCHAR(255) not null,
        value_plan VARCHAR(255) not null,
        CONSTRAINT PRIMARY KEY(id_plans)
    );

CREATE TABLE
    users (
        id_users INT auto_increment not null,
        name_users VARCHAR(255) not null,
        age VARCHAR(255) not null,
        date_signature VARCHAR(255) not null,
        id_plans INT not null,
        CONSTRAINT PRIMARY KEY(id_users),
        foreign key (id_plans) references plans_signature (id_plans)
    );

CREATE TABLE
    artists (
        id_artist INT auto_increment not null,
        name_artist VARCHAR(255) not null,
        CONSTRAINT PRIMARY KEY(id_artist)
    );

CREATE TABLE
    albuns (
        id_album INT auto_increment not null,
        name_album VARCHAR(255) not null,
        year_album year not null,
        id_artist int not null,
        CONSTRAINT PRIMARY KEY(id_album),
        foreign key (id_artist) references artists (id_artist)
    );

CREATE TABLE
    music (
        id_music INT auto_increment not null,
        name_music VARCHAR(255) not null,
        duration_music int not null,
        id_album int not null,
        CONSTRAINT PRIMARY KEY(id_music),
        foreign key (id_album) references albuns (id_album)
    );

CREATE TABLE
    historic (
        id_users int not null,
        id_music int not null,
        reproduction_date datetime not null,
        primary key (id_music, id_users),
        foreign key (id_music) references music (id_music),
        foreign key (id_users) references users (id_users)
    );

CREATE TABLE
    follow_artists (
        id_users int,
        id_artist int,
        primary key (id_artist, id_users),
        foreign key (id_artist) references artists (id_artist),
        foreign key (id_users) references users (id_users)
    );

insert into
    artists (id_artist, name_artist)
values ('1', 'Beyoncé'), ('2', 'Queen'), ('3', 'Elis Regina'), ('4', 'Baco Exu do Blues'), ('5', 'Blind Guardian'), ('6', 'Nina Simone');

insert into
    plans_signature (
        id_plans,
        name_plans,
        value_plan
    )
values ('1', 'gratuito', '0.00'), ('2', 'familiar', '7.99'), ('3', 'universitario', '5.99'), ('4', 'pessoal', '6.99');

insert into
    users (
        id_users,
        name_users,
        age,
        date_signature,
        id_plans
    )
values (
        '1',
        'Barbara Liskov',
        '82',
        '2019-10-20',
        '1'
    ), (
        '2',
        'Robert Cecil Martin',
        '58',
        '2017-01-06',
        '1'
    ), (
        '3',
        'Ada Lovelace',
        '37',
        '2017-12-30',
        '2'
    ), (
        '4',
        'Martin Fowler',
        '46',
        '2017-01-17',
        '2'
    ), (
        '5',
        'Sandi Metz',
        '58',
        '2018-04-29',
        '2'
    ), (
        '6',
        'Paulo Freire',
        '19',
        '2018-02-14',
        '3'
    ), (
        '7',
        'Bell Hooks',
        '26',
        '2018-01-05',
        '3'
    ), (
        '8',
        'Christopher Alexander',
        '85',
        '2019-06-05',
        '4'
    ), (
        '9',
        'Judith Butler',
        '45',
        '2020-05-13',
        '4'
    ), (
        '10',
        'Jorge Amado',
        '58',
        '2017-02-17',
        '4'
    );

insert into
    follow_artists (id_users, id_artist)
values ('1', '1'), ('1', '2'), ('1', '3'), ('2', '1'), ('2', '3'), ('3', '2'), ('4', '4'), ('5', '5'), ('5', '6'), ('6', '6'), ('6', '1'), ('7', '6'), ('9', '3'), ('10', '2');

insert into
    albuns (
        id_album,
        name_album,
        year_album,
        id_artist
    )
values ('1', 'Renaissance', '2022', '1'), ('2', 'Jazz', '1978', '2'), ('3', 'Hot Space', '1982', '2'), (
        '4',
        'Falso Brilhante',
        '1998',
        '3'
    ), (
        '5',
        'Vento de Maio',
        '2001',
        '3'
    ), ('6', 'QVVJFA?', '2003', '4'), (
        '7',
        'Somewhere Far Beyond',
        '2007',
        '5'
    ), (
        '8',
        'I Put A Spell On You',
        '2012',
        '6'
    );

insert into
    music (
        id_music,
        name_music,
        duration_music,
        id_album
    )
values (
        '1',
        "BREAK MY SOUL",
        '279',
        '1'
    ), (
        '2',
        "VIRGO'S GROOVE",
        '369',
        '1'
    ), (
        '3',
        "ALIEN SUPERSTAR",
        '116',
        '1'
    ), (
        '4',
        "Don't Stop Me Now",
        '203',
        '2'
    ), (
        '5',
        "Under Pressure",
        '152',
        '3'
    ), (
        '6',
        "Como Nossos Pais",
        '105',
        '4'
    ), (
        '7',
        "O Medo de Amar é o Medo de Ser Livre",
        '207',
        '5'
    ), (
        '8',
        "Samba em Paris",
        '267',
        '6'
    ), (
        '9',
        "The Bard's Song",
        '244',
        '7'
    ), (
        '10',
        "Feeling Good",
        '100',
        '8'
    );

insert into
    historic (
        id_music,
        id_users,
        reproduction_date
    )
values (
        '8',
        '1',
        "2022-02-28 10:45:55"
    ), (
        '2',
        '1',
        "2020-05-02 05:30:35"
    ), (
        '10',
        '1',
        "2020-03-06 11:22:33"
    ), (
        '10',
        '2',
        "2022-08-05 08:05:17"
    ), (
        '7',
        '2',
        "2020-01-02 07:40:33"
    ), (
        '10',
        '3',
        "2020-11-13 16:55:13"
    ), (
        '2',
        '3',
        "2020-12-05 18:38:30"
    ), (
        '8',
        '4',
        "2021-08-15 17:10:10"
    ), (
        '8',
        '5',
        "2022-01-09 01:44:33"
    ), (
        '5',
        '5',
        "2020-08-06 15:23:43"
    ), (
        '7',
        '6',
        "2017-01-24 00:31:17"
    ), (
        '1',
        '6',
        "2017-10-12 12:35:20"
    ), (
        '4',
        '7',
        "2011-12-15 22:30:49"
    ), (
        '4',
        '8',
        "2012-03-17 14:56:41"
    ), (
        '9',
        '9',
        "2022-02-24 21:14:22"
    ), (
        '3',
        '10',
        "2015-12-13 08:30:22"
    );
