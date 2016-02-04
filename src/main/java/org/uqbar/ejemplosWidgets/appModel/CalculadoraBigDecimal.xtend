package org.uqbar.ejemplosWidgets.appModel

import java.awt.Color
import java.math.BigDecimal
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Dependencies
import org.uqbar.commons.utils.Observable

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
		if (valor != null) {
			elDoble = valor * new BigDecimal(2)
		} else {
			elDoble = new BigDecimal(0)
		}
	}

	@Dependencies("valor")
	def Color getColor() {
		if (valor == null) {
			return Color.GRAY
		}
		if (valor.intValue > 10) {
			return Color.RED
		} else {
			return Color.BLUE
		}
	}
	
	def boolean getHabilitado() {
		valor != 2
	}
	
}
