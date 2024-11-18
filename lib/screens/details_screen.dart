import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final dynamic movie;

  DetailsScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie['name'] ?? 'No Title')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              movie['image'] != null
                  ? Image.network(movie['image']['original'])
                  : Container(height: 200, color: Colors.grey),
              const SizedBox(height: 16.0),
              Text(
                movie['name'] ?? 'No Title',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              Text(
                movie['summary'] != null
                    ? movie['summary'].replaceAll(RegExp(r'<[^>]*>'), '')
                    : 'No summary available',
              ),
            ],
          ),
        ),
      ),
    );
  }
}