%------------------------------------------------------------------------------
% Módulo:       sum_list
% Propósito:    Sumar los elementos de una lista.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función que toma una lista de números y devuelve la suma
% de sus elementos. Utiliza la función `lists:sum/1` para realizar la suma.
%
% Ejemplo de Uso:
% 1. Sumar los elementos de una lista:
%    Suma = sum_list:sum_items([1, 2, 3, 4]).
%------------------------------------------------------------------------------
-module(sum_list).

% Exportamos la función `sum_items/1` para que sea accesible desde otros módulos.
-export([sum_items/1]).

% Especificación de la función `sum_items/1`, que toma una lista de números
% y devuelve la suma de sus elementos.
-spec sum_items(list(number())) -> number().
sum_items(Items) ->
    % Utilizamos `lists:sum/1` para sumar todos los elementos de la lista.
    lists:sum(Items).