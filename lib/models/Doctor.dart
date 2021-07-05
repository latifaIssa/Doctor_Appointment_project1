import 'package:flutter/material.dart';

class Doctor {
  String doctorName;
  String doctorSpecilzation;
  String site;
  String email;
  String doctorPicture;
  int patientsNum;
  int reviewsNum;
  double reviewsSum;
  Map<String, List<String>> availability;
  Doctor({
    @required this.doctorName,
    @required this.doctorSpecilzation,
    @required this.site,
    @required this.email,
    @required this.doctorPicture,
    @required this.availability,
    this.patientsNum = 0,
    this.reviewsNum = 0,
    this.reviewsSum = 0,
  });
  double getReviews(reviewsSum, lastreview, reviewsNum) {
    return (reviewsSum + lastreview) / reviewsNum;
  }

  int incReviewNum() {
    return this.reviewsNum + 1;
  }
}

// class Time {
//   double
// }
