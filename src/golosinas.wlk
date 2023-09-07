import sabores.*

object bombon {
	var peso= 15
	
	method contieneGluten()= false
	
	method recibirMordisco() {
		peso= (peso * 0.8) -1
		
		}
	
	method sabor()= frutilla
	
	method precio()=5
	
	method peso() = peso
}

object alfajor {
	var peso= 300
	
	method contieneGluten()= true
	
	method recibirMordisco() {
		peso= peso * 0.8
		
		}
	
	method sabor()= chocolate
	
	method precio()= 12
	
	method peso() = peso
}

object caramelo {
	var peso= 5
	
	method contieneGluten()= false
	
	method recibirMordisco() {
		peso -= 1
		
		}
	
	method sabor()= frutilla
	
	method precio()= 1
	
	method peso() = peso
}

object chupetin {
	var peso= 7
	
	method contieneGluten()= false
	
	method recibirMordisco() {
		peso = 2.max(peso - (10 * peso /100))
		}
	
	method sabor()= naranja
	
	method precio()= 2
	
	method peso() = peso
}

object oblea {
	var peso= 250
	
	method contieneGluten()= true
	
	method recibirMordisco() {
		if (peso > 70) {
			peso = peso - (50*peso/100) }
		else {
			peso = peso - (25*peso/100) }
		}
	
	method sabor()= vainilla
	
	method precio()= 5
	
	method peso() = peso
}

object chocolatin {
	var pesoInicial
	var peso= pesoInicial
	
	method contieneGluten()= true
	
	method recibirMordisco() {
		peso -= 2
	}
	
	method sabor()= chocolate
	
	method precio()= 0.50 * pesoInicial
	
	method peso() = peso
	
	method pesoInicial(unPeso) {
		pesoInicial = unPeso
	}

}

object golosinaBaniada {
	var property golosinaBase= alfajor
	
	method contieneGluten()= golosinaBase.contieneGluten()
	
	method recibirMordisco() {
		self.golosinaBase().recibirMordisco()
		//Además, en el primer mordisco pierde 2 gramos de
//bañado, y en el segundo los otros dos.
		}
	
	method sabor()= golosinaBase.sabor()
	
	method precio()= golosinaBase.precio() + 2
	
	method peso() = golosinaBase.peso() + 4
	}

object pastillaTuttiFrutti {
	var property contieneGluten
	
	method recibirMordisco() {
		//frut a choco a nar
		}
	
	method sabor()= frutilla
	
	method precio(){
		var precio= 7
		if(!self.contieneGluten()) {
			precio=10
		}
		return precio
	}
	
	method peso() = 5
}
