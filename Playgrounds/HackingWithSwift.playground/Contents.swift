import Cocoa

let sports = ["Baseball", "Basketball", "Soccer", "Football", "Cricket", "Hockey", "Baseball", "Basketball"]
let uniqueSports = Set(sports)
print("Number of sports: \(sports.count)")
print("Number of unique sports: \(uniqueSports.count)")


func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let password = "HELLO, WORLD"
let result = isUppercase(password)
print(result)
