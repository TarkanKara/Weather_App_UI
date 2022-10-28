// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class WeatherLocation {
  final String city;
  final String dateTime;
  final String temparature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
    required this.city,
    required this.dateTime,
    required this.temparature,
    required this.weatherType,
    required this.iconUrl,
    required this.wind,
    required this.rain,
    required this.humidity,
  });
}

final locationList = [
  WeatherLocation(
    city: 'Istanbul',
    dateTime: '23:05 — Cuma, 28 Ekim 2022',
    temparature: '24\u2103',
    weatherType: 'Gece',
    iconUrl: 'assets/moon.svg',
    wind: 10,
    rain: 2,
    humidity: 10,
  ),
  WeatherLocation(
    city: 'Ankara',
    dateTime: '23:05 — Cuma, 28 Ekim 2022',
    temparature: '15\u2103',
    weatherType: 'Bulutlu',
    iconUrl: 'assets/cloudy.svg',
    wind: 8,
    rain: 7,
    humidity: 82,
  ),
  WeatherLocation(
    city: 'Izmir',
    dateTime: '23:05 — Cuma, 28 Ekim 2022',
    temparature: '17\u2103',
    weatherType: 'Günesli',
    iconUrl: 'assets/sun.svg',
    wind: 5,
    rain: 15,
    humidity: 61,
  ),
  WeatherLocation(
    city: 'Mus',
    dateTime: '23:05 — Cuma, 28 Ekim 2022',
    temparature: '10\u2103',
    weatherType: 'Yagmurlu',
    iconUrl: 'assets/rain.svg',
    wind: 20,
    rain: 70,
    humidity: 91,
  ),
];