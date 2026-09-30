import 'package:flutter/material.dart';

import '../models/student.dart';

class StudentCard extends StatelessWidget {
  final Student student;
  final VoidCallback onSelect;
  final VoidCallback onOpenDetail;

  const StudentCard({
    super.key,
    required this.student,
    required this.onSelect,
    required this.onOpenDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(student.name[0]),
        ),
        title: Text(
          student.name,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text('${student.id} -${student.major}'),
        trailing: IconButton(
          icon: Icon(
            student.isSelected ? Icons.check_circle : Icons.circle_outlined,
            color: student.isSelected ? Colors.green : Colors.grey,
          ),
          onPressed: onSelect,
        ),
        onTap: onOpenDetail,
      ),
    );
  }
}