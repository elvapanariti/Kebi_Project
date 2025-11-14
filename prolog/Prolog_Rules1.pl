
contains_allergen(Meal, lactose) :-
    meal(Meal, Ingredients, _, _, _),
    member(I, Ingredients),
    ingredient(I, true, _, _, _, _).

contains_allergen(Meal, gluten) :-
    meal(Meal, Ingredients, _, _, _),
    member(I, Ingredients),
    ingredient(I, _, true, _, _, _).

contains_allergen(Meal, peanuts) :-
    meal(Meal, Ingredients, _, _, _),
    member(I, Ingredients),
    ingredient(I, _, _, true, _, _).


suitable_for(Meal, Preferences) :-
    meal(Meal, _, _, _, _),
    \+ (member(lactose_free, Preferences), contains_allergen(Meal, lactose)),
    \+ (member(gluten_free, Preferences), contains_allergen(Meal, gluten)),
    \+ (member(peanut_free, Preferences), contains_allergen(Meal, peanuts)),
    ( \+ member(vegetarian, Preferences)
      ; (meal(Meal, _, _, true, _)) ).


recommend_meals(Preferences, CalorieLevel, Meals) :-
    findall(Meal,
        ( meal(Meal, _, CalorieLevel, _, _),
          suitable_for(Meal, Preferences)
        ),
        Meals).


recommend_meals(Preferences, CalorieLevel, Time, Meals) :-
    findall(Meal,
        ( meal(Meal, _, CalorieLevel, _, Time),
          suitable_for(Meal, Preferences)
        ),
        Meals).
