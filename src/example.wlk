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
	method leGusta(huevo){
		return not (huevo.tieneChocolateAmargo())
	}
}

object jose{
	method leGusta(huevo){
		return huevo.tieneChocolateBlanco()and huevo.calorias()<400
	}
}

object tito{
	method leGusta(huevo){
		return true
	}
}