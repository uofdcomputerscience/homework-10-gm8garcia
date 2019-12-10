import Foundation

// Implement an Error type. Make sure it has at least two values.
enum LibraryError: Error 
{
    case bookNotFound
    case bookFees(amountNeeded: Int)
    case checkedOut 
}

// Implement a function that returns a Result of string or your error type
func bookAvialable(value: Int) -> Result<String, Error> 
{
    if (value < 5)
    {
        return .success("Book is avialable for check out.")
    }
    return .failure(LibraryError.checkedOut)
}

// Call your function in a way that will return an error result, and handle that error.
let test = bookAvailable(value: 6)
switch test
{
case .success(let string):
    print("string: \(string)")
case .failure(let error):
    print("err0r: \(error)")
}


// Call your function in a way that will return a success result, and handle the value.
let test2 = bookAvailable(value: 4)
switch test2 
{
case .success(let string):
    print("string: \(string)")
case .failure(let error):
    print("err0r: \(error)")
}
