import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 26,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('My Status',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('Tab to add a stutas',style: TextStyle(color: Colors.grey),),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Divider(thickness: 4,color: Colors.black54,),
          SizedBox(
            height: MediaQuery.of(context).size.height /1.6,
            width: MediaQuery.of(context).size.width,
            child:  ListView.builder(itemCount: 6, itemBuilder:  (context, i){
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 26,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Fida Muhammad'),
                        Text('see 2 minute ago ',style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  )
                ],
              );
            }),
          ),

        ],
      ),
    );
  }
}
