class Cupon {
	var estaUsado = false
	const descuento
	
	method usar(precio) {
		estaUsado = true
		return (precio - precio * descuento)
		//también podría retornar sólo el descuento
	}
	
	method estaUsado() {
		return estaUsado
	}
	
}