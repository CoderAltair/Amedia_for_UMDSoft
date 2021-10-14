import 'package:amedia_ui/Modullar.dart';
import 'package:amedia_ui/videoplayer.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
class Yangiliklar extends StatefulWidget {
  @override
  _YangiliklarState createState() => _YangiliklarState();
}
class _YangiliklarState extends State<Yangiliklar> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Container(
        height: 250,
        child: ListView.builder(
             scrollDirection: Axis.horizontal,
            itemCount:movies.length,
            itemBuilder: (BuildContext context,int index){
              return  GestureDetector(
                onTap: ()=>Navigator.push(context,
                    MaterialPageRoute(builder: (_)=>VideoPlayer(
                      ongoing: movies[index=index],
                    ))),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('${movies[index].imgUrl}'),
                      fit: BoxFit.cover
                    ),
                      boxShadow: [BoxShadow(
                        offset: Offset(0,2),
                        blurRadius: 6.0,
                        color: Colors.black54,
                      )]
                  ),
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                  width: 150.0,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0,bottom: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 45.0,
                          width: 10.0,
                          decoration: BoxDecoration(
                              color: Colors.orange
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Container(
                          width:110 ,
                          child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                AutoSizeText('${movies[index].title}',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600
                                  ),),
                                Text('${movies[index].seriya}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w600
                                  ),),
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
