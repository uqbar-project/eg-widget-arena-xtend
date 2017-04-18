package org.uqbar.ejemplosWidgets.ui

import java.awt.Color
import org.uqbar.arena.graphics.Image
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.Window
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.ejemplosWidgets.appModel.EjemploImagen

class EjemploImagenWindow extends Window<EjemploImagen> {

	new(WindowOwner owner, EjemploImagen model) {
		super(owner, model)
	}

	override createContents(Panel mainPanel) {
		new Label(mainPanel) => [
			bindImageToProperty("pathImagen", [ imagePath |
				new Image(imagePath)
			])
		]
		new Label(mainPanel) => [
			bindValueToProperty('title')
			fontSize = 15
			foreground = Color.WHITE
			background = Color.DARK_GRAY
		]
	}

}
