package org.uqbar.ejemplosWidgets.ui

import java.awt.Color
import java.math.BigDecimal
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.NumericField
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.Window
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.ejemplosWidgets.appModel.CalculadoraBigDecimal

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class CalculadoraBigDecimalWindow extends Window<CalculadoraBigDecimal> {

	new(WindowOwner owner, CalculadoraBigDecimal model) {
		super(owner, model)
	}

	override createContents(Panel mainPanel) {
		new Label(mainPanel).text = "Ingrese un valor"
		new NumericField(mainPanel) => [
			value <=> "valor"
			enabled <=> [ CalculadoraBigDecimal calc | calc.habilitado ]
			(background <=> [ CalculadoraBigDecimal calc | calc.valor ])
				.modelToView = [ BigDecimal valor |
					if (valor === null)
						return Color.GRAY
					if (valor.intValue > 10) Color.RED else Color.BLUE
				]
		]
		new Label(mainPanel).text = "El doble es "
		new Label(mainPanel) => [
			background = Color.YELLOW
			value <=> "elDoble"
		]
	}

}
