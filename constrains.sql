alter table base_information add constraint email_check check (email ~ "/^[a-zA-Z0-9");
alter table base_information add constraint number_phone_check check (number_phone ~ "^\+[0-9]{1,3}[0-9]{4,14}$");
alter table personal_information add constraint gender_check check (gender in ("Мужской", "Женский"));
alter table personal_information add constraint year_check check (year >= 18);
