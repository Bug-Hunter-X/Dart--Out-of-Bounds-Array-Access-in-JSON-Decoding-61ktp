```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON list
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Accessing a non-existent index can throw an exception
      final String item = jsonData[10]; // Potential error if jsonData has less than 11 elements
      print(item);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```