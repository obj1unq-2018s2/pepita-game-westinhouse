object manzana {
	
	const property imagen = "manzana.png"
	
	method energia() = 80
	
	method generarPosicionAleatoria() { 
	//Genera una posicion aleatoria en el tablero después de que Roque agarra la comida
		game.addVisualIn(self, game.at(0.randomUpTo(10), 0.randomUpTo(10))  )
	}
	
	method fueComida(){
		self.generarPosicionAleatoria()
	}
	
	method esComida() = true
	
	method interactuar(ave) {} 
	//Este método sirve sólo si pepita vuela a una ciudad donde haya también un alimento en la misma posicion
}

object alpiste {
	
	const property imagen = "alpiste.png"
	
	method energia() = 5
	
	method generarPosicionAleatoria() {
	//Genera una posicion aleatoria en el tablero después de que Roque agarra la comida
		game.addVisualIn(self, game.at(0.randomUpTo(10), 0.randomUpTo(10))  )
	}
	
	method fueComida(){
		self.generarPosicionAleatoria()
	}
	
	method esComida() = true
	
	method interactuar(ave) {} 
	//Este método sirve sólo si pepita vuela a una ciudad donde haya también un alimento en la misma posicion
	
}
