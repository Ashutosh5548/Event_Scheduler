import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}
class _NewEventScreen extends State<NewEventScreen>{
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.deepPurple,
      title: Text("New Event"),
    ),

      backgroundColor: Colors.deepPurple[200],

      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height:70, //height of button
            width:350, //width of button
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                  labelText: "Event",
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon:Icon(Icons.event,color: Colors.white),
              border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
              filled: true,
              fillColor: Colors.deepPurple
              ),
              controller: _textEditingController,

            ),
          ),

          Container(
            color: Colors.deepPurple[200],
            child: SizedBox(
              height:10, //height of button
              width:350, //width of button

            ),
          ),

          Builder(
            builder: (context) {
              return Center(
                child: SizedBox(
                  height:50, //height of button
                  width:350, //width of button
                  child: ElevatedButton(
                      style:ElevatedButton.styleFrom(backgroundColor: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),

                      ),
                      onPressed: () {
                    String newEventText = _textEditingController.text;
                    Navigator.of(context).pop(newEventText);
                  } , child:Text("ADD")

                  ),
                ),
              );
            }
          ),
        ],
      ),
    );
  }
  
}
