//
//  LocationsListView.swift
//  SwiftulMapApp
//
//  Created by geka231 on 22.12.2022.
//

import SwiftUI

struct LocationsListView: View {
    @EnvironmentObject private var vm: LocationViewModel
    var body: some View {
        List{
            ForEach(vm.locations){ Location in
                Button {
                    vm.showNextLocation(Location: Location)
                } label: {
                    listRowView(Location: Location)
                }.padding(.vertical, 4)
                    .listRowBackground(Color.clear)

            }
        }
        .listStyle(PlainListStyle())
    }
}

struct LocationsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListView()
        .environmentObject(LocationViewModel())
    }
}

extension LocationsListView{
    private func listRowView(Location: Location) -> some View{
        HStack{
            if let imageName = Location.imageNames.first{
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .cornerRadius(10)
            }
            
            VStack(alignment: .leading){
                Text(Location.name)
                    .font(.headline)
                Text(Location.cityName)
                    .font(.subheadline)

            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
