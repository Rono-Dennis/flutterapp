import 'package:flutter/material.dart';
class ImageWidget extends StatefulWidget {
  final String image;
  final String text;
  const ImageWidget({Key? key, required this.image, required this.text}) : super(key: key);

  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),),
        child: Stack(
          children: [
            ClipRRect(child: Image.asset("assets/"+ widget.image,height: 400,width: 200,fit: BoxFit.cover,),borderRadius: BorderRadius.circular(15),),
            SizedBox(
              height: 400,width: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 40,
                          child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(Icons.location_on, color: Colors.white, size: 20,),
                                SizedBox(
                                  child: Text("Malang"
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Text(widget.text,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),),
                    const SizedBox(height: 8,),
                    Row(
                      children: const [
                        Text("Januari 19,2022",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white,
                          ),),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
