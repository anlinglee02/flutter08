import 'package:flutter/material.dart';

class BioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('BioPage')),
        body: Center(
            child: Column(children: [
          SizedBox(height: 30),
          Text('Bio Page', textScaleFactor: 2.0),
          Text(
            "วิมลสิริ กลิ่นเกษร",
            textScaleFactor: 2,
          ),
          Image.network(
              "https://th.bing.com/th/id/OIP.IByzz2fagMmNKBuHJaaU_QHaHa?pid=ImgDet&rs=1"),
        ])),
      );
}
