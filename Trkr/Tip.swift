//
//  Tip.swift
//  Trkr
//
//  Created by Stephane Lafontaine on 2021-06-23.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]? // ? is to make it optional
}
