import 'package:flutter/material.dart';
import 'package:newspaper_app/Controller/Fetchnews.dart';
import 'package:newspaper_app/model/NewsArt.dart';
import 'package:newspaper_app/view/widget/NewsContainer.dart';
// import 'package:newspaper_app/view/widget/NewsContainer.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading=true;
  late newsArt NewsArt;
  GetNews() async{
    NewsArt=await fetchnews.fetchNews();
    setState(() {
    isLoading=false;
    });
  }
  @override
  void initState(){
    GetNews();
    super.initState();

  }
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
            onPageChanged:(value){
            setState(() {
              isLoading=true;
            });
            GetNews();},
            itemBuilder: (context,index){
          return  isLoading?Center(child: CircularProgressIndicator(),) :NewsContainer(
            imgUrl: NewsArt.imgUrl,
            newsCnt: NewsArt.newsCnt,
            newsHead:NewsArt.newsHead ,
            newsDes: NewsArt.newsDes,
              newsUrl: NewsArt.newsUrl,);

          }),
    );
  }
}
