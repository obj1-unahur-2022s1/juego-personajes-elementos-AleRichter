import armas.*
import cosas.*

object luisa {
	var jugadorActivo 
	
	method jugadorActivo(unJugador){
		jugadorActivo = unJugador
	}
	
	method jugadorActivo() = jugadorActivo 
	
	method aparece(elemento) {
		return self.jugadorActivo().encontrarElemento(elemento)
	} 
}


object floki {
	var arma = ballesta
	
	method encontrarElemento(elemento){
		if (arma.estaCargada()){ 
		elemento.recibirAtaque(arma.nivelDePotencia())
		arma.usar()
		}
	}
	
	method cambiarArma(unArma){
	    arma = unArma
	}
}


object mario {
	var valorRecolectado = 0
	var ultimoElementoEncontrado 
	
	method valorRecolectado() = valorRecolectado 
	
	method ultimoElementoEncontrado() = ultimoElementoEncontrado
	
	method encontrarElemento(elemento){
		ultimoElementoEncontrado  = elemento 
		valorRecolectado += elemento.otorgarVarlor()
		elemento.recibirTrabajo()
	}
	
	method estaFeliz() = valorRecolectado >= 50 or ultimoElementoEncontrado.altura() >= 10 
}
