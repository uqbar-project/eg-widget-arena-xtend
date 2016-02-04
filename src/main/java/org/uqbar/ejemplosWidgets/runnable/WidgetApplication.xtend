package org.uqbar.ejemplosWidgets.runnable

import org.uqbar.arena.Application
import org.uqbar.arena.windows.Window
import org.uqbar.ejemplosWidgets.ui.MenuPrincipalWindow
import org.uqbar.ejemplosWidgets.ui.MenuPrincipalModel

class WidgetApplication extends Application {
	
	static def void main(String[] args) { 
		new WidgetApplication().start()
	}

	override protected Window<?> createMainWindow() {
		return new MenuPrincipalWindow(this, new MenuPrincipalModel(this))
	}
	
}