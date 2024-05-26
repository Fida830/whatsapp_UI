import 'package:flutter/material.dart';
import 'package:whatsap_ui/call_screen.dart';
import 'package:whatsap_ui/chat_screen.dart';
import 'package:whatsap_ui/status_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text("WhatsApp")),
          bottom: TabBar(

            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chat"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Call"),
              ),
            ],
          ),
          actions: [
            PopupMenuButton(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.more_vert),
                ),
                itemBuilder: (i) => [
                      PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('setting'),
                          ),
                        ],
                      )),
                      PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(
                            Icons.language,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Language'),
                          ),
                        ],
                      )),
                      PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('search'),
                          ),
                        ],
                      )),
                    ]),
          ],
        ),
        body: TabBarView(
          children: [
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.camera_alt),
                Text(
                  'camera',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            )),
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
      ),
    );
  }
}
