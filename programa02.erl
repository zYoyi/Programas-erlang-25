%------------------------------------------------------------------------------
% Módulo:       hola_repeticiones
% Propósito:    Imprimir el mensaje "Hello" 10 veces en la consola.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función que imprime el mensaje "Hello" 10 veces en la consola.
% Utiliza `lists:foreach/2` para iterar a través de una secuencia generada por `lists:seq/2`.
%
% Ejemplo de Uso:
% 1. Ejecutar el script directamente:
%    escript hola_repeticiones.erl
%
%------------------------------------------------------------------------------
-module(hola_repeticiones).
-export([main/1]).

main(_) ->
    lists:foreach(
        fun(_) ->
            io:format("Hello~n")
        end, 
        lists:seq(1, 10)
    ).