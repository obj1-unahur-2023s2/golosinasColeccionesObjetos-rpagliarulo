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
	}

	method golosinaDeSabor(unSabor) {
		//devuelve la primer golosina que encuentra en la bolsa del sabor escogido.
	}
	
	method golosinasDeSabor(unSabor)= bolsaDeGolosinas.filter({golosina => golosina.sabor() == unSabor})
	
	method sabores()= bolsaDeGolosinas.forEach({golosina => console.println(golosina.sabor())})
	
	method golosinaMasCara() {
		//devuelve la golosina mas cara en la bolsa de golosinas compradas.
	}
	
	method pesoGolosinas() {
		//devuelve el peso de la bolsa de golosinas compradas, o sea, la suma del peso de cada golosina.
		}
	
	method golosinasFaltantes(golosinasDeseadas) {
		//donde golosinasDeseadas es una colección de golosinas. Debe devolver las golosinas que están entre las golosinasDeseadas, y que Mariano no compró.
	}
	
	
	method gustosFaltantes(gustosDeseados) {
		//que es una consulta similar a la anterior, pero donde gustosDeseados es una colección de gustos.
		//Debe devolver los gustos que están entre los gustosDeseados, y que no están cubiertos por ninguna golosina de las que tiene Mariano.
	} 
	
	//hay que hacer los de test 
	//hay otros ejercicios extra para probar

}