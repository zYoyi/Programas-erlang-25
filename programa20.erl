%------------------------------------------------------------------------------
% Módulo:       search
% Propósito:    Retornar valores entre funciones.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función para buscar un elemento en una lista de listas.
% Retorna la posición de fila y columna del elemento si se encuentra, o lanza
% una excepción si no se encuentra.
%
% Ejemplo de Uso:
% 1. Buscar un elemento en una matriz:
%    Pos = search:search(Element, Matrix).
%------------------------------------------------------------------------------
-module(search).
-export([search/2]).

-spec search(T, [[T]]) -> {pos_integer(), pos_integer()}.
search(X, M) -> search(X, M, 1).

search(_, [], _) -> throw(notfound);
search(X, [R|Rs], RN) ->
  case search_row(X, R) of
    notfound -> search(X, Rs, RN+1);
    CN -> {RN, CN}
  end.

search_row(X, Row) -> search_row(X, Row, 1).

search_row(_, [], _) -> notfound;
search_row(X, [X|_], CN) -> CN;
search_row(X, [_|Elems], CN) -> search_row(X, Elems, CN+1).