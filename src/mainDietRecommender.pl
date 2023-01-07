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
% Desayuno.
breakfast([apple, milk, beans]).
breakfast1().
breakfast2().
breakfast3().
breakfast4().
breakfast5().
% Comida.
lunch().
lunch1().
lunch2().
lunch3().
lunch4().
lunch5().
% Merienda.
snack().
snack1().
snack2().
snack3().
snack4().
snack5().
% Cena.
dinner().
dinner1().
dinner2().
dinner3().
dinner4().
dinner5().


:- initialization main.

main:-
    %  En este punto se deben de poner las funciones que va a seguir el programa, es decir, las reglas que va a seguir el programa para llegar a la solucion.
    userInterface,
    collectingTheData,
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
    read(WEIGHT),nl.

finalRecomendation:-
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
    !,
    write('Thank you for using my diet recommender system, I hope you have a good day!'),nl,nl.