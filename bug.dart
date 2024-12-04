```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      print('Success');
    } else {
      // Error handling
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Error handling
    print('Error: $e');
    rethrow; // Re-throw to allow handling further up the call stack
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    // Handle exceptions appropriately
    print('An error occurred: $e');
  }
}
```