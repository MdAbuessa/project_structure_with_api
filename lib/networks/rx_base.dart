import 'dart:developer';

import 'package:rxdart/subjects.dart';

abstract class RxResponseInt<T> {
  // একটি abstract ক্লাস (অর্থাৎ সরাসরি ইনস্ট্যান্স করা যায় না)
  // যেখানে জেনেরিক টাইপ <T> ব্যবহার করা হয়েছে।
//এই <T> দ্বারা বোঝায় এই ক্লাসে যেকোনো টাইপের ডেটা ব্যবহৃত
//হতে পারে (যেমন: List<Welcome> বা String ইত্যাদি)।
  T empty;
  //এই ভেরিয়েবলটি সেই টাইপের (T) খালি বা ডিফল্ট ডেটা রাখে,
  // যেটা পরে স্ট্রিমে রিসেট করতে ব্যবহৃত হয়।
  BehaviorSubject<T> dataFetcher;
  //এটা RxDart এর BehaviorSubject, যেখানে <T> টাইপের ডেটা
  //স্ট্রিম হিসেবে পাঠানো হয় এবং UI বা অন্য সাবস্ক্রাইবাররা তা শুনতে পারে।
  Map? map;
  BehaviorSubject? dataFetcher2;
  //map ও dataFetcher2 অতিরিক্ত অপশনাল ভেরিয়েবল, যেগুলোর নির্দিষ্ট ব্যবহার
  //এই ক্লাসে এখনো নেই। হয়তো future extension এর জন্য রাখা হয়েছে।

  RxResponseInt(
      {required this.empty,
      required this.dataFetcher,
      this.map,
      this.dataFetcher2});

  //ক্লাসের কনস্ট্রাক্টর। empty ও dataFetcher বাধ্যতামূলক,
  // আর map ও dataFetcher2 ঐচ্ছিক (null হতে পারে)।

  dynamic handleSuccessWithReturn(T data) {
    dataFetcher.sink.add(data);
    return data;
  }
  // API কল সফল হলে, এই মেথড ব্যবহার করে ডেটা
  //dataFetcher স্ট্রিমে পাঠানো হয় এবং ডেটা রিটার্ন করে।

  dynamic handleErrorWithReturn(dynamic error) {
    log(error.toString());
    dataFetcher.sink.addError(error);
    throw error;
  }
  //API কল ব্যর্থ হলে:
//error log করে
//স্ট্রিমে error পাঠায়
//এবং throw করে আবার error ছুঁড়ে দেয়

  void clean() {
    dataFetcher.sink.add(empty);
  }
  //এই মেথড দিয়ে dataFetcher স্ট্রিমে আবার
  // খালি ডেটা (empty) পাঠানো হয় — মানে reset এর মতো কাজ করে।

  void dispose() {
    dataFetcher.close();
  }

  //এই মেথড দিয়ে dataFetcher স্ট্রিম বন্ধ করা হয়।
  //এটি গুরুত্বপূর্ণ, না হলে memory leak হতে পারে।
}
