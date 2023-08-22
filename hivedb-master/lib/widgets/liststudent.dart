
import 'package:flutter/material.dart';
import 'package:hivedb/database/functions/dbfunctions.dart';
import 'package:hivedb/database/functions/model/data_model.dart';


class ListStudent extends StatelessWidget {
  const ListStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder: (BuildContext context ,List<StudentModel> studentList, Widget? child){
        return  ListView.separated(
          itemBuilder: (context, index){
            final data = studentList[index];
            return ListTile(
              title: Text(data.name),
              subtitle: Text(data.age),
              trailing: IconButton(
                onPressed: (){
                  if(data.id != null){
                    deleteStudent(data.id!);
                  }
               else{
                 print("unable to delete");
                  }
                },
                icon: Icon(Icons.delete,
                color: Colors.blue,),
              ),
            );
          },
          separatorBuilder: (context, index){
            return const Divider();
          },
          itemCount: studentList.length,
        );
    },
    );
  }
}
