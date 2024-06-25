import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/screens/auth_screen.dart';
import 'package:amazon_clone/router.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Amazon clone',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,

        colorScheme: const ColorScheme.light(),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      // A widget which will be started on application startup
      home: const AuthScreen(),
    );
  }
}
