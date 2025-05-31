CREATE TABLE posts(
    post_id SERIAL PRIMARY KEY,
    author VARCHAR(50) NOT NULL UNIQUE, -- автор статьи
    title VARCHAR(100) NOT NULL UNIQUE, -- название статьи
    date_added VARCHAR(33) NOT NULL, -- дата добавления статьи
    reading_time VARCHAR(100), -- время прочтения статьи
    views Integer NOT NULL UNIQUE, -- кол-во просмотров
    tags text, -- теги к статьи
    profile_photo VARCHAR(111), -- Превьюшка(изображение)
    likes INTEGER, -- кол-во просмотров
    favourites INTEGER, -- количество избранных
    shared INTEGER, -- количество 'репостов'
    comments INTEGER -- количество комментов
);



CREATE TABLE base_information (
    id_base SERIAL PRIMARY KEY,
    email VARCHAR(50) NOT NULL UNIQUE,
    city_living VARCHAR(100) NOT NULL,
    number_phone VARCHAR(20),
);


CREATE TABLE personal_information (
    id_personal SERIAL PRIMARY KEY,
    gender VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    age integer,
    nationality VARCHAR(16),
    marital_status VARCHAR(16),
    position_s VARCHAR(16)

);



CREATE TABLE education (
    id_education SERIAL PRIMARY KEY,
    year_e text,
    short_text varchar(100)
);


CREATE TABLE notes (
    id_user SERIAL PRIMARY KEY,
    employment varchar(10),
    salary float default 0.0
);


CREATE TABLE additional_information (
    id_additional SERIAL PRIMARY KEY,
    personal_qualities VARCHAR(50) NOT NULL ,
    description_a text NOT NULL,
    hobby VARCHAR(120),
);


CREATE TABLE programmer_skills (
    id_skills SERIAL PRIMARY KEY,
    languages text,
    tech_skills text
);
