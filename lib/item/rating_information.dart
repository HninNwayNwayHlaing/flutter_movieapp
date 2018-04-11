import 'package:flutter/material.dart';
import 'package:movie_app/model/movies.dart';

class RatingInformation extends StatelessWidget {
  RatingInformation(this.movies);

  final Movies movies;

  _buildRatingBar(ThemeData theme) {
    var stars = <Widget>[];
    for (var i = 0; i <= 5; i++) {
      var color = i < movies.starRating ? theme.accentColor : Colors.black12;
      var star = new Icon(
        Icons.star,
        color: color,
      );
      stars.add(star);
    }

    return new Row(children: stars);
  }


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = Theme
        .of(context)
        .textTheme;
    var ratingCaptionStyle = textTheme.caption.copyWith(color: Colors.black45);
    var numericRating = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Text(movies.rating.toString(),
            style: textTheme.title.copyWith(
                fontWeight: FontWeight.w400,
                color: theme.accentColor)),
        new Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: new Text('Rating', style: ratingCaptionStyle))
      ],
    );

    var starRating = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _buildRatingBar(theme),
        new Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: new Text('Grade now', style: ratingCaptionStyle))
      ],
    );

    return new Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        numericRating,
        new Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: starRating)
      ],
    );
  }

}