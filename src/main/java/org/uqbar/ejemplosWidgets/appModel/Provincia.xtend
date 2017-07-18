package org.uqbar.ejemplosWidgets.appModel

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Observable
@Accessors
class Provincia {
	
	String nombre
	
	new(String valor) {
		this.nombre = valor
	}
	
}