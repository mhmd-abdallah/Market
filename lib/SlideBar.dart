// ignore_for_file: file_names, unused_import, prefer_const_constructors, avoid_returning_null_for_void, avoid_web_libraries_in_flutter, prefer_const_literals_to_create_immutables, unused_element, sort_child_properties_last


import 'package:flutter/material.dart';

class SlideBar extends StatelessWidget {
  const SlideBar({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 200,
            
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/bg.jpg'),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Expanded(
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/LOGO_Karim Supermarket.png',
                          fit: BoxFit.contain,
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: 'KARIM ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: '\nSupermarket',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                       TextSpan(
                        text: '\nSaida - South Lebanon ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w300
                          
                          
                        ),
                      ),
                    ])),
                  ],
                ),
              ],
            ),
          ),
          _buildListTile(Icons.shopping_cart_checkout_rounded, 'Orders', () => null),
          _buildListTile(Icons.favorite, 'Favorites', () => null),
          _buildListTile(Icons.location_on, 'Address', () => null),
          _buildListTile(Icons.chat, 'My Shopping Lists', () {}),
          Divider(),
          Text('     Other',style: TextStyle(color: Color(0xff2A4454),fontSize: 15,
                          ),),
         _buildListTile(Icons.settings, 'Settings', () => null),
          _buildListTile(Icons.chat_bubble, 'Chat Support', () => null),
          _buildListTile(Icons.info, 'About', () => null),
          _buildListTile(Icons.login_outlined, 'Log out', () {}),
        ],
      ),
    );
  }
}

Widget _buildListTile(IconData iconData, String title, Function onTap) {
  return ListTile(
    leading: Icon(iconData ,color: Color(0xff64846C),),
    title: Text(title,style: TextStyle(color: Color(0xffF37C28),fontSize: 15,
                          fontWeight: FontWeight.w500,
                           ),),
    onTap: () => onTap(),
  );
}
