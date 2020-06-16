import bicis.*

class Deposito {
	const coleccionBicis = #{} 
	
	method addBici(nuevaBici){ coleccionBicis.addAll(nuevaBici) }
	method bicisRapidas(){ return coleccionBicis.filter( {cosa => cosa.velocidadCrucero() > 25} ) }
	method bicisMarca() {return coleccionBicis.filter( {cosa => cosa.marca() })}
	method esNocturno(){ return (coleccionBicis.all( {cosa => cosa.tieneLuz()} )) }
	method tieneBicicletaParaLlevar(peso){ return ( coleccionBicis.any({cosa => cosa.carga() > peso})) }
	method marcaBiciMasRapida(){ return (coleccionBicis.marca().max({coleccionBicis.velocidadCrucero()} ) ) }
	method cargaTotalBicisLargas(){ return (coleccionBicis.sum({ cosa => cosa.largo() > 170 }))}
	method cantidadBicis(){ coleccionBicis.count({cosa => cosa.tieneAccesorios()})}
	method companieras(bicicleta){
		var marcaIgual
		var diferenciaLargo
		if (coleccionBicis.marca() == bicicleta.marca()) { marcaIgual = true}  else {marcaIgual = false}
		if (coleccionBicis.largo() - bicicleta.largo() < 10  || bicicleta.largo() - coleccionBicis.largo() < 10) {diferenciaLargo = true} else {diferenciaLargo = false}
		return coleccionBicis.filter()
	}
}
