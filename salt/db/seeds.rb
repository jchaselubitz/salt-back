# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Calendar.destroy_all
User.destroy_all
RecipeCalendar.destroy_all
RecipeQtyIngredient.destroy_all
Recipe.destroy_all


ingredients = Ingredient.create([
  {name: 'onions', category: 'Produce', image: 'http://www.atmag.net/wp-content/uploads/2013/12/secret-ingredient-hong-kong-atmag.jpg', have: false},
  {name: 'virgin olive oil', category: 'Oil Sauces & Condiments', image: 'http://www.atmag.net/wp-content/uploads/2013/12/secret-ingredient-hong-kong-atmag.jpg', have: false},
  {name: 'celery stalks', category: 'Produce', image: 'http://www.atmag.net/wp-content/uploads/2013/12/secret-ingredient-hong-kong-atmag.jpg', have: false},
  {name: 'carrots', category: 'Produce', image: 'http://www.atmag.net/wp-content/uploads/2013/12/secret-ingredient-hong-kong-atmag.jpg', have: false},
  {name: 'garlic cloves', category: 'Produce', image: 'http://www.atmag.net/wp-content/uploads/2013/12/secret-ingredient-hong-kong-atmag.jpg', have: false},
  {name: 'vegetable broth', category: 'Baking & Spices', image: 'http://www.atmag.net/wp-content/uploads/2013/12/secret-ingredient-hong-kong-atmag.jpg', have: false},
  {name: 'lentils', category: 'Rice, Grains & Beans', image: 'http://www.atmag.net/wp-content/uploads/2013/12/secret-ingredient-hong-kong-atmag.jpg', have: false},
  {name: 'canned tomatoes', category: 'Canned Foods', image: 'http://www.atmag.net/wp-content/uploads/2013/12/secret-ingredient-hong-kong-atmag.jpg', have: false},

  {name: 'sweet potatoes', category: 'Produce', image: 'http://www.atmag.net/wp-content/uploads/2013/12/secret-ingredient-hong-kong-atmag.jpg', have: false},
  {name: 'butter', category: 'Dairy', image: 'http://www.atmag.net/wp-content/uploads/2013/12/secret-ingredient-hong-kong-atmag.jpg', have: false},
  {name: 'honey', category: 'Other', image: 'http://www.atmag.net/wp-content/uploads/2013/12/secret-ingredient-hong-kong-atmag.jpg', have: false},
  {name: 'lemon', category: 'Produce', image: 'http://www.atmag.net/wp-content/uploads/2013/12/secret-ingredient-hong-kong-atmag.jpg', have: false}
])



users = User.create([
  { fullname: 'Jake', password: "123", email: "jake@test.com"}, 
  { fullname: 'Shane', password: "321", email: "shane@test.com"},
  { fullname: 'Song', password: "321", email: "song@test.com"},
  { fullname: 'Minha', password: "321", email: "minha@test.com"},
  { fullname: 'Saphie', password: "321", email: "saphie@test.com"}

])

recipes = Recipe.create([
  {name: 'Roasted Sweet Potatoes with Honey Glaze', image: 'https://lh5.ggpht.com/_URvjVdCsZY9xRi6Dzdi5fIe_Lddll8w6Fsit6yrcSoG0-tI0tIfKybfJXTBdQXZc7PgpELRXVA0-yL5ZZHp8A=s640-c-rj-v1-e365', instructions: "Preheat oven to 350°F. 
    peel and cut potatoes into 1 1/2-inch pieces, (about 7 cups)
    Arrange sweet potatoes in 13x9x2-inch glass baking dish.
    Stir butter, honey, and lemon juice in small saucepan over medium heat until butter melts. 
    Pour butter mixture over sweet potatoes; toss to coat.
    Sprinkle generously with salt and pepper.
    Bake sweet potatoes until tender when pierced with skewer, stirring and turning occasionally, about 50 minutes. 
    ", user: User.first},
  {name: 'French Lentil Soup', image: 'https://lh3.googleusercontent.com/bchOegH8FnOYIb7J4U5GEYH9-pRV89EFPGyqxH7fkJqMLPq1fgbgZJP0VX12tHbszUk7t59jjR49WkAL0ualSzI=s640-c-rj-v1-e365', instructions: "Heat oil in heavy large saucepan over medium–high heat. Add onions, celery, carrots, and garlic; sauté until vegetables begin to brown, about 15 minutes. Add 4 cups broth, lentils, and tomatoes with juice and bring to boil. Reduce heat to medium–low, cover, and simmer until lentils are tender, about 35 minutes.

    Transfer 2 cups soup (mostly solids) to blender and puree until smooth. Return puree to soup in pan; thin soup with more broth by 1/4 cupfuls, if too thick. Season with salt, pepper, and a splash of vinegar, if desired. Ladle soup into bowls. Garnish with celery leaves. 
    ", user: User.second}
  ])


recipe_ingredients = RecipeQtyIngredient.create([
  {ingredient_id: ingredients[8].id, recipe_id: recipes[0].id, qty: 1, unit: "kilogram"},
  {ingredient_id: ingredients[9].id, recipe_id: recipes[0].id, qty: 6, unit: "tablespoon"},
  {ingredient_id: ingredients[10].id, recipe_id: recipes[0].id, qty: 3, unit: "tablespoon"},
  {ingredient_id: ingredients[11].id, recipe_id: recipes[0].id, qty: 1, unit: "teaspoon"},

  {ingredient_id: ingredients[0].id, recipe_id: recipes[1].id, qty: 3, unit: "tablespoon"},
  {ingredient_id: ingredients[1].id, recipe_id: recipes[1].id, qty: 320, unit: "gram"},
  {ingredient_id: ingredients[2].id, recipe_id: recipes[1].id, qty: 120, unit: "gram"},
  {ingredient_id: ingredients[3].id, recipe_id: recipes[1].id, qty: 110, unit: "gram"},
  {ingredient_id: ingredients[4].id, recipe_id: recipes[1].id, qty: 2, unit: "piece"},
  {ingredient_id: ingredients[5].id, recipe_id: recipes[1].id, qty: 1, unit: "liter"},
  {ingredient_id: ingredients[6].id, recipe_id: recipes[1].id, qty: 240, unit: "gram"},
  {ingredient_id: ingredients[7].id, recipe_id: recipes[1].id, qty: 14.5, unit: "ounce"}

])

