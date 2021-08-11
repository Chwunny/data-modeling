
CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(50),
    user_email VARCHAR(50),
    user_password VARCHAR(500)
);

CREATE TABLE recipes(
    recipe_id SERIAL PRIMARY KEY,
    recipe_name VARCHAR(100),
    user_id INT NOT NULL REFERENCES users(user_id),
    ingredients TEXT,
    instructions TEXT,
    public BOOLEAN DEFAULT true
);

CREATE TABLE grocery_lists(
    grocery_list_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(user_id),
    recipe_id INT NOT NULL REFERENCES recipes(recipe_id)
);

CREATE TABLE occasions(
    occasion_id SERIAL PRIMARY KEY,
    occasion_name VARCHAR(50),
    user_id INT NOT NULL REFERENCES users(user_id),
    recipe_id INT NOT NULL REFERENCES recipes(recipe_id)
);

-- Intermediate
INSERT INTO users (user_name, user_email, user_password)
VALUES('Chwunny', 'chwunny@chwunny.chwun', 'CHWUNNNNNNNY');

INSERT INTO recipes (recipe_name, user_id, ingredients, instructions, public)
VALUES ('Hotdog', 1, 'ingr1, ingr2, ingr3', 'places in microwave', TRUE)

INSERT INTO grocery_lists (user_id, recipe_id)
VALUES (1, 1)

INSERT INTO occasions(occasion_name, user_id, recipe_id)
VALUES('Birthday', 1, 1)