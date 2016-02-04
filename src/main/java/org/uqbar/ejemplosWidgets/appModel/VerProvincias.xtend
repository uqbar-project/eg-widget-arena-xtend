package org.uqbar.ejemplosWidgets.appModel

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Dependencies
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class VerProvincias {
	
	List<Provincia> provincias = #[new Provincia("Catamarca"), new Provincia("Santiago del Estero")]
	Provincia provinciaSeleccionada
	
	@Dependencies("provinciaSeleccionada")
	def getValorNuevo() {
		provinciaSeleccionada.nombre
	}
	
	def void setValorNuevo(String unValorNuevo) {
		provinciaSeleccionada.nombre = unValorNuevo
	}
	
	@Dependencies("provinciaSeleccionada")
	def Boolean getValorEnabled() {
		provinciaSeleccionada != null
	}

}