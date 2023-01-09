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
% Frutas.
apple("apple").
orange("orange").
banana("banana").
strawberry("strawberry").
raspberry("raspberry").
blueberry("blueberry").
watermelon("watermelon").
% Cereales.
rice("rice").
pasta("pasta").
bread("bread").
corn("corn").
oatmeal("oatmeal").
% Carnes.
chicken("chicken").
beef("beef").
pork("pork").
fish("fish").
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

% Relación de las distintas comidas del día.
% Desayuno 1500 kcal.
breakfast1_1500([apple, milk, beans]).
breakfast2_1500().
breakfast3_1500().
% Comida 1500 kcal.
lunch1_1500().
lunch2_1500().
lunch3_1500().
% Merienda 1500 kcal.
snack1_1500().
snack2_1500().
snack3_1500().
% Cena 1500 kcal.
dinner1_1500().
dinner2_1500().
dinner3_1500().

% Desayuno 1800 kcal.
breakfast1_1800().
breakfast2_1800().
breakfast3_1800().
% Comida 1800 kcal.
lunch1_1800().
lunch2_1800().
lunch3_1800().
% Merienda 1800 kcal.
snack1_1800().
snack2_1800().
snack3_1800().
% Cena 1800 kcal.
dinner1_1800().
dinner2_1800().
dinner3_1800().

% Desayuno 2000 kcal.
breakfast1_2000().
breakfast2_2000().
breakfast3_2000().
% Comida 2000 kcal.
lunch1_2000().
lunch2_2000().
lunch3_2000().
% Merienda 2000 kcal.
snack1_2000().
snack2_2000().
snack3_2000().
% Cena 2000 kcal.
dinner1_2000().
dinner2_2000().
dinner3_2000().

% Desayuno celiacos.
breakfast1_celiac().
breakfast2_celiac().
breakfast3_celiac().
% Comida celiacos.
lunch1_celiac().
lunch2_celiac().
lunch3_celiac().
% Merienda celiacos.
snack1_celiac().
snack2_celiac().
snack3_celiac().
% Cena celiacos.
dinner1_celiac().
dinner2_celiac().
dinner3_celiac().

% Desayuno diabéticos.
breakfast1_diabetic().
breakfast2_diabetic().
breakfast3_diabetic().
% Comida diabéticos.
lunch1_diabetic().
lunch2_diabetic().
lunch3_diabetic().
% Merienda diabéticos.
snack1_diabetic().
snack2_diabetic().
snack3_diabetic().
% Cena diabeticos.
dinner1_diabetic().
dinner2_diabetic().
dinner3_diabetic().

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
    write('Do you have any health problems? (celiac/diabetic)'),nl,
    read(HEALTH),nl,
    checkHealth(HEALTH) -> true,
    repeat,
    write('What type of grammage diet do you want to follow? (1500/1800/2000) kcal'),nl,
    read(GRAMMAGE),nl,
    checkGrammage(GRAMMAGE) -> true.

checkHealth(celiac).
checkHealth(diabetic).
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