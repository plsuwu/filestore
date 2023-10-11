-- Active: 1696416741874@@127.0.0.1@3306@test

drop table if exists users;

create table if not exists
    users(
        id int not null auto_increment primary key,
        fn varchar(255) not null,
        ln varchar(255) not null,
        user varchar(255) not null,
        email varchar(255) not null,
        pass varchar(255) not null
    );

insert into users
values (
        1,
        'test',
        'test',
        'test',
        'test@test',
        '$2a$10$t6IS2tUqa2hN/vuz5ZU3aOyCXP2YOSi5bHrvqrSu4kIItGM5x8wSm'
    );

insert into users
values (
        2,
        'pls',
        'pls',
        'pls,',
        'admin@filestore',
        '$2a$10$2IVKjxBsSD6hSRalOuUA9OmqKEcHP1Uv3k0xc2CCGeTrBZ5UW3GVC'
    );