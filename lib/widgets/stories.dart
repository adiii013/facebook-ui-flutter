import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui/config/palette.dart';
import 'package:facebook_ui/models/models.dart';
import 'package:facebook_ui/widgets/profile.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({required this.currentUser, required this.stories});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: StoryCard(
                isAddStory: true,
                currentUser: currentUser,
              ),
            );
          }
          final Story story = stories[index - 1];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: StoryCard(story: story),
          );
        },
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  bool? isAddStory = false;
  final User? currentUser;
  final Story? story;
  StoryCard(
      { this.isAddStory,
       this.currentUser,
       this.story});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: (isAddStory==true) ? currentUser!.imageUrl : story!.imageUrl,
            height: double.infinity,
            width: 110,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            gradient: Palette.storyGradient,
            borderRadius: BorderRadius.circular(12)
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: (isAddStory==true) ? Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.add),
              iconSize: 30,
              color: Palette.facebookBlue,
              onPressed: (){print('Add to Story');},
            ),
          ):ProfileAvatar(imageUrl: story!.user.imageUrl),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          right: 8,
          child: Text(
            (isAddStory==true) ? 'Add to Story' : story!.user.name,style: const TextStyle(color: Colors.white,fontWeight:FontWeight.bold ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
