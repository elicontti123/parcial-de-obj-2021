
class Plantas {
	
	var property anioDeObtencion
	var property altura
	
	
	method cuantasHorasDeSolTolera()
	
	method esFuerte() {
		
		return self.cuantasHorasDeSolTolera() > 10
	}
	
	method daNuevasSemillas() {
		
		return self.esFuerte()  
	}
	
	method cuantoEspacioOcupa()
	
	method esUnaParcelaIdeal(unaParcela)
	
	method seAsociaBien(unaParcela, otraPlanta){ // terminar
		
	}
}
