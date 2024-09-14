%------------------------------------------------------------------------------
% Módulo:       ktn_random
% Propósito:    Seleccionar un elemento aleatorio de una lista no vacía.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función `pick/1` que selecciona un elemento aleatorio
% de una lista no vacía. La función utiliza `rand:uniform/1` para generar
% un índice aleatorio dentro del rango de la lista y selecciona el elemento correspondiente.
% 
% La función `main/1` sirve como punto de entrada cuando se ejecuta como un script
% con `escript`, demostrando la selección aleatoria de un elemento en una lista ejemplo.
%
%------------------------------------------------------------------------------

-module(ktn_random).
-export([main/1, pick/1]).

main(_) ->
    List = [1, 2, 3, 4, 5],
    io:format("Elemento aleatorio: ~p~n", [pick(List)]).

pick(X) when is_list(X), length(X) > 0 ->
    rand:seed(exsplus, os:timestamp()),
    RandomIndex = rand:uniform(length(X)) - 1,
    lists:nth(RandomIndex + 1, X).