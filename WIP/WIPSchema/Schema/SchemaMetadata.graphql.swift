// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

protocol WIPSchema_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == WIPSchema.SchemaMetadata {}

protocol WIPSchema_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == WIPSchema.SchemaMetadata {}

protocol WIPSchema_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == WIPSchema.SchemaMetadata {}

protocol WIPSchema_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == WIPSchema.SchemaMetadata {}

extension WIPSchema {
  typealias ID = String

  typealias SelectionSet = WIPSchema_SelectionSet

  typealias InlineFragment = WIPSchema_InlineFragment

  typealias MutableSelectionSet = WIPSchema_MutableSelectionSet

  typealias MutableInlineFragment = WIPSchema_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    static func objectType(forTypename typename: String) -> Object? {
      switch typename {
      case "Query": return WIPSchema.Objects.Query
      case "User": return WIPSchema.Objects.User
      case "Todo": return WIPSchema.Objects.Todo
      case "Mutation": return WIPSchema.Objects.Mutation
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}