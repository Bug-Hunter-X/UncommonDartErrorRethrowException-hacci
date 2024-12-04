```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      print('Success: ${response.body}');
    } else {
      // Specific error handling for HTTP errors
      throw Exception('HTTP Error: ${response.statusCode}');
    }
  } on Exception catch (e) {
    // Handle exceptions specific to HTTP requests
    print('Error fetching data: $e');
    // Optionally log more details, or retry
  } catch (e) {
    // Catch any other unexpected errors
    print('An unexpected error occurred: $e');
  }
}

void main() async {
  await fetchData();
}
```