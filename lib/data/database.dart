import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{

  List toDoList = [];
  //reference the hive box
  final _myBox = Hive.Box('mybox');

  //run this method if this is the 1st time opening this app
  void createInitialData(){
    toDoList = [
      ["Make Tutorial",false],
      ["Do Exercise",false],

    ];
  }

  //load the data frm database
  void loadDataBase(){
    toDoList = _myBox.get("TODOLIST");
  }

//upadate the database
void updateDataBase(){
   _myBox.put("TODOLIST",toDoList);
}
}