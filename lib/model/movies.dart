import 'package:movie_app/model/actor.dart';

class Movies {

  Movies({
    this.bannerUrl,
    this.posterUrl,
    this.title,
    this.rating,
    this.starRating,
    this.categories,
    this.storyLine,
    this.photoUrl,
    this.actors
  });

  final String bannerUrl;
  final String posterUrl;
  final String title;
  final double rating;
  final int starRating;
  final List<String> categories;
  final String storyLine;
  final List<String> photoUrl;
  final List<Actor> actors;

}