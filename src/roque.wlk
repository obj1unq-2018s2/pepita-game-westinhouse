import pepita.*


object roque {
	var comidaGuardada = null
	var property position = game.origin()
	
	method comidaGuardada() = comidaGuardada
	method imagen() = "roque.png"
	
	method guardarComida(comida){
		comidaGuardada = comida
		game.removeVisual(comida)
		comida.generarPosicionAleatoria()
	}
	method alimentar(ave){
		if(self.comidaGuardada() != null){
		ave.come(self.comidaGuardada())			
		}
	}	
}
