```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Check if the index is within bounds before accessing it
      if (jsonData.length > 10) {
        final String item = jsonData[10];
        print(item);
      } else {
        print('Index out of bounds. The JSON array is too short.');
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```