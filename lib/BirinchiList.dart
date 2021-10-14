import 'package:amedia_ui/Akkaunt.dart';
import 'package:amedia_ui/Modullar.dart';
import 'package:amedia_ui/Qo%60shimcha.dart';
import 'package:amedia_ui/videoplayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'Videolar.dart';
class FirstList extends StatefulWidget {
  @override
  _FirstListState createState() => _FirstListState();
}
class _FirstListState extends State<FirstList> {
  PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }
  _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 20.0 : 15.0,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Color(0xFF7B51D3),
          borderRadius: BorderRadius.circular(12.0)),
    );
  }
  movieSelector(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 270.0,
            width: Curves.easeInOut.transform(value) * 450.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder:(_)=>VideoPlayer(
              ongoing: movies[index],
            ))),
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                width: 600.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 4.0),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Hero(
                    tag: movies[index].imgUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage(movies[index].imgUrl),
                        height: 220.0,
                        width: 316,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              bottom: 50.0,
              child:
                Row(
                  children: [
                    Container(
                      height: 50.0,
                      width: 11.0,
                      decoration: BoxDecoration(
                          color: Colors.orange
                      ),
                    ),
                    SizedBox(width: 8.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                        movies[index].title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                        Text(
                          movies[index].seriya,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
 Ongoing(int index){
    return InkWell(
      onTap: ()=>Navigator.push(
        context,
      MaterialPageRoute(builder: (_)=>VideoPlayer(
        ongoing: movies[index],
      ))),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
                boxShadow: [BoxShadow(
                  offset: Offset(0,2),
                  blurRadius: 6.0,
                  color: Colors.black54,
                )]
            ),
            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            width: 160.0,
            height: 185.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child:Image(
                image: AssetImage('${movies[4+index].imgUrl}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 19.0,
            left: 13.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 35.0,
                  width: 7.0,
                  decoration: BoxDecoration(
                    color: Colors.orange
                  ),
                ),
                SizedBox(width: 5.0),
                Container(
                  width: 110,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:[
                        AutoSizeText('${movies[4+index].title}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600
                        ),),
                        AutoSizeText('${movies[4+index].seriya}',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600
                          ),),
                      ]),
                )
              ],
            ),
          )
        ],
      ),
    );
 }
 randVideo(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 17.0,bottom: 14.0,top: 14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Videolar',
                style:TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.0),
          child: Container(
            width: double.infinity,
            height: 250.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(movies[2].imgUrl),
                  fit:BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [BoxShadow(
                  offset: Offset(0,2),
                  blurRadius: 6.0,
                  color: Colors.black54,
                )]
            ),
            child:IconButton(
              onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>
              VideoPlayer(ongoing: movies[2],)
              )),
              iconSize: 100.0,
              icon: Icon(Icons.play_circle_fill_sharp,color: Colors.orange,),
            )
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 17.0,right: 17.0,top: 15.0,bottom: 30.0),
          child: Container(
            decoration: BoxDecoration(
              // color: Colors.white,
              color: Color(0XFF252831),
              borderRadius: BorderRadius.circular(8.0),
            ),
            width: double.infinity,
            height: 250.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.only(top: 6.0,left: 0.0),
                  child: ListTile(
                    leading: Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image:AssetImage(movies[2].imgUrl),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    title: Text('${movies[2].title}',
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400
                      ),),

                    subtitle: Text('${movies[2].seriya}',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white60,
                          fontWeight: FontWeight.w400
                      ),),
                    trailing: Container(
                      height: 30.0,
                      width: 30.0,
                      child: Image(
                        image: AssetImage('assets/corona.png'),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22.0,vertical: 10.0),
                    child: Text('Film haqida',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400
                      ),)),
                Padding(
                  padding: EdgeInsets.only(left: 22.0),
                  child: Container(
                    height: 112,
                    width: 318,
                    child: ListView(
                      children: [Text(movies[2].description,
                        style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.w400
                        ),
                       )],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121315),
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 100.0,
        leading: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                return
                showDialog(
                context: context,
                builder: (BuildContext context)=>Dialog(
                  child: Akkaunt(),
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
        title: Container(
            height: 20.0,
            width: 122,
            child: Image(image: AssetImage('assets/logotip.JPG'),)),
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 280,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              itemCount: movies.length,
              itemBuilder: (BuildContext context, int index) {
                return movieSelector(index);
              },
            ),
          ),
          SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.0,vertical: 15.0),
            child: Text('Yangiliklar',
              style:TextStyle(
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),),
          ),
          Yangiliklar(),
          randVideo(),
          Container(
            decoration: BoxDecoration(
              color: Color(0XFF252831),
            ),
            width: double.infinity,
            height: 38.0,
           child:Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                      padding:EdgeInsets.only(left: 15.0),
                      child: Text('Ongoing',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600
                        ),
                      )),
                  IconButton(
                      color: Colors.orange,
                      icon: Icon(Icons.keyboard_arrow_down_sharp),
                      onPressed:()=> print('down')),
                ],
              ),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                 child: Container(
                   width:95,
                   height: double.infinity,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(2.0),
                      border: Border.all( color: Color(0xFFB0B0B0))
                   ),
                   child: PopupMenuButton<String> (
                     color: Color(0XFF252831),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                       Padding(
                           padding: EdgeInsets.only(left: 19.0),
                           child: Icon(Icons.filter_alt_outlined,color: Color(0xFFB0B0B0),)),
                       Padding(
                           padding: EdgeInsets.only(right: 17,top: 5.0,bottom: 5.0),
                           child: Text('Filtr',style: TextStyle(color: Color(0xFFB0B0B0),fontWeight: FontWeight.w500,fontSize: 15.0),))],),
                     onSelected:(value)
                     {},
                     itemBuilder: (context) =>[
                       PopupMenuItem(
                           child: Positioned(
                             right: 0.0,
                             child: Container(
                               child: Scrollbar(
                                 hoverThickness: 10.0,
                                 isAlwaysShown:  true,
                                 child: PopupMenuButton<String> (
                                     child: Text('Janrlar',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w500),),
                                     color: Color(0XFF252831),
                                     onSelected:(value)
                                     {},
                                     itemBuilder: (context) =>[
                                       PopupMenuItem(
                                           child: TextButton(child: Text('Fantastika'
                                               ,style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w500)),
                                               onPressed: ()=>print('hello'))),
                                       PopupMenuItem(
                                           child: TextButton(child: Text('Harbiy',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                             onPressed: ()=>print('hello'),)),
                                       PopupMenuItem(
                                           child: TextButton(child: Text('Dramma',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                             onPressed: ()=>print('hello'),)),
                                       PopupMenuItem(
                                           child: TextButton(child: Text('Multfilm',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                             onPressed: ()=>print('hello'),)),
                                       PopupMenuItem(
                                           child: TextButton(child: Text('Qo`rqinchli',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                             onPressed: ()=>print('hello'),)),
                                       PopupMenuItem(
                                           child: TextButton(child: Text('Retro',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                             onPressed: ()=>print('hello'),)),
                                       PopupMenuItem(
                                           child: TextButton(child: Text('Komediya',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                             onPressed: ()=>print('hello'),)),
                                       PopupMenuItem(
                                           child: TextButton(child: Text('Detektiv',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                             onPressed: ()=>print('hello'),)),
                                       PopupMenuItem(
                                           child: TextButton(child: Text('Yoshlarniki',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                             onPressed: ()=>print('hello'),)),
                                     ]
                                 ),
                               ),
                             ),
                           ),),
                       PopupMenuItem(
                           child:  Scrollbar(
                             child: PopupMenuButton<String> (
                               child: Text('Yillar',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w500),),
                                 color: Color(0XFF252831),
                                 onSelected:(value)
                                 {},
                                 itemBuilder: (context) =>[
                                   PopupMenuItem(
                                       child: TextButton(child: Text('1986'
                                           ,style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w500)),
                                           onPressed: ()=>print('hello'))),
                                   PopupMenuItem(
                                       child: TextButton(child: Text('1991',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                         onPressed: ()=>print('hello'),)),
                                   PopupMenuItem(
                                       child: TextButton(child: Text('1995',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                         onPressed: ()=>print('hello'),)),
                                   PopupMenuItem(
                                       child: TextButton(child: Text('1997',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                         onPressed: ()=>print('hello'),)),
                                   PopupMenuItem(
                                       child: TextButton(child: Text('1999',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                       onPressed: ()=>print('hello'),)),
                                   PopupMenuItem(
                                       child: TextButton(child: Text('2005',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                         onPressed: ()=>print('hello'),)),
                                   PopupMenuItem(
                                       child: TextButton(child: Text('2007',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                         onPressed: ()=>print('hello'),)),
                                   PopupMenuItem(
                                       child: TextButton(child: Text('2020',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                         onPressed: ()=>print('hello'),)),
                                   PopupMenuItem(
                                       child: TextButton(child: Text('2021',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400)),
                                         onPressed: ()=>print('hello'),)),
                                 ]
                             ),
                           ),),
                     ]
                   ),
                 ),
               )
             ],
           ) ,
          ),
         Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Ongoing(0),
                 Ongoing(1),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Ongoing(2),
                 Ongoing(3),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Ongoing(4),
                 Ongoing(5),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 IconButton(icon: Icon(Icons.refresh,), onPressed:()=>print('refresh'),color: Colors.orange,),
                 GestureDetector(
                   onTap:(){print('error');},
                   child: Text('Ko`proq',
                     style: TextStyle(
                         fontSize: 15.0,
                         color: Colors.orange,
                         fontWeight: FontWeight.w500
                     ),),
                 )
               ],
             ),
           ],
         ),

        ],
      ),
    );
  }


}
