% Para poder ejecutar el programa, se debe de ejecutar el programa haciendo uso de swipl mainDietRecommender.pl y despues se debe de ejecutar el comando main.
% Para windows se puede hacer uso del comando prolog mainDietRecommender.pl y despues se debe de ejecutar el comando main. El comando cambia ligeramente.

/* -------------------------- */
/* Diet Recommender by grammage System */
/* -------------------------- */

% En este punto se deben encontrar las reglas dependiendo de las preguntas que se realizan al usuaio.

% Relación de los distintos alimentos los cuales se pueden consumir.
% Verduras.
lettuce("lettuce").
tomatoe("tomatoe").
cucumber("cucumber").
carrot("carrot").
onion("onion").
pepper("pepper").
potatoe("potatoe").
spinach("spinach").
% Frutas.
apple("apple").
orange("orange").
banana("banana").
strawberry("strawberry").
raspberry("raspberry").
blueberry("blueberry").
watermelon("watermelon").
pear("pear").
kiwi("kiwi").
% Cereales.
rice("rice").
pasta("pasta").
bread("bread").
corn("corn").
oatmeal("oatmeal").
wheat("wheat").
% Carnes.
chicken("chicken").
beef("beef").
pork("pork").
fish("fish").
rabbit("rabbit").
turkey("turkey").
% Lácteos.
milk("milk").
cheese("cheese").
yogurt("yogurt").
% Legumbres.
beans("beans").
lentils("lentils").
peas("peas").
% Aceites.
oliveOil("oliveOil").
sunflowerOil("sunflowerOil").
cornOil("cornOil").
% Bebidas.
water("water").
juice("juice").
coffee("coffee").
tea("tea").
% Otros.
egg("egg").
honey("honey").
sugar("sugar").
salt("salt").
vinegar("vinegar").
chocolate("chocolate").

% Relación de las distintas comidas del día.
% Desayuno 1500 kcal.
breakfast1_1500([milk, sugar, oatmeal]).
breakfast2_1500([milk, rice, apple]).
breakfast3_1500([milk, bread, wheat]).
% Comida 1500 kcal.
lunch1_1500([spinach, beef, bread, apple, oliveOil]).
lunch2_1500([spinach, pork, bread, orange, oliveOil]).
lunch3_1500([spinach, fish, bread, banana, oliveOil]).
% Merienda 1500 kcal.
snack1_1500([pork, coffee]).
snack2_1500([bread, coffee]).
snack3_1500([bread, pork, coffee]).
% Cena 1500 kcal.
dinner1_1500([bread, lettuce, tomatoe, onion, oliveOil, fish, pear]).
dinner2_1500([bread, lettuce, tomatoe, onion, oliveOil, beef, pear]).
dinner3_1500([bread, lettuce, tomatoe, onion, oliveOil, fish, apple]).

% Desayuno 1800 kcal.
breakfast1_1800([rice, wheat, pear]).
breakfast2_1800([rice, wheat, apple]).
breakfast3_1800([rice, wheat, banana]).
% Comida 1800 kcal.
lunch1_1800([rice, pepper, carrot, oliveOil, tomatoe, cucumber, chicken, watermelon, yogurt]).
lunch2_1800([rice, pepper, carrot, oliveOil, tomatoe, cucumber, beef, watermelon, yogurt]).
lunch3_1800([rice, pepper, carrot, oliveOil, tomatoe, cucumber, fish, watermelon, yogurt]).
% Merienda 1800 kcal.
snack1_1800([apple, bread, cheese]).
snack2_1800([pear, bread, cheese]).
snack3_1800([strawberry, bread, cheese]).
% Cena 1800 kcal.
dinner1_1800([chocolate]).
dinner2_1800([chocolate]).
dinner3_1800([chocolate]).

% Desayuno 2000 kcal.
breakfast1_2000([orange, coffee, corn, cheese, oliveOil]).
breakfast2_2000([banana, coffee, corn, cheese, oliveOil]).
breakfast3_2000([blueberry, coffee, corn, cheese, oliveOil]).
% Comida 2000 kcal.
lunch1_2000([lettuce, tomatoe, onion, oliveOil, fish, bread, watermelon, rabbit, beef]).
lunch2_2000([lettuce, tomatoe, onion, oliveOil, beef, bread, watermelon, rabbit, pork]).
lunch3_2000([lettuce, tomatoe, onion, oliveOil, fish, bread, orange, pork, beef]).
% Merienda 2000 kcal.
snack1_2000([banana, bread, cheese, yogurt]).
snack2_2000([orange, bread, cheese, yogurt]).
snack3_2000([strawberry, bread, cheese, yogurt]).
% Cena 2000 kcal.
dinner1_2000([egg, oliveOil, potatoe, bread, kiwi]).
dinner2_2000([egg, oliveOil, potatoe, bread, blueberry]).
dinner3_2000([egg, oliveOil, potatoe, bread, watermelon]).

% Desayuno celiacos.
breakfast1_celiac([orange, coffee, corn, cheese, oliveOil]).
breakfast2_celiac([watermelon, coffee, corn, cheese, oliveOil]).
breakfast3_celiac([strawberry, coffee, corn, cheese, oliveOil]).
% Comida celiacos.
lunch1_celiac([fish, tomatoe, oliveOil, rice, kiwi]).
lunch2_celiac([beef, tomatoe, oliveOil, rice, kiwi]).
lunch3_celiac([rabbit, tomatoe, oliveOil, rice, kiwi]).
% Merienda celiacos.
snack1_celiac([pear, yogurt, sugar, beef]).
snack2_celiac([banana, yogurt, sugar, beef]).
snack3_celiac([strawberry, yogurt, sugar, beef]).
% Cena celiacos.
dinner1_celiac([egg, turkey, oliveOil, rice, chocolate]).
dinner2_celiac([egg, turkey, oliveOil, rice, apple]).
dinner3_celiac([egg, turkey, oliveOil, rice, orange]).

% Desayuno diabéticos.
breakfast1_diabetic([orange, coffee, cheese, rice, oliveOil]).
breakfast2_diabetic([banana, cofee, cheese, rice, oliveOil]).
breakfast3_diabetic([strawberry, coffee, cheese, oliveOil]).
% Comida diabéticos.
lunch1_diabetic([bread, lettuce, tomatoe, onion, oliveOil, fish, rice]).
lunch2_diabetic([bread, lettuce, tomatoe, onion, oliveOil, beef, rice]).
lunch3_diabetic([bread, lettuce, tomatoe, onion, oliveOil, pork, rice]).
% Merienda diabéticos.
snack1_diabetic([pear]).
snack2_diabetic([pear, yogurt]).
snack3_diabetic([pear, cheese]).
% Cena diabeticos.
dinner1_diabetic([bread, apple, fish, oliveOil]).
dinner2_diabetic([bread, pear, fish, oliveOil]).
dinner3_diabetic([bread, watermelon, fish, sunflowerOil]).

:- initialization main.

main:-
    %  En este punto se deben de poner las funciones que va a seguir el programa, es decir, las reglas que va a seguir el programa para llegar a la solucion.
    userInterface,
    collectingTheData,
    dietpergrammageCalculator,
    finalRecomendation.
    

userInterface:-
    %  En este punto se debe de poner la interfaz que va a usar el usuario para comunicarse con el programa.
    nl,
    tab(20),write('------------------------------------'),nl,
    tab(20),write('DIET RECOMENDER BY GRAMMAGE SYSTEM'),nl,
    tab(20),write('------------------------------------'),nl,
    nl,
    write('Hello, my name is Samuel Martín Morales, this is my diet recommender system, and I am going to help you with your diet.'),nl,
    write('Please answer the following questions.'),nl,
    nl.
    

collectingTheData:-
    %  En este punto se debe de poner la recopilacion de datos que va a usar el programa para llegar a la solucion.
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
    checkGrammage(GRAMMAGE) -> true.

checkHealth(celiac).
checkHealth(diabetic).
checkHealth(none).
checkExercise(much).
checkExercise(moderate).
checkExercise(little).
checkGrammage(1500).
checkGrammage(1800).
checkGrammage(2000).

dietpergrammageCalculator:-
    % En este punto se realiza el cálculo de aquellos elementos, haciendo uso de la información que sea necesaria.
    write('Calculating your diet per grammage...'),nl.

finalRecomendation:-
    nl,
    tab(20),write('---------------------------'),nl,
    tab(20),write('THE RECOMMENDED DIET IS...'),nl,
    tab(20),write('---------------------------'),nl,nl,
    %  En este punto se debe de poner la solucion que va a dar el programa.
    % breakfast(Get), % DE ESTA MANERA ES COMO SE OBTIENE EL CONTENIDO DE LA LISTA.
    write('Breakfast: '),nl,
    % write(Get),nl,
    write('Lunch: '),nl,
    write('Snack: '),nl,
    write('Dinner: '),nl,
    nextRecommendedDiet.
    % write('Thank you for using my diet recommender system, I hope you have a good day!'),nl,nl.

nextRecommendedDiet:-
    %  En este punto se debe de poner la siguiente recomendacion que va a dar el programa.
    nl,
    write('You don`t like the recommended diet?, you want another one?'),nl,
    getResponse.

getResponse:-
    repeat,
    write('Please answer y or n: '),nl,
    read(Response),
    comprobation(Response).

comprobation(Response):-
    Response == y,
    !,
    finalRecomendation.
comprobation(Response):-
    Response == n,
    !,nl,
    write('Thank you for using my diet recommender system, I hope you have a good day!'),nl,nl.