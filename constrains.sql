alter table base_information add constraint email_check check (email ~ "/^[a-zA-Z0-9");
alter table base_information add constraint number_phone_check check (number_phone ~ "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$");
alter table personal_information add constraint gender_check check (gender in ("Мужской", "Женский"));
