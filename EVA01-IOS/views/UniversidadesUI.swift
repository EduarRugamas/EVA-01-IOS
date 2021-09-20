//
//  UniversidadesUI.swift
//  EVA01-IOS
//
//  Created by DEV EDUAR on 9/19/21.
//

import SwiftUI

private let ListaUniversidades = [

    Sities(id: 1, name: "Universidad Don Bosco", description: "La Universidad Don Bosco (UDB) es una universidad salesiana de El Salvador localizada en el municipio de Soyapango, San Salvador, ciudad que forma parte del Área Metropolitana de San Salvador (AMSS).", longitud: -89.1545, latitue: 13.7161),
    Sities(id: 2, name: "Universidad de El Salvador", description: "La Universidad de El Salvador es una institución pública y autónoma de educación superior, científica, crítica, participativa, democrática y comprometida con el desarrollo nacional integral, con la formación de profesionales de alta calidad humana, científica, tecnológica y con el medio ambiente y la vida.", longitud: -89.2037, latitue: 13.7177),
    Sities(id: 3, name: "Universidad Evangélica de El Salvador", description: "La Universidad Evangélica de El Salvador (U.E.E.S.) se fundó en 1981, como una corporación privada de utilidad pública no lucrativa y hasta hoy mantiene su naturaleza institucional por considerar que es la organización que mejor responde a su Visión, Misión y compromiso con Dios y la sociedad.", longitud: -89.2392, latitue: 13.7162),
    Sities(id: 4, name: "Universidad Francisco Gavidia", description: "La Universidad Francisco Gavidia, corporación de utilidad pública sin fines de lucro, consciente de la necesidad que existe en el cuidado del planeta, la optimización de los recursos, la mejora de sus procesos, la satisfacción de sus partes interesadas y el desarrollo del país, asume su compromiso con la sociedad", longitud: -89.2203, latitue: 13.6998),
    Sities(id: 5, name: "Universidad Dr. José Matías Delgado", description: "La Universidad Dr. José Matías Delgado es una corporación de derecho privado, de utilidad pública, sin fines de lucro y de carácter permanente; gobernada, dirigida y administrada por organismos y funcionarios cuyas atribuciones están expresamente detalladas en el Estatuto de la Universidad.", longitud:  -89.2529, latitue: 13.6787)
]

struct UniversidadesUI: View {
    var body: some View {
        
        NavigationView {
            List(ListaUniversidades, id: \.id) {
                    universidad in
                NavigationLink (destination: ItemDetails(sitios: universidad) ){
                    ItemList(listaSities: universidad)
                }
            }
            .navigationTitle("Univesidades")
        }
    }
}

struct UniversidadesUI_Previews: PreviewProvider {
    static var previews: some View {
        UniversidadesUI()
    }
}
