//
//  Presenter.swift
//  unit_test
//
//  Created by Maxence HO on 23/10/2020.
//

import Foundation

enum PresenterMode {
    case modeA
    case modeB
}

class Presenter {
    let manager = Manager()
    var datasource: String?
    var mode: PresenterMode
    
    init(mode: PresenterMode) {
        self.mode = mode
    }
}

extension Presenter {
    func didLoad() {
        let response = manager.getInfoRequest(mode: mode) // Asynchronous line - error handling -> exit function
        datasource = "\(response.data)_test"
    }
}
