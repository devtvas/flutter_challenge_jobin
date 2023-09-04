import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var _myJobs;

  //referene our box
  Future open() async {
    return _myJobs = await Hive.openBox('myJobs');
  }

  writeData(int id) async {
    await Hive.openBox('myJobs').then((value) {
      if (!value.keys.contains(id)) {
        _myJobs.put(id, 'Dev Flutter');
        log('Create success!');
      } else {
        log('id: $id ja exite');
      }
    });
  }

  readData(int id) async {
    await Hive.openBox('myJobs').then((value) {
      if (value.keys.contains(id)) {
        log('Name: ${value.values}');
      } else {
        log('id: $id nao encontrado ou nao exite');
      }
    });
  }

  deleteData(int id) {
    _myJobs.delete(id);
    log('Deleted id: $id');
  }

  void close() {
    _myJobs = Hive.close();
  }

  @override
  void initState() {
    open();
    super.initState();
  }

  @override
  void dispose() {
    close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
        // backgroundColor: const Color(0xffFFB444),
        body: Center(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        MaterialButton(
          onPressed: () {
            writeData(1);
          },
          child: Text('Write'),
          color: Colors.blue,
        ),
        MaterialButton(
          onPressed: () {
            readData(1);
          },
          child: Text('Read'),
          color: Colors.blue,
        ),
        MaterialButton(
          onPressed: () {
            deleteData(1);
          },
          child: Text('Delete'),
          color: Colors.blue,
        ),
      ]),
    ));
  }
}
