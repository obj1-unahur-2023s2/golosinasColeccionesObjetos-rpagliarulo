import golosinas.*

object mariano {
	const bolsaDeGolosinas= []
	
	method comprar(unaGolosina) {
		bolsaDeGolosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina) {
		bolsaDeGolosinas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas() = bolsaDeGolosinas.size()
	
	method tieneLaGolosina(unaGolosina)= bolsaDeGolosinas.contains(unaGolosina)
	
	method probarGolosinas() {
		bolsaDeGolosinas.forEach({golosina => golosina.recibirMordisco()})
	}
	
	method hayGolosinasSinTACC()= (bolsaDeGolosinas.filter({golosina => !golosina.contieneGluten()})) >= 1 
	//la lista resultante e4s mayor a 0 en size
	
	method preciosCuidados() {
		//se cumple cuando cada una de las golosinas compradas tienen un precio menor o igual a 10 pesos.
		//CHEQUEAR 
		return bolsaDeGolosinas.forEach({golosina => golosina.precio() >= 10})
	}

	method golosinaDeSabor(unSabor) {
		return bolsaDeGolosinas.find({ g => g.sabor() == unSabor })
	}
	
	method golosinasDeSabor(unSabor)= bolsaDeGolosinas.filter({golosina => golosina.sabor() == unSabor})
	
	method sabores()= bolsaDeGolosinas.map({golosina => golosina.sabor()}).asSet()
	
	method golosinaMasCara() {
		return bolsaDeGolosinas.max({ g => g.precio()}) 
	}
	
	method saborGolosinaMasCara() {
		return self.golosinaMasCara().sabor()
	}
	
	method pesoGolosinas() {
		//devuelve el peso de la bolsa de golosinas compradas, o sea, la suma del peso de cada golosina.
		//CHEQUEAR 
		return bolsaDeGolosinas.sum({g => g.precio()})
	}
	
	method golosinasFaltantes(golosinasDeseadas) {
		//donde golosinasDeseadas es una colección de golosinas. Debe devolver las golosinas que están entre las golosinasDeseadas, y que Mariano no compró.
	}
	
	method buscarGolosinas(closure) {
		return bolsaDeGolosinas.filter(closure)
		
		//en consola: mariano.buscarGolosinas({g => g.peso() <= 5})
		//
	}
	
	method gustosFaltantes(todosLosSabores) {
		return todosLosSabores.asSet().difference(self.sabores())
	} 
	
	//hay que hacer los de test 
	//hay otros ejercicios extra para probar

}