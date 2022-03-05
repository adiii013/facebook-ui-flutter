import 'package:facebook_ui/config/palette.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const ProfileAvatar({required this.imageUrl, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Palette.facebookBlue,
          child: CircleAvatar(
          radius: 17,
          backgroundColor: Colors.grey[200],
          backgroundImage: NetworkImage(imageUrl),
          ),
        ),
        isActive ?
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(height: 15,width: 15,decoration: BoxDecoration(
            color: Palette.online,
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: Colors.white
            )
          ),),
        ) : const SizedBox.shrink()
        ]
    );
  }
}
