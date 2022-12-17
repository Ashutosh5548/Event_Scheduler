import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [
    Text("")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("Event Scheduler")),
          backgroundColor: Colors.deepPurple[200],
      body: ListView.builder(
          itemCount: _list.length,
          itemBuilder: ((context, index) => _list[index])),
      floatingActionButton: Builder(
        builder: (context) {
          return FloatingActionButton(
            backgroundColor: Colors.deepPurple,
            onPressed: () async {
              String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
              setState(() {
                _list.add(Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    color: Colors.white,

                      width: 360,
                      child: Center(child: Text(newText))),
                )
                );
              });
            },
            child: Icon(Icons.add),
          );
        }
      ),
    ));
  }
}
