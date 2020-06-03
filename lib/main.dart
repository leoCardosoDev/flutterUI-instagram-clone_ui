import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:uiinstagramcloneapp/feed.dart';

void main() => runApp(InstaApp());

class InstaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  var _pages = [
    Feed(),
    Feed(),
    Feed(),
    Feed(),
    Feed(),
  ];
  
int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Color(0XFFEEEEEE),
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          color: Colors.black,
          icon: Icon(Feather.camera),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            color: Colors.black,
            icon: Icon(Feather.tv),
          ),
          IconButton(
            onPressed: () {},
            color: Colors.black,
            icon: Icon(Feather.send),
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Foundation.home),
            title: Text('Feed')
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.search),
            title: Text('Pesquisar')
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.plus_square),
            title: Text('Galeria')
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.heart),
            title: Text('Curtidas')
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.user),
            title: Text('Perfil')
          ),
        ],
      ),
    );
  }
}
