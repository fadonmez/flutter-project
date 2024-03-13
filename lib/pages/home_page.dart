// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightGreen,
              ),
              child: Text(
                'Fatih Dönmez',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text('Projects'),
              onTap: () {
                Navigator.pushNamed(context, '/projects');
              },
            ),
            ListTile(
              title: const Text('Skills'),
              onTap: () {
                Navigator.pushNamed(context, '/skills');
              },
            ),
            ListTile(
              title: const Text('Contact'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Welcome to my portfolio and personal blog !',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "I'm a software engineer with a passion for creating beautiful and functional web applications. I'm currently working at a startup called Kodlama.io, where I've been developing web applications for a while.",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: (() => {Navigator.pushNamed(context, '/contact')}),
                child: Container(
                  padding: EdgeInsets.all(
                      8.0), // İstediğiniz padding miktarını ayarlayabilirsiniz
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Text(
                    'Contact Me',
                    style: TextStyle(
                      color: Colors
                          .white, // Yazı rengini beyaz olarak ayarladık, arka plan kırmızı olduğu için daha iyi okunur.
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
