// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firsttry/util/skill_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SkillsPage extends StatelessWidget {
  SkillsPage({super.key, required this.title});
  final String title;

  final List<Map<String, String>> skills = [
    {
      "title": "Flutter",
      "description":
          "Framework for building native applications for mobile, web, and desktop from a single codebase."
    },
    {
      "title": "Dart",
      "description": "Programming language used to build Flutter applications."
    },
    {
      "title": "Python",
      "description":
          "High-level programming language for general-purpose programming."
    },
    {
      "title": "JavaScript",
      "description":
          "Programming language that is widely used for web development."
    },
    {
      "title": "React",
      "description": "JavaScript library for building user interfaces."
    },
    {
      "title": "Node.js",
      "description":
          "JavaScript runtime built on Chrome's V8 JavaScript engine."
    },
    {
      "title": "HTML",
      "description": "Standard markup language for creating web pages."
    },
    {
      "title": "CSS",
      "description":
          "Style sheet language used for describing the presentation of a document written in HTML."
    },
    {"title": "Java", "description": "Object-oriented programming language."},
    {
      "title": "Swift",
      "description":
          "Programming language for iOS, macOS, watchOS, and tvOS development."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: skills.length,
          itemBuilder: (context, index) {
            return SkillCard(
              title: skills[index]["title"] ?? "",
              description: skills[index]["description"] ?? "",
            );
          },
        ),
      ),
    );
  }
}
