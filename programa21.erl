%------------------------------------------------------------------------------
% Módulo:       my_module
% Propósito:    Intercambiar valores entre funciones.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define varias funciones que interactúan entre sí para mostrar
% mensajes en la consola. Incluye funciones para hacer algo, imprimir el estado,
% y continuar con una acción.
%
% Ejemplo de Uso:
% 1. Llamar a `fun1/2` para iniciar el proceso:
%    my_module:fun1(A, B).
%------------------------------------------------------------------------------
-module(my_module).
-export([fun1/2, fun2/2, something/0, now/3, and_fun/3, moving/0]).

%% Implementación de fun1
fun1(A, B) ->
    something(),
    fun2(B, A).

%% Implementación de fun2
fun2(A, B) ->
    now(A, is, B),
    and_fun(B, is, A),
    moving().

%% Implementación de something/0
something() ->
    io:format("Doing something~n").

%% Implementación de now/3
now(A, is, B) ->
    io:format("Now: ~p is ~p~n", [A, B]).

%% Implementación de and_fun/3
and_fun(A, is, B) ->
    io:format("And: ~p is ~p~n", [A, B]).

%% Implementación de moving/0
moving() ->
    io:format("Keep moving~n").