import 'package:flutter/material.dart';
import 'package:discover_chittagong/constant.dart';
import 'package:discover_chittagong/place_details.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",style: GoogleFonts.acme(
            color: Colors.white
        ),),
        backgroundColor: Colors.redAccent,
      ),
      body: GridView.count(
        crossAxisCount: 1,
        mainAxisSpacing: 10,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceDetails(placeName: place1Name, image: image1, description: description1)));
              },
              child: Card(
                elevation: 20,
                color: Colors.grey,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.redAccent
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.beach_access,
                        size: 100,
                        color: Colors.white,),

                      SizedBox(height: 10,),

                      Text(place1Name,style: GoogleFonts.acme(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),)

                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceDetails(placeName: place2Name, image: image2, description: description2)));
              },
              child: Card(
                elevation: 20,
                color: Colors.grey,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.redAccent
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.air,
                        size: 100,
                        color: Colors.white,),

                      SizedBox(height: 10,),

                      Text(place2Name,style: GoogleFonts.acme(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),)

                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceDetails(placeName: place3Name, image: image3, description: description3)));
              },
              child: Card(
                elevation: 20,
                color: Colors.grey,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.redAccent
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.account_tree,
                        size: 100,
                        color: Colors.white,),

                      SizedBox(height: 10,),

                      Text(place3Name,style: GoogleFonts.acme(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),)

                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceDetails(placeName: place4Name, image: image4, description: description4)));
              },
              child: Card(
                elevation: 20,
                color: Colors.grey,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.redAccent
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.water,
                        size: 100,
                        color: Colors.white,),

                      SizedBox(height: 10,),

                      Text(place4Name,style: GoogleFonts.acme(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),)

                    ],
                  ),
                ),
              ),
            ),
          ),

        ],),

    );
  }
}
