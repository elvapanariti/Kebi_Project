contains_allergen(pasta_alla_carbonara, gluten).

suitable_for(peanut_butter_toast, [peanut_free]).

recommend_meals([vegetarian, gluten_free], low, dinner, Meals).

recommend_meals([vegetarian], _, dinner, Meals), member(Meal, Meals), meal(Meal, Ingredients, _, _, _), member(mozzarella, Ingredients).

recommend_meals([gluten_free, lactose_free], _, lunch, Meals).

meal(Meal, Ingredients, _, true, _), 
findall(Kcal, (member(I, Ingredients), ingredient(I, _, _, _, _, Kcal)), Kcals),
sumlist(Kcals, TotalKcal), TotalKcal > 400.

meal(Meal, Ingredients, _, _, lunch), member(olive_oil, Ingredients).

meal(Meal, Ingredients, _, true, _), length(Ingredients, L), L > 2.

meal(Meal, Ingredients, _, _, _), member(salmon, Ingredients); member(duck, Ingredients).



meal(Meal, Ingredients, _, _, dinner), member(olive_oil, Ingredients),
findall(Kcal, (member(I, Ingredients), ingredient(I, _, _, _, _, Kcal)), Kcals),
sumlist(Kcals, TotalKcal), TotalKcal > 300.


meal(Meal, Ingredients, _, _, _),
contains_allergen(Meal, peanuts),
findall(Kcal, (member(I, Ingredients), ingredient(I, _, _, _, _, Kcal)), Kcals),
sumlist(Kcals, TotalKcal), TotalKcal < 200.


findall(
    meal_info(Meal, Ingredients, TotalKcal),
    (
        meal(Meal, Ingredients, _, true, dinner),
        \+ contains_allergen(Meal, gluten),
        member(olive_oil, Ingredients),
        findall(Kcal, (member(I, Ingredients), ingredient(I, _, _, _, _, Kcal)), Kcals),
        sumlist(Kcals, TotalKcal),
        TotalKcal > 200
    ),
    MealsList
).


findall(
    meal_info(Meal, Ingredients, TotalKcal),
    (
        meal(Meal, Ingredients, _, true, dinner),
        \+ contains_allergen(Meal, gluten),
        member(tomato, Ingredients),
        findall(Kcal, (member(I, Ingredients), ingredient(I, _, _, _, _, Kcal)), Kcals),
        sumlist(Kcals, TotalKcal),
        TotalKcal > 300
    ),
    MealsList
).