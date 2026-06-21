import 'package:hive_flutter/hive_flutter.dart';

import 'hive_boxes.dart';

class HiveInitializer {
  const HiveInitializer._();

  static Future<void> initialize() async {
    await Hive.initFlutter();

    await Future.wait([
      Hive.openBox(HiveBoxes.transactions),
      Hive.openBox(HiveBoxes.categories),
      Hive.openBox(HiveBoxes.budgets),
      Hive.openBox(HiveBoxes.settings),
    ]);
  }
}
