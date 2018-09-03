object manzana {
	const property imagen = "manzana.png"
	method energia() = 80
	method generarPosicionAleatoria() { 
	//Genera una posicion aleatoria en el tablero después de que Roque agarra la comida
		game.addVisualIn(self, game.at(1.randomUpTo(10), 1.randomUpTo(10))  )
	}
}

object alpiste {
	const property imagen = "alpiste.png"
	method energia() = 5
	method generarPosicionAleatoria() {
	//Genera una posicion aleatoria en el tablero después de que Roque agarra la comida
		game.addVisualIn(self, game.at(1.randomUpTo(10), 1.randomUpTo(10))  )
	}	
}
