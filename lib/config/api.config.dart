import 'enviroments/environment.dart';

String buildEndpoint(String path) {
  return '${environment['domain']?['apiAuth']}/$path';
}

final Map<String, String> apiEndpoints = {
  'authen': buildEndpoint('authentication'),
  'khach_hang': '${environment['domain']?['apiCas']}/customers',
  'overview': '${environment['domain']?['apiCas']}/overview',
  'call_result': '${environment['domain']?['apiCas']}/call-result',
  'ips': '${environment['domain']?['apiCas']}/nginx',
  'campaigns': '${environment['domain']?['apiCas']}/campaigns',
  'users': '${environment['domain']?['apiCas']}/user',
  'banks': '${environment['domain']?['apiCas']}/banks',
  'branchs': '${environment['domain']?['apiCas']}/branchs',
  'sanPhamThe': '${environment['domain']?['apiCas']}/san-pham-the',
  'pos_machines': '${environment['domain']?['apiCas']}/pos-machine',
  'roles': '${environment['domain']?['apiCas']}/role',
  'saved_searchs': '${environment['domain']?['apiCas']}/saved-searchs',
  'call': '${environment['domain']?['apiCas']}/call',
  'tinh_quan_huyen': '${environment['domain']?['apiCas']}/tinh-quan-huyen',
  'fanpage_facebook': '${environment['domain']?['apiCas']}/fanpage-facebook',
  'data_sources': '${environment['domain']?['apiCas']}/data-sources',
};
