import 'package:flutter/material.dart';
import 'package:perfecteggs/themes/themes.dart';
import 'package:provider/provider.dart';

import 'blocs/app.bloc.dart';
import 'pages/splash.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppBloc>.value(
          value: AppBloc(),
        ),
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Perfect Eggs',
        debugShowCheckedModeBanner: false,
        theme: appTheme(),
        home: SplashPage());
  }
}
