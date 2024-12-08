```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      //Safe access to the JSON data
      final value = jsonData['key']; 
      if(value != null && value is String){ //Check if value exists and is a string
        print(value);
      } else {
        print("Key 'key' not found or is not a String.");
      }

    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}
```