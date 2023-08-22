import 'package:flutter/material.dart';
import 'package:hivedb/database/functions/dbfunctions.dart';
import 'package:hivedb/database/functions/model/data_model.dart';

class AddStudent extends StatelessWidget {
  AddStudent({super.key});

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Name'
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _ageController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Age'
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            onPressed: () {
              onAddStudentButtonClicked();
            },

            icon: const Icon(Icons.add),
            label: const Text('Add Student'),
          )
        ],
      ),
    );
  }

  Future<void> onAddStudentButtonClicked() async {
    final name = _nameController.text.trim();
    final age = _ageController.text.trim();
    if (name.isEmpty || age.isEmpty) {
      return;
    }
    //print('$name $age');
    final student = StudentModel(
        name: name,
        age: age
    );
    addStudent(student);
  }
}
