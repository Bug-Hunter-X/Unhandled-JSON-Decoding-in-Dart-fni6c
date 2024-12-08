```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access the data - potential error if the structure is unexpected
      final value = jsonData['key'];  //This line could throw an error 
    } else {
      // Handle error response
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions during network requests
    print('Error: $e');
    rethrow; // Re-throw to be handled further up the call stack
  }
}
```