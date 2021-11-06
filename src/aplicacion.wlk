object pdeplibre {
	var usuarios
	var productos
	
	method reducirPuntosAMorosos() {
		usuarios.forEach({usuario => usuario.reducirPuntos()})
	}
	
	method revisarCupones() {
		usuarios.forEach({usuario => usuario.eliminarCuponesUsados()})
	}
	
	method nombresDeOferta() {
		return productos.map({producto => producto.nombreOferta()})
	}
	
	method actualizarNivel() {
		usuarios.forEach({usuario => usuario.actualizarNivel()})
	}
	
}
