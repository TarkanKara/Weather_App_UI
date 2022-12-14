// ignore_for_file: depend_on_referenced_packages, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/models/weather_location.dart';
import 'package:weather_app/widgets/single_weather.dart';
import 'package:weather_app/widgets/slider_dot.dart';

//package:transformer_page_view
//PubDev
//Paket ile ilgili hata alındığında flutter run --no-sound-null-safety
import 'package:weather_app/widgets/buildin_transformer.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  int currentPage = 0;
  String? bgImg;

  void changePage(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (locationList[currentPage].weatherType == "Gece") {
      bgImg = "assets/night.jpg";
    } else if (locationList[currentPage].weatherType == "Bulutlu") {
      bgImg = "assets/cloudy.jpeg";
    } else if (locationList[currentPage].weatherType == "Günesli") {
      bgImg = "assets/sunny.jpg";
    } else if (locationList[currentPage].weatherType == "Yagmurlu") {
      bgImg = "assets/rainy.jpg";
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("WeatherApp"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              onTap: () => print("Menü Tıklandı"),
              child: SvgPicture.asset(
                "assets/menu.svg",
                height: 30,
                width: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              bgImg!,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black38,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 120, 0, 0),
              child: Row(
                children: [
                  for (int i = 0; i < locationList.length; i++)
                    if (i == currentPage)
                      SliderDot(isActive: true)
                    else
                      SliderDot(isActive: false),
                ],
              ),
            ),
            TransformerPageView(
              transformer: ScaleAndFadeTransformer(),
              viewportFraction: 0.8,
              onPageChanged: changePage,
              scrollDirection: Axis.horizontal,
              itemCount: locationList.length,
              itemBuilder: (ctx, i) => SingleWeather(index: i),
            ),
          ],
        ),
      ),
    );
  }
}
