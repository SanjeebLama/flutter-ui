import 'package:flutter/material.dart';

class SocialMediaIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Media Icons"),
      ),
      body: IconCollection(),
    );
  }
}

class IconCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, bottom: 35.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "     Connect with us:",
              style: TextStyle(
                fontFamily: "OpenSans",
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Row(
                children: [
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 8.0,
                    splashColor: Colors.blue,
                    fillColor: Color(0xFF1877f2),
                    child: Image(
                      image: AssetImage(
                        'assets/images/facebook_new.png',
                      ),
                      height: 24.0,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 8.0,
                    splashColor: Colors.deepOrangeAccent,
                    fillColor: Colors.white70,
                    child: Image(
                      image: AssetImage(
                        'assets/images/instagram.png',
                      ),
                      height: 24.0,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 8.0,
                    splashColor: Colors.red,
                    fillColor: Colors.white70,
                    child: Image(
                      image: AssetImage(
                        'assets/images/youtube.png',
                      ),
                      height: 24.0,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
