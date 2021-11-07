class Carrito {
  const productos = []
  
  method agregarProducto(unProducto) {
    productos.add(unProducto)  
  }
  
  method precioTotal() {
    return productos.sum { unProducto => unProducto.precio() }
  }
  
  method precioConCupon(unCupon) {
    return unCupon.precioDescontado(self.precioTotal())
  }
  
  method estaVacio() {
    return productos.isEmpty()
  }
  
  method tieneMenosDeNProductos(unaCantidad) {
    return productos.size() < unaCantidad
  }
}