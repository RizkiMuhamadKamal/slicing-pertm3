import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorcard(String img, String name, String role,) {
      return Container(
          padding: const EdgeInsets.all(10),
          margin: EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: const Color(0xffFFFFFF)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          img,
                          //"assets/img-doc1.png",

                        ))),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
              Text(name,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  ),
              Text(role,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  )),
                      ]
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/ic-star.png",
                                  )),
                                  ),
                                  ),
                                          Text(
                                            "4,8",
                    style: GoogleFonts.poppins(
                      color: const Color(0xff308cfb),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    )),
                    ],
                  ),
                ],
              ),
            ],
                ),
          ),
            ],
          ),
              );
          
    }

    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,\nalvitoadty",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: const Color(0xff0D2841),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text("Stay Healthy with Our Spesialis Doctor",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: const Color(0xff9698A9),
                            )),
                        const SizedBox(
                          height: 6,
                        ),
                      ],
                    ),
                    Container(
                        width: 76,
                        height: 76,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/img-profile.png",
                                )))),
                  ],
                ),
                doctorcard("assets/img-doc1.png","Dr.Mawar n","Spesialis Penyakit Dalam"),
                doctorcard("assets/img-doc2.png","Dr.Zizah Ayuningsih","spesialis kulit kelamin")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
