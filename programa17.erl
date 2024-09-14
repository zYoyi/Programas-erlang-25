%------------------------------------------------------------------------------
% Módulo:       arbol
% Propósito:    Crear una estructura de datos de árbol donde cada nodo tiene
%               acceso a sus hijos pero no a su padre.
%
% Autor:        Jordi Joel Ortega Jimenez
% Fecha:        13 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una estructura de datos recursiva que representa un árbol.
% Cada nodo tiene un valor y una lista de hijos (que son otros nodos). Los nodos
% pueden tener cero o más hijos.
%
% Ejemplo de Uso:
% 1. Crear un nodo raíz:
%    Raiz = #node{value = 1, children = []}.
%
% 2. Crear hijos para el nodo:
%    Nodo2 = #node{value = 2, children = []},
%    Nodo3 = #node{value = 3, children = []}.
%
% 3. Agregar los hijos al nodo raíz:
%    RaizConHijos = Raiz#node{children = [Nodo2, Nodo3]}.
%
% 4. Iterar sobre los hijos del nodo:
%    lists:foreach(fun(Hijo) -> io:format("~p~n", [Hijo#node.value]) end, RaizConHijos#node.children).
%------------------------------------------------------------------------------
-module(arbol).
-export([main/1, crear_nodo/1, agregar_hijo/2, imprimir_arbol/1]).

% Definición del registro que representa un nodo en el árbol.
-record(node, {
    value         :: any(),        % Valor del nodo
    children = [] :: [#node{}]     % Lista de nodos hijos
}).

% La función main/1 es el punto de entrada cuando se ejecuta el script con escript.
main(_Args) ->
    % Crear el nodo raíz con valor 1.
    NodoRaiz = crear_nodo(1),

    % Crear algunos hijos.
    Hijo1 = crear_nodo(2),
    Hijo2 = crear_nodo(3),

    % Agregar los hijos al nodo raíz.
    NodoRaizConHijos = agregar_hijo(NodoRaiz, Hijo1),
    NodoRaizConHijos2 = agregar_hijo(NodoRaizConHijos, Hijo2),

    % Imprimir el árbol.
    imprimir_arbol(NodoRaizConHijos2).

% Función para crear un nodo con un valor dado.
crear_nodo(Valor) ->
    #node{value = Valor}.

% Función para agregar un hijo a un nodo.
agregar_hijo(Padre, Hijo) ->
    Padre#node{children = [Hijo | Padre#node.children]}.

% Función para imprimir un árbol en preorden (nodo primero, luego hijos).
imprimir_arbol(Nodo) ->
    io:format("Nodo: ~p~n", [Nodo#node.value]),
    lists:foreach(fun(Hijo) -> imprimir_arbol(Hijo) end, Nodo#node.children).