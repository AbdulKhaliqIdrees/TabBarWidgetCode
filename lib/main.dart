import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: home(),
  ));
}

class home extends StatefulWidget{
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController Khaliq=new TabController(length: 4, vsync: this);
    return  Scaffold(
        appBar: AppBar(
          title: Text("Whatsap App",style: TextStyle(fontSize: 25),),
          backgroundColor: Colors.teal,
          actions: [
            Icon(Icons.search,size: 30,),
            Icon(Icons.more_vert,size: 30,)
          ],
          bottom: TabBar(
            controller: Khaliq,
            tabs: [
              Tab(icon: Icon(Icons.photo),),
              Tab(text: "Chats",),
              Tab(text: "Status",),
              Tab(text: "Calls",),
            ],
          ),
        ),
        body: TabBarView(
          controller: Khaliq,
          children: [
            Camera(),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      );
  }
}

class Camera extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo"),
      ),
      body: Container(
        color: Colors.blueGrey,
        child:Center(
          child: 
        Text("Photo Screen",style: TextStyle(fontSize: 40),),
      )),
    );
  }
}

class Chats extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
      ),
      body: Container(
        color: Colors.yellow,
        child:Center(
          child: 
        Text("Chats Screen",style: TextStyle(fontSize: 40),),
      )),
    );
  }
}


class Status extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Status"),
      ),
      body: Container(
        color: Colors.orange,
        child: Center(
          child:
        Text("Status Screen",style: TextStyle(fontSize: 40),),
      ),
    ));
  }
}


class Calls extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calls"),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child:
        Text("Calls Screen",style: TextStyle(fontSize: 40),),
      ),
    ));
  }
}