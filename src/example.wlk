object rolando {
	var nivelHechizo
	var nivelLucha
	var hechizo = espectroMalefico.nivelEspectro()
	var lucha = espadaDestino.aportaEspada()
	var resistencia = goblin.aportaResistencia()
	var nuevoHechizo
	
	method calculoNivelHechizeria(){
		nivelHechizo = 3 * hechizo + fuerzaOscura.nivelFuerzaOscura()
	}
	
	method calculoNivelDeLucha(){
		nivelLucha = 1 + lucha
	}

	method ganaAUnEnemigo(){
		if(nivelHechizo > resistencia || nivelLucha > resistencia)
		{
		return true
		}
		else{
		return false
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
	method nivelEspectro(){
		return 17
	}
	
	method nombre(nombre2){
		return nombre2
	}
	
	method seCambiaElNombre(nuevoNombre){
		nombre = nuevoNombre
		return nombre
	}
}

object hechizoBasico {
	method nivelBasico(){
		return 10
	}
}

object espadaDestino{
	var lucha
	method aportaEspada(){
		lucha = lucha + 3
		return lucha
	}
}

object collarDivino{
	var cantPerlas
	var lucha
	method aportaCollar(){
		lucha = lucha + cantPerlas
		return lucha
	}
}

object mscaraOscura{
	var mascara
	 method aportaMascara(){
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
