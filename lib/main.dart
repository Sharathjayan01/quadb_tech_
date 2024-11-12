import 'package:flutter/material.dart';
import 'package:quadbtech/splash_screen.dart';
import 'home_screen.dart';
import 'search_screen.dart';
import 'detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData.dark(),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/search': (context) => SearchScreen(),
        '/details': (context) =>
            DetailsScreen(movie: ModalRoute.of(context)?.settings.arguments),
      },
    );
  }
}
