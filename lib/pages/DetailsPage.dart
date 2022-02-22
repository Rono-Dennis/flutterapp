import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/helper/DatesDetails.dart';
import 'package:flutterapp/helper/OptionDetails.dart';
import 'package:flutterapp/pages/homepage.dart';
import 'package:flutterapp/widgets/buttonwidget.dart';
import 'package:flutterapp/widgets/textwidget.dart';

class DetailsPage extends StatefulWidget {
  final String image;
  final String text;
  final int index;

  DetailsPage(
      {required this.image,
      required this.text,
      required this.index});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF8F6F5),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text("Order Detail",style: TextStyle(color: Colors.black87),),
            // elevation: 0,
            leading:
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.grey),
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const HomePage())),
            ),

          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(child: Image.asset("assets/"+ widget.image,height: 180,width: 350,fit: BoxFit.cover,),borderRadius: BorderRadius.circular(15),),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20,top: 15),
                    width: 200,
                    child: TextWidget(
                      text: widget.text,
                      color: Colors.black,
                      size: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child:Image.asset("assets/wildan.jpg",height: 40,), ),
                      ),
                      const Text("Wildan Wari", style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700),)

                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 130,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: const Color(0xffBFBFBF))
                    ),
                    // width: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Follow",style: TextStyle(fontSize:16 ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [

                    Text("Select Ticket Type", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black87),)

                    // ),
                  ],
                ),
              ),

             const SizedBox(height: 10,),

              SizedBox(
                height:140,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: OptionDetails.options.length,
                    itemBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(color: const Color(0xffCCCCCC))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(OptionDetails.options[index].text1,
                                      style: const TextStyle(fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xff919191)),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(OptionDetails.options[index].text2,
                                      style: const TextStyle(fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff454545)),),
                                  ],
                                ),
                                Card(
                                  margin: const EdgeInsets.only(left: 7),
                                  color: const Color(0xffE6EEF6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const CircleAvatar(radius: 15,
                                            backgroundColor: Colors.white,
                                            child:Icon(Icons.remove) ),
                                        Text(OptionDetails.options[index].text3,style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black
                                        ),),
                                        const CircleAvatar(radius: 15,
                                            backgroundColor: Color(0xff0152A8),
                                            child:Icon(Icons.add) ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      );
                    }
                ),
              ),

              const SizedBox(height: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [

                  Text("Select Date", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),)

                  // ),
                ],
              ),
              const SizedBox(height: 8,),

              SizedBox(
                height:70,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: OptionDetails.options.length,
                    itemBuilder: (BuildContext context, int index){
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RawMaterialButton(onPressed: (){
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                            child: Container(
                              width: 130,
                              height: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: selectedIndex==index?const Color(0xffE6EEF6): Colors.white,
                                  border: Border.all(color: selectedIndex == index?const Color(0xff0253A8):const Color(0xffCCCCCC))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(DateDetails.dates[index].date,
                                          style: TextStyle(fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: selectedIndex ==index? const Color(0xff0253A8):const Color(0xff919191)),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                      );
                    }
                ),
              ),
             const SizedBox(height: 18,),
              const ButtonWidget(text: "checkout"),
            ],
              ),
          ),
        ),
      ),
    );
  }
}

