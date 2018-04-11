import 'package:flutter/material.dart';

class StoryLine extends StatelessWidget {
  StoryLine(this.storyLine);

  final String storyLine;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = Theme
        .of(context)
        .textTheme;

    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text(
          'Story Line',
          style: textTheme.subhead.copyWith(fontSize: 18.0),),
        new Padding(padding: const EdgeInsets.only(top: 8.0),
          child: new Text(
            storyLine,
            style: textTheme.body1.copyWith(
                color: Colors.black45,
                fontSize: 16.0),
          ),),
        new Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text(
              'more',
              style: textTheme.body1.copyWith(
                  fontSize: 16.0,
                  color: theme.accentColor),),
            new Icon(
              Icons.keyboard_arrow_down,
              size: 18.0,
              color: theme.accentColor,)
          ],
        )
      ],
    );
  }

}