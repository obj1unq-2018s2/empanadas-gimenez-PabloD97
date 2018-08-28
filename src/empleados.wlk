object gimenez {
	
	var dinero = 0
	var deuda= 0
	var sueldo = 15000
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){  
		if( sueldo > deuda){
			dinero += sueldo - deuda
			deuda= 0
		}
		else {
			deuda= deuda - sueldo
			dinero= 0
		}
	}
	method totalCobrado(){ return dinero   }

	method gastar(cuanto) { 
		if ( dinero > cuanto ){
			dinero -= cuanto
		}
		else {
			deuda += cuanto - dinero
			dinero=0
		}
	}
	
	method totalDeuda(){ return deuda }
	method totalDinero(){ return dinero }
	
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo(){  }

}


object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo() empleado.cobrarSueldo() }
}
