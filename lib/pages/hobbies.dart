import 'package:firsttry/util/hobby_card.dart';
import 'package:flutter/material.dart';
import 'package:firsttry/database_helper.dart';
import 'package:firsttry/util/add-hobby.dart';

class HobbiesPage extends StatefulWidget {
  HobbiesPage({super.key, required this.title});
  final String title;

  @override
  _HobbiesPageState createState() => _HobbiesPageState();
}

class _HobbiesPageState extends State<HobbiesPage> {
  late Future<List<Map<String, dynamic>>> _hobbiesFuture;

  @override
  void initState() {
    super.initState();
    _hobbiesFuture = DatabaseHelper.instance.fetchHobbies();
  }

  void _refreshHobbies() {
    setState(() {
      _hobbiesFuture = DatabaseHelper.instance.fetchHobbies();
    });
  }

  void _deleteHobby(int id) async {
    await DatabaseHelper.instance.deleteHobby(id);
    _refreshHobbies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FutureBuilder<List<Map<String, dynamic>>>(
            future: _hobbiesFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Center(child: Text('No hobbies found.'));
              } else {
                final hobbies = snapshot.data!;
                return ListView.builder(
                  itemCount: hobbies.length,
                  itemBuilder: (context, index) {
                    final hobby = hobbies[index];
                    return HobbyCard(
                      id: hobby["id"] as int,
                      title: hobby["title"] as String,
                      description: hobby["description"] as String,
                      onDelete: () => _deleteHobby(hobby["id"] as int),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddHobbyPage()),
          );
          _refreshHobbies();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
