import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class search extends StatefulWidget{
  const search({Key ?key}):super(key:key);

  @override
  State<search> createState()=>_searchState();
}


class _searchState extends State<search>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
      ),
      body: Center(
        child:Column(
          children: [
            TextField(//https://gurutaka-log.com/flutter-textfield-like-btn
              decoration: InputDecoration(
                hintText: "Search Asterisms",
                icon: Icon(LineIcons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}