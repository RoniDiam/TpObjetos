object rolando {
	var nivelHechizo
	var nivelLucha
	var property hechizo = espectroMalefico
	var lucha = espadaDestino.aportaArtefacto()
	var resistencia = goblin.aportaResistencia()
	var nuevoHechizo
	var valorBaseHech = 3
	var valorBaseLuch = 1
	var poderDefensa = 0
	
	method nivelDeHechiceria() = valorBaseHech * hechizo.aplicoHechizo() + fuerzaOscura.nivelFuerzaOscura()/2 // El /2 es por la resistencia del elfo
	
	method ganaAUnEnemigo(){
		return (nivelHechizo > resistencia || nivelLucha > resistencia)
	}
	method cambiarHechizo(nuevoHechizo){
		hechizo = nuevoHechizo
	}
}

object fuerzaOscura {
	method nivelFuerzaOscura(){
		return 5
	}
}


object espectroMalefico {
	method aplicoHechizo(){
		return 17
	}
	
	method esPoderoso(){
		return self.aplicoHechizo() > 15
	}
	
	method seCambiaElNombre(nuevoNombre){
		return nuevoNombre
	}
}

object hechizoBasico {
	method aplicoHechizo(){
		return 10
	}
	
	method esPoderoso(){
		return false
	}
}

object espadaDestino{
	var lucha
	method aportaArtefacto(){
		lucha = lucha + 3
		return lucha
	}
}

object collarDivino{
	var cantPerlas
	var lucha
	method aportaArtefacto(){
		 return lucha + cantPerlas

	}
}

object mscaraOscura{
	 method aportaArtefacto(){
		if(fuerzaOscura.nivelFuerzaOscura() > 8)
		{
			return fuerzaOscura.nivelFuerzaOscura() / 2 
		}
		else{
			 return 4
	 	}
	 }
}

object goblin{
	var resistencia = 5
	method aportaResistencia(){
		return resistencia
	}
}
object elfoOScuro{
	var resistencia = 2
	method aportaResistencia(){
		return resistencia + fuerzaOscura.nivelFuerzaOscura() 
	}
}

object guardian{
	var resistencia = 5
	var energia = 6
	var calculo
	method aportaResistencia(){
		calculo = resistencia * fuerzaOscura.nivelFuerzaOscura() + energia
		return calculo
	}
}

object eclipse{
	var fuerzaOscuridad = fuerzaOscura.nivelFuerzaOscura()
	
	method hayEclipse(){
		return fuerzaOscuridad * 2
	}
}
