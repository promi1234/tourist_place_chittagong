import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceDetails extends StatefulWidget {

  String placeName,image,description;

  PlaceDetails({super.key,required this.placeName,required this.image,required this.description});

  @override
  State<PlaceDetails> createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  @override
  Widget build(BuildContext context) {

    var screenWidth= MediaQuery.sizeOf(context).width;
    var fontSize= screenWidth > 600 ? 30.0 : 20.0;

    return Scaffold(
      appBar: AppBar(
        title: Text("Place Details",style: GoogleFonts.acme(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.redAccent,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/${widget.image}",
                  width: MediaQuery.sizeOf(context).width, //app onujayi size dekhay
                  height: 300,
                  fit: BoxFit.fitWidth,)
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.redAccent,
                  child: Center(
                    child: Text(widget.placeName,style: GoogleFonts.acme(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ],
            ),

            //recipe description
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.description,style: GoogleFonts.acme(
                  fontSize: fontSize,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),),
            )

          ],
        ),
      ),
    );
  }
}
