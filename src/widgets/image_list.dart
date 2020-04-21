import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            child: Image.network(image.url),
            padding: EdgeInsets.only(bottom: 20.0),
          ),
          Text(image.title),
        ],
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3.0,
          color: Colors.black26,
        ),
      ),
    );
  }
}
