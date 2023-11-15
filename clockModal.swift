//
//  clockModal.swift
//  clock
//
//  Created by Stefano De Rosa on 15/11/23.
//

import SwiftUI

struct clockModal: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack{
            Text("")
        }
        .searchable(text: $searchText)
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    clockModal()
}
