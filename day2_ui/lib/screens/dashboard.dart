import './detailsPage.dart';
import 'package:flutter/material.dart';

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
        _header(),
        SizedBox(height: 10.0),
        Container(
          //modify the size 150 by around 140 or 145 to get the best view
          height: MediaQuery.of(context).size.height - 150,
          child: ListView(
            children: <Widget>[
              _buildListItem(
                  'images/japan.jpg', "Japan", "Home country of One Piece"),
              _buildListItem(
                  'images/canada.jpg', "Canada", "Nicest People on Earth"),
            ],
          ),
        )
      ],
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
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
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
          // Inreal case scenerio, this shouldnot be container
          //should be wrapped with inkwell INKWELL
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
          Container(
            height: 300.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    country,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              DetailsPage(imgPath: imgPath, title: country)));
                    },
                    child: Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          "Explore Now",
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFD4F99)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
