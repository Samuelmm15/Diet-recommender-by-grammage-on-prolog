/* -------------------------- */
/* Diet Recommender by grammage System */
/* -------------------------- */

% Knowledge base implementation.

% Vegetables.
lettuce("lettuce").
tomatoe("tomatoe").
cucumber("cucumber").
carrot("carrot").
onion("onion").
pepper("pepper").
potatoe("potatoe").
spinach("spinach").

% Fruits.
apple("apple").
orange("orange").
banana("banana").
strawberry("strawberry").
raspberry("raspberry").
blueberry("blueberry").
watermelon("watermelon").
pear("pear").
kiwi("kiwi").

% Cereals.
rice("rice").
pasta("pasta").
bread("bread").
corn("corn").
oatmeal("oatmeal").
wheat("wheat").

% Meet.
chicken("chicken").
beef("beef").
pork("pork").
fish("fish").
rabbit("rabbit").
turkey("turkey").

% Dairy Products.
milk("milk").
cheese("cheese").
yogurt("yogurt").

% Legumes.
beans("beans").
lentils("lentils").
peas("peas").

% Oil.
oliveOil("oliveOil").
sunflowerOil("sunflowerOil").
cornOil("cornOil").

% Drinks.
water("water").
juice("juice").
coffee("coffee").
tea("tea").

% Others.
egg("egg").
honey("honey").
sugar("sugar").
salt("salt").
vinegar("vinegar").
chocolate("chocolate").

% Breakfast 1500 kcal.
diet([milk, sugar, oatmeal], 1500, 1, none, breakfast).
diet([milk, rice, apple], 1500, 2, none, breakfast).
diet([milk, bread, wheat], 1500, 3, none, breakfast).

% Lunch 1500 kcal.
diet([spinach, beef, bread, apple, oliveOil], 1500, 1, none, lunch).
diet([spinach, pork, bread, orange, oliveOil], 1500, 2, none, lunch).
diet([spinach, fish, bread, banana, oliveOil], 1500, 3, none, lunch).

% Snack 1500 kcal.
diet([pork, coffee], 1500, 1, none, snack).
diet([bread, coffee], 1500, 2, none, snack).
diet([bread, pork, coffee], 1500, 3, none, snack).

% Dinner 1500 kcal.
diet([bread, lettuce, tomatoe, onion, oliveOil, fish, pear], 1500, 1, none, dinner).
diet([bread, lettuce, tomatoe, onion, oliveOil, beef, pear], 1500, 2, none, dinner).
diet([bread, lettuce, tomatoe, onion, oliveOil, fish, apple], 1500, 3, none, dinner).

% Breakfast 1800 kcal.
diet([rice, wheat, pear], 1800, 1, none, breakfast).
diet([rice, wheat, apple], 1800, 2, none, breakfast).
diet([rice, wheat, banana], 1800, 3, none, breakfast).

% Lunch 1800 kcal.
diet([rice, pepper, carrot, oliveOil, tomatoe, cucumber, chicken, watermelon, yogurt], 1800, 1, none, lunch).
diet([rice, pepper, carrot, oliveOil, tomatoe, cucumber, beef, watermelon, yogurt], 1800, 2, none, lunch).
diet([rice, pepper, carrot, oliveOil, tomatoe, cucumber, fish, watermelon, yogurt], 1800, 3, none, lunch).

% Snack 1800 kcal.
diet([apple, bread, cheese], 1800, 1, none, snack).
diet([pear, bread, cheese], 1800, 2, none, snack).
diet([strawberry, bread, cheese], 1800, 3, none, snack).

% Dinner 1800 kcal.
diet([chocolate], 1800, 1, none, dinner).
diet([chocolate], 1800, 2, none, dinner).
diet([chocolate], 1800, 3, none, dinner).

% Breakfast 2000 kcal.
diet([orange, coffee, corn, cheese, oliveOil], 2000, 1, none, breakfast).
diet([banana, coffee, corn, cheese, oliveOil], 2000, 2, none, breakfast).
diet([blueberry, coffee, corn, cheese, oliveOil], 2000, 3, none, breakfast).

% Lunch 2000 kcal.
diet([lettuce, tomatoe, onion, oliveOil, fish, bread, watermelon, rabbit, beef], 2000, 1, none, lunch).
diet([lettuce, tomatoe, onion, oliveOil, beef, bread, watermelon, rabbit, pork], 2000, 2, none, lunch).
diet([lettuce, tomatoe, onion, oliveOil, fish, bread, orange, pork, beef], 2000, 3, none, lunch).

% Snack 2000 kcal.
diet([banana, bread, cheese, yogurt], 2000, 1, none, snack).
diet([orange, bread, cheese, yogurt], 2000, 2, none, snack).
diet([strawberry, bread, cheese, yogurt], 2000, 3, none, snack).

% Dinner 2000 kcal.
diet([egg, oliveOil, potatoe, bread, kiwi], 2000, 1, none, dinner).
diet([egg, oliveOil, potatoe, bread, blueberry], 2000, 2, none, dinner).
diet([egg, oliveOil, potatoe, bread, watermelon], 2000, 3, none, dinner).

% Celiac Breakfast.
diet([orange, coffee, corn, cheese, oliveOil], 1800, 1, celiac, breakfast).
diet([watermelon, coffee, corn, cheese, oliveOil], 1800, 2, celiac, breakfast).
diet([strawberry, coffee, corn, cheese, oliveOil], 1800, 3, celiac, breakfast).

% Celiac Lunch.
diet([fish, tomatoe, oliveOil, rice, kiwi], 1800, 1, celiac, lunch).
diet([beef, tomatoe, oliveOil, rice, kiwi], 1800, 2, celiac, lunch).
diet([rabbit, tomatoe, oliveOil, rice, kiwi], 1800, 3, celiac, lunch).

% Celiac Snack.
diet([pear, yogurt, sugar, beef], 1800, 1, celiac, snack).
diet([banana, yogurt, sugar, beef], 1800, 2, celiac, snack).
diet([strawberry, yogurt, sugar, beef], 1800, 3, celiac, snack).

% Celiac Dinner.
diet([egg, turkey, oliveOil, rice, chocolate], 1800, 1, celiac, dinner).
diet([egg, turkey, oliveOil, rice, apple], 1800, 2, celiac, dinner).
diet([egg, turkey, oliveOil, rice, orange], 1800, 3, celiac, dinner).

% Diabetic Breakfast.
diet([orange, coffee, cheese, rice, oliveOil], 1800, 1, diabetic, breakfast).
diet([banana, cofee, cheese, rice, oliveOil], 1800, 2, diabetic, breakfast).
diet([strawberry, coffee, cheese, oliveOil], 1800, 3, diabetic, breakfast).

% Diabetic Lunch.
diet([bread, lettuce, tomatoe, onion, oliveOil, fish, rice], 1800, 1, diabetic, lunch).
diet([bread, lettuce, tomatoe, onion, oliveOil, beef, rice], 1800, 2, diabetic, lunch).
diet([bread, lettuce, tomatoe, onion, oliveOil, pork, rice], 1800, 3, diabetic, lunch).

% Diabetic Snack.
diet([pear], 1800, 1, diabetic, snack).
diet([pear, yogurt], 1800, 2, diabetic, snack).
diet([pear, cheese], 1800, 3, diabetic, snack).

% Diabetic Dinner.
diet([bread, apple, fish, oliveOil], 1800, 1, diabetic, dinner).
diet([bread, pear, fish, oliveOil], 1800, 2, diabetic, dinner).
diet([bread, watermelon, fish, sunflowerOil], 1800, 3, diabetic, dinner).

% Initialization of the program.
:- initialization main.

main:-
    userInterface,
    collectingTheData.

userInterface:-
    nl,
    tab(20),write('------------------------------------'),nl,
    tab(20),write('DIET RECOMENDER BY GRAMMAGE SYSTEM'),nl,
    tab(20),write('------------------------------------'),nl,
    nl,
    write('Hello, my name is Samuel Martín Morales, this is my diet recommender system, and I am going to help you with your diet.'),nl,
    write('Please answer the following questions.'),nl,
    nl.

% This function implemented the different cuestions that makes the exactly recommendation of the program.
collectingTheData:-
    write('How old are you? '),nl,
    read(AGE),nl,
    write('What is your height in centimeters? '),nl,
    read(HEIGHT),nl,
    write('What is your weight in kilograms? '),nl,
    read(WEIGHT),nl,
    repeat,
    write('How many times do you exercise per week? (much/moderate/little)'),nl,
    read(EXERCISE),nl,
    checkExercise(EXERCISE) -> true,
    repeat,
    write('Do you have any health problems? (celiac/diabetic/none)'),nl,
    read(HEALTH),nl,
    checkHealth(HEALTH) -> true,
    repeat,
    write('What type of grammage diet do you want to follow? (1500/1800/2000) kcal'),nl,
    read(GRAMMAGE),nl,
    checkGrammage(GRAMMAGE) -> true,
    repeat,
    write('Type the diet number, to select a set of diets. (1/2/3): '),nl,
    read(DIETNUMBER),nl,
    checkDietNumber(DIETNUMBER) -> true,
    dietpergrammageCalculator(HEALTH, GRAMMAGE, DIETNUMBER).

% This function obtains the different setences that contains the diet recommendation.
dietpergrammageCalculator(HEALTH, GRAMMAGE, DIETNUMBER):-
    write('Calculating your diet per grammage...'),nl,
    findall(X, diet(X, GRAMMAGE, DIETNUMBER, HEALTH, breakfast), ListBreakfast),nl,
    (ListBreakfast = [] -> write('There are no diets for your grammage and health problem'),nl,halt;true),
    tab(20),write('---------------------------'),nl,
    tab(20),write('THE RECOMMENDED DIET IS...'),nl,
    tab(20),write('---------------------------'),nl,nl,
    write('Breakfast;'),nl,
    write('---------------------------'),nl,
    write_down_list(ListBreakfast),
    findall(X, diet(X, GRAMMAGE, DIETNUMBER, HEALTH, lunch), ListLunch),
    (ListLunch = [] -> write('There are no diets for your grammage and health problem'),nl,halt;true),
    nl,write('Lunch;'),nl,
    write('---------------------------'),nl,
    write_down_list(ListLunch),
    nl,write('Snack;'),nl,
    write('---------------------------'),nl,
    findall(X, diet(X, GRAMMAGE, DIETNUMBER, HEALTH, snack), ListSnack),
    (ListSnack = [] -> write('There are no diets for your grammage and health problem'),nl,halt;true),
    write_down_list(ListSnack),
    nl,write('Dinner;'),nl,
    write('---------------------------'),nl,
    findall(X, diet(X, GRAMMAGE, DIETNUMBER, HEALTH, dinner), ListDinner),
    (ListDinner = [] -> write('There are no diets for your grammage and health problem'),nl,halt;true),
    write_down_list(ListDinner),
    nextRecommendedDiet(HEALTH, GRAMMAGE, DIETNUMBER).

% This two setences writes the content of the introduced list.
write_down_list([]).
write_down_list([H|T]):- write(H),nl,write('---------------------------'),nl,write_down_list(T). %Print all list items

% This function asks if the recommended diet is the diet that the user wants.
nextRecommendedDiet(HEALTH, GRAMMAGE, DIETNUMBER):-
    nl,
    write('You don`t like the recommended diet?, you want another one?'),nl,
    getResponse(HEALTH, GRAMMAGE, DIETNUMBER).

% This setence gets the response of the before cuestion.
getResponse(HEALTH, GRAMMAGE, DIETNUMBER):-
    repeat,
    write('Please answer y or n: '),nl,
    read(Response),
    comprobation(Response, HEALTH, GRAMMAGE, DIETNUMBER).

comprobation(Response, HEALTH, GRAMMAGE, DIETNUMBER):-
    Response == y,
    !,nl,
    repeat,
    write('Type the diet number, to select a set of diets. (1/2/3): '),nl,
    read(NEWDIETNUMBER),nl,
    checkDietNumber(NEWDIETNUMBER) -> true,
    dietpergrammageCalculator(HEALTH, GRAMMAGE, NEWDIETNUMBER).

comprobation(Response, HEALTH, GRAMMAGE, DIETNUMBER):-
    Response == n,
    !,nl,
    write('Thank you for using my diet recommender system, I hope you have a good day!'),nl,nl.

% This setences comprobes if the options that were specified at the cuestions, are the options.
checkHealth(celiac).
checkHealth(diabetic).
checkHealth(none).
checkExercise(much).
checkExercise(moderate).
checkExercise(little).
checkGrammage(1500).
checkGrammage(1800).
checkGrammage(2000).
checkDietNumber(1).
checkDietNumber(2).
checkDietNumber(3).