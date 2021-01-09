import 'package:flutter/material.dart';

import '../detail_page.dart';
import '../models/pokemon.dart';

class HeroCard extends StatefulWidget {
  var _indexNo;

  HeroCard(this._indexNo);

  @override
  _HeroCardState createState() => _HeroCardState();
}

class _HeroCardState extends State<HeroCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, a, b) => DetailPage(widget._indexNo),
              ),
            );
          },
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: BackgroundClipper(),
              child: Hero(
                tag: 'background',
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: pokemon[widget._indexNo].colors,
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.8 * 0.1,
            ),
            child: Image.asset(
              pokemon[widget._indexNo].imagePath,
              scale: 1.5,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                pokemon[widget._indexNo].name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  letterSpacing: 2,
                ),
              ),
              Text(
                'Click for more details',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 50.0;
    var path = Path();

    path.moveTo(
      0,
      size.height * 0.33,
    );
    path.lineTo(
      0,
      size.height - roundnessFactor,
    );
    path.quadraticBezierTo(
      0,
      size.height,
      roundnessFactor,
      size.height,
    );
    path.lineTo(
      size.width - roundnessFactor,
      size.height,
    );
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width,
      size.height - roundnessFactor,
    );
    path.lineTo(
      size.width,
      roundnessFactor * 2,
    );
    path.quadraticBezierTo(
      size.width - 10,
      roundnessFactor,
      size.width - roundnessFactor * 1.48,
      roundnessFactor * 1.48,
    );
    path.lineTo(
      roundnessFactor * 0.6,
      size.height * 0.33 - roundnessFactor * 0.3,
    );
    path.quadraticBezierTo(
      0,
      size.height * 0.3,
      0,
      size.height * 0.3 + roundnessFactor,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
