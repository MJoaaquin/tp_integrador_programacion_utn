# nos parece buena practica no usar el alias para saber que lib estamos usando
import matplotlib.pyplot
import networkx

cantidad_de_nodos = 8

# Crear grafo direccional
grafo = networkx.DiGraph()

# Crear nodos en un bucle
for numero_del_nodo in range(cantidad_de_nodos):
    grafo.add_node(numero_del_nodo)


# Una vez que el grafo tiene los nodos, creamos las conexiones
for numero_del_nodo in range(cantidad_de_nodos):
    primer_nodo = 0
    ultimo_nodo = cantidad_de_nodos - 1

    if numero_del_nodo == primer_nodo:
        grafo.add_edge(numero_del_nodo, numero_del_nodo + 1)
        grafo.add_edge(numero_del_nodo, ultimo_nodo)

    elif numero_del_nodo == ultimo_nodo:
        grafo.add_edge(numero_del_nodo, primer_nodo)
        grafo.add_edge(numero_del_nodo, numero_del_nodo - 1)

    else:
        nodo_siguiente = numero_del_nodo + 1
        nodo_anterior = numero_del_nodo - 1

        grafo.add_edge(numero_del_nodo, nodo_siguiente)
        grafo.add_edge(numero_del_nodo, nodo_anterior)

# creamos imagen del grafo
networkx.draw_circular(grafo, with_labels=True)
matplotlib.pyplot.savefig("./redes_y_comunicacion_grafo.png")

# mostramos los nodos y las conexiones en la consola
print("Nodos:")
print(list(grafo.nodes()))

print("Relaciones entre nodos:")
print(list(grafo.edges()))
