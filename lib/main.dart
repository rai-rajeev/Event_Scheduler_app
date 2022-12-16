import 'package:flutter/material.dart';
import 'package:event_scheduler_app/new_event.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Scheduler',

      home:  MyHomePage(title: 'Event Scheduler'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

final List<Widget> _Events=[];
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text(widget.title),
        centerTitle: true,
        backgroundColor:Color(0xFF5a37f0),
      ),
      body:Container(
        color:Color(0xFFbfb0fc ),
        child: ListView.builder(

            itemCount:_Events.length,
            itemBuilder: (context,int Index)=>_Events[Index]
        ),
      )
      ,
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          String new_event=
          await Navigator.push(context, MaterialPageRoute(builder: (context)=>NewEvent()));
          setState(() {
            _Events.add(
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                      color: Colors.white,

                      child: Column(
                        children: [
                          SizedBox(height: 12,),
                          Center(
                            child: Text(new_event,
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 12,)
                        ],
                      )
                  ),
                ));
          });


        },
        tooltip: 'Increment',
        backgroundColor: Color(0xFF5a37f0),
        child: const Icon(Icons.add),
      ),
    );
  }
}
