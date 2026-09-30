import 'package:flutter/material.dart';

import '../models/student.dart';
import '../widgets/student_card.dart';
import 'student_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Student> _students = [
    Student(
      id: 'S001',
      name: 'Phuoc Thinh',
      email: 'thinhnp@fpt.edu.vn',
      major: 'Mobile Development',
    ),
    Student(
      id: 'S002',
      name: 'Nguyen Minh Anh',
      email: 'minhanh@example.com',
      major: 'Software Engineering',
    ),
    Student(
      id: 'S003',
      name: 'Tran Bao Chau',
      email: 'baochau@example.com',
      major: 'Information Systems',
    ),
    Student(
      id: 'S004',
      name: 'Le Quang Huy',
      email: 'quanghuy@example.com',
      major: 'Artificial Intelligence',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _students.length,
        itemBuilder: (context, index) {
          final student = _students[index];
          return StudentCard(
            student: student,
            onSelect: () {
              setState(() {
                student.isSelected = !student.isSelected;
              });
            },
            onOpenDetail: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => StudentDetailScreen(student: student),
                ),
              );
            },
          );
        },
      ),
    );
  }
}