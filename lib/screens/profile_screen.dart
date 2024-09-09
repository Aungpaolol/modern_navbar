import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:modern_navbar/components/profile_img.dart';
import 'package:modern_navbar/components/profile_menu.dart';
import 'package:modern_navbar/constant/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 24,
          color: iconSecondaryColor,
        ),
        title: Center(
            child: Text(
          'Profile',
          style: textTitle,
        )),
        actions: const [
          Icon(
            Icons.light_mode,
            size: 24,
            color: iconSecondaryColor,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                // Imgae Profile
                const ProfileImage(),
                //D Detail Profile
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Narongrit Adisakpaisarn',
                  style: textTitle,
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  's6507012660176@email.kmutnb.ac.th',
                  style: textSubTitle,
                ),
            
                // Button Edit
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  height: 35,
                  child: Container(
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                        child: Text(
                      'Edit Profile',
                      style: textBtn,
                    )),
                  ),
                ),
            
                // Btn Menu Profile
                const SizedBox(
                  height: 30,
                ),
                const ProfileMenu(title: 'Setting', icons: Icons.settings,),
                const SizedBox(height: 20,),
                const ProfileMenu(title: 'Billing Detail', icons: Icons.wallet,),
                const SizedBox(height: 20,),
                const ProfileMenu(title: 'User Management', icons: Icons.person,),
                const SizedBox(height: 50,),
                const ProfileMenu(title: 'Information', icons: Icons.info,),
                const SizedBox(height: 20,),
                const ProfileMenu(title: 'Logout', icons: Icons.logout,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
