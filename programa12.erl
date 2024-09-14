%------------------------------------------------------------------------------
% Módulo:       verificar
% Propósito:    Verificar si un elemento está presente en una lista.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función `miembro/2` que utiliza `lists:member/2` para
% verificar si un elemento está presente en una lista. La función `miembro/2` toma
% un elemento y una lista, y devuelve `true` si el elemento está en la lista, de lo contrario, devuelve `false`.
%
%------------------------------------------------------------------------------
-module(verificar).
-export([miembro/2]).

-spec miembro(any(), list()) -> boolean().
miembro(X, List) ->
    lists:member(X, List).