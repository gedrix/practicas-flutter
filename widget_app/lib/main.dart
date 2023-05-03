import 'package:flutter/material.dart';
import 'package:widget_app/config/theme/app_theme.dart';

import 'config/router/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 3).getTheme(),
      // home: const HomeScreen(),

      
    );
  }
}