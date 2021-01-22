import 'package:flutter/material.dart';
import './models/pokemon.dart';

class DetailPage extends StatefulWidget {
  var _indexNo;

  DetailPage(this._indexNo);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'background-${pokemon[widget._indexNo].name}',
        child: Material(
          type: MaterialType.transparency,
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                top: 32,
                left: 32,
                right: 32,
                bottom: 8,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: pokemon[widget._indexNo].colors,
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.close,
                      size: 32,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Center(
                    child: Image.asset(
                      pokemon[widget._indexNo].imagePath,
                      scale: pokemon[widget._indexNo].scale,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 42,
                    width: 240,
                    child: Text(
                      pokemon[widget._indexNo].name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 240,
                    child: Text(
                      pokemon[widget._indexNo].votes,
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 380,
                    child: Text(
                      pokemon[widget._indexNo].description,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        // letterSpacing: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
