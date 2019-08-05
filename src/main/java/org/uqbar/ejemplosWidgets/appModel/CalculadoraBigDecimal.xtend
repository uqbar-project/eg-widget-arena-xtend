package org.uqbar.ejemplosWidgets.appModel

import java.math.BigDecimal
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Dependencies
import org.uqbar.commons.model.annotations.Observable

/**
 * Application model para la vista de la calculadora	
 */
@Accessors
@Observable
class CalculadoraBigDecimal {

	BigDecimal valor = new BigDecimal(18000)

//	def void setValor(BigDecimal unValor) {
//		valor = unValor
//	}

	@Dependencies("valor")
	def getElDoble() {
		if (valor !== null) valor * new BigDecimal(2) else new BigDecimal(0)
	}
	
	def boolean getHabilitado() {
		valor != 2
	}
	
}
