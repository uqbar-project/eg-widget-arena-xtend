package org.uqbar.ejemplosWidgets.ui

import java.awt.Color
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.ejemplosWidgets.appModel.ReservaVuelo

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class ReservaVueloWindow extends SimpleWindow<ReservaVuelo> {

	new(WindowOwner parent, ReservaVuelo model) {
		super(parent, model)
	}

	override protected addActions(Panel actionsPanel) {
	}

	override protected createFormPanel(Panel mainPanel) {
		(1 .. ReservaVuelo.MAX_ASIENTOS).forEach [ i |
			val filaPanel = new Panel(mainPanel)
			filaPanel.layout = new HorizontalLayout
			modelObject.asientosDeFila(i).forEach [ asiento |
				new Button(filaPanel) => [
					if (asiento.disponible) {
						background = Color.GREEN
					} else {
						background = Color.RED
					}
					caption = asiento.toString
					onClick [ | modelObject.asientoSeleccionado = asiento ]
				]
			]
		]
		
		new Label(mainPanel) => [
			text = "Asiento seleccionado"
			foreground = Color.BLUE
		]
		new Label(mainPanel).value <=> "asientoSeleccionado"
	}

}
