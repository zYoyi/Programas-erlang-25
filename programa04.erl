%------------------------------------------------------------------------------
% Módulo:       cuadrado
% Propósito:    Calcular el cuadrado de un número entero y mostrar el resultado.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función `square/1` que calcula el cuadrado de un número entero.
% Además, incluye una función `main/1` para ser ejecutada con `escript` que 
% lee un número entero desde los argumentos y muestra el resultado.
%
%------------------------------------------------------------------------------
-module(cuadrado).
-export([square/1, main/1]).

-spec square(integer()) -> integer().
square(X) when is_integer(X) -> X * X.

-spec main([string()]) -> ok.
main(Args) ->
    case Args of
        [NumberStr] ->
            case string:to_integer(NumberStr) of
                {ok, Number} ->
                    Result = square(Number),
                    io:format("El cuadrado de ~p es ~p~n", [Number, Result]),
                    ok;
                _ ->
                    io:format("Por favor, proporciona un número entero válido.~n"),
                    ok
            end;
        _ ->
            io:format("Por favor, proporciona exactamente un argumento.~n"),
            ok
    end.