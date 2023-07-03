// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension WIPSchema {
  class CreateTodoMutation: GraphQLMutation {
    static let operationName: String = "createTodo"
    static let document: ApolloAPI.DocumentType = .notPersisted(
      definition: .init(
        #"""
        mutation createTodo($body: String!, $completed_at: DateTime, $attachments: [AttachmentInput], $broadcast: Boolean) {
          createTodo(
            input: {body: $body, completed_at: $completed_at, attachments: $attachments, broadcast: $broadcast}
          ) {
            __typename
            id
            body
            completed_at
          }
        }
        """#
      ))

    public var body: String
    public var completed_at: GraphQLNullable<DateTime>
    public var attachments: GraphQLNullable<[AttachmentInput?]>
    public var broadcast: GraphQLNullable<Bool>

    public init(
      body: String,
      completed_at: GraphQLNullable<DateTime>,
      attachments: GraphQLNullable<[AttachmentInput?]>,
      broadcast: GraphQLNullable<Bool>
    ) {
      self.body = body
      self.completed_at = completed_at
      self.attachments = attachments
      self.broadcast = broadcast
    }

    public var __variables: Variables? { [
      "body": body,
      "completed_at": completed_at,
      "attachments": attachments,
      "broadcast": broadcast
    ] }

    struct Data: WIPSchema.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { WIPSchema.Objects.Mutation }
      static var __selections: [ApolloAPI.Selection] { [
        .field("createTodo", CreateTodo?.self, arguments: ["input": [
          "body": .variable("body"),
          "completed_at": .variable("completed_at"),
          "attachments": .variable("attachments"),
          "broadcast": .variable("broadcast")
        ]]),
      ] }

      var createTodo: CreateTodo? { __data["createTodo"] }

      /// CreateTodo
      ///
      /// Parent Type: `Todo`
      struct CreateTodo: WIPSchema.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { WIPSchema.Objects.Todo }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", WIPSchema.ID.self),
          .field("body", String.self),
          .field("completed_at", WIPSchema.DateTime?.self),
        ] }

        var id: WIPSchema.ID { __data["id"] }
        var body: String { __data["body"] }
        var completed_at: WIPSchema.DateTime? { __data["completed_at"] }
      }
    }
  }

}