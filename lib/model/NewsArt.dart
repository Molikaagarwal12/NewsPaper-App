import 'package:newspaper_app/model/NewsArt.dart';
import 'package:flutter/material.dart';
class newsArt {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;

  newsArt({
    required this.imgUrl,
    required this.newsDes,
    required this.newsHead,
    required this.newsCnt,
    required this.newsUrl,
  });


 static newsArt fromAPItoApp(Map<String,dynamic> article){
    return newsArt(imgUrl: article["urlToImage"]??"https://images.unsplash.com/photo-1554731617-8eafa9975365?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
        newsCnt: article["content"]??"--",
        newsDes: article["description"]??"--",
        newsHead: article["title"]??"--",
        newsUrl: article["url"]??"https://www.hindustantimes.com/");
}
}