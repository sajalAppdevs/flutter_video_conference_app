import 'package:flutter/material.dart';

import 'video_conference_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _conferenceIDController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Conference'),
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
                'Enter your name and conference ID to join a conference'),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
                controller: _nameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Conference ID',
                ),
                controller: _conferenceIDController,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return VideoConferencePage(
                    userName: _nameController.text,
                    conferenceID: _conferenceIDController.text,
                  );
                }));
              },
              child: const Text('Join Conference'),
            ),
          ],
        ));
  }
}
