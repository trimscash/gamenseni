import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import './screens/TimeLine/timeLine.dart';
import 'package:line_icons/line_icons.dart';
import './configs/AppColors.dart';
import './screens/makeAsterisms/makeAsterisms.dart';
import './screens/notification/notification.dart';
import './screens/search/search.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASTERISMS World',
      theme: ThemeData(
        primarySwatch:Colors.indigo
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({Key ? key}):super(key:key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int _currentIndex=0;

  static const _screens=[
    Timeline(),
    makeAsterisms(),
    search(),
    notification(),
  ];

  void _onTapItem(int index){
    setState((){
      _currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:_screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTapItem,
        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Time Line"),
          BottomNavigationBarItem(icon: Icon(LineIcons.alternatePencil),label:"Make Asterisms"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label:"Search"),
          BottomNavigationBarItem(icon: Icon(LineIcons.bell),label:"Bell"),
        ],
        unselectedItemColor: AppColors.unselectedItemColor,
        selectedItemColor: AppColors.selectedItemColor,
      ),
    );
  }
}