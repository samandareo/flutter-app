import 'dart:ffi';

import 'package:auth_project/navBurger.dart';
import 'package:flutter/material.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Express24',
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                  icon: const FaIcon(FontAwesomeIcons.store),
                  iconSize: 30,
                  color: Colors.black87,
                  onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const navHamburger())),
              );
            },
          ),
          title: const Text('Express24',
            style: TextStyle(color: Colors.black87, fontSize: 25),
          ),
          backgroundColor: Colors.yellow,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'ShowSnackBar',
              onPressed: (){},
              color: Colors.black87,
              iconSize: 38,
            ),
          ],
        ),
        body: SingleChildScrollView(

          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: const Alignment(0,0),
                  child: DropShadow(
                    color: Colors.black87,
                    spread: 0.5,
                    offset: const Offset(0.0, 0.0),
                    opacity: 0.7,
                    blurRadius: 3.0,
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      // padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      width: 350,
                      height: 320,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.asset('assets/burger.jpg',
                                  width: 350,
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child : Image.asset('assets/icon-burger.jpg',
                                      width: 50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "FARSH BURGER",
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5 , left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Fast Food | Новинки | Burgers",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black12),
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7.0, left: 10.0),
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child:SizedBox(
                                width: 60,
                                height: 25,
                                child: Container(
                                  color: Colors.black12,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const[
                                      Icon(Icons.star_outline_rounded, size: 18,),
                                      Text("4.6"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: const Alignment(0,0),
                  child: DropShadow(
                    color: Colors.black87,
                    spread: 0.5,
                    offset: const Offset(0.0, 0.0),
                    opacity: 0.7,
                    blurRadius: 3.0,
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      // padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      width: 350,
                      height: 320,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.asset('assets/turk-kebab.jpg',
                                  width: 350,
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child : Image.asset('assets/icon-turk-kebab.jpg',
                                      width: 50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Taksim kebab",
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5 , left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Турецкая | Новинки | Pizza",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black12),
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7.0, left: 10.0),
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child:SizedBox(
                                width: 60,
                                height: 25,
                                child: Container(
                                  color: Colors.black12,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const[
                                      Icon(Icons.star_outline_rounded, size: 18,),
                                      Text("4.6"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: const Alignment(0,0),
                  child: DropShadow(
                    color: Colors.black87,
                    spread: 0.5,
                    offset: const Offset(0.0, 0.0),
                    opacity: 0.7,
                    blurRadius: 3.0,
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      // padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      width: 350,
                      height: 320,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.asset('assets/Toku.jpg',
                                  width: 350,
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child : Image.asset('assets/icon-toku.jpg',
                                      width: 50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "TOKU",
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5 , left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Европейская | Новинки | Азиатская",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black12),
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7.0, left: 10.0),
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child:SizedBox(
                                width: 60,
                                height: 25,
                                child: Container(
                                  color: Colors.black12,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const[
                                      Icon(Icons.star_outline_rounded, size: 18,),
                                      Text("4.5"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: const Alignment(0,0),
                  child: DropShadow(
                    color: Colors.black87,
                    spread: 0.5,
                    offset: const Offset(0.0, 0.0),
                    opacity: 0.7,
                    blurRadius: 3.0,
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      // padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      width: 350,
                      height: 320,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.asset('assets/key-town.jpg',
                                  width: 350,
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child : Image.asset('assets/icon-key-town.JPG',
                                      width: 50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Key Town",
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5 , left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Азиатская · Европейская",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black12),
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7.0, left: 10.0),
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child:SizedBox(
                                width: 60,
                                height: 25,
                                child: Container(
                                  color: Colors.black12,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const[
                                      Icon(Icons.star_outline_rounded, size: 18,),
                                      Text("4.6"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: const Alignment(0,0),
                  child: DropShadow(
                    color: Colors.black87,
                    spread: 0.5,
                    offset: const Offset(0.0, 0.0),
                    opacity: 0.7,
                    blurRadius: 3.0,
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      // padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      width: 350,
                      height: 320,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.asset('assets/ummami-sushi.jpg',
                                  width: 350,
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child : Image.asset('assets/icon-ummami-sushi.jpg',
                                      width: 50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Ummami Sushi - Seafood",
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5 , left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Азиатская · ПП",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black12),
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7.0, left: 10.0),
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child:SizedBox(
                                width: 60,
                                height: 25,
                                child: Container(
                                  color: Colors.black12,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const[
                                      Icon(Icons.star_outline_rounded, size: 18,),
                                      Text("4.7"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: const Alignment(0,0),
                  child: DropShadow(
                    color: Colors.black87,
                    spread: 0.5,
                    offset: const Offset(0.0, 0.0),
                    opacity: 0.7,
                    blurRadius: 3.0,
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      // padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      width: 350,
                      height: 320,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.asset('assets/wok.jpg',
                                  width: 350,
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child : Image.asset('assets/icon-wok.jpg',
                                      width: 50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "WOK",
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5 , left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Азиатская",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black12),
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7.0, left: 10.0),
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child:SizedBox(
                                width: 60,
                                height: 25,
                                child: Container(
                                  color: Colors.black12,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const[
                                      Icon(Icons.star_outline_rounded, size: 18,),
                                      Text("4.7"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: const Alignment(0,0),
                  child: DropShadow(
                    color: Colors.black87,
                    spread: 0.5,
                    offset: const Offset(0.0, 0.0),
                    opacity: 0.7,
                    blurRadius: 3.0,
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      // padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      width: 350,
                      height: 320,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.asset('assets/yapon-mama.jpg',
                                  width: 350,
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child : Image.asset('assets/icon-yapon-mama.jpg',
                                      width: 50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "YAPON MAMA",
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5 , left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Азиатская · Популярные",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black12),
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7.0, left: 10.0),
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child:SizedBox(
                                width: 60,
                                height: 25,
                                child: Container(
                                  color: Colors.black12,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const[
                                      Icon(Icons.star_outline_rounded, size: 18,),
                                      Text("4.8"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  padding: EdgeInsets.only(top: 10.0),
                  height: 100.0,
                  color: Colors.black12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("О нас", style: TextStyle(fontSize: 15, color: Colors.black54)),
                          Text("Контакты", style: TextStyle(fontSize: 15, color: Colors.black54)),
                          Text("Пользовательское соглашение", style: TextStyle(fontSize: 15, color: Colors.black54)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                          Text("Служба поддержки: +998 71 200 40 01", style: TextStyle(fontSize: 15, color: Colors.black54)),
                      ],
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              FaIcon(FontAwesomeIcons.instagram, size: 18),
                              SizedBox(width: 5.0,),
                              FaIcon(FontAwesomeIcons.facebook, size: 18),
                              SizedBox(width: 5.0,),
                              FaIcon(FontAwesomeIcons.telegram, size: 18),
                              SizedBox(width: 10.0,),
                            ],
                          ),
                          Text("Ⓒ 2023 Express24", style: TextStyle(fontSize: 15, color: Colors.black54)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}