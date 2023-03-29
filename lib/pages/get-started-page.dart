import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertemuan3_slice/pages/main-menu.dart';

class GetStartedpage extends StatelessWidget {
  const GetStartedpage({super.key});

  get textAlign => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img-started.png")))),
        Container(
          height: 444,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.0)
            ],
          )),
        ),
        SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 64,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Treat",
                        style: GoogleFonts.poppins(
                          color: const Color(0xffFFFFFF),
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                        ),
                          Text(" Patient",
                        style: GoogleFonts.poppins(
                          color: const Color(0xff308fcb),
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                        ),
                          Text(" Like A ",
                        style: GoogleFonts.poppins(
                          color: const Color(0xffFFFFFF),
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                        ),
                          Text(" Queen",
                        style: GoogleFonts.poppins(
                          color: const Color(0xff308fcb),
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                        ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Explore the best our services with\nprofessional specialist doctor",
                  style: GoogleFonts.poppins(
                    color: const Color(0xffFFFFFF),
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder:(context) => const MainMenuPage())
                      );
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 80),
                  padding: const EdgeInsets.symmetric(horizontal: 58, vertical: 14),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Text("Get Started",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      )),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
