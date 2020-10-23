//
//  Manager.swift
//  unit_test
//
//  Created by Maxence HO on 23/10/2020.
//

import Foundation

protocol AsynchronousNetworkObject {
    init()
}

class AsynchronousResponse<T: AsynchronousNetworkObject, U: AsynchronousNetworkObject> {
    func response(mode: PresenterMode) -> T {
        switch mode {
        case .modeA:
            return T()
        case .modeB:
            return T()
        }
    }
}

protocol Info: AsynchronousNetworkObject {
    var data: String { get }
}

struct InfoBOA: Info {
    let data = "A"
}

struct InfoBOB: Info {
    let data = "B"
}

class Manager {
    // Request function that returns an asynchronous response
    func getInfoRequest(mode: PresenterMode) -> Info {
        return AsynchronousResponse<InfoBOA, InfoBOB>().response(mode: mode)
    }
}
