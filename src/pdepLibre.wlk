object pdepLibre {
	const usuarios = []
	const productos = []
	
	method penalizarADeudores() {
	  self.usuariosDeudores().forEach { unUsuario => unUsuario.restarPuntos(1000) }
	}
	
	method usuariosDeudores() {
	  return usuarios.filter { unUsuario => unUsuario.esDeudor() }
	}
	
	method limpiarCuponesUsados() {
	  usuarios.forEach { unUsuario => unUsuario.descartarCuponesUsados() }
	}
	
	method nombresDeOfertaDeProductos() {
	  return productos.map { unProducto => unProducto.nombreDeOferta() }
	}
	
	method actualizarNivelesDeUsuarios() {
	  usuarios.forEach { unUsuario => unUsuario.actualizarNivel() }
	}
}
