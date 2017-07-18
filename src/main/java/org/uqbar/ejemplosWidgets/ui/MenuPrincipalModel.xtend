package org.uqbar.ejemplosWidgets.ui

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable
import org.uqbar.ejemplosWidgets.appModel.CalculadoraBigDecimal
import org.uqbar.ejemplosWidgets.appModel.EjemploImagen
import org.uqbar.ejemplosWidgets.appModel.ReservaVuelo
import org.uqbar.ejemplosWidgets.appModel.VerProvincias
import org.uqbar.ejemplosWidgets.runnable.WidgetApplication

@Observable
@Accessors
class MenuPrincipalModel {

	List<Opcion> opciones = newArrayList
	
	new(WidgetApplication app) {
		opciones.add(new Opcion("Ejemplo de binding doble entre un elemento de una lista y un textbox", [ | new VerProvinciasWindow(app, new VerProvincias).open ]))
		opciones.add(new Opcion("Ejemplo de binding con números", [ | new CalculadoraBigDecimalWindow(app, new CalculadoraBigDecimal).open ]))
		opciones.add(new Opcion("Ejemplo de trabajo con fechas", [ | new EventoWindow(app, new Evento).open ]))
		opciones.add(new Opcion("Ejemplo de reserva de asientos de un vuelo", [ | new ReservaVueloWindow(app, new ReservaVuelo).open ]))
		opciones.add(new Opcion("Ejemplo de manejo de imágenes", [ | new EjemploImagenWindow(app, new EjemploImagen).open ]))
	}	
}