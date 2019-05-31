import 'package:flutter_web/material.dart';
import 'API.dart';
import 'User.dart';
import 'dart:convert';
import 'ContactCard.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
}



class _MyHomePageState extends State {
  int _counter = 0;
  var users = new List<User>();
  _getUsers() {
    API.getUsers().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        users = list.map((model) => User.fromJson(model)).toList();
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _getUsers();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('widget.title'),
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
           return ContactCard(users[index]);
          },
        ));
  }
}
