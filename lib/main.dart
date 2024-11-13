import 'package:flutter/material.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('My Profile'),
          backgroundColor: Colors.yellow.shade800,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.phone))
          ]),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              CircleAvatar(
                radius: 80,
                child: Icon(Icons.icecream_outlined, size: 100),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'Ice cream is very delicious right?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 8),
                child: CircleAvatar(
                  radius: 80,
                  child: Icon(Icons.code, size: 100),
                ),
              ),
              Text(
                'Programming is not boring if you love it.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 8),
                child: CircleAvatar(
                  radius: 80,
                  child: Icon(
                    Icons.egg_outlined,
                    size: 100,
                  ),
                ),
              ),
              Text(
                'If you submit code directly copy from chatgpt then mark will 0.',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
