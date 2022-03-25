INSERT INTO creators(firstName, lastName, email)
VALUES('Miyuki', 'Shirogane', 'miyuki.shirogane@gmail.com'), ('Yu', 'Ishigami', 'yuIshigami@gmail.com'),
('Ai', 'Hayasaka', 'aiHayasaka@gmail.com'), ('Kei', 'Shirogane', 'keiShiro@gmail.com'),
('Kaguya', 'Shinomiya', 'kaguyaTheBest@gmail.com'), ('Chika', 'Fujiwara', 'chikaFuji@gmail.com'); --These characters are from Kaguya-sama: Love is war

INSERT INTO creators(firstName, lastName, email)
VALUES('Wakana', 'Gojou', 'gojoDolls@gmail.com'), ('Kaoru', 'Gojo', 'gojoDolls@gmail.com'),
('Marin', 'Kitagawa', 'dressUpDoll@gmail.com'), ('Sajuna', 'Inui', 'JuJu@gmail.com'),
('Shinju', 'Inui', 'shinjuInui@gmail.com'); --These characters are from My dress up darling

INSERT INTO ingredients(name) --The ingredients used in the breakfast part
VALUES ('flour'), ('salt'), ('baking powder'), ('white sugar'), ('eggs'), 
('milk'), ('butter'), ('vanilla extract'), ('ground cinnamon'), ('bread slices');

INSERT INTO measurments(name)
VALUES ('cups'), ('teaspoons'), ('units'), ('tablespoons'), ('pinch'), --"units" means individual ones (1 egg, 2 eggs)
('kilos'), ('grams');

INSERT INTO ingredientMeasurments(idIngredient, idMeasurment)
VALUES (1, 1), (2, 5), (3, 2), (4, 4), (5, 3), (6, 1), (7, 7), 
(8, 2), (9, 2), (10, 3), (11, 1)

INSERT INTO recipes(isVegan, name) --Starting with breakfast like recipes
VALUES (0, 'Classic Waffles'), (0, 'Good old fashioned pancakes'),
(0, 'Fluffy French toast'), (0, 'Blueberry lemon breakfast Quinoa'),
(0, 'Authentic Mexican breakfast tacos'), (0, 'Classic hash browns');

INSERT INTO instructions(step, description) --Instructions for the 'Classic Waffles'
VALUES (1, 'In a large bowl, mix together flour, salt, 
baking powder and sugar; set aside. Preheat waffle iron 
to desired temperature.'),
(2, 'In a separate bowl, beat the eggs. Stir in the milk, 
butter and vanilla. Pour the milk mixture into the flour 
mixture; beat until blended.'),
(3, 'Ladle the batter into a preheated waffle iron. 
Cook the waffles until golden and crisp. Serve immediately.');

INSERT INTO instructions(step, description) --Instructions for the 'Good old fashioned pancakes'
VALUES (1, 'In a large bowl, sift together the flour, 
baking powder, salt and sugar. Make a well in the center 
and pour in the milk, egg and melted butter; mix until smooth.'),
(2, 'Heat a lightly oiled griddle or frying pan over medium-high heat. 
Pour or scoop the batter onto the griddle, using approximately 1/4 cup 
for each pancake. Brown on both sides and serve hot.');

INSERT INTO instructions(step, description) --Instructions for the 'Fluffy French toast
VALUES (1, 'Measure flour into a large mixing bowl. Slowly whisk in the milk. 
Whisk in the salt, eggs, cinnamon, vanilla extract and sugar until smooth.'),
(2, 'Heat a lightly oiled griddle or frying pan over medium heat.'),
(3, 'Soak bread slices in mixture until saturated. Cook bread on each 
side until golden brown. Serve hot.')

INSERT INTO recipeInstructions(idRecipe, idInstruction) --The connection for the breakfast thingies
VALUES (1, 1), (1, 2), (1, 3), (2, 4), (2, 5), (3, 6), (3, 7), (3, 8)

INSERT INTO recipeIngredients(idRecipe, idIngredient, quantity)
VALUES (1, 1, 2), (1, 2, 1), (1, 3, 4), (1, 4, 2), (1, 5, 2), (1, 6, 1.5), (1, 11, 0.33), (1, 8, 1), --Ingredients for the "classic waffles"
(2, 1, 1.5), (2, 3, 3.5), (2, 2, 0.25), (2, 4, 1), (2, 6, 1.25), (2, 5, 1), (2, 11, 0.2), --Ingredients for the "Good old fashioned waffles"
(3, 1, 0.25), (3, 6, 1), (3, 2, 1), (3, 5, 3), (3, 9, 0.5), (3, 8, 1), (3, 4, 1), (3, 10, 12) --Ingredients for the "Fluffy French toast"

INSERT INTO recipes(isVegan, name) --Some dinner recipes
VALUES (0, 'Tennessee meatload'), (0, 'Classic dinner rolls'),
(0, 'Paleo pecan-maple salmon'), (0, 'New year dinner'),
(0, 'Tasty baked mac n cheese'), (0, 'stuffed peppers my way')

INSERT INTO recipeCreators(idRecipe, idCreator)
VALUES (1, 2), (3 , 1), (2 , 3), (4 , 6), (5 , 5), (6 , 9), (7 , 8), (8 , 11) 
