import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:helloworld/service/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _offerImage = [
    'images/People.jpg',
    'images/peopleTech.jpg',
    'images/peopleentertainment.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    return Scaffold(
      body: SizedBox(
        height: size.height * 0.33,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              _offerImage[index],
              fit: BoxFit.fill,
            );
          },
          itemCount: _offerImage.length,
          pagination: const SwiperPagination(
              alignment: Alignment.bottomCenter,
              builder: const DotSwiperPaginationBuilder(
                  color: Colors.white, activeColor: Color(0xffB7DFF5))),
          autoplay: true,
        ),
      ),
    );
  }
}
