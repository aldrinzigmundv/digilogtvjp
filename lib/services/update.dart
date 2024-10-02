import 'package:digilogtvjp/services/storage.dart';

import 'package:package_info_plus/package_info_plus.dart';

class UpdateManager {
  StorageProvider storageProvider = StorageProvider();
  late PackageInfo packageInfo;

  Future<bool> checkIfAppWasUpdated() async {
    packageInfo = await PackageInfo.fromPlatform();
    String lastVersion = storageProvider.storage.get('lastVersion', defaultValue: '0.0.0');
    if (lastVersion == packageInfo.version) {
      return false;
    } else {
      return true;
    }
  }

  getUpdateMessage() {
    return "GitHubからのチャンネル更新がより早くなりました—アプリの更新はもう不要です！\n\nGoogleおよびAndroid TVのサポートが向上しました\n\n今後の開発を支援するために、邪魔にならない広告を追加しました（Playストア版のみ）\n\n無料で合法的なコンテンツを提供しているFree-TV/IPTV（GitHub）に大きな感謝を！";
  }

  removeUpdate() async {
    storageProvider.storage.put('lastVersion', packageInfo.version);
  }
}