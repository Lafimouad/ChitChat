import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/profile_avatar.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key key, @required this.currentUser}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
             profile_avatar(imageUrl: currentUser.imageUrl),
              const SizedBox(width: 8.0,),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(hintText: 'Whats in your mind'),),
              )
            ],
          ),
          const Divider(thickness: 0.5,height: 10.0,),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(onPressed: ()=>print('Live'),
                 icon: const Icon(
                   Icons.videocam,color: Colors.red,),
                label: Text('Live'),),
              
              const VerticalDivider(width: 8.0),
                            FlatButton.icon(onPressed: ()=>print('photo'),
                 icon: const Icon(
                   Icons.library_books ,color: Colors.green,),
                label: Text('photo'),),
              
              const VerticalDivider(width: 8.0),
                            FlatButton.icon(onPressed: ()=>print('Room'),
                 icon: const Icon(
                   Icons.video_call,color: Colors.purpleAccent,),
                label: Text('Room'),),
              
              const VerticalDivider(width: 8.0),


              ]
            ),
          )
        ],
      ),
    );
  }
}
