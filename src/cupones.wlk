class Cupon {
  const descuento
  var fueUsado = false
  
  method precioDescontado(unPrecio) {
    return unPrecio * (1 - descuento)
  }
  
  method usar() {
    fueUsado = true
  }
  
  method fueUsado() {
    return fueUsado
  } 
}