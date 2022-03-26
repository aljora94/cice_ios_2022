//
//  GenericWebPresenter.swift
//  CiceMusic
//
//  Created by Alberto Yagüe on 16/2/22.
//

import Foundation

protocol GenericWebPresenterInputProtocol {
    
}

final class GenericWebPresenter {
    
    var viewController: GenericWebOutputPresenterProtocol?
    
}

extension GenericWebPresenter: GenericWebPresenterInputProtocol{
    
}
