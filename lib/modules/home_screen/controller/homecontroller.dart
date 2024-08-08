// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webappdemo/modules/home_screen/view/disposables.dart';
import 'package:webappdemo/modules/home_screen/view/eliquid_view.dart';
import 'package:webappdemo/modules/home_screen/view/pod_systems.dart';
import 'package:webappdemo/modules/home_screen/view/starter_kids.dart';
import 'package:webappdemo/utils/image.dart';

class HomeController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int current = 0;
  final CarouselController carouselController = CarouselController();
  final List<String> imageList = [
    'assets/icon/slider1.webp',
    'assets/icon/slider2.webp',
    'assets/icon/slider3.webp',
    'assets/icon/slider4.webp',
    'assets/icon/slider5.webp',
    'assets/icon/slider6.webp',
  ];
  List<PopupMenuEntry<String>> popupMenuItems(BuildContext context) {
    return [
      PopupMenuItem<String>(
        value: 'HOME',
        child: Text('HOME'),
        onTap: () {
          Get.back();
        },
      ),
      PopupMenuItem<String>(
        value: 'ELIQUID',
        child: Text('ELIQUID'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return EliquidView();
            },
          ));
        },
      ),
      PopupMenuItem<String>(
        value: 'DISPOSABLES',
        child: Text('DISPOSABLES'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return DisposablesView();
            },
          ));
        },
      ),
      PopupMenuItem<String>(
        value: 'POD SYSTEMS',
        child: Text('POD SYSTEMS'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return PodSystemView();
            },
          ));
        },
      ),
      PopupMenuItem<String>(
        value: 'STARTER KITS',
        child: Text('STARTER KITS'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return StarterKidsView();
            },
          ));
        },
      ),
      PopupMenuItem<String>(
        value: 'TANKS',
        child: Text('TANKS'),
        onTap: () {},
      ),
      PopupMenuItem<String>(
        value: 'ACCESSORIES',
        child: Text('ACCESSORIES'),
        onTap: () {},
      ),
      PopupMenuItem<String>(
        value: 'VGOD',
        child: Text('VGOD'),
        onTap: () {},
      ),
    ];
  }

  List<ProductData> allData = [
    ProductData(
        image: AppAsset.greekBarPluse,
        title: 'Geek Bar Pulse X 25000 Puff Disposable Vape',
        price: "26.95",
        discount: '37.95',
        tagPrice: '11.00'),
    ProductData(
        image: AppAsset.craftBox,
        title: 'CraftBox V-Play 20K Puffs Disposable Vape',
        price: "24.95",
        discount: '37.95',
        tagPrice: '11.00'),
    ProductData(
        image: AppAsset.vgodSalt,
        title: 'VGOD Salt Nic Labs Iced Mix Blue Razz',
        price: "14.95",
        discount: '22.95',
        tagPrice: '8.00'),
    ProductData(
        image: AppAsset.vgodSaltWatermelon,
        title: 'VGOD Salt Nic Labs Iced Mix Bubble Watermelon',
        price: "14.95",
        discount: '22.95',
        tagPrice: '8.00'),
    ProductData(
        image: AppAsset.vgodSaltPeachMango,
        title: 'VGOD Salt Nic Labs Iced Mix Peach Mango',
        price: "14.95",
        discount: '22.95',
        tagPrice: '8.00'),
    ProductData(
        image: AppAsset.FLUMPebble,
        title: 'FLUM PEBBLE 6000 Puff Disposable Vape',
        price: "15.95",
        discount: '22.95',
        tagPrice: '14.00',
        review: 20.0),
    ProductData(
        image: AppAsset.lostMary,
        title: 'LOST MARY MT15000 TURBO DISPOSABLE VAPE',
        price: "21.95",
        discount: '34.95',
        tagPrice: '13.00'),
    ProductData(
        image: AppAsset.vaporesso,
        title: 'Vaporesso XROS 4 Mini Pod Kit',
        price: "26.00",
        discount: '29.95',
        tagPrice: '3.95'),
    ProductData(
        image: AppAsset.vaporesso_xros,
        title: 'Vaporesso XROS 4 Pod Kit',
        price: "36.00",
        discount: '39.95',
        tagPrice: '3.95'),
    ProductData(
        image: AppAsset.greekBarPluse,
        title: 'Geek Bar Pulse 15000 Puff Disposable Vape',
        price: "21.95",
        discount: '39.95',
        tagPrice: '11.00',
        review: 17.0),
    ProductData(
        image: AppAsset.vapeGangMega,
        title: 'Vape Gang MEGA 20,000 Puffs Disposable Vape',
        price: "22.95",
        discount: '34.95',
        tagPrice: '12.00',
        review: 3.0),
    ProductData(
        image: AppAsset.spaceman,
        title: 'SPACEMAN PRISM 20,000 PUFFS DISPOSABLE VAPE',
        price: "22.95",
        discount: '34.95',
        tagPrice: '12.00',
        review: 8.0),
    ProductData(
        image: AppAsset.shisha,
        title: 'MY SHISHA 3MG FREEBASE 10,000 PUFFS DISPOSABLE VAPE',
        price: "19.95",
        discount: '26.95',
        tagPrice: '7.00',
        review: 4.0),
    ProductData(
        image: AppAsset.puffBrandsHotbox,
        title: 'The Puff Brands Hotbox LUXE 12000 Puff Disposable',
        price: "18.95",
        discount: '29.95',
        tagPrice: '11.00'),
    ProductData(
        image: AppAsset.lostMary,
        title: 'Lost Mary OS5000 Puff Disposable Device',
        price: "14.95",
        discount: '24.95',
        tagPrice: '10.00',
        review: 6.0),
    ProductData(
        image: AppAsset.luffbar,
        title: 'Luffbar TT9000 Puff Disposable',
        price: "22.00",
        discount: '32.95',
        tagPrice: '10.95',
        review: 1.0),
    ProductData(
        image: AppAsset.yogiBar,
        title: 'Yogi Bar 8000 Puff Disposable Device',
        price: "18.95",
        discount: '29.95',
        tagPrice: '11.00',
        review: 1.0),
    ProductData(
        image: AppAsset.dazeOhmlet,
        title: '7 DAZE OHMLET 7000 PUFF DISPOSABLE VAPE',
        price: "14.95",
        discount: '24.95',
        tagPrice: '10.00',
        review: 2.0),
    ProductData(
        image: AppAsset.geekVapeBoost,
        title: 'Geek Vape B100 Boost Pro 2 Kit',
        price: "42.00",
        discount: '54.95',
        tagPrice: '12.95',
        review: 1.0),
    ProductData(
        image: AppAsset.horizonSakerzMaster,
        title: 'Horizon SAKERZ Master Tank',
        price: "32.00",
        discount: '39.95',
        tagPrice: '7.95'),
  ];
}

class ProductData {
  String? image;
  String? title;
  String? price;
  String? discount;
  String? tagPrice;
  double? review;
  bool? isShowReview = false;

  ProductData(
      {this.image,
      this.title,
      this.price,
      this.discount,
      this.tagPrice,
      this.review,
      this.isShowReview});
}
