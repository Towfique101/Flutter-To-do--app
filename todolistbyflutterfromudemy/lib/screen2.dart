import 'package:flutter/material.dart';

void main() {

  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyStatefulWidget(),
        theme: ThemeData  (
            primaryColor: Colors.red,
            accentColor: Colors.lime,
            brightness: Brightness.dark
        ),
      )
  );

}
class MyStatefulWidget extends StatefulWidget {

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List list = List();
  @override
  void initState() {
    super.initState();
    list.add("nr 1");
    list.add("nr 2");
    list.add("nr 3");
    list.add("nr 4");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("To Dos", textDirection: TextDirection.ltr,),
     ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){

        },
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index){
          return Dismissible(
          key: Key(index.toString()),
            child: ListTile(
              title: : Text(list[index]),
            ),
          );
        },
      ),
    ),
  }
}