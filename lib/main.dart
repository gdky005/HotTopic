import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DBCategory.dart';
import 'NetManager.dart';
import 'bean/db_category_entity.dart';
import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String text = "---";
  List<String> tags = List();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    getDBCategoryInfo();
  }

  @override
  void initState() {
    super.initState();
    getDBCategoryInfo();
  }

  void getDBCategoryInfo() async {
    try {
      var url = Constants.getCategoryTag(DBCategory.tv);

      NetManager.getInstance()
          .request<DbCategoryEntity>(url)
          .then((DbCategoryEntity entity) {
        tags = entity.tags;
        print(tags);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
                child: Text(
              'You have pushed the button this many times:',
            )),
            Center(
                child: Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            )),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: tags.length,
                itemBuilder: (context, postion) {
                  return ListTile(
                    title: Text(tags[postion]),
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
