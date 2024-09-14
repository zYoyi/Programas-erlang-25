%------------------------------------------------------------------------------
% Módulo:       lista_reversa
% Propósito:    Revertir una lista.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función que utiliza la función `lists:reverse/1` de
% Erlang para revertir el orden de los elementos de una lista.
% La función `reversa/1` toma una lista como entrada y devuelve una nueva
% lista con los elementos en orden inverso.
%
%------------------------------------------------------------------------------
-module(lista_reversa).
-export([reversa/1]).

-spec reversa(list()) -> list().
reversa(List) -> lists:reverse(List).