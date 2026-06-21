import 'package:expen_flow/core/%20database/hive_initializer.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await HiveInitializer.initialize();

  runApp(const ProviderScope(child: ExpenseTrackerApp()));
}

