package org.uqbar.ejemplosWidgets.appModel

import org.uqbar.commons.model.annotations.Observable

@Observable
class EjemploImagen {
	
	def getPathImagen() {
		"foto.jpg"
	}
	
	def getTitle() {
		"¡Pero qué bonita foto!"
	}
}