package org.uqbar.ejemplosWidgets.ui

import java.util.Calendar
import java.util.Date
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Accessors
@Observable
class Evento {
	
	Date fecha
	Date maniana
	
	def void setFecha(Date unaFecha) {
		fecha = unaFecha
		val calFecha = Calendar.instance
		calFecha.time = fecha 
		calFecha.add(Calendar.DAY_OF_MONTH, 1)
		maniana = calFecha.time
	}
	
}