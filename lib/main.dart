import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const InstagramPost(),
    );
  }
}

class InstagramPost extends StatelessWidget {
  const InstagramPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Instagram Clone',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/profile.jpg"),
                  ),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'gomathi_04',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Gomathi',
                        style: TextStyle(color: Colors.indigo),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert_sharp, color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.cover,
                  image: AssetImage("assets/profile.jpg"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                    color: Colors.white,
                  ),
                  SizedBox(width: 16),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.comment_outlined),
                    color: Colors.white,
                  ),
                  SizedBox(width: 16),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send),
                    color: Colors.white,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bookmark_border_rounded),
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'cheens',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
