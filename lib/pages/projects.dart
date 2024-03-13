import 'package:firsttry/util/project_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProjectsPage extends StatelessWidget {
  ProjectsPage({super.key, required this.title});
  final String title;

  final List<Map<String, String>> dummyProjects = [
    {
      "title": "Flutter Project",
      "description": "Developed a mobile application using Flutter framework.",
    },
    {
      "title": "E-commerce Website",
      "description":
          "Designed and implemented an e-commerce website using React.",
    },
    {
      "title": "Weather App",
      "description": "Created a weather forecasting application using Swift.",
    },
    {
      "title": "Portfolio Website",
      "description":
          "Built a personal portfolio website using HTML, CSS, and JavaScript.",
    },
    {
      "title": "Todo List Application",
      "description":
          "Developed a task management application using Flutter and Firebase.",
    },
    {
      "title": "Blog Website",
      "description":
          "Designed and developed a blog website using Django framework.",
    },
    {
      "title": "Chat Application",
      "description":
          "Built a real-time chat application using Node.js and Socket.IO.",
    },
    {
      "title": "Online Food Ordering System",
      "description":
          "Implemented an online food ordering system with a responsive UI.",
    },
    {
      "title": "Data Visualization Dashboard",
      "description":
          "Created a dashboard for visualizing data using React and D3.js.",
    },
    {
      "title": "Expense Tracker App",
      "description":
          "Developed an expense tracking mobile application with Flutter.",
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
            itemCount: dummyProjects.length,
            itemBuilder: (context, index) {
              return ProjectCard(
                title: dummyProjects[index]["title"] ?? "",
                description: dummyProjects[index]["description"] ?? "",
              );
            },
          ),
        ),
      ),
    );
  }
}
