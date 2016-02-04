package org.uqbar.ejemplosWidgets.ui

import org.uqbar.arena.layout.ColumnLayout
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.ErrorsPanel
import org.uqbar.arena.windows.Window
import org.uqbar.arena.windows.WindowOwner

class EventoWindow extends Window<Evento> {
	
	new(WindowOwner owner, Evento model) {
		super(owner, model)
	}
	
	override createContents(Panel mainPanel) {
		new ErrorsPanel(mainPanel, "ok", 100)
		val columnas = new Panel(mainPanel)
		columnas.layout = new ColumnLayout(2)
		val columnaIzquierda = new Panel(columnas)
		new Label(columnaIzquierda).text = "Le pido que ingrese una fecha"
		new TextBox(columnaIzquierda).bindValueToProperty("fecha")
		val columnaDerecha = new Panel(columnas)
		new Label(columnaDerecha).text = "Mañana será"
		new Label(columnaDerecha).bindValueToProperty("maniana")
	}
	
}