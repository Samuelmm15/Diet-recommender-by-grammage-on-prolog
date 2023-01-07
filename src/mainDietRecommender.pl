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
    read(AGE),
    write('What is your height in centimeters? '),nl,
    read(HEIGHT),
    write('What is your weight in kilograms? '),nl,
    read(WEIGHT).

% En este punto se deben encontrar las reglas dependiendo de las preguntas que se realizan al usuaio.

% En este punto se deben de encontrar las recomendaciones que se deben de realizar, es decir,
% la base de datos, de las distintas dietas que se van a dar como recomendaciones.

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