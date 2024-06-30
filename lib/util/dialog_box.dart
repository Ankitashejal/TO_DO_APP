import 'package:flutter/material.dart';
import 'package:myfirstapp/util/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(children: [
          //get user input
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task",
            ),
          ),

          //buttons => save + cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //save button'
              MyButton(text: "Save", onPressed: (){}),

              //cancelbutton
              MyButton(text: "Cancel", onPressed: (){})
            ],
          )


        ],
        ),
        ),
    );
  }
}