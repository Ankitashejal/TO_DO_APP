import 'package:flutter/material.dart';
import 'package:myfirstapp/util/dialog_box.dart';
import '../util/todo_tile.dart'; 

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List toDoList = [
    ["Make Tutorial",false],
    ["Do Exercise",false],
  ];

//checkboc was tapped
  void checkBoxChanged(bool? value,int index){
 setState(() {
   toDoList[index][1] = !toDoList[index][1];

 });
  }

//create a new task
void createNewTask(){
showDialog(
  context: context, 
  builder: (context){
    return DialogBox();
  }
);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('TO DO'),
        elevation: 0,
         backgroundColor:Colors.yellow 
      ),

      floatingActionButton: FloatingActionButton
      (onPressed: createNewTask,
      child: Icon(Icons.add),
      ),

      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (BuildContext context, int index) { 
          return ToDoTile(
            taskName: toDoList[index][0],
           taskCompleted: toDoList[index][1], 
           onChanged:(value) => checkBoxChanged(value,index),
           );
         },
       
      ),
    );
  }
}
