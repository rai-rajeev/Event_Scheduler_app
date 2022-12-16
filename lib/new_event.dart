import 'package:flutter/material.dart';

class NewEvent extends StatefulWidget {
  const NewEvent({Key? key}) : super(key: key);

  @override
  State<NewEvent> createState() => _NewEventState();
}

class _NewEventState extends State<NewEvent> {
  TextEditingController _controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Event',
        style: TextStyle(fontSize: 25),),
        centerTitle: true,
        backgroundColor: Color(0xFF5a37f0),
      ),
      body: Center(
        child: Container(

          color: Color(0xFFbfb0fc ),
          child: Center(
            child: Container(
              height: 250,
              child: ListView(
                children:[
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 18,vertical: 14),
                    child: TextField(
                    controller: _controller,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    style: TextStyle(fontSize: 23,
                        color:Colors.white ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.event,
                      color: Colors.white,),
                        label: Text('Event',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,


                          ),
                        ),


                        filled: true,
                        fillColor: Color(0xFF5a37f0),
                      //  contentPadding: EdgeInsets.symmetric(vertical: 25),
                        //floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: UnderlineInputBorder(
                          borderSide:BorderSide(
                            color: Colors.white,
                            width: 0,
                          ) ,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        )
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: ElevatedButton(
                         style:ElevatedButton.styleFrom(
                           backgroundColor: Colors.white60,
                           textStyle: TextStyle(
                             fontSize: 24,
                             fontWeight:FontWeight.bold
                           ),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(25),
                           )

                         ),

                         //ButtonStyle(
                        //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(25)
                        //   )),
                        //   backgroundColor: Color,
                        // ),

                        onPressed: (){
                      String Newtext=_controller.text;
                      Navigator.pop(context,Newtext);

                    },
                        child: Text('ADD')),
                  )

                ]
                ),
            ),
          ),
        ),
      ),

    );
  }
}
