package org.uqbar.ejemplosWidgets.ui

import org.eclipse.xtend.lib.annotations.Data
import org.uqbar.commons.model.annotations.Observable
import org.uqbar.lacar.ui.model.Action

@Observable
@Data
class Opcion {
	String descripcion
	Action action
}