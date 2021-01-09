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
    return SafeArea(
      child: Scaffold(
        body: Hero(
          tag: 'background',
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(32),
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
                    scale: 1.25,
                  ),
                ),
                Container(
                  height: 60,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
