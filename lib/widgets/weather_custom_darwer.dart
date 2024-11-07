import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/constants/app_images.dart';
import 'package:weather_app/constants/app_style.dart';
import 'package:weather_app/constants/constants.dart';

class WeatherCustomDrawer extends StatefulWidget {
  const WeatherCustomDrawer({super.key});

  @override
  State<WeatherCustomDrawer> createState() => _WeatherCustomDrawerState();
}

class _WeatherCustomDrawerState extends State<WeatherCustomDrawer> {
  int selectedItem = -1;

  void selectDrawerItem(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: colorForecastBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Image.asset(
            Assets.imagesLogoNoBackground,
            height: 50,
            width: 50,
          ),
          const SizedBox(height: 60),
          _weatherDrawerItem(
            onTap: () => selectDrawerItem(0),
            name: 'Weather',
            icon: FontAwesomeIcons.cloudSunRain,
            isSelected: selectedItem == 0,
          ),
          const SizedBox(height: 30),
          _weatherDrawerItem(
            onTap: () => selectDrawerItem(1),
            name: 'Cities',
            icon: FontAwesomeIcons.city,
            isSelected: selectedItem == 1,
          ),
          const SizedBox(height: 30),
          _weatherDrawerItem(
            onTap: () => selectDrawerItem(2),
            name: 'Settings',
            icon: Icons.tune,
            isSelected: selectedItem == 2,
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _weatherDrawerItem({
    //required int index,
    required String name,
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return AnimatedScale(
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 200),
      scale: isSelected ? 1.1 : 1.0,
      child: GestureDetector(
        onTap: onTap,
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Icon(
              icon,
              size: 16,
              color: isSelected ? Colors.white : Colors.white.withOpacity(0.7),
            ),
          ),
          subtitle: Text(
            name,
            textAlign: TextAlign.center,
            style: isSelected
                ? AppStyle.styleRegular14
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold)
                : AppStyle.styleRegular14
                    .copyWith(color: Colors.white.withOpacity(0.7)),
          ),
        ),
      ),
    );
  }
}
