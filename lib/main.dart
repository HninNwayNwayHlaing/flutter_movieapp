import 'package:flutter/material.dart';
import 'package:movie_app/api/movie_api.dart';
import 'package:movie_app/pages/moviedetails_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Movie Demo',
      theme: new ThemeData(
          primaryColor: Colors.orange,
          primarySwatch: Colors.blue,
          accentColor: const Color(0xFFFF5959)
      ),
      home: new MovieDetailsPage(testMovie),
    );
  }

}

