import 'package:amedia_ui/Akkaunt.dart';
import 'package:amedia_ui/Modullar.dart';
import 'package:amedia_ui/SkrinShots.dart';
import 'package:amedia_ui/VideoPlayerWidget.dart';
import 'package:amedia_ui/komentariya.dart';
import 'package:amedia_ui/rejissiyorlar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class VideoPlayer extends StatefulWidget {
  final AMEDIATV ongoing;
  VideoPlayer({this.ongoing});
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}
class _VideoPlayerState extends State<VideoPlayer> {
  final asset='images/film.mp4';
  VideoPlayerController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=VideoPlayerController.asset(asset)
      ..addListener(() => setState((){}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final isMute = controller .value.volume==0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 110.0,
        leading: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                return
                  showDialog(
                      context: context,
                      builder: (BuildContext context)=>Dialog(
                        child: Akkaunt()
                      ));
              },
              icon: Icon(
                Icons.account_circle_outlined,
              ),
              color: Colors.white,
              iconSize: 30.0,
            ),
            IconButton(
              onPressed: () => print('on'),
              icon: Icon(Icons.search),
              color: Colors.white,
              iconSize: 30.0,
            ),
          ],
        ),
        backgroundColor:Color(0xFF252831),
        title: Center(child: Text('AMEDIATV')),
        actions: [
          TextButton(
            onPressed: () => print('UZ'),
            child: Row(
              children: <Widget>[
                Text(
                  'UZ/',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'RU',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    body: Container(
      decoration: BoxDecoration(
        color: Color(0xFF121315)
      ),
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 238,
                width: double.infinity,
                color: Color(0xFF252831),
                child: Column(
                  children: [
                    VideoPlayerWidget(controller: controller),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: ()=>print('Yuklab olish'),
                  child: Container(
                    width:125.0,
                    height: 38.0,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(4.0)
                    ),
                    child: Center(
                        child: Text('Yuklab olish',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0
                          ),)),),
                ),
              ),
              Padding(padding: EdgeInsets.all(17.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF252831),
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  height: 242,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(top:20.0,left: 20.0,right: 20.0),
                          child: Text('${widget.ongoing.title}',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,color: Colors.white),)),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0,left: 22.2),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.flag,color: Colors.orange,),
                            Text('Davlat nomi:',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400,color: Colors.white),),
                            Text('${widget.ongoing.country}',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400,color: Colors.white),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0,left: 22.2),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.person_outline,color: Colors.orange,),
                            Text('Rejissior:',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400,color: Colors.white),),
                            Text('${widget.ongoing.avtor}',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400,color: Colors.white),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0,left: 22.2),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.account_balance_outlined,color: Colors.orange,),
                            Text('Studiya:',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400,color: Colors.white),),
                            Text('${widget.ongoing.studiya}',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400,color: Colors.white),),

                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0,left: 22.2),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.filter_alt_outlined,color: Colors.orange,),
                            Text('Janr:',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400,color: Colors.white),),
                            Text('${widget.ongoing.category}',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400,color: Colors.white),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0,left: 22.2),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.list,color: Colors.orange,),
                            Text('Kategoriya:',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400,color: Colors.white),),
                            Text('${widget.ongoing.janr}',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400,color: Colors.white),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0,left: 22.2),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.access_time_rounded,color: Colors.orange,),
                            Text('Yil:',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400,color: Colors.white),),
                            Text('${widget.ongoing.year}',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400,color: Colors.white),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.0, vertical: 30.0),
                  child: Text('Filmdan Kadrlar',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: Colors.white),)),
              ScreenShots(
                images: widget.ongoing.screenshots,
              ),
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF252831),
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  height: 306,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 20.0),
                    child: Text('${widget.ongoing.description}',
                    style: TextStyle(color: Colors.white,fontSize: 14.0,fontWeight: FontWeight.w400),),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Padding(
                  padding: EdgeInsets.all(17.0),
                  child: Text('Ijodkorlar',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w600),)),
              rejissiyor(
                imagess: widget.ongoing.ijodkorlar,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.0),
                  child: Text('Izoh qoldirish',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w600),)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0,vertical: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF252831),
                  ),
                  height: 228,
                  child: TextField(
                    keyboardType: TextInputType.name,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Container(
                    width:125.0,
                    height: 38.0,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(4.0)
                    ),
                    child: Center(
                        child: Text('Yuklab olish',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0
                          ),)),),
                ),
              ),
             Padding(
                 padding: EdgeInsets.only(left: 11.0,right: 20.0,top: 30.0),
                 child: Comments()),
            ],
          )
        ],
      ),
    ),
    );
  }
}
