# Unhandled JSON Decoding in Dart

This repository demonstrates a common error in Dart applications involving the handling of JSON responses from network requests.  Specifically, the code assumes a specific structure in the JSON data. If the structure changes, the application crashes.  The solution provided shows best practices for safe JSON handling.

## Bug

The `bug.dart` file contains the erroneous code that lacks proper error handling for unexpected JSON structures.

## Solution

The `bugSolution.dart` file presents a corrected version that safely handles potential errors using type checking and conditional access.