package org.uqbar.ejemplosWidgets.appModel

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class ReservaVuelo {

	List<Asiento> asientos = newArrayList

	new() {
		this.initAsientos()
	}

	def void initAsientos() {
		(1..20).forEach [ i |
			asientos.add(new Asiento(i, "Pasillo"))
			asientos.add(new Asiento(i, "Centro"))
			asientos.add(new Asiento(i, "Ventanilla"))
		]
	}
	
	def asientosDeFila(int filaPedida) {
		asientos.filter [ it.fila == filaPedida ]
	}

}
