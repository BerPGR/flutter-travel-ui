import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/widgets/destination_carousel.dart';
import 'package:travel_ui/widgets/hotel_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.biking
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
          print(_selectedIndex);
        },
        child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: _selectedIndex == index
                    ? Theme.of(context).accentColor
                    : Color(0xFFE7EBEE),
                borderRadius: BorderRadius.circular(30)),
            child: Icon(
              _icons[index],
              size: 25,
              color: _selectedIndex == index
                  ? Theme.of(context).primaryColor
                  : Color(0xFFB4C1C4),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
              ListView(padding: EdgeInsets.symmetric(vertical: 30), children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 120),
          child: Text(
            'What would you like to find?',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _icons
              .asMap()
              .entries
              .map((MapEntry map) => _buildIcon(map.key))
              .toList(),
        ),
        SizedBox(height: 20),
        DestinationCarousel(),
        SizedBox(height: 20),
        HotelCarousel(),
      ])),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_pizza,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),
              ),
              label: ''),
        ],
      ),
    );
  }
}
