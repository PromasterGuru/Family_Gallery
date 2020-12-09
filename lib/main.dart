import 'package:flutter/material.dart';

import 'employee.dart';
import 'employee_card.dart';

void main() {
  runApp(MaterialApp(
    home: Test(),
  ));
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List<Employee> employees = [
    Employee(name: 'Paul', age: 10),
    Employee(name: 'Lydia', age: 15),
    Employee(name: 'Gedion', age: 20),
    Employee(name: 'Joseph', age: 25),
    Employee(name: 'Daniel', age: 30),
    Employee(name: 'James', age: 35),
    Employee(name: 'Patrick', age: 40),
    Employee(name: 'Alice', age: 45),
    Employee(name: 'Jane', age: 50),
    Employee(name: 'Susan', age: 55)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Code Ninja", textAlign: TextAlign.center),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body: Column(
          children: employees
              .map((employee) => EmployeeCard(employee: employee, delete:(){
                setState(() {
                  employees.remove(employee);
                });
          }))
              .toList()),
    );
  }
}
