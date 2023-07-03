// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension WIPSchema {
  struct AttachmentInput: InputObject {
    private(set) var __data: InputDict

    init(_ data: InputDict) {
      __data = data
    }

    init(
      key: String,
      filename: String,
      size: Int
    ) {
      __data = InputDict([
        "key": key,
        "filename": filename,
        "size": size
      ])
    }

    var key: String {
      get { __data["key"] }
      set { __data["key"] = newValue }
    }

    var filename: String {
      get { __data["filename"] }
      set { __data["filename"] = newValue }
    }

    var size: Int {
      get { __data["size"] }
      set { __data["size"] = newValue }
    }
  }

}