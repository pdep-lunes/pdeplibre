import niveles.*
import errores.*

class Usuario {
  const nombre
  var dinero
  var puntos
  const carrito
  const cupones = []
  var nivel
  
  method nivelQueLeCorresponde() {
    if(puntos >= 15000) return oro
    if(puntos >= 5000) return plata
    else return bronce
  }
  
  method agregarAlCarrito(unProducto) {
    if(self.tieneEspacioEnElCarrito()) {
      carrito.agregarProducto(unProducto)
    } else {
      throw new NoTengoEspacioEnElCarritoException()
    }
  }
  
  method tieneEspacioEnElCarrito() {
    return nivel.leQuedaEspacioEnCarrito(carrito)
  }
  
  method checkoutear() {
    const cupon = self.cuponesSinUsar().anyOne()
    const precioDescontado = carrito.precioConCupon(cupon)
    
    dinero -= precioDescontado
    cupon.usar()
    puntos += precioDescontado * 0.1
  }
  
  method cuponesSinUsar() {
    return cupones.filter { unCupon => !unCupon.fueUsado() }
  }
  
  method esDeudor() {
    return dinero < 0
  }
  
  method descartarCuponesUsados() {
    cupones.removeAllSuchThat { unCupon => unCupon.fueUsado() }
  }
  
  method actualizarNivel() {
    nivel = self.nivelQueLeCorresponde()
  }
}