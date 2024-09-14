%------------------------------------------------------------------------------
% Módulo:       format_example
% Propósito:    Convertir número real a string.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función que convierte un número de punto flotante a una
% lista de caracteres, formateado con dos decimales.
%
% Ejemplo de Uso:
% 1. Convertir un número real a string:
%    Str = format_example:format_float(123.456).
%------------------------------------------------------------------------------
-module(format_example).
-export([format_float/1]).

%% Convierte un número de punto flotante a una lista de caracteres con dos decimales
format_float(X) ->
    %% Formatea el número con dos decimales
    io_lib:format("~.2f", [X]).