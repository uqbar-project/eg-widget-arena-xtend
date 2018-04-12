package org.uqbar.ejemplosWidgets.ui

import java.time.LocalDate
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Dependencies
import org.uqbar.commons.model.annotations.Observable
import java.time.format.DateTimeFormatter

@Accessors
@Observable
class Evento {
	
	LocalDate fecha
	
	@Dependencies("fecha")
	def String getManiana() {
		fecha.plusDays(1).format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))
	}
	
}