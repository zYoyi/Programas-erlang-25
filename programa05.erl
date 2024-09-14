%------------------------------------------------------------------------------
% Módulo:       points
% Propósito:    Manejar puntos en un plano cartesiano.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define funciones para crear puntos y obtener sus coordenadas en
% un plano cartesiano. Utiliza mapas para representar los puntos con dos claves:
% `x` y `y`.
%
% Ejemplo de Uso:
% 1. Crear un nuevo punto:
%    P = points:new(1.0, 2.0).
% 2. Obtener la coordenada X:
%    X = points:x(P).
% 3. Obtener la coordenada Y:
%    Y = points:y(P).
%------------------------------------------------------------------------------
-module(points).

% Exportamos las funciones `new/2`, `x/1`, y `y/1` para permitir la creación de
% puntos y la obtención de sus coordenadas.
-export([new/2, x/1, y/1]).

% Definición opaca del tipo `point/0`, el cual es un mapa que contiene dos claves: `x` y `y`.
-opaque point() :: #{x => float(), y => float()}.

% Exportamos el tipo `point/0` para que pueda ser utilizado externamente.
-export_type([point/0]).

% Especificación de la función `new/2` para crear un nuevo punto.
% Recibe dos números en coma flotante que representan las coordenadas X e Y
% y retorna un nuevo punto como un mapa.
-spec new(float(), float()) -> point().
new(X, Y) -> #{x => X, y => Y}.

% Especificación de la función `x/1` para obtener la coordenada X de un punto.
% Recibe un punto y devuelve un número en coma flotante.
-spec x(point()) -> float().
x(#{x := X}) -> X.

% Especificación de la función `y/1` para obtener la coordenada Y de un punto.
% Recibe un punto y devuelve un número en coma flotante.
-spec y(point()) -> float().
y(#{y := Y}) -> Y.