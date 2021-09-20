//
//  TeatrosUI.swift
//  EVA01-IOS
//
//  Created by DEV EDUAR on 9/19/21.
//

import SwiftUI

let listaTeatros = [
    
    Sities(id: 1, name: "Teatro Don Bosco", description: "El teatro Don Bosco nace en el año 2002, su primera presentación fue “La Huella del Venado”, con esta obra se dan a conocer en el grupo de teatro Universitario, la idea de realizar un grupo artístico no había sido muy aceptada. Solo un número reducido de alumnos participaron, esto fue por la falta de tiempo y recursos, muchos de estos jóvenes se encontraban terminando el ciclo universitario.", longitud: -89.2368, latitue: 13.674),
    Sities(id: 2, name: "Teatro Nacional de San Salvador", description: "El Teatro Nacional de San Salvador está ubicado en el centro histórico de la ciudad capital de El Salvador. Su construcción inició el año de 1911 y terminó en 1917. Es uno de los centros más importantes para las artes escénicas en este país.", longitud: -89.1904, latitue: 13.6986),
    Sities(id: 3, name: "Teatro Luis Poma", description: "El Teatro Luis Poma es un hecho insólito en el mundo moderno: una sala dedicada a las artes escénicas en el centro de un gran centro comercial. Su nombre es en homenaje al gran empresario que contribuyó incansablemente al desarrollo del país.", longitud: -89.212375, latitue: 13.706767),
    Sities(id: 4, name: "Teatro Yulkuikat", description: "El Teatro Yulkuikat (Canto del Corazón), lugar donde la palabra y el canto perduran, nace en el año 2014. Con capacidad para 175 personas, el Teatro Yulkuikat es un espacio genuino donde convergen diferentes expresiones artísticas teatrales como la danza, música, títeres, malabares y obras. ", longitud:  -89.160687, latitue: 13.777316),
    Sities(id: 5, name: "Teatro Presidente", description: "El Teatro Presidente se encuentra ubicado en la ciudad de San Salvador, El Salvador. El inmueble formaba parte del Circuito de Teatros Nacionales, hasta que en los años 1990 dicha oficina se trasladó al Ministerio de Educación.", longitud: -89.241469, latitue: 13.693386)
]

struct TeatrosUI: View {
    var body: some View {
        NavigationView {
            List (listaTeatros, id: \.id ) {
                teatros in NavigationLink(
                    destination: ItemDetails(sitios: teatros) ){
                    ItemList(listaSities: teatros)
                }
            }
            .navigationTitle("Teatros")
        }
    }
}

struct TeatrosUI_Previews: PreviewProvider {
    static var previews: some View {
        TeatrosUI()
    }
}
