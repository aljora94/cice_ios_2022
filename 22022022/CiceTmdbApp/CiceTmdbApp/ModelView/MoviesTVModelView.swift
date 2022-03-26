//
//  MoviesTVModelView.swift
//  CiceTmdbApp
//
//  Created by Alberto Yagüe on 24/2/22.
//

import Foundation

struct MoviesTVModelView: Identifiable {
    
    let id: Int?
    let backdropPath: String?
    let posterPath: String?
    let name: String?
    
    var posterUrl: URL {
        return URL(string: "https://image.tmdb.org/t/p/w500/\(posterPath ?? "")")!
    }
    var backdropUrl: URL{
        return URL(string: "https://image.tmdb.org/t/p/w500/\(backdropPath ?? "")")!
    }
    
}
