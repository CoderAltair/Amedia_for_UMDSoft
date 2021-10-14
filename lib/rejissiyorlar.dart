import 'package:amedia_ui/Modullar.dart';
import 'package:flutter/material.dart';
class rejissiyor extends StatelessWidget {
  @override
  final List<String>imagess;
  rejissiyor({this.imagess,});
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length-6,
          itemBuilder: (BuildContext context,int index){
            return Container(
              width: 120,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(
            offset: Offset(0,2),
            blurRadius: 6.0,
            color: Colors.black54,
            )]
            ),
            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            child: ClipRRect(
            child:
                Image(
                  image: AssetImage(imagess[index]),
                  fit: BoxFit.cover,
                ),
            ),
            );
          }),
    );
  }
}
