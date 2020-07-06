import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            'youtubeアプリ',
          ),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                        'a',
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'youtubeアプリ',
                        ),
                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('登録する'),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VideoDetailPage()),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                        'a',
                      ),
                      title: Column(
                        children: <Widget>[
                          Text(
                            'flutter超入門',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '200回再生',
                                style: TextStyle(fontSize: 13),
                              ),
                              Text(
                                '5日前',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
