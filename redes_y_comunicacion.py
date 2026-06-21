# nos parece buena practica no usar el alias para saber que lib estamos usando
import matplotlib.pyplot
import networkx

cantidad_de_nodos = 8
estructura_del_nodo = {
    "nombre": None,
    "vecino_izquierda": None,
    "vecino_derecha": None,
}

# Crear grafo bidirecional
grafo = networkx.Graph()

# Crear nodos en un bucle
for numero_del_nodo in range(cantidad_de_nodos):
    grafo.add_node(numero_del_nodo)


# Una vez que el grafo tiene los nodos, creamos las conexiones
for numero_del_nodo in range(cantidad_de_nodos):
    ultimo_nodo = cantidad_de_nodos - 1

    if numero_del_nodo == ultimo_nodo:
        # si es el ultimo, conectar con el primero
        grafo.add_edge(numero_del_nodo, 0)
    else:
        # si no conectar con el siguiente
        grafo.add_edge(numero_del_nodo, numero_del_nodo + 1)

# creamos imagen del grafo
networkx.draw_circular(grafo, with_labels=True)
matplotlib.pyplot.savefig("./grafo_redes_y_comunicacion.png")

# mostramos los nodos y las conexiones en la consola
print(list(grafo.nodes()))
print(list(grafo.edges()))
