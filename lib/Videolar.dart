import 'package:amedia_ui/Modullar.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
class VideoScree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30.0,bottom: 15.0,top: 10.0),
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
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(
            width: double.infinity,
            height: 250.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage(movies[0].imgUrl),
                    fit:BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [BoxShadow(
                  offset: Offset(0,2),
                  blurRadius: 6.0,
                  color: Colors.black54,
                )]
            ),
            child: IconButton(
                iconSize: 100.0,
                color: Colors.orange,
                icon: Icon(Icons.play_circle_fill_outlined),
                onPressed:()=>print('play')),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0,bottom: 15.0),
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
                          image:AssetImage(movies[0].imgUrl),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    title: Text('${movies[0].title}',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400
                    ),),

                    subtitle: Text('${movies[0].seriya}',
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
                    padding: EdgeInsets.all(10.0),
                    child: Text('Film haqida',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400
                      ),)),
                AutoSizeText(movies[0].description,
                  style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.w400
                  ),
                  overflow: TextOverflow.ellipsis,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
