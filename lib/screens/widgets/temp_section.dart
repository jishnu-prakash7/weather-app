import 'package:flutter/material.dart';
import 'package:weather_app_bloc/bloc/weather_bloc.dart';

Row tempSection(WeatherSuccess state) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Image.asset(
            'assets/13.png',
            scale: 8,
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            children: [
              const Text(
                'Temp Max',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                '${state.weather.tempMax!.celsius!.round()}°C',
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
            'assets/14.png',
            scale: 8,
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            children: [
              const Text(
                'Temp Min',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                '${state.weather.tempMin!.celsius!.round()}°C',
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
