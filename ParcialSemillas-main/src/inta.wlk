object inta {
	
	const coleccionDeParcelas = []
	
	method cantidadDeParcelas() {
		return coleccionDeParcelas.count()
	}
	
	method promedioDePlantas() {
		return coleccionDeParcelas.forEach({coleccionDeParcelas.cantidadDePlantas()}.sum()) / self.cantidadDeParcelas() 
	}
	
	method parcelaMasSustentable() {
		return coleccionDeParcelas.cantidadDePlantas() > 4 // terminar
	}
	
}
