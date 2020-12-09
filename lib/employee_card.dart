import 'package:flutter/material.dart';

import 'employee.dart';

class EmployeeCard extends StatelessWidget {
  final Employee employee;
  final Function delete;

  EmployeeCard({this.employee, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      margin: EdgeInsets.all(5.0),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              employee.name,
              style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
            Text(
              '${employee.age}',
              style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0),
            ),
            FlatButton.icon(
                onPressed: delete,
                color: Colors.blue,
                icon: Icon(
              Icons.delete,
              color: Colors.green[800],
            ), label: Text("Delete")),
          ],
        ),
      ),
    );
  }
}
