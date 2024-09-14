%------------------------------------------------------------------------------
% Módulo:       mezclar_lista
% Propósito:    Ordenar una lista de números aleatorios y extraer los números.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función `mezclar_lista/1` que toma una lista de números
% y devuelve una lista de los números ordenados aleatoriamente. La función utiliza la
% función `rand:uniform/0` para generar valores aleatorios para cada número y luego
% ordena los pares `(valor_aleatorio, numero)` por el `valor_aleatorio`, extrayendo los números
% de los pares ordenados.
%
%------------------------------------------------------------------------------
-module(mezclar_lista).
-export([mezclar_lista/1]).

-spec mezclar_lista(list(integer())) -> list(integer()).
mezclar_lista(X) ->
    [Y || {_, Y} <- lists:sort([ {rand:uniform(), N} || N <- X])].