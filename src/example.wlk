object huevoRepostero {
	method tieneChocolateBlanco (){
		return true
	}
	
	method tieneChocolateConLeche(){
		return false
	}
	
	method calorias(){
		return 750
	}
}

object huevoMixto {
	method tieneChocolateBlanco() {
		return true
	}
	
	method tieneChocolateConLeche(){
		return false
	}
	
	method tieneChocolateAmargo(){
		return false
	}
	
	method calorias(){
		return 900
	}
	
}

object conejoDeChocolate {
	var peso = 0
	
	method tieneChocolateBlanco(){
		return false
	}
	
	method tieneChocolateConLeche(){
		return false
	}
	
	method tieneChocolateAmargo(){
		return true
	}
	
	method calorias(){
		return peso*10
	}
	
	method darPeso(p){
		peso = p
	}
	
}

object huevitoBlister {
	var cantidadDeHuevos = 0
	method tieneChocolateConLeche(){
		return true
	}
	
	method asignarHuevos(cDH){
		cantidadDeHuevos = cDH
	}
	
	method calorias(){
		return 100*cantidadDeHuevos+ (cantidadDeHuevos / 5).truncate(0) * 150
	}
	
	method tieneChocolateBlanco(){
		return cantidadDeHuevos>4
	}
	
	method tieneChocolateAmargo(){
		return false
	}
}




object arbol {
	method calorias(){
		return 150
	}
	
	
}

object flor {
	var petalos = 0
	
	method darPetalo(p){
		petalos = p
	}
	
	method calorias(){
		return 100*petalos
	}
}

object matrioshka {
	var caloriasBase = 3000
	var decoracion = flor
	var huevoInterior = huevitoBlister
	method tieneChocolateAmargo(){
		return true
	}
	
	method tieneChocolateConLeche(){
		return true
	}
	
	method tieneChocolateBlanco(){
		return false
	}
	
	method cambiarDecoracion(d){
		decoracion = d
	}
	
	method cambiarHuevo(h){
		huevoInterior = h
	}
	
	method calorias(){
		
		return caloriasBase+huevoInterior.calorias()+decoracion.calorias()
	}
}

object ana{
	
	var calorias = 0
	
	var huevosComidos = []
	
	method leGusta(huevo){
		return not (huevo.tieneChocolateAmargo())
	}
	
	method comer(huevo){
		calorias = huevo.calorias()
		huevosComidos.add(huevo)
	}
	
	method estaEnfermo(){
		var huevosChocolateBlanco = []
		huevosChocolateBlanco = huevosComidos.filter({h=>h.tieneChocolateBlanco()})
		return calorias > 5000 || huevosChocolateBlanco.size()>0
	}
}

object jose{
	
	var huevosComidos = []
	
	method leGusta(huevo){
		return huevo.tieneChocolateBlanco()and huevo.calorias()<400
	}
	
	method comer(huevo){
		huevosComidos.add(huevo)
	}
	
	method estaEnfermo(){
		return huevosComidos.last().tieneChocolateAmargo()
	}
}

object tito{
	
	
	method leGusta(huevo){
		return true
	}
	
	method comer(huevo){
		
	}
	
	method estaEnfermo(){
		return false
	}
}

object caceria{
	
	var huevosEscondidos = []
	
	
	method huevosPorEncontrar(){
		return huevosEscondidos.size()
	}
	
	method esconderHuevo(unHuevo){
		huevosEscondidos.add(unHuevo)
	}
	
	method encontrarHuevo(chico,huevo){
		chico.comer(huevo)
		huevosEscondidos.remove(huevo)
	}
	
	method encontrarPrimerHuevo(chico){
		self.encontrarHuevo(chico,huevosEscondidos.first())
	}
	
	method encontrarHuevosRestantes(chico){
		huevosEscondidos.foreach({h=>self.encontrarHuevo(chico,h)})
	}
}
