object bronce {
	method puedeAgregarProducto(carrito) {
		return carrito.isEmpty()
	}
}

object plata {
	method puedeAgregarProducto(carrito) {
		return carrito.size() < 5
	}
}

object oro {
	method puedeAgregarProducto(carrito) {
		return true
	}
}

