const environment = {
  'domain': {
    'apiCas': 'http://api-cas-test.cas-corporation.com:8002/api',
    'apiAuth': 'http://api-v2-test.cas-corporation.com:8002/api',
  },
  'storage': {
    'cookies': {
      'expireInSeconds': 3600, // 1 giờ
    },
  },
  'application': {
    'appKey': '',
    'domain': '',
    'domain_report': '',
    'appId': 0,
    'env': '',
    'http': {
      // thời gian chờ yêu cầu http
      'timeout': 30 * 1000, // 30 giây
    },
    'ui': {
      // <-- Nên chuyển thành biến nội bộ
      'pagingation': {
        'pageSizeDefault': 10, // Số mục trên mỗi trang
        'pageSizeOptions': [10, 20, 50, 100, 200], // Tùy chọn kích thước trang
      },
    },
    'reCapchaSecretKey': '',
    'googleAuthClientID': '',
    'transaction': {
      'max_money': 30000000,
    },
  },
};
