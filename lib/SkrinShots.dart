import 'package:amedia_ui/Modullar.dart';
import 'package:flutter/material.dart';

class ScreenShots extends StatelessWidget {
  @override
  final List<String>images;
  ScreenShots({this.images,});
  Widget build(BuildContext context) {
    return   Container(
      height: 140,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length-8,
          itemBuilder: (BuildContext context,int index){
            return  Container(
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    offset: Offset(0,2),
                    blurRadius: 6.0,
                    color: Colors.black54,
                  )]
              ),
              margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
              width: 160,
              child: ClipRRect(
                child:Image(
                  image: AssetImage(images[index]),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
    );
  }
}
