import niveles.*

class Usuario {
	const nombre
	var dinero
	var nivel
	var puntos
	var cupones
	var carrito
	
	method agregarAlCarrito(producto) {
		if (nivel.puedeAgregarProducto(carrito)) {
			carrito.add(producto)
		} else {
			self.error("Tu nivel no te permite agregar más productos")
		}
	}
	
	method comprar() {
		var precioCarrito = carrito.sum({producto => producto.precioFinal()})
		precioCarrito = self.precioConCupon(precioCarrito)
		dinero -= precioCarrito
		puntos += precioCarrito * 0.1
		
	}
	
	method precioConCupon(precio) {
		return cupones.anyOne().usar(precio)
	}
	
	method debeDinero() {
		return dinero < 0
	}
	
	method eliminarCuponesUsados() {
		cupones = cupones.filter({cupon => !cupon.estaUsado()})
	}
	
	method actualizarNivel() {
		if(puntos >= 15000) {
			nivel = oro
		} else if(puntos >= 5000){
			nivel = plata
		} else {
			nivel = bronce
		}
	}
	
	method reducirPuntos() {
		if (self.debeDinero()) {
			puntos -= 1000
		}
	}
}
