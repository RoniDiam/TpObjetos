object rolando {
	var nivelHechizo
	var nivelLucha
	var hechizo = espectroMalefico.aplicoHechizo()
	var lucha = espadaDestino.aportaArtefacto()
	var resistencia = goblin.aportaResistencia()
	var nuevoHechizo
	var valorBaseHech = 3
	var valorBaseLuch = 1
	
	method calculoNivelHechizeria(){
		nivelHechizo = valorBaseHech * hechizo + fuerzaOscura.nivelFuerzaOscura()
	}
	
	method calculoNivelDeLucha(){
		nivelLucha = valorBaseLuch + lucha
	}

	method ganaAUnEnemigo(){
		if(nivelHechizo > resistencia || nivelLucha > resistencia)
		{
			return true
		}
	}
	method cambiarHechizo(){
		hechizo = nuevoHechizo
	}
}

object fuerzaOscura {
	method nivelFuerzaOscura(){
		return 5
	}
}


object espectroMalefico {
	var nombre
	method aplicoHechizo(){
		return 17
	}
	
	method nombre(nombre2){
		return nombre2
	}
	
	method seCambiaElNombre(nuevoNombre){
		nombre = nuevoNombre
	}
}

object hechizoBasico {
	method aplicoHechizo(){
		return 10
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
		lucha = lucha + cantPerlas
		return lucha
	}
}

object mscaraOscura{
	var mascara
	 method aportaArtefacto(){
		if(fuerzaOscura.nivelFuerzaOscura() > 8)
		{
			mascara = fuerzaOscura.nivelFuerzaOscura() / 2
			return mascara
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
	var calculo
	method aportaResistencia(){
		calculo = resistencia + fuerzaOscura.nivelFuerzaOscura()
		return calculo  
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
	var calculoEclipse
	method hayEclipse(){
		calculoEclipse = fuerzaOscuridad * 2
		return calculoEclipse
	}
}
