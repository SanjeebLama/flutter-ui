import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xFFFD4F99)),
                child: Center(
                  child: Icon(Icons.filter_list, color: Colors.white),
                ),
              ),
              Text(
                'HOME',
                style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    textStyle: TextStyle(color: Colors.white)),
              ),
              // Inreal case scenerio, this shouldnot be container
              //should be wrapped with inkwell
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xFF353535)),
                child: Center(
                  child: Icon(Icons.bookmark_border, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: MediaQuery.of(context).size.height - 150,
          child: ListView(
            children: <Widget>[
              _buildListItem('images/japan.jpg', "Japan",
                  "Description about Japan home country of One Piece"),
            ],
          ),
        )
      ],
    );
  }

  _buildListItem(String imgPath, String country, String description) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 300.0,
          ),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.darken))),
          ),
          //left at 18.15
        ],
      ),
    );
  }
}
