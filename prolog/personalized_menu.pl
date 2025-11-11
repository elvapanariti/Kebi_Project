/* Ingredients :
ingredient(Name, Lactose, Gluten, Peanuts, Vegetarian, Kcal)
Lactose/Gluten/Peanuts = true if contains allergen, false otherwise
Vegetarian = true if vegetarian
*/

ingredient(tomato, false, false, false, true, 18).
ingredient(mozzarella, true, false, false, true, 280).
ingredient(chicken, false, false, false, false, 239).
ingredient(tofu, false, false, false, true, 76).
ingredient(bread, false, true, false, true, 265).
ingredient(peanut_butter, false, false, true, true, 588).
ingredient(rice, false, false, false, true, 130).
ingredient(broccoli, false, false, false, true, 34).
ingredient(milk, true, false, false, true, 42).
ingredient(olive_oil, false, false, false, true, 884).
ingredient(egg, false, false, false, true, 155).
ingredient(beef, false, false, false, false, 250).
ingredient(ham, false, false, false, false, 145).
ingredient(salmon, false, false, false, false, 208).
ingredient(zucchini, false, false, false, true, 17).
ingredient(eggplant, false, false, false, true, 25).
ingredient(pasta, false, true, false, true, 131).
ingredient(parmesan, true, false, false, true, 431).
ingredient(truffle, false, false, false, true, 284).
ingredient(mushrooms, false, false, false, true, 22).
ingredient(mascarpone, true, false, false, true, 435).
ingredient(rice_flour, false, false, false, true, 366).
ingredient(lettuce, false, false, false, true, 15).
ingredient(carrot, false, false, false, true, 41).
ingredient(potato, false, false, false, true, 77).
ingredient(pecorino, true, false, false, true, 387).
ingredient(bacon, false, false, false, false, 541).
ingredient(duck, false, false, false, false, 337).
ingredient(mayonnaise, false, false, false, true, 680).
ingredient(onion, false, false, false, true, 40).
ingredient(lemon, false, false, false, true, 29).
ingredient(avocado, false, false, false, true, 160).
ingredient(coffee, false, false, false, true, 2).
ingredient(sugar, false, false, false, true, 387).
ingredient(strawberry, false, false, false, true, 32).
ingredient(peach, false, false, false, true, 39).
ingredient(water, false, false, false, true, 0).

/* Meals: meal(Name, [Ingredients], CalorieLevel, IsVegetarian, AvailableTime)*/

meal(caprese_salad, [tomato, mozzarella, olive_oil], low, true, lunch).
meal(chicken_rice_bowl, [chicken, rice, broccoli], medium, false, lunch).
meal(tofu_stir_fry, [tofu, broccoli, olive_oil], low, true, dinner).
meal(peanut_butter_toast, [bread, peanut_butter], high, true, breakfast).
meal(grilled_chicken, [chicken, olive_oil], medium, false, dinner).
meal(vegetable_rice, [rice, broccoli, olive_oil], low, true, lunch).
meal(mediterranean_plate, [tomato, tofu, olive_oil, broccoli], low, true, dinner).
meal(pasta_alla_carbonara, [pasta, egg, pecorino, bacon, olive_oil], high, false, dinner).
meal(pasta_al_pomodoro, [pasta, tomato, olive_oil, parmesan], low, true, lunch).
meal(eggplant_parmigiana, [eggplant, tomato, mozzarella, parmesan, olive_oil], high, true, dinner).
meal(salmon_plate, [salmon, lemon, olive_oil, zucchini], medium, false, dinner).
meal(grilled_vegetables, [zucchini, eggplant, tomato, olive_oil], low, true, lunch).
meal(garden_salad, [lettuce, tomato, carrot, olive_oil, lemon], low, true, lunch).
meal(chicken_salad, [chicken, lettuce, tomato, olive_oil], medium, false, lunch).
meal(pizza_margherita, [pasta, tomato, mozzarella, olive_oil], medium, true, dinner).
meal(pizza_prosciutto, [pasta, tomato, mozzarella, ham, olive_oil], high, false, dinner).
meal(pizza_truffle, [pasta, mozzarella, truffle, mushrooms, olive_oil], high, true, dinner).
meal(duck_ragu_pasta, [pasta, duck, tomato, olive_oil, onion], high, false, dinner).
meal(ravioli_ricotta_spinach, [pasta, ricotta, parmesan, olive_oil], medium, true, lunch).
meal(beef_steak_plate, [beef, olive_oil, potato], high, false, dinner).
meal(mixed_grill, [chicken, beef, olive_oil, lemon], high, false, dinner).
meal(vegetarian_arancini, [rice, mozzarella, tomato, olive_oil], medium, true, lunch).
meal(tiramisu, [coffee, mascarpone, sugar], high, true, dessert).
meal(avocado_toast, [bread, avocado, olive_oil], medium, true, breakfast).

