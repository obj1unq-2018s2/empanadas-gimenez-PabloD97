object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var plata = 0
	var sueldo = 15000
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){  plata+= sueldo }
	method totalCobrado(){ return plata   }
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var dinero = 0
	var deuda = 0
	
	
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo(){ dinero += self.sueldo() }

	method gastar(cuanto) { 
		if ( dinero > cuanto ){
			dinero -= cuanto
		}
		else {
			deuda += cuanto
		}
	}
	
	method totalDeuda(){
		return deuda
	}

	method totalDinero(){
		return dinero
	}
}


object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo() empleado.cobrarSueldo() }
}
