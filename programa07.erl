%------------------------------------------------------------------------------
% Módulo:       indexitems
% Propósito:    Imprimir una lista de elementos con sus índices.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función que toma una lista de elementos y la imprime
% junto con sus índices. Usa `lists:zip/2` para emparejar los índices con los 
% elementos y `io:format/2` para mostrar el resultado.
%
% Ejemplo de Uso:
% 1. Imprimir una lista de elementos con índices:
%    indexitems:print_with_index([apple, banana, cherry]).
%------------------------------------------------------------------------------
-module(indexitems).

% Exportamos la función `print_with_index/1` para hacerla accesible desde otros módulos.
-export([print_with_index/1]).

% Definición de la función `print_with_index/1`, que toma una lista de elementos,
% empareja cada elemento con su índice utilizando `lists:zip/2`, y luego imprime 
% la lista con índices usando `io:format/2`.
print_with_index(Items) ->
    % Emparejamos los índices con los elementos de la lista.
    WithIndex = lists:zip(lists:seq(1, length(Items)), Items),
    
    % Imprimimos la lista con índices en formato legible.
    io:format("~p~n", [WithIndex]).