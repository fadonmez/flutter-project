import 'package:firsttry/util/hobby_card.dart';
import 'package:firsttry/util/project_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HobbiesPage extends StatelessWidget {
  HobbiesPage({super.key, required this.title});
  final String title;

  final List<Map<String, String>> dummyHobbies = [
    {
      "title": "Gardening",
      "description": "Enjoy growing various plants and flowers in my garden.",
    },
    {
      "title": "Cooking",
      "description":
          "Passionate about trying out new recipes and experimenting with different cuisines.",
    },
    {
      "title": "Photography",
      "description":
          "Love capturing moments and exploring different photography techniques.",
    },
    {
      "title": "Hiking",
      "description":
          "Enjoy exploring nature trails and trekking through mountains.",
    },
    {
      "title": "Painting",
      "description":
          "Express myself through art and enjoy painting landscapes and abstracts.",
    },
    {
      "title": "Reading",
      "description":
          "Love diving into books across various genres, from fiction to non-fiction.",
    },
    {
      "title": "Yoga",
      "description":
          "Practice yoga regularly for physical and mental well-being.",
    },
    {
      "title": "Traveling",
      "description":
          "Passionate about exploring new cultures, cuisines, and destinations.",
    },
    {
      "title": "Playing Musical Instruments",
      "description": "Enjoy playing the guitar and piano in my free time.",
    },
    {
      "title": "DIY Projects",
      "description": "Love getting creative and building things from scratch.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummyHobbies.length,
            itemBuilder: (context, index) {
              return HobbyCard(
                title: dummyHobbies[index]["title"] ?? "",
                description: dummyHobbies[index]["description"] ?? "",
              );
            },
          ),
        ),
      ),
    );
  }
}
