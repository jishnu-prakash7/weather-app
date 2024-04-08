import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_bloc/bloc/weather_bloc.dart';

Row sunriseSection(WeatherSuccess state) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Image.asset(
            'assets/11.png',
            scale: 8,
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            children: [
              const Text(
                'Sunrise',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                DateFormat().add_jm().format(state.weather.sunrise!),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
      Row(
        children: [
          Image.asset(
            'assets/12.png',
            scale: 8,
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            children: [
              const Text(
                'Sunset',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                DateFormat().add_jm().format(state.weather.sunset!),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    ],
  );
}
