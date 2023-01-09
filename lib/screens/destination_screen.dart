import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/models/destination_model.dart';

class DestinationsScreen extends StatefulWidget {
  final Destination destination;

  DestinationsScreen(this.destination);

  @override
  State<DestinationsScreen> createState() => _DestinationsScreenState();
}

class _DestinationsScreenState extends State<DestinationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 6)
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                  image: AssetImage(widget.destination.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30,
                      color: Colors.black),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.search),
                          iconSize: 30,
                          color: Colors.black),
                      IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(FontAwesomeIcons.sortAmountDown),
                          iconSize: 30,
                          color: Colors.black),
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
