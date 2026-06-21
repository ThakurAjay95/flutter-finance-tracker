import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'router/app_router.dart';
import 'theme/app_theme.dart';

class ExpenseTrackerApp extends StatelessWidget {
  const ExpenseTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp.router(
      title: "Expense Tracker",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
       routerConfig: appRouter,
    );
  }
}
