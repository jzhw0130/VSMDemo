//  This file was automatically generated and should not be edited.

import Apollo

public enum DeviceType: String {
  case tablet = "TABLET"
  case hr = "HR"
  case bg = "BG"
  case bp = "BP"
  case hs = "HS"
  case po = "PO"
}

extension DeviceType: JSONDecodable, JSONEncodable {}

public enum AllDeviceModels: String {
  case ipadMini = "IPAD_MINI"
  case bp3L = "BP3L"
  case bp5 = "BP5"
  case bg5 = "BG5"
  case po3 = "PO3"
  case hs4S = "HS4S"
}

extension AllDeviceModels: JSONDecodable, JSONEncodable {}

public enum DeviceStatus: String {
  case vendorLoan = "VENDOR_LOAN"
  case patientOwned = "PATIENT_OWNED"
  case returned = "RETURNED"
  case damaged = "DAMAGED"
}

extension DeviceStatus: JSONDecodable, JSONEncodable {}

public enum AddressType: String {
  case main = "MAIN"
  case other = "OTHER"
}

extension AddressType: JSONDecodable, JSONEncodable {}

public final class InitEpMutation: GraphQLMutation {
  public static let operationDefinition =
    "mutation InitEP {" +
    "  initiateEnrolledProgram(token: \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY3Rpb24iOiJlcF9pbml0aWF0ZV9lbnJvbGxtZW50Iiwic2lnbmVlIjoiNTg5YzM4NDVmMmNjMDMwMDIxZGRjODA5IiwiZW5yb2xsZWRQcm9ncmFtSWQiOiI1OTMyYzUwNWNhNTE5ZDA3ZWRlZjZjZjEiLCJpYXQiOjE0OTY0OTk0NjYsImV4cCI6MTQ5NjUwMDY2Nn0.uz3uF3MnMmv1XneklHDuJUrZyXYI0A6I3HC6WVSIZug\") {" +
    "    __typename" +
    "    secret" +
    "    certificate" +
    "    enrolledProgram {" +
    "      __typename" +
    "      id" +
    "      name" +
    "      devices {" +
    "        __typename" +
    "        type" +
    "        model" +
    "        status" +
    "        address" +
    "        other" +
    "      }" +
    "      user {" +
    "        __typename" +
    "        id" +
    "        username" +
    "        addresses {" +
    "          __typename" +
    "          type" +
    "          streetName" +
    "          streetNumber" +
    "          floor" +
    "          unit" +
    "          city" +
    "          state" +
    "          postCode" +
    "        }" +
    "      }" +
    "    }" +
    "  }" +
    "}"
  public init() {
  }

  public struct Data: GraphQLMappable {
    /// ## Scan & Initiate EP
    /// Scan a QR code and initiate the user enrollment process to program.
    public let initiateEnrolledProgram: InitiateEnrolledProgram?

    public init(reader: GraphQLResultReader) throws {
      initiateEnrolledProgram = try reader.optionalValue(for: Field(responseName: "initiateEnrolledProgram", arguments: ["token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY3Rpb24iOiJlcF9pbml0aWF0ZV9lbnJvbGxtZW50Iiwic2lnbmVlIjoiNTg5YzM4NDVmMmNjMDMwMDIxZGRjODA5IiwiZW5yb2xsZWRQcm9ncmFtSWQiOiI1OTMyYzUwNWNhNTE5ZDA3ZWRlZjZjZjEiLCJpYXQiOjE0OTY0OTk0NjYsImV4cCI6MTQ5NjUwMDY2Nn0.uz3uF3MnMmv1XneklHDuJUrZyXYI0A6I3HC6WVSIZug"]))
    }

    public struct InitiateEnrolledProgram: GraphQLMappable {
      public let __typename: String
      public let secret: String?
      public let certificate: String?
      public let enrolledProgram: EnrolledProgram?

      public init(reader: GraphQLResultReader) throws {
        __typename = try reader.value(for: Field(responseName: "__typename"))
        secret = try reader.optionalValue(for: Field(responseName: "secret"))
        certificate = try reader.optionalValue(for: Field(responseName: "certificate"))
        enrolledProgram = try reader.optionalValue(for: Field(responseName: "enrolledProgram"))
      }

      public struct EnrolledProgram: GraphQLMappable {
        public let __typename: String
        public let id: GraphQLID?
        public let name: String?
        public let devices: [Device?]?
        public let user: User?

        public init(reader: GraphQLResultReader) throws {
          __typename = try reader.value(for: Field(responseName: "__typename"))
          id = try reader.optionalValue(for: Field(responseName: "id"))
          name = try reader.optionalValue(for: Field(responseName: "name"))
          devices = try reader.optionalList(for: Field(responseName: "devices"))
          user = try reader.optionalValue(for: Field(responseName: "user"))
        }

        public struct Device: GraphQLMappable {
          public let __typename: String
          public let type: DeviceType?
          public let model: AllDeviceModels?
          public let status: DeviceStatus?
          public let address: String?
          public let other: String?

          public init(reader: GraphQLResultReader) throws {
            __typename = try reader.value(for: Field(responseName: "__typename"))
            type = try reader.optionalValue(for: Field(responseName: "type"))
            model = try reader.optionalValue(for: Field(responseName: "model"))
            status = try reader.optionalValue(for: Field(responseName: "status"))
            address = try reader.optionalValue(for: Field(responseName: "address"))
            other = try reader.optionalValue(for: Field(responseName: "other"))
          }
        }

        public struct User: GraphQLMappable {
          public let __typename: String
          public let id: GraphQLID?
          public let username: String?
          public let addresses: [Address?]?

          public init(reader: GraphQLResultReader) throws {
            __typename = try reader.value(for: Field(responseName: "__typename"))
            id = try reader.optionalValue(for: Field(responseName: "id"))
            username = try reader.optionalValue(for: Field(responseName: "username"))
            addresses = try reader.optionalList(for: Field(responseName: "addresses"))
          }

          public struct Address: GraphQLMappable {
            public let __typename: String
            public let type: AddressType?
            public let streetName: String?
            public let streetNumber: String?
            public let floor: String?
            public let unit: String?
            public let city: String?
            public let state: String?
            public let postCode: String?

            public init(reader: GraphQLResultReader) throws {
              __typename = try reader.value(for: Field(responseName: "__typename"))
              type = try reader.optionalValue(for: Field(responseName: "type"))
              streetName = try reader.optionalValue(for: Field(responseName: "streetName"))
              streetNumber = try reader.optionalValue(for: Field(responseName: "streetNumber"))
              floor = try reader.optionalValue(for: Field(responseName: "floor"))
              unit = try reader.optionalValue(for: Field(responseName: "unit"))
              city = try reader.optionalValue(for: Field(responseName: "city"))
              state = try reader.optionalValue(for: Field(responseName: "state"))
              postCode = try reader.optionalValue(for: Field(responseName: "postCode"))
            }
          }
        }
      }
    }
  }
}

public final class AssessmentListQuery: GraphQLQuery {
  public static let operationDefinition =
    "query AssessmentList {" +
    "  assessmentList {" +
    "    __typename" +
    "    data {" +
    "      __typename" +
    "      id" +
    "    }" +
    "  }" +
    "}"
  public init() {
  }

  public struct Data: GraphQLMappable {
    public let assessmentList: AssessmentList?

    public init(reader: GraphQLResultReader) throws {
      assessmentList = try reader.optionalValue(for: Field(responseName: "assessmentList"))
    }

    public struct AssessmentList: GraphQLMappable {
      public let __typename: String
      public let data: [Datum?]?

      public init(reader: GraphQLResultReader) throws {
        __typename = try reader.value(for: Field(responseName: "__typename"))
        data = try reader.optionalList(for: Field(responseName: "data"))
      }

      public struct Datum: GraphQLMappable {
        public let __typename: String
        public let id: GraphQLID?

        public init(reader: GraphQLResultReader) throws {
          __typename = try reader.value(for: Field(responseName: "__typename"))
          id = try reader.optionalValue(for: Field(responseName: "id"))
        }
      }
    }
  }
}