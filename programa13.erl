%------------------------------------------------------------------------------
% Módulo:       iterar_mapa
% Propósito:    Iterar sobre un mapa e imprimir las claves y valores.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función para iterar sobre un mapa e imprimir sus
% claves y valores utilizando la función `maps:fold/3`. 
% Este script puede ejecutarse con `escript` definiendo una función `main/1`.
%
% Ejemplo de Uso:
% 1. Ejecutar el script:
%    escript iterar_mapa.erl
%------------------------------------------------------------------------------

-module(iterar_mapa).
-export([main/1]).

% La función main/1 es el punto de entrada cuando se ejecuta el script con escript.
main(_Args) ->
    % Define un mapa de ejemplo.
    Mapa = #{nombre => "Juan", edad => 30, ciudad => "Madrid"},
    
    % Llama a la función imprimir_mapa/1 que recorre el mapa.
    imprimir_mapa(Mapa).

% Definición de la función imprimir_mapa/1
imprimir_mapa(Mapa) ->
    maps:fold(
        fun(K, V, ok) ->
            io:format("~p: ~p~n", [K, V]),
            ok
        end, 
        ok, 
        Mapa).