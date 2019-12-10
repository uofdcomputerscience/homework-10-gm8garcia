import Foundation

// Implement an Error type. Make sure it has at least two values.
enum LibraryError: Error 
{
    case bookNotFound
    case bookFees(amountNeeded: Int)
    case checkedOut 
}

// Implement a function that returns a Result of string or your error type
func bookAvialable(value: String) -> Result<String, Error> 
{
    if (value == "checked in")
    {
        return .success("Book is avialable for check out.")
    }
    return .failure(LibraryError.checkedOut)
}

// Call your function in a way that will return an error result, and handle that error.
let test = bookAvailable(value: "checked out")
switch test
{
case .success(let string):
    print("string: \(string)")
case .failure(let error):
    print("err0r: \(error)")
}


// Call your function in a way that will return a success result, and handle the value.
let test2 = bookAvailable(value: "checked in")
switch test2 
{
case .success(let string):
    print("string: \(string)")
case .failure(let error):
    print("err0r: \(error)")
}
