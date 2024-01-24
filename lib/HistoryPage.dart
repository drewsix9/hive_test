import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_test/main.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  // reference to hive box
  final box = Hive.box('mybox');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('History'),
      ),
      body: ListView.builder(
        itemCount: db.data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item ${db.data[index]}'),
          );
        },
      ),
    );
  }
}
