```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the response
      final jsonData = jsonDecode(response.body);
      // Use the jsonData
    } else {
      // Handle error status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the API call
    print('Error fetching data: $e');
    // Consider rethrowing the exception or handling it appropriately
  }
}
```