import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late Box _box;
  final _id = 3;
  final _newName = 'Dev FullStack';
  final _upDateName = 'Dev Backend';

  //referene our box
  Future open() async {
    return _box = await Hive.openBox('myJobs');
  }

  writeData(int id, String name) async {
    await Hive.openBox('myJobs').then((value) {
      if (value.keys.contains(id)) {
        log('id: $id ja exite');
      } else {
        _box.put(id, name);
        log('id: $id created with success!');
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

  updateData(int id, String name) async {
    await Hive.openBox('myJobs').then((value) {
      _box.put(id, name);
      // value.putAt(id, name);
      log('id: $id update with success!');
    });
  }

  deleteData(int id) {
    _box.delete(id);
    log('Deleted id: $id');
  }

  Future close() async {
    return await Hive.close();
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            MaterialButton(
              onPressed: () {
                writeData(_id, _newName);
              },
              child: Text('Write'),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {
                readData(_id);
              },
              child: Text('Read'),
              color: Colors.blue,
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            MaterialButton(
              onPressed: () {
                updateData(_id, _upDateName);
              },
              child: Text('Update'),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {
                deleteData(_id);
              },
              child: Text('Delete'),
              color: Colors.blue,
            ),
          ]),
        ],
      ),
    ));
  }
}
