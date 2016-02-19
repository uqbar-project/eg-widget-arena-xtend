package org.uqbar.ejemplosWidgets.appModel

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class Asiento {
	
	int fila
	String posicion
	
	new() {
		
	}
	
	new(int fila, String posicion) {
		this.fila = fila
		this.posicion = posicion
	}
	
	override toString() {
		" " + fila + posicion.substring(0,1) + " "
	}
	
	def getDisponible() {
		fila < ReservaVuelo.MAX_ASIENTOS / 2
	}
	
}