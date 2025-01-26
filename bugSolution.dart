```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Use the jsonData
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle the invalid JSON appropriately (e.g., retry, default value, etc.)
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Handle or rethrow the exception as needed
  }
}
```