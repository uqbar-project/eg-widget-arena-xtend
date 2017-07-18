package org.uqbar.ejemplosWidgets.appModel

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Observable
@Accessors
class ReservaVuelo {

	List<Asiento> asientos = newArrayList
	Asiento asientoSeleccionado
	
	public static int MAX_ASIENTOS = 10

	new() {
		this.initAsientos()
	}

	def void initAsientos() {
		(1..MAX_ASIENTOS).forEach [ i |
			asientos.add(new Asiento(i, "Pasillo"))
			asientos.add(new Asiento(i, "Centro"))
			asientos.add(new Asiento(i, "Ventanilla"))
		]
	}
	
	def asientosDeFila(int filaPedida) {
		asientos.filter [ it.fila == filaPedida ]
	}
	
}
