


import 'package:flutter/material.dart';
import 'package:meta/meta.dart';


class MyColorsTheme1 {
  static Color primary1(int i){
    if (i==1) {
      return Color.fromRGBO(17, 17, 17, 1);
    }
    else if (i==2) {
      return Color.fromRGBO(255, 255, 255, 1);
    }
  }
  static Color primary2 = Color.fromRGBO(10, 10, 10, 1);
  static Color primary3 = Color.fromRGBO(25, 25,25, 1);
  static Color opp1 = Color.fromRGBO(255, 255, 255, 1);
  static Color reddy = Color.fromRGBO(220, 25, 25, 1);
  static Color purp = Colors.purpleAccent;
  static int numb = 12;
  static String year = "YearBook 2010";
}

class MyColorsTheme2 {
  static Color primary1(int i){
    if (i==1) {
      return Colors.pink;
    }
    else if (i==2) {
      return Colors.blue;
    }
  }
  static Color primary2 = Colors.blueGrey;
  static Color primary3 = Colors.amber;
  static Color opp1 = Colors.cyanAccent;
  static Color reddy = Colors.indigo;
  static Color purp = Colors.grey;
  static int numb = 15;
  static String year = "Photos of You";
}

class MyColorsTheme3 {
  static Color primary1(int i){
    if (i==1) {
      return Colors.deepPurple;
    }
    else if (i==2) {
      return Colors.orangeAccent;
    }
  }
  static Color primary2 = Colors.redAccent;
  static Color primary3 = Colors.tealAccent;
  static Color opp1 = Colors.yellowAccent;
  static Color reddy = Colors.lime;
  static Color purp = Colors.lightGreen;

}




















class MyColors{
 /*  Color primary1;
   Color primary2;
   Color primary3;
   Color opp1;
   Color reddy;
   Color purp;

     MyColors._(
      {
      this.primary1,
      this.primary2,
      this.primary3,
      this.opp1,
      this.reddy,
      this.purp,
      });
*/
factory MyColors({
   Color primary1,
   Color primary2,
   Color primary3,
   Color opp1,
   Color reddy,
   Color purp,
}){
  return MyColors(
   primary1: primary1,
   primary2: primary2,
   primary3: primary3,
   opp1: opp1,
   reddy: reddy,
   purp: purp,
  );
}
}

final MyColors myColors = MyColors();




class MySliverSpace extends  StatelessWidget{
  const MySliverSpace({Key key, @required this.x}) : super(key: key);
  final double x;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index,) {
        return new Padding(padding: EdgeInsets.symmetric(vertical: x),);
      },
      childCount: 1,
      ),
    );
  }
}

















class AnimeInfolist {
   String animename;
   String animepageurl;
   String posterimage;
   String description;
   bool favored;

  AnimeInfolist._(
      {
      this.animename,
      this.animepageurl,
      this.posterimage,
      this.description,
      this.favored,
      });
  factory AnimeInfolist.fromJson(Map<String, dynamic> json) {
    return new AnimeInfolist._(
      animename: json['animename'],
      animepageurl: json['animepageurl'],
      posterimage: json['posterimage'],
      description: json['description'],
      favored: false,
    );
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['animename'] = animename;
    map['animepageurl'] = animepageurl;
    map['posterimage'] = posterimage;
    map['description'] = description;
    map['favored'] = favored;
    return map;
  }

    AnimeInfolist.fromDb(Map map)
      :animename = map["animename"],
        animepageurl = map["animepageurl"],
        posterimage = map["posterimage"],
        description = map["description"],
        favored = map['favored'] == 1 ? true : false;
}




class DownloadEpisodelist {
   String videoname;
   String videourl;
   String localurl;
   bool favored;

  DownloadEpisodelist._(
      {
      this.videoname,
      this.videourl,
      this.localurl,
      this.favored,
      });
  factory DownloadEpisodelist.fromJson(Map<String, dynamic> json) {
    return new DownloadEpisodelist._(
      videoname: json['videoname'],
      videourl: json['videourl'],
      localurl: json['localurl'],
      favored: false,
    );
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['videoname'] = videoname;
    map['videourl'] = videourl;
    map['localurl'] = localurl;
    map['favored'] = favored;
    return map;
  }

    DownloadEpisodelist.fromDb(Map map)
      :videoname = map["videoname"],
        videourl = map["videourl"],
        localurl = map["localurl"],
        favored = map['favored'] == 1 ? true : false;
}


class WatchHistorylist {
   String animename;
   String episodenumber;
   String animepagelink;
   String posterimage;
   bool favored;

  WatchHistorylist._(
      {
      this.animename,
      this.episodenumber,
      this.animepagelink,
      this.posterimage,
      this.favored,
      });
  factory WatchHistorylist.fromJson(Map<String, dynamic> json) {
    return new WatchHistorylist._(
      animename: json['animename'],
      episodenumber: json['episodenumber'],
      animepagelink: json['animepagelink'],
      posterimage: json['posterimage'],
      favored: false,
    );
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['animename'] = animename;
    map['episodenumber'] = episodenumber;
    map['animepagelink'] = animepagelink;
    map['posterimage'] = posterimage;
    map['favored'] = favored;
    return map;
  }

    WatchHistorylist.fromDb(Map map)
      :animename = map["animename"],
        episodenumber = map["episodenumber"],
        animepagelink = map["animepagelink"],
        posterimage = map["posterimage"],
        favored = map['favored'] == 1 ? true : false;
}



class Epvideolist {
  final String epnumber;
  final String urllink;

  Epvideolist._(
      {
      this.epnumber,
      this.urllink,
      });
  factory Epvideolist.fromJson(Map<String, dynamic> json) {
    return new Epvideolist._(
      epnumber: json['epnumber'],
      urllink: json['urllink'],
    );
  }
}


class Mp4uploadepisodelist {
  final String epnumber;
  final String dataid;
  final String urllink;

  Mp4uploadepisodelist._(
      {
      this.epnumber,
      this.dataid,
      this.urllink,

      });
  factory Mp4uploadepisodelist.fromJson(Map<String, dynamic> json) {
    return new Mp4uploadepisodelist._(
      epnumber: json['epnumber'],
      dataid: json['dataid'],
      urllink: json['urllink'],
    );
  }
}