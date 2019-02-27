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
	
	method calorias(p){
		return p*10
	}
	
	method darPeso(p){
		peso = p
	}
	
}

object huevitoBlister{
	var cantidadDeHuevos = 0
	method tieneChocolateConLeche(){
		return true
	}
	
	method asignarHuevos(cDH){
		cantidadDeHuevos = cDH
	}
	
	method calorias(){
		return 100*cantidadDeHuevos+ cantidadDeHuevos / 5 * 150
	}
	
	method tieneChocolateBlanco(){
		return cantidadDeHuevos>4
	}
	
	method tieneChocolateAmargo(){
		return false
	}
}


