import 'package:flutter/material.dart';

class notification extends StatefulWidget{
  const notification({Key ?key}):super(key:key);

  @override
  State<notification> createState()=>_notificationState();
}


class _notificationState extends State<notification>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("tuuchi"),
      ),
      body: Center(
        child:Column(
          children: [
            Text("tuuchi",style: TextStyle(fontSize: 50),)
          ],
        ),
      ),
    );
  }
}