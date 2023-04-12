import 'dart:html';

import 'package:flutter/material.dart';

class halaman extends StatefulWidget {
  const halaman({super.key});

  @override
  State<halaman> createState() => _HalamanState();
}

class _HalamanState extends State<halaman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Hero(
            tag:
                'imageHero',
            child: Container(
              width: double.infinity, // membuat container memiliki lebar penuh
              height: 300, // tinggi container
              child: Image.asset(
                'img/wp.jpg', // ganti dengan path dan nama file gambar Anda
                fit: BoxFit.cover, // mengatur gambar agar terisi penuh di dalam container
              ),
            ),
          ),
          
          Container(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              alignment: Alignment.topLeft,
              height: 100.0,
              child: Column(
                children: const [
                  Text(
                    "Warkop Merdeka",
                    style:
                        TextStyle(fontSize: 28.0),
                  ),
                  Text(
                    "Jalan Merdeka No 01B Kecamatan Sukmajaya Kota Depok",
                    style: TextStyle(fontSize: 10.0),
                  ),
                ],
              )),
              Container(
                width: 200.0,
                child: Row(
                  children: [
                    Column(
                    
                    )
                  ],
                ),
              )
        ],
      )
          ),
    );
  }
}
