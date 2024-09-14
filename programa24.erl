%------------------------------------------------------------------------------
% Módulo:       unicode_example
% Propósito:    Asignar a string una palabra japonesa.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define funciones para convertir cadenas de caracteres Unicode a binario
% y viceversa. Permite trabajar con representaciones de texto en diferentes formatos.
%
% Ejemplo de Uso:
% 1. Convertir una cadena a binario:
%    Bin = unicode_example:convert_to_binary.
% 2. Convertir de binario a cadena:
%    Str = unicode_example:convert_from_binary(Bin).
%------------------------------------------------------------------------------
-module(unicode_example).
-export([convert_to_binary/1, convert_from_binary/1]).

%% Convierte una cadena de caracteres Unicode a binario
convert_to_binary(S) ->
    %% Convierte la cadena de caracteres a binario
    Bin = unicode:characters_to_binary(S),
    %% Devuelve la representación binaria
    Bin.

%% Convierte binario de vuelta a una cadena de caracteres Unicode
convert_from_binary(Bin) ->
    %% Convierte la representación binaria a una cadena de caracteres
    unicode:binary_to_characters(Bin).