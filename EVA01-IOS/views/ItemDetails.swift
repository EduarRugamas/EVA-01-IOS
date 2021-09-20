//
//  ItemDetails.swift
//  EVA01-IOS
//
//  Created by DEV EDUAR on 9/20/21.
//

import SwiftUI
import MapKit

struct ItemDetails: View {
    
    var sitios: Sities
    
    var body: some View {
        ScrollView {
            VStack{
                Text(sitios.name)
                    .font(.title)
                    .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                MapView(coordenadas: sitios)
                    .frame(width: 380, height: 400)
                    .padding()
                Text(sitios.description)
                    .font(.headline)
                    .padding()
                    
            }
        }
    }
}

struct MapView: UIViewRepresentable {
    
    var coordenadas: Sities
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero )
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coord = CLLocationCoordinate2D(
            latitude: coordenadas.latitue,
            longitude: coordenadas.longitud)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        
        let region = MKCoordinateRegion(center: coord, span: span)
        
        let markert = MKPointAnnotation()
        markert.title = coordenadas.name
        markert.coordinate = coord
        
        
        
        uiView.setRegion(region, animated: true)
        uiView.addAnnotation(markert)
        
    }

}

struct ItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetails(
            sitios:  Sities(id: 5, name: "Universidad Dr. José Matías Delgado", description: "La Universidad Dr. José Matías Delgado es una corporación de derecho privado, de utilidad pública, sin fines de lucro y de carácter permanente; gobernada, dirigida y administrada por organismos y funcionarios cuyas atribuciones están expresamente detalladas en el Estatuto de la Universidad.", longitud:  -89.2529, latitue: 13.6787)
        )
    }
}
