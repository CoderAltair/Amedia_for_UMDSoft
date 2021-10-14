import 'dart:ui';
import 'package:amedia_ui/komentariya.dart';
import 'package:amedia_ui/modul%20akkaunt.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class Akkaunt extends StatefulWidget {
  @override
  _AkkauntState createState() => _AkkauntState();
}
class _AkkauntState extends State<Akkaunt> {
  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollControllerone = ScrollController();
    tariflar(int oy,String vaqti,int narx){
      return Padding(
        padding: EdgeInsets.only(bottom: 15.0),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF252831)
          ),
          width: double.infinity,
          height: 71.0,
          child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('${oy} ${vaqti}',
                      style:TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),),
                    Text('${narx} s o`m',
                      style:TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFC1C1C1)
                      ),),
                  ],
                ),
              ),
              Container(
                height: 29.0,
                width: 111,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(4.0)
                ),
                child: Center(
                  child: Text('Obuna bo`lish',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                  ),
                ),
              ),
            ],
          )
        ),
      );
    }

    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
        color: Color(0xFF020201)
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: ListView(
            children: <Widget>[
              Stack(
                children: [
                  Column(
                    children: <Widget>[
                      Stack(
                          children:[Container(
                            width: double.infinity,
                            height: 105,
                            decoration: BoxDecoration(
                                color: Color(0xFF252831)
                            ),
                            child: Center(
                                child:ListTile(
                                  leading: Container(
                                    height: 63.0,
                                    width: 76.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        image: DecorationImage(
                                            image:AssetImage('${akkaunt[0].imgUrl}'),
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
                                  subtitle: Text('ID : ${akkaunt[0].id}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.0,
                                        color: Color(0xFFD2D2D2)
                                    ),),
                                )
                            ),
                          ),
                            Positioned(
                              top:10,
                              left: 245,
                              child: Container(
                                  height: 34.0,
                                  width: 34.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF181818),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.edit_outlined,size: 22.0,color: Colors.white,
                                      ),
                                      onPressed: ()=>
                                          showDialog(context: context, builder: (context)=>
                                              Dialog(
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0XFF252831),
                                                    ),
                                                    child:Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: EdgeInsets.only(left: 15.0,top: 15.0,bottom: 30.0),
                                                          child: Text('Tahrirlash',
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 18.0,
                                                                fontWeight: FontWeight.w500
                                                            ),),
                                                        ),
                                                        TextField(
                                                          keyboardType: TextInputType.name,
                                                          decoration: InputDecoration(
                                                              prefixIcon:Icon(Icons.person,color: Colors.orange,),
                                                              hintText: 'Ism',
                                                              hintStyle:TextStyle(
                                                                  color: Color(0xFF4B4F59),
                                                                  fontWeight: FontWeight.w400,
                                                                  fontSize: 16.0
                                                              )
                                                          ),
                                                        ),
                                                        TextField(
                                                          keyboardType: TextInputType.name,
                                                          decoration: InputDecoration(
                                                              prefixIcon:Icon(Icons.person,color: Colors.orange,),
                                                              hintText: 'Familiya (Ixtiyoriy)',
                                                              hintStyle:TextStyle(
                                                                  color: Color(0xFF4B4F59),
                                                                  fontWeight: FontWeight.w400,
                                                                  fontSize: 16.0
                                                              )
                                                          ),
                                                        ),
                                                        TextField(
                                                          obscureText: true,
                                                          keyboardType: TextInputType.name,
                                                          decoration: InputDecoration(
                                                              prefixIcon:Icon(Icons.person,color: Colors.orange,),
                                                              hintText: 'Parol',
                                                              hintStyle:TextStyle(
                                                                  color: Color(0xFF4B4F59),
                                                                  fontWeight: FontWeight.w400,
                                                                  fontSize: 16.0
                                                              )
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              )
                                          ),
                                    ),
                                  )
                              ),
                            ),
                          ]
                      ),

                      SizedBox(height: 43,),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF252831)
                        ),
                        width: double.infinity,
                        height: 71.0,
                        child: Center(
                            child: Text('Balansn : ${akkaunt[0].balans} so`m',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.0
                              ),)),),
                      SizedBox(height: 28.0,),
                      GestureDetector(
                        onTap: ()=>print('Balansni to`ldirish'),
                        child: Container(
                          width: 159,
                          height: 38.0,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Center(child: Text('Balansni to`ldirish',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0
                            ),
                          )),
                        ),
                      ),
                      SizedBox(height: 40.0,),
                      Padding(
                        padding: EdgeInsets.only(left: 31.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Tariflar',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0
                            ),),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      tariflar(1, 'oylik', 10900),
                      tariflar(3, 'oylik', 29900),
                      tariflar(6, 'oylik', 56000),
                      tariflar(1, 'yillik',102000),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: Center(
                          child: Text('So`ngi izohlar',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),),
                        ),
                      ),
                      Comments(),
                    ],
                  ),
                  Positioned(
                    top:81,
                    left: 220,
                    child: GestureDetector(
                      onTap: ()=>print('get photo'),
                      child: Container(
                        height: 44.0,
                        width: 44.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                        child: Icon(Icons.add_a_photo,size: 22.0,),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



