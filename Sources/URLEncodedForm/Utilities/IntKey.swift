import Foundation

struct IntKey: CodingKey {
    let intValue: Int?

    var stringValue: String {
        intValue.map(String.init) ?? ""
    }

    init(_ value: Int) {
        self.intValue = value
    }

    init?(intValue: Int) {
        self.intValue = intValue
    }

    init?(stringValue: String) {
        guard let intValue = Int(stringValue) else {
            return nil
        }

        self.intValue = intValue
    }
}
