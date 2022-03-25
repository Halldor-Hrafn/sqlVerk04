SELECT recipes.name, instructions.step, instructions.description
FROM recipes
INNER JOIN recipeInstructions 
    ON recipes.idRecipe = recipeInstructions.idRecipe
INNER JOIN instructions
    ON recipeInstructions.idInstruction = instructions.idInstruction
WHERE recipes.name = 'Classic Waffles'

SELECT recipes.name, ingredients.name, recipeIngredients.quantity
FROM recipes 
INNER JOIN recipeIngredients
    ON recipes.idRecipe = recipeIngredients.idRecipe
INNER JOIN ingredients
    ON recipeIngredients.idIngredient = ingredients.idIngredient
WHERE recipes.name = 'Fluffy French toast'

SELECT recipes.name, creators.firstName, creators.lastName
FROM recipes
INNER JOIN recipeCreators
    ON recipes.idRecipe = recipeCreators.idRecipe
INNER JOIN creators
    ON recipeCreators.idCreator = creators.idCreator
