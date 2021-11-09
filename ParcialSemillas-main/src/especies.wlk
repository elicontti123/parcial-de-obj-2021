import plantas.*
import parcelas.*

class Menta inherits Plantas {
	
	override method cuantasHorasDeSolTolera() {
		return 6
	}
	
	override method daNuevasSemillas() {
		return super() or altura > 0.4 
	}
	
	override method cuantoEspacioOcupa() {
		return altura * 3
	}
	
	override method esUnaParcelaIdeal(unaParcela){
		return unaParcela.supercieDeParcela() > 6
	}
}


class Soja inherits Plantas {
	
	override method cuantasHorasDeSolTolera() {
		return if (altura < 0.5) { 6 } 
				else if (altura.between(0.5,1)){ 7 }
				else { 9 }
	}
	
	override method daNuevasSemillas() {
		return super() or (anioDeObtencion > 2007 and altura > 1)
	}
	
	override method cuantoEspacioOcupa() {
		return altura / 2
	}
	
	override method esUnaParcelaIdeal(unaParcela){
		return self.cuantasHorasDeSolTolera() == unaParcela.horasDeSolQueRecibePorDia()
	}
	
}

class Quinoa inherits Plantas {
	
	override method cuantoEspacioOcupa() {
		return 0.5
	}
	
	override method daNuevasSemillas() {
		return super() or anioDeObtencion < 2005
	}
	
	override method esUnaParcelaIdeal(unaParcela){
		return unaParcela.noHayPlantaQueSuperaAltura()
	}
	
}

class SojaTransgenica inherits Soja {
	
	override method daNuevasSemillas() { // terminar
		return super() or 
	}
	
	override method esUnaParcelaIdeal(unaParcela){
		return unaParcela.cantMaxDePlantasQueTolera() == 1
	}
}

class HierbaBuena inherits Menta {
	
	override method cuantoEspacioOcupa() {
		return super() * 2
	}
	
}