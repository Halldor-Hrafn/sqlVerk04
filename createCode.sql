CREATE TABLE recipes (
    idRecipe INTEGER PRIMARY KEY,
    isVegan INTEGER, --Found out that if you have it BOOLEAN, it won't work so you have to use INTEGER
    name TEXT
);

CREATE TABLE creators (
    idCreator INTEGER PRIMARY KEY,
    firstName TEXT,
    lastName TEXT,
    email TEXT
);

CREATE TABLE recipeCreators (
    idRecipe INTEGER,
    idCreator INTEGER,
    PRIMARY KEY(idRecipe, idCreator)
);

CREATE TABLE instructions (
    idInstruction INTEGER PRIMARY KEY,
    step INTEGER,
    description TEXT
);

CREATE TABLE recipeInstructions (
    idRecipe INTEGER,
    idInstruction INTEGER,
    PRIMARY KEY(idRecipe, idInstruction)
);

CREATE TABLE ingredients (
    idIngredient INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE recipeIngredients (
    idRecipe INTEGER,
    idIngredient INTEGER,
    quantity REAL,
    PRIMARY KEY(idRecipe, idIngredient)
);

CREATE TABLE categories (
    idCategory INTEGER PRIMARY KEY,
    name TEXT,
    description TEXT
);

CREATE TABLE ingredientsCategories (
    idIngredient INTEGER,
    idCategory INTEGER,
    PRIMARY KEY(idIngredient, idcategory)
);

CREATE TABLE measurments (
    idMeasurment INTEGER PRIMARY KEY,
    name TEXT UNIQUE
);

CREATE TABLE ingredientMeasurments (
    idIngredient INTEGER,
    idMeasurment INTEGER,
    PRIMARY KEY(idIngredient, idMeasurment)
);