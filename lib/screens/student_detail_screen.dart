import 'package:flutter/material.dart';

import '../models/student.dart';

class StudentDetailScreen extends StatelessWidget {
  final Student student;

  const StudentDetailScreen({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              student.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ID: ${student.id}'),
                    Text('Email: ${student.email}'),
                    Text('Major: ${student.major}'),
                    Text(
                      'Status: ${student.isSelected ? 'Selected' : 'Not Selected'}',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}