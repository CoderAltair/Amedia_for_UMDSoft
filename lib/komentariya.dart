import 'package:amedia_ui/modul%20akkaunt.dart';
import 'package:flutter/material.dart';
class Comments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollControllertwo = ScrollController();    return
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0)
          ),
          height:500,
          child: Scrollbar(
            hoverThickness: 10.0,
            isAlwaysShown:  true,
            child: ListView.builder(
                controller: _scrollControllertwo,
                itemCount: akkaunt.length,
                itemBuilder:(BuildContext context,int index){
                  return Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF252831)
                      ),
                      child:Column(
                        children: <Widget>[
                          ListTile(
                            leading: Container(
                              height: 63.0,
                              width: 76.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                      image:AssetImage('${akkaunt[index].imgUrl}'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            title:Text('${akkaunt[0 ].titlesi}',
                              style:TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),) ,
                            subtitle: Text('${akkaunt[index].time}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.0,
                                  color: Color(0xFFD2D2D2)
                              ),),
                            isThreeLine: true,
                          ),
                          Text('${akkaunt[index].comment}',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Color(0xFFD2D2D2)
                            ),)
                        ],
                      )
                  );
                }),
          ),
        );
  }
  }

