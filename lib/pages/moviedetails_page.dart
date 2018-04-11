import 'package:flutter/material.dart';
import 'package:movie_app/model/movies.dart';
import 'package:movie_app/item/photo_scroller.dart';
import 'package:movie_app/item/moviedetails_header.dart';
import 'package:movie_app/item/story_line.dart';
import 'package:movie_app/item/actor_scroller.dart';
class MovieDetailsPage extends StatelessWidget{
  MovieDetailsPage(this.movie);

  Movies movie;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Column(
          children: [
            new MovieDetailsHeader(movie),
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new StoryLine(movie.storyLine),
            ),
            new PhotoScroller(movie.photoUrl),
            new Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 50.0,
              ),
              child: new ActorScroller(movie.actors),
            ),
          ],
        ),
      ),
    );
  }

}