import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpenseTrackerApp extends StatelessWidget {
  const ExpenseTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp.router(
      title: "Expense Tracker",
      debugShowCheckedModeBanner: false,
      // theme: AppTheme.light,
      themeMode: ThemeMode.system,
      // routerConfig: appRouter,
    );
  }
}
