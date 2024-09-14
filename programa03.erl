%------------------------------------------------------------------------------
% Módulo:       yolo_procedure
% Propósito:    Imprimir el mensaje "#YOLO!" en la consola.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función simple `procedure/0` que imprime el mensaje
% "#YOLO!" en la consola utilizando la función `io:format/1`.
%
%------------------------------------------------------------------------------
-module(yolo_procedure).
-export([procedure/0]).

-spec procedure() -> ok.
procedure() -> io:format("#YOLO!~n").