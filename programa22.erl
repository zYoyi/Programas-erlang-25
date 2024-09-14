%------------------------------------------------------------------------------
% Módulo:       example
% Propósito:    Convertir string a entero.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función que convierte una lista de caracteres a un entero.
% La lista debe representar una secuencia de dígitos.
%
% Ejemplo de Uso:
% 1. Convertir una lista de caracteres a entero:
%    Int = example:convert_list_to_integer("1234").
%------------------------------------------------------------------------------
-module(example).
-export([convert_list_to_integer/1]).

%% Convierte una lista de caracteres a un entero
convert_list_to_integer(S) ->
    %% Convierte la lista de caracteres a un entero
    I = list_to_integer(S),
    %% Devuelve el entero
    I.