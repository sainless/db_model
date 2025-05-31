alter table posts add constraint title_check check (title ~ "^[A-ZА-Я][A-Za-zА-Яа-я0-9\s\-',.]*$");
