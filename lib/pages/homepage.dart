import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/pages/DetailsPage.dart';
import 'package:flutterapp/pages/imagewidget.dart';
import 'package:flutterapp/widgets/cardswidget.dart'; 
import 'package:flutterapp/widgets/textwidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int detailsIndex = 0;
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {

    List<Details> details =[
      Details(image: "panggungimage.jpg", text: "Panggung Semenjak internet"),
      Details(image: "konsa.jpg", text: "Jews review internet"),
      Details(image: "spiritc.jpg", text: "Spiritczulic Enhancement Center"),
      Details(image: "additional.jpg", text: "Auditionning musical theatre"),
      Details(image: "compares.jpg", text: "Nothing Compares Resolution"),
    ];
    
    List<Options> options =[
      Options(text1: "All"),
      Options(text1: "Music"),
      Options(text1: "Trading"),
      Options(text1: "Technology"),
    ];

    List<Colorwidget> colors =
    [
      Colorwidget(
          color1: const Color(0xff38AB66)),
    ];

    final items = <Widget>[
      const Icon(Icons.home_filled, size: 30),
      const Icon(Icons.pages, size: 30,),
      const Icon(Icons.arrow_drop_down_circle, size: 30,),
      const Icon(Icons.email, size: 30,),
      const Icon(Icons.account_circle_outlined, size: 30,),
    ];

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
                padding: const EdgeInsets.only(left: 25,),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(
                            bottom: 5, top: 5),
                        width: 170,
                        // height: 75,
                        child: const TextWidget(
                          text: "Lets Explore event and party",
                          color: Colors.black,
                          size: 20,
                        )),

                    Container(
                      padding: const EdgeInsets.only(left: 120,),
                      child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child:Image.asset("assets/bell.png", height: 30,)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                padding: const EdgeInsets.only(left: 25,),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(
                            bottom: 5, top: 5),
                        width: 170,
                        // height: 75,
                        child: const TextWidget(
                          text: "Upcoming Event",
                          color: Colors.black,
                          size: 20,
                        )),

                  ],
                ),
              ),


              SizedBox(
                height: 330,
                child: Flexible(
                    child:
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: details.length,
                      padding: const EdgeInsets.all(12),
                      itemBuilder: (BuildContext context, int index) {

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RawMaterialButton(
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
                          ),
                        );
                      },
                    ),
                  ),
              ),

              Flexible(child: ListView.builder(
                  shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              selectedIndex = index;
                              if(selectedIndex==null){
                                CardsWidget(text1: options[index].text1, color: const Color(0xff38AB66) );
                              }
                            });
                          },
                          child:
                          CardsWidget(text1: options[index].text1, color: selectedIndex == index? const Color(0xff38AB66): const Color(0xffE5EDF5),)),
                    );
                  }
              )),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: const [

                    Text("Popular Event", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black87),)

                    // ),
                  ],
                ),
              ),
              // const SizedBox(height: 30,child: TextWidget(size: 20, text: "Popular Event", color: Colors.black)),
              Card(
                color:const Color(0xffFFFFFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Container(
                  padding: const EdgeInsets.only( left: 1,),
                  width: 350,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      // mainAxisAlignment: MainAxisAlignment. ,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(child: Image.asset("assets/jamming.jpg",height: 70,width: 70,),borderRadius: BorderRadius.circular(15),),
                          // child: Container(
                          //     child: Image.asset("assets/jamming.jpg", height: 70,width: 70,)),
                        ),
                        // const SizedBox(height: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            const Text("Music jamming Outdoor",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                            // const SizedBox(height: 8,),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children:  [
                                const Text("Januari, 23, 2022",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black26
                                  ),
                                ),],
                            ),
                            // Expanded(child: Container()),
                            // const SizedBox(height: 16,),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("FREE",textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(0xffF8F6F5),
           items: items,
      ),
    )
    );
  }
}

class Colorwidget {
  final Color color1;
  Colorwidget({required this.color1});
}

class Options {
  final String text1;
  Options({
    required this.text1,
});}

class Details {
  final String image;
  final String text;

  Details({
    required this.image,
    required this.text,
  });
}
