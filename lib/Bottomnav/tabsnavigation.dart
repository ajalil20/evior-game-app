import 'package:eivor/Home/home.dart';
import 'package:eivor/Intro/getstarted.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    required this.page,
    required this.title,
    required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: Home(),
          icon: Icon(Icons.home, color: Color(0xff4d3a58)),
          title: Text(
            "Home",
            style: GoogleFonts.poppins(
              color: Color(0xff4d3a58),
            ),
          ),
        ),
        TabNavigationItem(
          page: GetStarted(),
          icon: Icon(Icons.people, color: Color(0xff4d3a58)),
          title: Text(
            "Users",
            style: GoogleFonts.poppins(
              color: Color(0xff4d3a58),
            ),
          ),
        ),
        TabNavigationItem(
          page: GetStarted(), //ManageWifi(),
          icon: Icon(Icons.calendar_today, color: Color(0xff4d3a58)),
          title: Text(
            "Calendar",
            style: GoogleFonts.poppins(
              color: Color(0xff4d3a58),
            ),
          ),
        ),
        TabNavigationItem(
          page: GetStarted(),
          icon: Icon(Icons.person, color: Color(0xff4d3a58)),
          title: Text(
            "Get Started",
            style: GoogleFonts.poppins(
              color: Color(0xff4d3a58),
            ),
          ),
        ),
      ];
}
