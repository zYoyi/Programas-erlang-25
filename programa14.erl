%------------------------------------------------------------------------------
% Módulo:       generar_flotante
% Propósito:    Generar un número flotante aleatorio en un rango dado [A, B).
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función para generar un número flotante aleatorio
% en un rango dado utilizando la función `rand:uniform/0`. El número generado
% estará dentro del rango [A, B) con A < B.
%
% Ejemplo de Uso:
% 1. Llamar a la función:
%    generar_flotante:random_float(1.0, 10.0).
%------------------------------------------------------------------------------

-module(generar_flotante).

% Exportamos la función `random_float/2`.
-export([random_float/2]).

%% Genera un número flotante aleatorio en el rango [A, B).
random_float(A, B) when A < B ->
    % Utiliza `rand:uniform/0` para obtener un número aleatorio entre 0 y 1,
    % luego ajusta el valor al rango [A, B).
    A + (B - A) * rand:uniform().