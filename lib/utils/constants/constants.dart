import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

var firestore = FirebaseFirestore.instance;
var firebaseAuth = FirebaseAuth.instance;
var ownerId = FirebaseAuth.instance.currentUser?.uid;
