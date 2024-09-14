%------------------------------------------------------------------------------
% Módulo:       hola_mundo
% Propósito:    Imprimir un mensaje de "Hello, world!" en la consola.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función simple que imprime "Hello, world!" en la consola.
% Es un ejemplo introductorio para mostrar la estructura básica de un programa
% en Erlang, así como el uso de funciones de entrada/salida.
%
% Ejemplo de Uso:
% 1. Ejecutar el script directamente:
%    escript hola_mundo.erl
%------------------------------------------------------------------------------
-module(hola_mundo).
-export([main/1]).

main(_) ->
    io:format("~s~n", ["Hello, world!"]).