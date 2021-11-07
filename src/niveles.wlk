object oro {
  method leQuedaEspacioEnCarrito(unaCantidad) {
    return true 
  }
}

object plata {
  method leQuedaEspacioEnCarrito(unCarrito) {
    return unCarrito.tieneMenosDeNProductos(5)
  }
}

object bronce {
  method leQuedaEspacioEnCarrito(unCarrito) {
    return unCarrito.estaVacio()
  }
}