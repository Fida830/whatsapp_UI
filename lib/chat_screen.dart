import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(itemBuilder: (context, i) {
        return ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(6.0),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.teal,
            ),
          ),
          title: Text('Fida'),
          subtitle: Text(i/2==0?'Hello how are you ':'Where are you ?'),
        );
      }),
    );
  }
}
