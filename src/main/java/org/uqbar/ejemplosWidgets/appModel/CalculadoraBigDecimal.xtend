package org.uqbar.ejemplosWidgets.appModel

import java.math.BigDecimal
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

/**
 * Application model para la vista de la calculadora	
 */
@Accessors
@Observable
class CalculadoraBigDecimal {

	BigDecimal valor = new BigDecimal(18000)
	BigDecimal elDoble

	def void setValor(BigDecimal unValor) {
		valor = unValor
		if (valor !== null) {
			elDoble = valor * new BigDecimal(2)
		} else {
			elDoble = new BigDecimal(0)
		}
	}

	def boolean getHabilitado() {
		valor != 2
	}
	
}
