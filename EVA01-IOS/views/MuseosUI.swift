//
//  MuseosUI.swift
//  EVA01-IOS
//
//  Created by DEV EDUAR on 9/19/21.
//

import SwiftUI

private let listaMuseo = [
    
    Sities(id: 1, name: "Museo de Arte de El Salvador", description: "El Museo de Arte de El Salvador (MARTE), localizado en la ciudad de San Salvador, es una institución privada sin fines de lucro encargada de la conservación y difusión del arte de ese país.", longitud:  -88.9377, latitue: 14.0407),
    Sities(id: 2, name: "Museo Nacional de Antropología Dr. David J. Guzmán", description: "El Museo Nacional de Antropología Dr. David J. Guzmán está localizado en Avenida La Revolución, Colonia San Benito, San Salvador, El Salvador", longitud: -89.2386, latitue: 13.6871),
    Sities(id: 3, name: "Museo de la Palabra y la Imagen", description: "El Museo de la Palabra y la Imagen de El Salvador está localizado en la ciudad de San Salvador en El Salvador. Es una institución sin fines de lucro dedicada a la preservación, rescate e investigación de elementos relacionados con la historia y la cultura de este país.​", longitud:  -89.205, latitue: 13.7093),
    Sities(id: 4, name: "Tin Marín, Museo de los Niños", description: "El museo Tin Marin está ubicado en la ciudad de San Salvador, El Salvador. Es un espacio cultural dedicado a los niños que pretende transmitir conocimientos mediante un ambiente de diversión.​Asimismo, intenta reforzar el contenido de los programas educativos de los centros escolares.", longitud: -89.209050, latitue: 13.698692),
    Sities(id: 5, name: "Museo Regional de Occidente", description: "El Museo Regional de Occidente es el principal recinto de su clase en la ciudad salvadoreña de Santa Ana. Inaugurado en febrero de 1999, está ubicado en el edificio donde tenía asiento el Banco de Central de Reserva de la ciudad, y es administrado por la Secretaría de Cultura de El Salvador.", longitud: -89.5575, latitue: 13.9935)
]

struct MuseosUI: View {
    var body: some View {
        NavigationView {
            List (listaMuseo, id: \.id ) {
                museos in NavigationLink(
                    destination: ItemDetails(sitios: museos) ){
                    ItemList(listaSities: museos)
                }
            }
            .navigationTitle("Museos")
        }
    }
}

struct MuseosUI_Previews: PreviewProvider {
    static var previews: some View {
        MuseosUI()
    }
}
