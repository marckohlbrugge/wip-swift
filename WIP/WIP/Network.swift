//
//  Network.swift
//  WIP
//
//  Created by Marc Köhlbrugge on 6/27/23.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()
  private(set) lazy var apollo = ApolloClient(url: URL(string: "http://wip.co/graphql")!)
}
