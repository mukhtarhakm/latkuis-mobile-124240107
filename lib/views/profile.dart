import 'package:flutter/material.dart';
import 'package:latkuis/models/data.dart';
import 'package:latkuis/views/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xFFE9DCF8),
            child: Icon(
              Icons.person,
              size: 55,
            ),
          ),

//           CircleAvatar(
//   radius: 50,
//   backgroundImage: AssetImage('lib/Assets/image.png'),
// )

          SizedBox(height: 20,),

          Text(
            "Username",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),

          SizedBox(height: 6,),

          Text(
            user1.username,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87
            ),
          ),

          SizedBox(height: 24,),

          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (ruote) => false,
                );
            },
          icon: Icon(Icons.logout, size: 18, color: Colors.blueGrey,),
          label: Text(
            "Logout",
            style: TextStyle(
              color: Color(0xFF6B4FA2),
              fontWeight: FontWeight.w600,
            ),
          ),
          style : ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFF6F0FA),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20),
              side: BorderSide(color: Color(0xFFE0D0F5)),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          ),
          ),
        ],
      ),
    );
  }
}
