%------------------------------------------------------------------------------
% Módulo:       arbolBinario
% Propósito:    Crear e imprimir un árbol binario simple de ejemplo.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.1
%
% Descripción:
% Este módulo define un tipo de árbol binario con datos genéricos y proporciona
% funciones para crear e imprimir un árbol binario. La función `create_tree/0`
% crea un árbol binario de ejemplo, y `print_tree/1` lo imprime en la consola
% de manera que refleje mejor la estructura del árbol.
%
%------------------------------------------------------------------------------

-module(arbolBinario).

% Exportamos las funciones `create_tree/0`, `print_tree/1` y `main/1`.
-export([create_tree/0, print_tree/1, main/1]).

% Definición del tipo `binary_tree/1`, que representa un árbol binario con datos genéricos.
-type binary_tree(T) ::
    #{ data => T
     , left => binary_tree(T)
     , right => binary_tree(T)
     }.

% Definición de la función `create_tree/0`, que crea un árbol binario simple de ejemplo.
create_tree() ->
    % Ejemplo de árbol binario:
    %       5
    %      / \
    %     3   8
    %    / \
    %   1   4
    Tree = #{
        data => 5,
        left => #{
            data => 3,
            left => #{
                data => 1,
                left => #{},  % Nodo vacío
                right => #{}
            },
            right => #{
                data => 4,
                left => #{},  % Nodo vacío
                right => #{}
            }
        },
        right => #{
            data => 8,
            left => #{},  % Nodo vacío
            right => #{}
        }
    },
    Tree.

% Definición de la función `print_tree/1`, que imprime el árbol binario en la consola.
print_tree(Tree) ->
    print_tree(Tree, 0, "root").

% Función auxiliar para imprimir el árbol con indentación y representación de árbol.
% El tercer argumento `Position` indica si es el nodo "left", "right", o "root".
print_tree(#{data := Data, left := Left, right := Right}, Indent, Position) ->
    io:format("~*s~s: ~p~n", [Indent, "", Position, Data]),
    print_tree(Right, Indent + 4, "right"),
    print_tree(Left, Indent + 4, "left");
print_tree(#{}, _, _) ->
    ok.

%------------------------------------------------------------------------------
% Función:      main/1
% Propósito:    Punto de entrada para `escript`. Crea e imprime un árbol binario de ejemplo.
%------------------------------------------------------------------------------
main(_) ->
    Tree = create_tree(),
    print_tree(Tree).
