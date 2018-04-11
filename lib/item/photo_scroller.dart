import 'package:flutter/material.dart';

class PhotoScroller extends StatelessWidget {
  PhotoScroller(this.photoUrl);

  final List<String> photoUrl;

  _buildPhoto(BuildContext context, int index) {
    var photo = photoUrl[index];

    return new Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: new ClipRRect(
        borderRadius: new BorderRadius.circular(2.0),
        child: new Image.asset(
          photo, width: 160.0, height: 120.0, fit: BoxFit.cover,),
      ),);
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme
        .of(context)
        .textTheme;
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: new Text(
                'Photo', style: textTheme.subhead.copyWith(fontSize: 18.0))),
        new SizedBox.fromSize(
          size: const Size.fromHeight(100.0),
          child: new ListView.builder(
              itemBuilder: _buildPhoto,
              itemCount: photoUrl.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(top: 8.0, left: 20.0)
          )
        ),
      ],
    );
  }

}