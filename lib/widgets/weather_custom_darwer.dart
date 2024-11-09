import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/constants/app_images.dart';
import 'package:weather_app/constants/app_style.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/cubit/weather_cubit/weather_cubit.dart';

class WeatherCustomDrawer extends StatelessWidget {
  const WeatherCustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherStates>(
      builder: (context, state) {
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
                onTap: () => WeatherCubit.get(context).changePage(0),
                name: 'Weather',
                icon: FontAwesomeIcons.cloudSunRain,
                isSelected: WeatherCubit.get(context).currentPage == 0,
              ),
              const SizedBox(height: 30),
              _weatherDrawerItem(
                onTap: () => WeatherCubit.get(context).changePage(1),
                name: 'Cities',
                icon: FontAwesomeIcons.city,
                isSelected: WeatherCubit.get(context).currentPage == 1,
              ),
              const SizedBox(height: 30),
              _weatherDrawerItem(
                onTap: () => WeatherCubit.get(context).changePage(2),
                name: 'Settings',
                icon: Icons.tune,
                isSelected: WeatherCubit.get(context).currentPage == 2,
              ),
              const SizedBox(height: 30),
            ],
          ),
        );
      },
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
