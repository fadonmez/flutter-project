import 'package:flutter/material.dart';
import 'package:firsttry/database_helper.dart';

class AddHobbyPage extends StatefulWidget {
  @override
  _AddHobbyPageState createState() => _AddHobbyPageState();
}

class _AddHobbyPageState extends State<AddHobbyPage> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _description = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Hobby'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Hobby Title'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
                onSaved: (value) {
                  _title = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Hobby Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
                onSaved: (value) {
                  _description = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    DatabaseHelper.instance.insertHobby({
                      'title': _title,
                      'description': _description,
                    }).then((_) {
                      Navigator.pop(context);
                    });
                  }
                },
                child: Text('Add Hobby'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
