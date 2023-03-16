//
//  Model.swift
//  DesignCodeiOS15V2
//
//  Created by Damien Gautier on 15/03/2023.
//

import SwiftUI
import Combine

class Model: ObservableObject {
    @Published var showDetail: Bool = false
    @Published var selectedModal: Modal = .signIn
}

enum Modal: String {
    
    case SignUp
    case signIn
}
