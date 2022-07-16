import './asterismPost.dart';
import 'package:flutter/material.dart';

//star数 はStarした人のリストを作って起きそこから集計すべきだろうか

final listSample=[{
  "description":"unnchi sei no katamari shoukougunn",
  "time":"2000/8/32",
  "main":"kokoha ittai nani gahairu nnda ",
  "stars":100,
},
  {
    "description":"a shoukougunn",
    "time":"2000/8/32",
    "main":"kokoha ittai nani gahairu nnda ",
    "stars":1,

  },
  {
    "description":"otin otin shokogun",
    "time":"2000/8/32",
    "main":"kokoha ittai nani gahairu nnda ",
    "stars":1000,

  }
];

class Timeline extends StatefulWidget {
  const Timeline({Key? key}) : super(key: key);

  @override
  State<Timeline> createState() => _Timeline();
}

class _Timeline extends State<Timeline> {
  var asterisms_posts=[];

  @override
  void initState(){
    _reload_timeline();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Line"),
      ),
      body: Column(
        children: <Widget>[
          Flexible( //sankou https://qiita.com/tabe_unity/items/4c0fa9b167f4d0a7d7c2
            child:ListView.builder(
              itemCount: asterisms_posts.length,
              itemBuilder: (context,index){
                return AsterismsPost(AsterismsPost_Object:asterisms_posts[index]);
              },
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _reload_timeline,
        child: Icon(Icons.refresh_rounded),
      ),
    );



  }


  //firestore への要求をする．データを取得し，AsterismsPostsの要素数をセットする
  //あとまわしにしているけど実際FireStore を使う場合同期処理にする
  void _reload_timeline(){
    setState((){
      asterisms_posts+=listSample;//test kokoha firestore kara shutokusitahairetu niokikaeru
    });
  }


}