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
% Hay que tener en cuenta que las sentencias quedan especificadas por claves que son del tipo, componentes de la dieta, tipo de dieta, número de posición de la dieta
% Desayuno 1500 kcal.
diet([milk, sugar, oatmeal], 1500, 1, none).
diet([milk, rice, apple], 1500, 2, none).
diet([milk, bread, wheat], 1500, 3, none).
% Comida 1500 kcal.
diet([spinach, beef, bread, apple, oliveOil], 1500, 1, none).
diet([spinach, pork, bread, orange, oliveOil], 1500, 2, none).
diet([spinach, fish, bread, banana, oliveOil], 1500, 3, none).
% Merienda 1500 kcal.
diet([pork, coffee], 1500, 1, none).
diet([bread, coffee], 1500, 2, none).
diet([bread, pork, coffee], 1500, 3, none).
% Cena 1500 kcal.
diet([bread, lettuce, tomatoe, onion, oliveOil, fish, pear], 1500, 1, none).
diet([bread, lettuce, tomatoe, onion, oliveOil, beef, pear], 1500, 2, none).
diet([bread, lettuce, tomatoe, onion, oliveOil, fish, apple], 1500, 3, none).

% Desayuno 1800 kcal.
diet([rice, wheat, pear], 1800, 1, none).
diet([rice, wheat, apple], 1800, 2, none).
diet([rice, wheat, banana], 1800, 3, none).
% Comida 1800 kcal.
diet([rice, pepper, carrot, oliveOil, tomatoe, cucumber, chicken, watermelon, yogurt], 1800, 1, none).
diet([rice, pepper, carrot, oliveOil, tomatoe, cucumber, beef, watermelon, yogurt], 1800, 2, none).
diet([rice, pepper, carrot, oliveOil, tomatoe, cucumber, fish, watermelon, yogurt], 1800, 3, none).
% Merienda 1800 kcal.
diet([apple, bread, cheese], 1800, 1, none).
diet([pear, bread, cheese], 1800, 2, none).
diet([strawberry, bread, cheese], 1800, 3, none).
% Cena 1800 kcal.
diet([chocolate], 1800, 1, none).
diet([chocolate], 1800, 2, none).
diet([chocolate], 1800, 3, none).

% Desayuno 2000 kcal.
diet([orange, coffee, corn, cheese, oliveOil], 2000, 1, none).
diet([banana, coffee, corn, cheese, oliveOil], 2000, 2, none).
diet([blueberry, coffee, corn, cheese, oliveOil], 2000, 3, none).
% Comida 2000 kcal.
diet([lettuce, tomatoe, onion, oliveOil, fish, bread, watermelon, rabbit, beef], 2000, 1, none).
diet([lettuce, tomatoe, onion, oliveOil, beef, bread, watermelon, rabbit, pork], 2000, 2, none).
diet([lettuce, tomatoe, onion, oliveOil, fish, bread, orange, pork, beef], 2000, 3, none).
% Merienda 2000 kcal.
diet([banana, bread, cheese, yogurt], 2000, 1, none).
diet([orange, bread, cheese, yogurt], 2000, 2, none).
diet([strawberry, bread, cheese, yogurt], 2000, 3, none).
% Cena 2000 kcal.
diet([egg, oliveOil, potatoe, bread, kiwi], 2000, 1, none).
diet([egg, oliveOil, potatoe, bread, blueberry], 2000, 2, none).
diet([egg, oliveOil, potatoe, bread, watermelon], 2000, 3, none).

% Desayuno celiacos.
diet([orange, coffee, corn, cheese, oliveOil], 1800, 1, celiac).
diet([watermelon, coffee, corn, cheese, oliveOil], 1800, 2, celiac).
diet([strawberry, coffee, corn, cheese, oliveOil], 1800, 3, celiac).
% Comida celiacos.
diet([fish, tomatoe, oliveOil, rice, kiwi], 1800, 1, celiac).
diet([beef, tomatoe, oliveOil, rice, kiwi], 1800, 2, celiac).
diet([rabbit, tomatoe, oliveOil, rice, kiwi], 1800, 3, celiac).
% Merienda celiacos.
diet([pear, yogurt, sugar, beef], 1800, 1, celiac).
diet([banana, yogurt, sugar, beef], 1800, 2, celiac).
diet([strawberry, yogurt, sugar, beef], 1800, 3, celiac).
% Cena celiacos.
diet([egg, turkey, oliveOil, rice, chocolate], 1800, 1, celiac).
diet([egg, turkey, oliveOil, rice, apple], 1800, 2, celiac).
diet([egg, turkey, oliveOil, rice, orange], 1800, 3, celiac).

% Desayuno diabéticos.
diet([orange, coffee, cheese, rice, oliveOil], 1800, 1, diabetic).
diet([banana, cofee, cheese, rice, oliveOil], 1800, 2, diabetic).
diet([strawberry, coffee, cheese, oliveOil], 1800, 3, diabetic).
% Comida diabéticos.
diet([bread, lettuce, tomatoe, onion, oliveOil, fish, rice], 1800, 1, diabetic).
diet([bread, lettuce, tomatoe, onion, oliveOil, beef, rice], 1800, 2, diabetic).
diet([bread, lettuce, tomatoe, onion, oliveOil, pork, rice], 1800, 3, diabetic).
% Merienda diabéticos.
diet([pear], 1800, 1, diabetic).
diet([pear, yogurt], 1800, 2, diabetic).
diet([pear, cheese], 1800, 3, diabetic).
% Cena diabeticos.
diet([bread, apple, fish, oliveOil], 1800, 1, diabetic).
diet([bread, pear, fish, oliveOil], 1800, 2, diabetic).
diet([bread, watermelon, fish, sunflowerOil], 1800, 3, diabetic).

% Lista de recomendaciones

:- initialization main.

main:-
    %  En este punto se deben de poner las funciones que va a seguir el programa, es decir, las reglas que va a seguir el programa para llegar a la solucion.
    userInterface,
    collectingTheData.
    

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
    checkGrammage(GRAMMAGE) -> true,
    dietpergrammageCalculator(HEALTH, GRAMMAGE).

checkHealth(celiac).
checkHealth(diabetic).
checkHealth(none).
checkExercise(much).
checkExercise(moderate).
checkExercise(little).
checkGrammage(1500).
checkGrammage(1800).
checkGrammage(2000).

counter(1).

dietpergrammageCalculator(HEALTH, GRAMMAGE):-
    % En este punto se realiza el cálculo de aquellos elementos, haciendo uso de la información que sea necesaria.
    write('Calculating your diet per grammage...'),nl,
    findall([Food, Kcal], diet(_, GRAMMAGE, counter, HEALTH), List).
    finalRecomendation(List).
    % Haciendo uso del operador findall se permite buscar en todas las sentencias anteriores por claves que sean especificadas

write_down_list([]).
write_down_list([H|T]) :-
    write(H), nl, write_down_list(T).

finalRecomendation(List):-
    nl,
    write_down_list(List),
    % tab(20),write('---------------------------'),nl,
    % tab(20),write('THE RECOMMENDED DIET IS...'),nl,
    % tab(20),write('---------------------------'),nl,nl,
    % %  En este punto se debe de poner la solucion que va a dar el programa.
    % % breakfast(Get), % DE ESTA MANERA ES COMO SE OBTIENE EL CONTENIDO DE LA LISTA.
    % write('Breakfast: '),nl,
    % % write(Get),nl,
    % write('Lunch: '),nl,
    % write('Snack: '),nl,
    % write('Dinner: '),nl,
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