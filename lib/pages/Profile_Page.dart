import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findresteau/pages/aut_page.dart';
import 'package:findresteau/pages/updateProfil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../components/custom_tile.dart';
import '../user.dart';
import '../utilis/style.dart';
import 'edit_name_page.dart';
import 'edit_password_page.dart';
import 'menuprofile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late String name = " ";
  late String email;
  late String imageUrl = " ";

  @override
  void initState() {
    super.initState();
    getUserData();
  }
  Future<void> _handleLogout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const AuthPage()), (route) => false,
    );
  }

  void getUserData() async {
    final userDoc = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid);
    final userData = await userDoc.get();
    setState(() {
      name = userData.get('name');
      email = FirebaseAuth.instance.currentUser!.email!;
      imageUrl = userData.get('image');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          imageUrl,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      name ?? 'No name',
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline4,
                    ),
                    Text(
                      FirebaseAuth.instance.currentUser!.email!,
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyText2,
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(height: 30),
                    const Divider(),
                    const SizedBox(height: 10),
                    Text(
                      'Personal Inforamtion',
                      style: heading2,
                    ),
                    SizedBox(
                      height: medium,
                    ),
                    Column(
                      children: [
                        CustomTile(
                          leadingIcon: const Icon(Icons.person),
                          textTile: name ?? "name",
                          onEditPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    EditNamePage(currentValue: name),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: xsmall,
                        ),
                        CustomTile(
                          leadingIcon: const Icon(Icons.password),
                          textTile: "*********",
                          onEditPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EditPasswordPage(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 30),
                        const Divider(),
                        menuprofileWidget(
                          title: "Se deconnecter",
                          icon: Icons.logout,
                            onPress: () => _handleLogout(context),
                        )

                      ],
                    ),
                  ],
                )
            ),

          ),

        )
    );
  }
}
