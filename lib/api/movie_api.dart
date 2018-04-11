import 'package:movie_app/model/movies.dart';
import 'package:movie_app/model/actor.dart';

final Movies testMovie = new Movies(
  bannerUrl: 'images/banner.png',
  posterUrl: 'images/poster.png',
  title: 'The Secret Life of Pets',
  rating: 8.0,
  starRating: 4,
  categories: ['Animation', 'Comedy'],
  storyLine: 'For their fifth fully-animated feature-film '
      'collaboration, Illumination Entertainment and Universal '
      'Pictures present The Secret Life of Pets, a comedy about '
      'the lives our...',
  photoUrl: [
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png',
  ],
  actors: [
    new Actor(
      name: 'Louis C.K.',
      avatarUrl: 'images/louis.png',
    ),
    new Actor(
      name: 'Eric Stonestreet',
      avatarUrl: 'images/eric.png',
    ),
    new Actor(
      name: 'Kevin Hart',
      avatarUrl: 'images/kevin.png',
    ),
    new Actor(
      name: 'Jenny Slate',
      avatarUrl: 'images/jenny.png',
    ),
    new Actor(
      name: 'Ellie Kemper',
      avatarUrl: 'images/ellie.png',
    ),
  ],
);