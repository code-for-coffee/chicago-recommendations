CREATE DATABASE chicago_recommendations;
\c chicago_recommendations
CREATE TABLE recommendations (id SERIAL PRIMARY KEY, contributor VARCHAR(255), place_name VARCHAR(255), type_of_place VARCHAR(255), notes TEXT);
