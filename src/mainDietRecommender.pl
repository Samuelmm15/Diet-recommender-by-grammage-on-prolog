% Para poder ejecutar el programa, se debe de ejecutar el programa haciendo uso de swipl mainDietRecommender.pl y despues se debe de ejecutar el comando main.
% Para windows se puede hacer uso del comando prolog mainDietRecommender.pl y despues se debe de ejecutar el comando main. El comando cambia ligeramente.

/* -------------------------- */
/* Diet Recommender by grammage System */
/* -------------------------- */

:- initialization main.

main:-
    %  En este punto se deben de poner las funciones que va a seguir el programa, es decir, las reglas que va a seguir el programa para llegar a la solucion.
    userInterface,
    collectingTheData.
    

userInterface:-
    %  En este punto se debe de poner la interfaz que va a usar el usuario para comunicarse con el programa.
    nl,
    write('------------------------------------'),nl,
    write('Diet Recommender by grammage System'),nl,
    write('------------------------------------'),nl,
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
    write('Finally the recommended diet for you is: '),nl,
    %  En este punto se debe de poner la solucion que va a dar el programa.
    recommendation(DIET).

% En este punto se deben encontrar las reglas dependiendo de las preguntas que se realizan al usuaio.

% Relación de los distintos alimentos los cuales se pueden consumir.
% Verduras.
lettuce(lettuce).
tomatoe(tomatoe).
cucumber(cucumber).
carrot(carrot).
onion(onion).
pepper(pepper).
potatoe(potatoe).
% Frutas.
apple(apple).
orange(orange).
banana(banana).
strawberry(strawberry).
raspberry(raspberry).
blueberry(blueberry).
watermelon(watermelon).
% Cereales.
rice(rice).
pasta(pasta).
bread(bread).
corn(corn).
oatmeal(oatmeal).
% Carnes.
chicken(chicken).
beef(beef).
pork(pork).
fish(fish).
% Lácteos.
milk(milk).
cheese(cheese).
yogurt(yogurt).
% Legumbres.
beans(beans).
lentils(lentils).
peas(peas).
% Aceites.
oliveOil(oliveOil).
sunflowerOil(sunflowerOil).
cornOil(cornOil).
% Bebidas.
water(water).
juice(juice).
coffee(coffee).
tea(tea).
% Otros.
egg(egg).
honey(honey).
sugar(sugar).
salt(salt).
vinegar(vinegar).

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

% Base de datos de las distintas dietas con los distintos elementos.

% En este punto se deben de encontrar las recomendaciones que se deben de realizar, es decir,
% la base de datos, de las distintas dietas que se van a dar como recomendaciones.
recommendation(breakfast).


% ESTO ES UN EJEMPLO DE IMPLEMENTACIÓN DE INTERFAZ GRÁFICA DE USUARIO EN PROLOG (PROBAR EN WINDOWS PARA
% PODER COMPROBAR SU FUNCIONAMIENTO).

% % Realización de una interfaz gráfica, haciendo uso de la librería PCE.
% :- use_module(library(pce)).
% :- pce_image_directory('./images').
% :- pce_begin_class(dietRecommender, frame, "Diet Recommender by grammage System").

% % En este punto se debe de poner la interfaz gráfica que va a usar el usuario para comunicarse con el programa.
% initialise(DR) :->
%     send_super(DR, initialise, 'Diet Recommender by grammage System'),
%     send(DR, append, new(Picture, picture)),
%     send(Picture, load, 'dietRecommender.png'),
%     send(DR, append, new(AGE, text_item('How old are you?'))),
%     send(DR, append, new(HEIGHT, text_item('What is your height in centimeters?'))),
%     send(DR, append, new(WEIGHT, text_item('What is your weight in kilograms?'))),
%     send(DR, append, button('Exit', message(DR, destroy))).

% % En este punto se debe de poner la recopilacion de datos que va a usar el programa para llegar a la solucion.
% collectingTheData(DR) :->
%     get(DR?AGE, selection, AGE),
%     get(DR?HEIGHT, selection, HEIGHT),
%     get(DR?WEIGHT, selection, WEIGHT),
%     write('How old are you? '),nl,
%     write(AGE),nl,
%     write('What is your height in centimeters? '),nl,
%     write(HEIGHT),nl,
%     write('What is your weight in kilograms? '),nl,
%     write(WEIGHT),nl.

% % En este punto se deben encontrar las reglas dependiendo de las preguntas que se realizan al usuaio.

% % En este punto se deben de encontrar las recomendaciones que se deben de realizar, es decir,
% % la base de datos, de las distintas dietas que se van a dar como recomendaciones.

% :- pce_end_class.