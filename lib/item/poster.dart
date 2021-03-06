import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  static const POSTER_RATION = 0.7;


  Poster(
      this.posterUrl, {
        this.height = 100.0,
      });

  final String posterUrl;
  final double height;

  @override
  Widget build(BuildContext context) {
    var width = POSTER_RATION * height;
    return new Material(
      borderRadius: new BorderRadius.circular(2.0),
      elevation: 2.0,
      child: new Image.asset(
          posterUrl,
          fit: BoxFit.cover,
          width: width,
          height: height),
    );
  }

}