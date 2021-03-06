package org.uqbar.ejemplosWidgets.ui

import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.widgets.tables.Column
import org.uqbar.arena.widgets.tables.Table
import org.uqbar.arena.windows.ErrorsPanel
import org.uqbar.arena.windows.Window
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.ejemplosWidgets.appModel.Provincia
import org.uqbar.ejemplosWidgets.appModel.VerProvincias

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class VerProvinciasWindow extends Window<VerProvincias> {

	new(WindowOwner owner, VerProvincias model) {
		super(owner, model)
	}
	
	override createContents(Panel mainPanel) {
		// Ćómo setear un error panel con 2 líneas
		new ErrorsPanel(mainPanel, "Ingrese un valor\n")
		
		new TextBox(mainPanel) => [
			value <=> "valorNuevo"
			enabled <=> "valorEnabled"	
		]
		
		val table = new Table<Provincia>(mainPanel, Provincia) => [
			items <=> "provincias"
			value <=> "provinciaSeleccionada"
			numberVisibleRows = 10
		]
		
		new Column<Provincia>(table) => [
			title = "Nombre"
			fixedSize = 1200
			bindContentsToProperty("nombre")
		]
	}
	
}