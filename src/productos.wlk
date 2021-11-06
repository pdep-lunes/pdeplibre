class Producto {
	const nombre
	const precioBase
	
	method nombreOferta() {
		return "SUPER OFERTA " + nombre
	}
	
	method precio() {
		return precioBase * 1.21 
	}
	
	/*otra forma
	method precioFinal() {
		return self.precio() + self.recargo()
	}
	
	method recargo()*/
	
}

class Mueble inherits Producto {
	method precioFinal() {
		return self.precio() + 1000
	}
	
	/*method recargo() {
		return 1000
	}*/
}

class Indumentaria inherits Producto {
	method precioFinal() {
		return self.precio()
	}
	
	/*method recargo() {
		return 0
	}*/
}

class Ganga inherits Producto {
	method precioFinal() {
		return 0
	}
	
	/*override method precioFinal() {
		return 0
	}*/
	
	override method nombreOferta() {
		return super() + " COMPRAME POR FAVOR"
	}
}
