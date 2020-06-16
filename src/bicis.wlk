class Bicicleta{
	
	var rodado
	var largo
	var marca
	const accesorios = []
	
	method setRodado(newRodado){ rodado = newRodado}
	method setLargo(newLargo){ largo = newLargo}
	method setMarca(newMarca){ marca = newMarca}
	method setAccesorios(newAccesorio){ accesorios.addAll(newAccesorio)}
	
	method altura(){ return (rodado * 2.5 + 15) }
	method velocidadCrucero(){ return if (rodado > 120) {(rodado + 6)} else {(rodado + 2)} }
	method carga(){ accesorios.sum( {cosa => cosa.carga()} ) }
	method peso(){ return ((rodado /2) + accesorios.sum( {cosa => cosa.peso()} )) }
	method tieneLuz(){ return ( accesorios.any( {cosa => cosa.esLuminoso() } )) }
	method marca() {return marca}
	method tieneObjetosLivianos(){ accesorios.filter ( {cosa => cosa.peso() < 1 } )}
	method tieneAccesorios() {return accesorios.isEmpty()}
	method largo() {return largo}
}

object farolito{
	
	method peso(){ return 0.5 }
	method carga(){ return 0 }
	method esLuminoso(){ return true }
}

object canasto{
	
	var volumen
	
	method setVolumen(newVolumen){ volumen = newVolumen }
	method peso(){ return (volumen / 10) }
	method carga(){ return (volumen * 2) }
	method esLuminoso(){ return false }
}

object morralDeBici{
	
	var largo
	var ojoDeGato
	
	method setLargoYOjoDeGato (newLargo, newOjo){ 
		largo = newLargo  
		ojoDeGato = newOjo
	}
	method peso(){ return 1.2 }
	method carga(){ return (largo / 3) }
	method esLuminoso(){ return if (ojoDeGato) {ojoDeGato} else {not ojoDeGato} }
}