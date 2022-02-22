import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/helper/Details1Details.dart';
import 'package:flutterapp/pages/imagewidget.dart';
import 'package:flutterapp/widgets/textwidget.dart';

import 'DetailsPage.dart';
class BarItemPage extends StatefulWidget {
  const BarItemPage({Key? key}) : super(key: key);

  @override
  _BarItemPageState createState() => _BarItemPageState();
}

class _BarItemPageState extends State<BarItemPage> {
  int detailsIndex = 0;
  @override
    Widget build(BuildContext context) {


      var width = MediaQuery.of(context).size.width;
      var height = MediaQuery.of(context).size.height;
      return SafeArea(child: Scaffold(
        backgroundColor: const Color(0xffF8F6F5),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,

          ),
        ),
        body: Stack(
          // alignment: Alignment.bottomCenter,
          overflow: Overflow.visible,
          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(height: 9,),
                Container(
                  padding: const EdgeInsets.only(top: 25,),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment. spaceEvenly,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              bottom: 15, top: 11),
                          width: 170,
                          height: 75,
                          child: const TextWidget(
                            text: "Lets Explore event and party",
                            color: Colors.black54,
                            size: 20,
                          )),
                      const Positioned(
                        right: 0,
                        top: 0,
                        child: CircleAvatar(
                            radius: 30,backgroundColor: Colors.white,
                            child: Icon(Icons.doorbell_rounded, size: 30, color: Colors.black54,)),
                      ),

                    ],
                  ),
                ),
                Container(
                  child: Flexible(
                    child:
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Details1Details.details.length,
                      padding: const EdgeInsets.all(12),
                      itemBuilder: (BuildContext context, int index) {

                        return RawMaterialButton(
                          child: ImageWidget(image: Details1Details.details[index].image, text: Details1Details.details[index].text,

                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsPage(
                                  image: Details1Details.details[index].image,
                                  text: Details1Details.details[index].text,
                                  index: index,
                                ),
                              ),
                            );
                          },
                        );


                      },

                    ),
                  ),
                )
              ],
            )

          ],
        ),
      ));

    }
  }
