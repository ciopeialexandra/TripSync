import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myjorurney/auth.dart';
import 'package:myjorurney/navigate.dart';
import 'package:myjorurney/screens/country_page.dart';
import 'package:countries_world_map/countries_world_map.dart';
import 'package:countries_world_map/data/maps/world_map.dart';
import 'package:myjorurney/screens/plan-trip_page.dart';
import 'package:permission_handler/permission_handler.dart';
import 'add-friend_page.dart';

class HomePage extends StatefulWidget {
   const HomePage({super.key});
   @override
   State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  final User? user = Auth().currentUser;
  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text('My Journey');
  }


  Widget _signOutButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ElevatedButton(
            onPressed: signOut,
            style: OutlinedButton.styleFrom(
                side: BorderSide.none
            ),
            child: const Text('Sign Out')
        )
    );
  }
  Widget _beenButton() {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    const TripPage()));
          });
        },
      child: const Text('Where have you been ?'),
    );
  }
  Widget _planButton(){
    return ElevatedButton(
      onPressed: () async {
        if(await Permission.contacts.request().isGranted) {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    const PlanTripPage()));
          });
        }
        else{
        }
      },
      child: const Text('Plan a trip'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavMenu(),
      appBar: AppBar(
        title: _title(),
        actions: [
          _signOutButton(),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: InteractiveViewer(
                boundaryMargin: const EdgeInsets.all(double.infinity),
                minScale: 0.1,
                maxScale: 2.0,
                child: GestureDetector(
                  onTap: () {
                    // Handle tap on the map
                  },
                  child: SimpleMap(
                    instructions: SMapWorld.instructions,
                    defaultColor: Colors.grey,
                    colors: const SMapWorldColors(
                      uS: Colors.purple,
                      cN: Colors.pink,
                      iN: Colors.purple,
                    ).toMap(),
                    callback: (id, name, tapDetails) {
                      print(id);
                    },
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _beenButton(),
              _planButton()
            ],
          ),
        ],
      ),
    );
  }
}