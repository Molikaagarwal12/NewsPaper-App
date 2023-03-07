import 'package:flutter/material.dart';
import 'package:newspaper_app/view/detail_view.dart';
class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;
   NewsContainer({super.key,
   required this.imgUrl,
     // required this.newsCnt,
     required this.newsDes,
     required this.newsHead,
     required this.newsCnt,
     required this.newsUrl,
   });
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      FadeInImage.assetNetwork(
              height:400,
              width:MediaQuery.of(context).size.width,
              fit:BoxFit.cover,
          placeholder: "assets/img/Placeholder.avif",
          image: imgUrl),

       Container(
         padding: EdgeInsets.symmetric(horizontal: 10),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(height: 25,),
             Text(newsHead.length>70?
               "${newsHead.substring(0,70)}...":newsHead,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(height: 25,),
             Text(newsDes,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black38),),
             SizedBox(height: 25,),
             Text(
               newsCnt!="--"?
               newsCnt.length>100?newsCnt.substring(0,100):
               "${newsCnt.toString().substring(0,newsCnt.length-15)}... ":newsCnt,
               style: TextStyle(fontSize: 16),),
           ],
         ),
       ),
      Spacer(),
    Row(
       // mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 140)),
        ElevatedButton(onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailViewScreen(newsUrl:newsUrl)
          ));
        }, child:Text("read more"),
        ),
      ],
    ),
      SizedBox(height: 20,),
    ],
    ),
    );
  }
}
