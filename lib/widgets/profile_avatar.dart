import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class profile_avatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const profile_avatar({Key key, @required this.imageUrl, this.isActive})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.0,
      backgroundColor: Colors.grey[200],
      backgroundImage: CachedNetworkImageProvider(imageUrl),
    );
  }
}
