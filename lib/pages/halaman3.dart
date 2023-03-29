import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pertemuan3_slice/pages/cukur-page.dart';
import 'package:pertemuan3_slice/pages/get-started-page.dart';

class Halaman3 extends StatelessWidget {
  const Halaman3({super.key});

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
                    image: AssetImage("assets/img-dnk.png"))
                    )
                    ),
                     const Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder:(context) => const GetStartedpage())
                      );
                },
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 200),
                    padding: const EdgeInsets.symmetric(horizontal: 54, vertical: 14),
                    decoration: BoxDecoration(
                      color: const Color(0xff3addd7),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Text("Doctor",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ))
                  )
                ),
                ),
                  const Spacer(),
                   GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder:(context) => const Cukurpage())
                      );
                },
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 400),
                    padding: const EdgeInsets.symmetric(horizontal: 54, vertical: 14),
                    decoration: BoxDecoration(
                      color: const Color(0xff3addd7),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Text("Barber",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ))
                  )
                ),
                
                
                ),
    ],),
    );
    
  }
}