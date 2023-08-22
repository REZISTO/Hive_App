import 'package:flutter/material.dart';
import 'package:hivedb/database/functions/dbfunctions.dart';
import 'package:hivedb/widgets/addstudent.dart';
import 'package:hivedb/widgets/liststudent.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key });

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AddStudent(),
            const Expanded(
                child: ListStudent()),
          ],
        ),


      ),

    );
  }
}
