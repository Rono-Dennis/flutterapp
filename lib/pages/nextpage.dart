import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/models/Details1.dart';
import 'package:flutterapp/pages/imagewidget.dart';
import 'package:flutterapp/widgets/Details.dart';
import 'package:flutterapp/widgets/cardswidget.dart';
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

    List<Details1> details =[
      Details1(image: "panggungimage.jpg", text: "Panggung Semenjak internet"),
      Details1(image: "konsa.jpg", text: "Jews review internet"),
      Details1(image: "spiritc.jpg", text: "Spiritczulic Enhancement Center"),
      Details1(image: "additional.jpg", text: "Auditionning musical theatre"),
      Details1(image: "compares.jpg", text: "Nothing Compares Resolution"),
    ];
      var width = MediaQuery.of(context).size.width;
      var height = MediaQuery.of(context).size.height;
      return SafeArea(child: Scaffold(
        backgroundColor: Color(0xffF8F6F5),
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
                SizedBox(height: 9,),
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
                          child: TextWidget(
                            text: "Lets Explore event and party",
                            color: Colors.black54,
                            size: 20,
                          )),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: CircleAvatar(
                            radius: 30,backgroundColor: Colors.white,
                            child: const Icon(Icons.doorbell_rounded, size: 30, color: Colors.black54,)),
                      ),

                    ],
                  ),
                ),
                Container(
                  child: Flexible(
                    child:
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: details.length,
                      padding: const EdgeInsets.all(12),
                      itemBuilder: (BuildContext context, int index) {

                        return RawMaterialButton(
                          child: ImageWidget(image: details[index].image, text: details[index].text,

                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsPage(
                                  image: details[index].image,
                                  text: details[index].text,
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
