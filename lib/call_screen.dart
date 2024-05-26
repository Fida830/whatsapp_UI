import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(itemCount: 7, itemBuilder: (context,i){
        return ListTile(
          leading: CircleAvatar(
            radius: 26,
            backgroundColor: Colors.blue,
          ),
          title: Text('Fida Muhammad'),
          subtitle: Text('2 minute ago'),
          trailing: Icon(i/2==0?Icons.call:Icons.video_call),
        );
      }),
    );
  }
}
