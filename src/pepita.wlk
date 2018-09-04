
 import ciudades.*
 import comidas.*

object pepita {
	var property energia = 100
	var property ciudad = null
	var property posicion = game.at(3,3)
	var property imagen = "pepita1.png" //Uso esta variable para poder cambiar la imagen donde señala el metodo imagen()
	
	method imagen() = imagen

	method come(comida) {
		energia += comida.energia()
		comida.fueComida()
		self.estaGorda()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad ) {
			self.move(unaCiudad.posicion())
			self.seMovio(unaCiudad)
		}
		else{ game.say(self, "Ya estoy en " + unaCiudad + "!")}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		if(self.tieneEnergiaSuficiente(nuevaPosicion)){
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
			self.posicion(nuevaPosicion)
			self.estaFlaca()
		}
		else{ game.say(self,"Dame de comer primero!")}
	}
	
	method esComida() = false
	
	method tieneEnergiaSuficiente(nuevaPosicion){
		return self.energiaParaVolar(posicion.distance(nuevaPosicion)) <= energia
	}
	
	method seMovio(unaCiudad){
		//Si Pepita puedo viajar hasta otra ciudad (y por ende su posicion y la posicion de una ciudad
		//coinciden), entonces modifica el valor de la variable ciudad por aquella adonde viajo.
		if(posicion == unaCiudad.posicion()){
			ciudad = unaCiudad
		}
	}
	
	//CAMBIOS FISICOS DE PEPITA
	
	method estaGorda(){
	/*
	 * Pregunta si la energia de pepita es mayor que 100. Si lo es, cambia la imagen de pepita por una
	 * acorde. Si no lo es, evalúa si está flaca, y si no lo está, se vuelve a la imagen inicial.
	 */
		if(self.energia() > 100){
			imagen = "pepita-gorda-raw.png"
		}
		else{
			self.estaFlaca()
			imagen = "pepita1.png"
			
		}
	}
	method estaFlaca(){
		if(self.energia() < 10){
			imagen = "pepita.png"
		}
	}
	
	
		
	
}
