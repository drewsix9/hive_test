import 'package:hive_flutter/hive_flutter.dart';

class DataBase {
  // reference to hive box
  final box = Hive.box('mybox');

  List<int> data = [];

  void addData(int value) {
    data.add(value);
  }

  void createInitData() {
    data = [];
  }

  void loadData() {
    data = box.get('DATA');
  }

  void updateData() {
    box.put('DATA', data);
  }
}
