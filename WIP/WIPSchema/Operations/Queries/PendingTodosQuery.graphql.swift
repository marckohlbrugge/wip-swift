// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension WIPSchema {
  class PendingTodosQuery: GraphQLQuery {
    static let operationName: String = "pendingTodos"
    static let document: ApolloAPI.DocumentType = .notPersisted(
      definition: .init(
        #"""
        query pendingTodos($filter: String) {
          viewer {
            __typename
            todos(filter: $filter, completed: false, limit: 100) {
              __typename
              id
              body
            }
          }
        }
        """#
      ))

    public var filter: GraphQLNullable<String>

    public init(filter: GraphQLNullable<String>) {
      self.filter = filter
    }

    public var __variables: Variables? { ["filter": filter] }

    struct Data: WIPSchema.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { WIPSchema.Objects.Query }
      static var __selections: [ApolloAPI.Selection] { [
        .field("viewer", Viewer.self),
      ] }

      var viewer: Viewer { __data["viewer"] }

      /// Viewer
      ///
      /// Parent Type: `User`
      struct Viewer: WIPSchema.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { WIPSchema.Objects.User }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("todos", [Todo]?.self, arguments: [
            "filter": .variable("filter"),
            "completed": false,
            "limit": 100
          ]),
        ] }

        var todos: [Todo]? { __data["todos"] }

        /// Viewer.Todo
        ///
        /// Parent Type: `Todo`
        struct Todo: WIPSchema.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { WIPSchema.Objects.Todo }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", WIPSchema.ID.self),
            .field("body", String.self),
          ] }

          var id: WIPSchema.ID { __data["id"] }
          var body: String { __data["body"] }
        }
      }
    }
  }

}