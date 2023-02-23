import 'package:flutter/material.dart';
import 'package:newspaper_app/view/widget/NewsContainer.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
          controller: PageController(),
          scrollDirection: Axis.vertical,
           itemCount: 10,
            itemBuilder: (context,index){
          return NewsContainer(imgUrl:
          "https://images.unsplash.com/photo-1572949645841-094f3a9c4c94?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bmV3c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
              newsHead: "Hum krlenge",
              newsDes: "Humne krliya", newsUrl: "");
        }),
    );
  }
}
