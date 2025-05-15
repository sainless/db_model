CREATE UNIQUE INDEX idx_users_login ON users(login_user);
CREATE INDEX idx_users_fullname ON users(full_name);

CREATE UNIQUE INDEX idx_base_info_email ON base_information(email);
CREATE INDEX idx_base_info_city ON base_information(city_living);
CREATE INDEX idx_base_info_phone ON base_information(number_phone) WHERE number_phone IS NOT NULL;

CREATE INDEX idx_personal_info_birthdate ON personal_information(date_of_birth);
CREATE INDEX idx_personal_info_gender ON personal_information(gender);
CREATE INDEX idx_personal_info_nationality ON personal_information(nationality);

CREATE INDEX idx_education_year ON education(year);
CREATE INDEX idx_education_shorttext ON education(short_text);

CREATE INDEX idx_notes_employment ON notes(employment);
CREATE INDEX idx_notes_salary ON notes(salary);

CREATE INDEX idx_additional_info_qualities ON additional_information(personal_qualities);
CREATE INDEX idx_additional_info_hobby ON additional_information(hobby);

CREATE INDEX idx_programmer_languages ON programmer_skills(languages);
CREATE INDEX idx_programmer_techskills ON programmer_skills(tech_skills);
