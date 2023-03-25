import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as Path;
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  String? name;
  String? imageUrl;
  late Stream<DocumentSnapshot> changes;

  Future<void> loadData() async {
    final userDoc = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid);
    changes = userDoc.snapshots();
    final userData = await userDoc.get();
    name = userData.get('name');
    imageUrl = userData.get('image');
  }
}
