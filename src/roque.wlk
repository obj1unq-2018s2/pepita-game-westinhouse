import pepita.*

object roque {
	var comidaGuardada = null
	var property position = game.origin()	
	
	method imagen() = "jugador.png"
	
	method encontroAlgo(algo){
		if(algo.esComida()){
			self.guardarComida(algo)
		}
	}

	method guardarComida(comida){
	//Roque guarda la comida definida por el parametro, y suelta la anterior (si hubiese) una celda a la 
	//izquierda de donde está.
	
		game.removeVisual(comida)
		if(comidaGuardada != null){
			game.addVisualIn(comidaGuardada, position.left(1))
		}
		comidaGuardada = comida				
	}
	
	method alimentar(ave){
	//Roque alimenta al ave definida por el parámetro con la comida que tiene guardada (si hubiese).
	
		if(comidaGuardada != null){
		ave.come(comidaGuardada)
		comidaGuardada = null	
		}
	}	
	
	method interactuar(ave){
	//Si roque colisiona con pepita, se llama a este método que invoca al método de alimentar.
		self.alimentar(ave)
	}
}	
