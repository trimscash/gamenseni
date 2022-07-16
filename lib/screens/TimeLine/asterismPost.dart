import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';


class AsterismsPost extends StatefulWidget{
  const AsterismsPost({Key? key,this.AsterismsPost_Object}):super(key: key);
  final AsterismsPost_Object;

  @override
  State<AsterismsPost> createState() => _AsterismsPost();
}

class _AsterismsPost extends State<AsterismsPost>{
  bool isStarred=false;

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey, //色
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(1, 1),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child:Column(
        children: <Widget>[
          Text(widget.AsterismsPost_Object["description"]),
          Text(widget.AsterismsPost_Object["main"]),
          Text(widget.AsterismsPost_Object["time"]),
          SizedBox(
            height:40,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:<Widget>[
                      Text(widget.AsterismsPost_Object['stars'].toString()),
                      IconButton(//Icon 一覧  https://fonts.google.com/icons?selected=Material+Icons
                        onPressed: _star,
                        icon: Icon(
                          isStarred==true?Icons.star_rate_rounded:Icons.star_outline_rounded,
                          color:isStarred==true?Colors.yellow:Colors.grey,
                        ),
                      ),
                    ]
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _star(){
    if(isStarred){
      setState(() {
        isStarred = false;
      });
    }else{
      setState(() {
        isStarred = true;
      });
    }
  }
}