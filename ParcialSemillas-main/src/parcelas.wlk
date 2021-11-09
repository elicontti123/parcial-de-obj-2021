
class Parcelas {
	
	var property ancho
	var property largo
	var property horasDeSolQueRecibePorDia
	
	const listaDePlantas = []
	
	method supercieDeParcela() {
		return ancho * largo
	}
	
	method cantMaxDePlantasQueTolera() {
		return if(ancho > largo) { 
			self.supercieDeParcela() / 5
		}
	else {
		self.supercieDeParcela() / 3 + largo
		}
	
	}
	
	method tieneComplicaciones() {
		return listaDePlantas.any({l=> l.cuantasHorasDeSolTolera() < horasDeSolQueRecibePorDia}) 
	}
	
	method plantarUnaPlanta(unaPlanta) {
		
		listaDePlantas.add(unaPlanta)
		return if ( self.cantidadDePlantasEsIgualAlMax() and self.horasDeSolQueRecibePorDia()) { // terminar
			
		}else {
			self.error("no se puede plantar")
			listaDePlantas.remove(unaPlanta)
		}
	
	}
	
	method cantidadDePlantasEsIgualAlMax() {
		return listaDePlantas.count() == self.cantMaxDePlantasQueTolera()
	}
	
	
	
	method noHayPlantaQueSuperaAltura() {
		return not listaDePlantas.any({l=> l.altura() > 1.5})
	}
	
	method cantidadDePlantas() {
		return listaDePlantas.count()
	}
}

class ParcelasEcologicas inherits Parcelas {
	
}

class ParcelasIndustriales inherits Parcelas {
	
}
