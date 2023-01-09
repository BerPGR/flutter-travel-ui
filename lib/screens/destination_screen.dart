import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_ui/models/destination_model.dart';

class DestinationsScreen extends StatefulWidget {
  final Destination destinations;

  DestinationsScreen(this.destinations);

  @override
  State<DestinationsScreen> createState() => _DestinationsScreenState();
}

class _DestinationsScreenState extends State<DestinationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
