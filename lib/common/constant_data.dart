class ConstantData {
  static const int validationError = 422;
  static const int unauthorizeError = 401;
  static const int dataNotFoundError = 404;
  static const int somethingWentWrongError = 500;
  static const String projectTitle = 'E-Report';
  static const String somethingWentWrong =
      'Maaf, terjadi kesalahan\nSilahkan coba beberapa saat lagi!!';
  static const String unauthorizedMessage =
      'Sesi kamu telah berakhir, silahkan masuk kembali';
  static const String validationErrorMessage = 'Validasi gagal';
  static const String notFoundMessage = 'Maaf, data tidak ditemukan';
  static const String errorKosong = 'Tidak ada gambar yang bisa diupload';

  /// hive key
  static const String mainBox = 'mainBox';
  static const String tokenKey = 'tokenKey';
  static const String loggedInKey = 'loggedInKey';
  static const String savedFasilitas = 'pelaporanFasilitas';
  static const String savedCleaning = 'pelaporanCleaning';
  static const String savedCCTV = 'pelaporanCCTV';

  //route
  static const String initialRoute = '/';
  static const String confirmSaveRoute = '/imageConfirm';
  static const String loginRoute = '/loginRoute';
  static const String bottomNavBarRoute = '/bottomNavBarRoute';
  static const String laporanShiftRoute = '/laporanShiftRoute';
  static const String laporanFasilitasRoute = '/laporanFasilitasRoute';
  static const String laporanCctvRoute = '/laporanCctvRoute';
  static const String laporanCleaningRoute = '/laporanCleaningRoute';
  static const String jadwalShiftRoute = '/jadwalShiftRoute';
  static const String detailCatatanRoute = '/detailCatatanRoute';
  static const String lupaPasswordRoute = '/lupaPasswordRoute';
  static const String verifikasiOtpRoute = '/verifikasiOtpRoute';
  static const String buatPasswordBaruRoute = '/buatPasswordBaruRoute';
  static const String ubahProfileRoute = '/ubahProfileRoute';
  static const String detailLaporanRoute = '/DetailLaporanRoute';
  static const String scanKodeQRRoute = '/ScanKodeQRRoute';
  static const String scanResultRoute = '/ScanResultRoute';

  //api url
  static const String cekStatusLoginUrl = 'auth/cek-status-login';
  static const String loginUrl = 'auth/login/mobile';
  static const String logoutUrl = 'user/eos/logout';
  static const String getProfileUrl = 'auth/eos/profile';
  static const String getHomeUrl = 'user/eos/gethome';
  static const String getCatatanUrl = 'user/eos/getcatatan';
  static const String cekLaporanShiftUrl = 'user/eos/ceklaporan';
  static const String getShiftUrl = 'user/eos/getshift';
  static const String getFormPelaporanUrl = 'user/eos/getform';
  static const String getDetailFormPelaporanUrl =
      'pelaporan/eos/laporan/details/';
  static const String cekKerjakanPelaporanUrl = '/user/eos/cekkerjakanform';
  static const String getListNotifikasiUrl = 'user/eos/notifikasi';
  static const String getCountNotifikasiUrl = 'user/eos/notifikasi/hitung';
  static const String bacaNotifikasiUrl = 'user/eos/notifikasi/baca';
  static const String deleteNotifikasiUrl = 'user/eos/notifikasi/hapus';
  static const String deleteAllNotifikasiUrl =
      'user/eos/notifikasi/hapus-semua';
  static const String getJadwalShiftUrl = 'user/eos/getjadwalshift';
  static const String kirimNoHpUrl = 'auth/lupapassword/kirimnohp';
  static const String cekOtpUrl = 'auth/lupapassword/cekotp';
  static const String buatPasswordBaruUrl = 'auth/lupapassword/ubahsandi';
  static const String ubahProfilUrl = 'auth/eos/profile';
  static const String cekKodeQRUrl = 'formlaporan/kodeqr/cek';

  //api pelaporan
  static const String kirimLaporanShift = 'pelaporan/eos/laporan/shift';
  static const String getPelaporanFasilitasUrl =
      'formlaporan/eos/form/facilities';
  static const String getPelaporanCleaningUrl = 'formlaporan/eos/form/cleaning';
  static const String getPelaporanCctvUrl = 'formlaporan/eos/form/cctv';
  static const String getRangeJamUrl = 'user/eos/getrangejamform';
  static const String kirimPelaporanUrl = 'pelaporan/eos/laporan/form';
}
