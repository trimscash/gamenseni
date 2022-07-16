import 'package:flutter/material.dart';

class makeAsterisms extends StatefulWidget{
  const makeAsterisms({Key ?key}):super(key:key);

  @override
  State<makeAsterisms> createState()=>_makeAsterismsState();
}


class _makeAsterismsState extends State<makeAsterisms>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Make Asterisms"),
      ),
      body: Center(
        child:Column(
          children: [
            ElevatedButton(
              child: Text("Make"),
              onPressed: _pic2AsterismsButton,
            ),
          ],
        ),
      ),
    );
  }

  void _pic2AsterismsButton(){

  }
}