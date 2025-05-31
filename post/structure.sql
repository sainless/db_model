CREATE TABLE posts( 
    post_id SERIAL PRIMARY KEY,
    author VARCHAR(50) NOT NULL UNIQUE, -- автор статьи
    title VARCHAR(100) NOT NULL UNIQUE -- название статьи
    date_added VARCHAR(33) NOT NULL, -- дата добавления статьи
    reading_time VARCHAR(100), -- время прочтения статьи
    views Integer NOT NULL UNIQUE, -- кол-во просмотров
    tags text -- теги к статьи
    profile_photo VARCHAR(111) -- Превьюшка(изображение)   
    likes INTEGER -- кол-во просмотров
    favourites INTEGER, -- количество избранных 
    shared INTEGER -- количество 'репостов'
    comments INTEGER -- количество комментов
);


create table comments(
    comment_id SERIAL PRIMARY KEY, -- ID коммента
    post_id INTEGER REFERENCES posts(post_id),
    author VARCHAR(50) NOT NULL UNIQUE, -- автор коммента
    date_added VARCHAR(33) NOT NULL, -- дата добавления коммента
    description_t VARCHAR(200) -- описание коммента
    likes INT, -- количество лайков
    dislikes INT -- количество дизлайков
)