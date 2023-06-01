import 'package:flutter/material.dart';
class StoryComponent extends StatelessWidget {
  final String image;
  final String name;
  const StoryComponent({Key? key,
 required this.image,
  required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(image),
        ),
        Text(name),
      ],
    );
  }
}
