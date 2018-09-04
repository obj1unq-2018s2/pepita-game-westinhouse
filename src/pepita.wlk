
 import ciudades.*
 import comidas.*

object pepita {
	var property energia = 10
	var property ciudad = null
	var property posicion = game.at(3,3)
	var property imagen = "pepita1.png" //Uso esta variable para poder cambiar la imagen donde señala el metodo imagen()
	
	method imagen() = imagen

	method come(comida) {
		energia += comida.energia()
		comida.fueComida()
		self.condicionFisica()
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
			self.condicionFisica()
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
	
	method condicionFisica(){
	/*
	 * Pregunta si pepita esta gorda. Si lo esta, cambia la imagen de pepita por una acorde.
	 * Caso contrario, evalúa si está flaca y cambia la imagen por la correspondiente en ese caso.
	 * Si no se da ninguno de estos casos significa que pepita esta en una condicion fisica idonea
	 * y se coloca la imagen por defecto.
	 */
		if(self.estaGorda()){
			imagen = "pepita-gorda-raw.png"
		}
		else if(self.estaFlaca()){
			imagen = "pepita.png"	
			}
			else{ imagen = "pepita1.png" }
	}
	method estaFlaca() = return energia < 10 
	
	method estaGorda() = return energia > 100 
	
	
}
