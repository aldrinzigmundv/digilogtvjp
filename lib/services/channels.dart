enum Source { iptv, youtube }

class Channel {
  Channel(
      {required this.channelName,
      required this.link,
      required this.source,
      required this.contactpage});

  String channelName;
  String link;
  Source source;
  String contactpage;

  String getChannelName() {
    return channelName;
  }
}

class Channels {
  List<Channel> getMatchingChannels(List<String> channelNames) {
    List<Channel> matchingChannels = [];

    for (Channel channel in channelList) {
      if (channelNames.contains(channel.channelName)) {
        matchingChannels.add(channel);
      }
    }

    return matchingChannels;
  }

  int getIndexByChannelName(String channelName) {
    for (int i = 0; i < channelList.length; i++) {
      if (channelList[i].channelName == channelName) {
        return i;
      }
    }
    return -1;
  }

  List<Channel> channelList = [
    //ABC TV (ABCテレビ)
    Channel(
        channelName: "ABCテレビ",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gx02",
        source: Source.iptv,
        contactpage: 'https://corp.asahi.co.jp/ja/contact/index.html'),
    //BS Asahi
    Channel(
        channelName: "BS朝日",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=bs03&isp=10&bind=0&uin=159413&playseek=0",
        source: Source.iptv,
        contactpage: 'https://www.bs-asahi.co.jp/contact/'),
    //BS TV Tokyo
    Channel(
        channelName: "BSテレ東",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=bs05&isp=10&bind=0&uin=159413&playseek=0",
        source: Source.iptv,
        contactpage: 'https://www.bs-tvtokyo.co.jp/opinion/'),
    //BS Nippon TV (BS日テレ)
    Channel(
        channelName: "BS日テレ",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=bs02",
        source: Source.iptv,
        contactpage: 'https://bs4-app.sign-post.jp/form/562459cf-2e9a-4e4f-ab7d-5932955a302f.html'),
    //BS Fuji TV (BSフジテレビ)
    Channel(
        channelName: "BSテレ東",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=bs06",
        source: Source.iptv,
        contactpage: 'https://www.bsfuji.tv/top/voice/index.html'),
    //BS-TBS
    Channel(
        channelName: "BS-TBS",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=bs04",
        source: Source.iptv,
        contactpage: 'https://bs.tbs.co.jp/inquiry/'),
    //Fuji TV (フジテレビ)
    Channel(
        channelName: "フジテレビ",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gd05",
        source: Source.iptv,
        contactpage: 'https://www.fujitv.co.jp/safe/contact/index.html'),
    //Kansai TV (カンテレ)
    Channel(
        channelName: "カンテレ",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gx03",
        source: Source.iptv,
        contactpage: 'https://www.ktv.jp/goiken/'),
    //Yomiuri TV (読売テレビ)
    Channel(
        channelName: "読売テレビ",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gx04",
        source: Source.iptv,
        contactpage: 'https://www.ytv.co.jp/bangumishinsa/'),
    //MBS TV (MBSテレビ)
    Channel(
        channelName: "MBSテレビ",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gx01",
        source: Source.iptv,
        contactpage: 'https://www.mbs.jp/kouhou/#inquiry'),
    //NHK BS
    Channel(
        channelName: "NHK BS",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=bs11",
        source: Source.iptv,
        contactpage: 'https://www.nhk.or.jp/css/contact/'),
    //NHK E
    Channel(
        channelName: "NHK教育テレビジョン",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gx06",
        source: Source.iptv,
        contactpage: 'https://www.nhk.or.jp/css/contact/'),
    //NHK G (Osaka)
    Channel(
        channelName: "NHK総合テレビジョン (大阪)",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gx06",
        source: Source.iptv,
        contactpage: 'https://www.nhk.or.jp/css/contact/'),
    //NHK G (Tokyo)
    Channel(
        channelName: "NHK総合テレビジョン (東京)",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gd01",
        source: Source.iptv,
        contactpage: 'https://www.nhk.or.jp/css/contact/'),
    //NHK World-Japan
    Channel(
        channelName: "NHK World-Japan",
        link:
            "https://nhkwlive-ojp.akamaized.net/hls/live/2003459/nhkwlive-ojp-en/index.m3u8",
        source: Source.iptv,
        contactpage: 'https://www3.nhk.or.jp/nhkworld/en/contact/'),
    //QVC
    Channel(
        channelName: "QVC",
        link:
            "https://cdn-live1.qvc.jp/iPhone/1501/1501.m3u8",
        source: Source.iptv,
        contactpage: 'https://qvc.jp/information/guide/contact'),
    //Sun TV (サンテレビ)
    Channel(
        channelName: "サンテレビ",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gx07",
        source: Source.iptv,
        contactpage: 'https://www.sun-tv.co.jp/message/'),
    //Shop Channel
    Channel(
        channelName: "Shop Channel",
        link:
            "https://stream3.shopch.jp/HLS/master.m3u8",
        source: Source.iptv,
        contactpage: 'https://www.shopch.jp/InquiryInit.do?il=Footer&ic=contact'),
    //TV Asahi
    Channel(
        channelName: "テレビ朝日",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gd06",
        source: Source.iptv,
        contactpage: 'https://www.tv-asahi.co.jp/contact/'),
    //TV Osaka (テレビ大阪)
    Channel(
        channelName: "テレビ大阪",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gx05",
        source: Source.iptv,
        contactpage: 'https://www.tv-osaka.co.jp/corporate/contact/'),
    //TV Tokyo
    Channel(
        channelName: "テレ東",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gd07",
        source: Source.iptv,
        contactpage: 'https://www.tv-tokyo.co.jp/index/company/toiawase.html'),
    //TBS News
    Channel(
        channelName: "TBS News",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=cs11",
        source: Source.iptv,
        contactpage: 'https://www.tbs.co.jp/contact/'),
    //TBS
    Channel(
        channelName: "TBSテレビ",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gd04",
        source: Source.iptv,
        contactpage: 'https://www.tbs.co.jp/contact/'),
    //Tokyo MX
    Channel(
        channelName: "Tokyo MX",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gd08",
        source: Source.iptv,
        contactpage: 'https://s.mxtv.jp/company/contact.html'),
    //Nippon TV (日テレ) 
    Channel(
        channelName: "日テレ",
        link:
            "http://cdns.jp-primehome.com:8000/zhongying/live/playlist.m3u8?cid=gd03",
        source: Source.iptv,
        contactpage: 'https://www.ntv.co.jp/staff/goiken/form.html'),
    //日テレNEWS24
    Channel(
        channelName: "日テレNEWS24",
        link:
            "https://n24-cdn-live.ntv.co.jp/ch01/index.m3u8",
        source: Source.iptv,
        contactpage: 'https://apps.ntv.co.jp/news24/form/795b6bf2-054f-4444-865e-b019a8bf0985.html'),    
  ];
}
