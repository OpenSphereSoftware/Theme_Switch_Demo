import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themingdemo/app_state.dart';
import 'package:themingdemo/presentation/home/homepage.dart';

import 'app_theme.dart';

void main() => runApp(
      ChangeNotifierProvider<AppState>(
        create: (context) => AppState(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Theme Demo',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: appState.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          home: HomePage(),
        );
      },
    );
  }
}


