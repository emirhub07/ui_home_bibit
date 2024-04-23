import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../assets_paths/assets_paths.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<AssetData> assetList = [
    AssetData(assetPath: AssetPaths.plant, name: 'Reksa Dana'),
    AssetData(assetPath: AssetPaths.earn, name: 'Stable Earn'),
    AssetData(assetPath: AssetPaths.bird, name: 'FR Syariah'),
    AssetData(assetPath: AssetPaths.saham, name: 'Saham'),
    AssetData(assetPath: AssetPaths.flag, name: 'SBN Retail'),
    // Add more assets as needed
  ];



  final List<RoboAssetData> roboAssetList = [
    RoboAssetData(
        roboAssetPath: AssetPaths.pasar,
        roboTitle: "Pasar Uang",
        roboSubTitle: "Majoris Pasar Uang Indonesia",
        percent: '10'),
    RoboAssetData(
        roboAssetPath: AssetPaths.redCircle,
        roboTitle: "Obligasi",
        roboSubTitle: "Bahana MES Syariah Fund Kelas G",
        percent: '43'),
    RoboAssetData(
        roboAssetPath: AssetPaths.yellowCircle,
        roboTitle: "Saham",
        roboSubTitle: "TRIM Syariah Saham",
        percent: '47'),

    // Add more assets as needed
  ];

  final List<ArtikelAssetData> artikelAssetData = [
    ArtikelAssetData(
        artikelAssetPath: AssetPaths.listImg,
        artikelTitle: "Libur Weekend Tetap Bisa Beli SR020 di Bibit",
        artikelSubTitle: "News",
        ),
    ArtikelAssetData(
        artikelAssetPath: AssetPaths.listImg2,
        artikelTitle: "Cari Tahu Profil Risiko Kamu dari Alokasi Aset di Portofolio",
        artikelSubTitle: "Features",
        ),
    ArtikelAssetData(
        artikelAssetPath: AssetPaths.listImg3,
      artikelTitle: "Simulasi Imbal Hasil Kupon SR020, Dapat Gaji Tambahan hingga Rp47,9 Juta per Bulan",
        artikelSubTitle: "Education",
        ),

    // Add more assets as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.sp),
                            child: Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          AssetPaths.logo,
                                          height: 25.h,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          'bibit',
                                          style: GoogleFonts.getFont('Poppins',
                                              fontSize: 25.sp,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    AssetPaths.bell,
                                    height: 25.h,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'Nilai Portfolio',
                            style: GoogleFonts.getFont('Poppins',
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w200),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'RP 2,000,000,000',
                                      style: GoogleFonts.getFont('Poppins',
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    SvgPicture.asset(
                                      AssetPaths.unlock,
                                      height: 20.h,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Keuntungan',
                                      style: GoogleFonts.getFont('Poppins',
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      'RP 1,000,000',
                                      style: GoogleFonts.getFont('Poppins',
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Imbal Hasil',
                                      style: GoogleFonts.getFont('Poppins',
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_drop_up_sharp,
                                          size: 25.sp,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                        Text(
                                          '+200.30%',
                                          style: GoogleFonts.getFont('Poppins',
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 60.h,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -130.sp,
                    right: 0.sp,
                    left: 0.sp,
                    child: Transform.translate(
                      offset: Offset(0, 60),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.sp),
                        child: Container(
                          height: 260,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.sp),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Pakai RDN Wallet. Gratis Biaya Pembayaran✨',
                                        style: GoogleFonts.getFont('Poppins',
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Icon(
                                      Icons.close,
                                      size: 20.sp,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all()),
                                child: Padding(
                                  padding: EdgeInsets.all(10.sp),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'RDN wallet  >',
                                                style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    fontSize: 13.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                'Rp 0',
                                                style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    fontSize: 15.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 35.h,
                                                width: 90.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r),
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondaryContainer),
                                                child: Center(
                                                  child: Text(
                                                    'Deposit',
                                                    style:
                                                        GoogleFonts.getFont(
                                                            'Poppins',
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .primary,
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10.sp),
                                        child: Divider(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              SvgPicture.asset(
                                                AssetPaths.portfolio,
                                                height: 35.h,
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                'Portfolio',
                                                style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              SvgPicture.asset(
                                                AssetPaths.calendar,
                                                height: 35.h,
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                'Routin',
                                                style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              SvgPicture.asset(
                                                AssetPaths.gift,
                                                height: 35.h,
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                'Refferal',
                                                style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              SvgPicture.asset(
                                                AssetPaths.lainnya,
                                                height: 35.h,
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                'Lainnya',
                                                style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 220,
              ),
              Container(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AssetPaths.plant1,
                                  height: 20.h,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  'Produk Investasi',
                                  style: GoogleFonts.getFont('Poppins',
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              'Explore',
                              style: GoogleFonts.getFont('Poppins',
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: assetList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(left: 10.sp),
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: SvgPicture.asset(
                                        assetList[index].assetPath,
                                        semanticsLabel: assetList[index].name,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Expanded(
                                        child: Text(
                                      assetList[index].name,
                                      style: GoogleFonts.getFont('Poppins',
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w200),
                                    )),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.all(15.sp),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary),
                      color: Theme.of(context).colorScheme.secondaryContainer),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              AssetPaths.institution,
                              height: 50.h,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Mulai Investasi untuk Bisnis\n Kamu',
                                        style: GoogleFonts.getFont('Poppins',
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Icon(Icons.close)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    'Daftarkan perusahaan ke Bibit Bisnis\nuntuk investasi semudah di Bibit pribadi kamu.',
                                    style: GoogleFonts.getFont('Poppins',
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.sp, vertical: 10.sp),
                          child: Divider(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pelajari lebih lanjut',
                              style: GoogleFonts.getFont('Poppins',
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Theme.of(context).colorScheme.inversePrimary,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                AssetPaths.chart,
                                height: 20.h,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Portfolio',
                                style: GoogleFonts.getFont('Poppins',
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                            'Tambah Baru',
                            style: GoogleFonts.getFont('Poppins',
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 265,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4, // Provide the total number of cards
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Card(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              elevation: 2, // Adjust elevation as needed
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(15.sp),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          AssetPaths.chicken,
                                          height: 30.h,
                                        ),
                                        SizedBox(width: 20.w),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Modal Nyaleg 2029',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              '1 produk',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Investasi',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 5.h),
                                            Text(
                                              'RP 1,000,000',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Keuntungan',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 5.h),
                                            Text(
                                              'RP 9,000,999',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0.sp),
                                      child: Divider(),
                                    ),
                                    Container(
                                      height: 40.h,
                                      width: 250.w,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Top UP',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Colors.white,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                color: Theme.of(context).colorScheme.inversePrimary,
                child: Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        SvgPicture.asset(
                          AssetPaths.robo,
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'robo',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ]),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Mulai Siapkan Dana Pensiun Kamu',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Langsung ikuti 3 rekomendasi reksa dana dari Robo kamu sesuai dengan profil risikomu.',
                        style: GoogleFonts.getFont(
                          color: Theme.of(context).colorScheme.secondary,
                          'Poppins',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer),
                        child: Padding(
                          padding: EdgeInsets.all(15.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AssetPaths.playButton,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Yuk Kenalan Sama Robo',
                                    style: GoogleFonts.getFont(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      'Poppins',
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Bagi kamu yang mengerti Robo',
                                    style: GoogleFonts.getFont(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      'Poppins',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(Icons.close)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(
                                color:
                                    Theme.of(context).colorScheme.secondary)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.sp),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(AssetPaths.playButton),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Dana Pensiun',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              'Profil Risiko: 7',
                                              style: GoogleFonts.getFont(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                'Poppins',
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'ubah',
                                          style: GoogleFonts.getFont(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            'Poppins',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: roboAssetList.length,
                                itemBuilder: (context, index) {
                                  final item = roboAssetList[index];
                                  return Padding(
                                    padding: EdgeInsets.only(top: 10.sp),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey.shade100)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.sp),
                                        child: Expanded(
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                      item.roboAssetPath,
                                                      height: 40.sp,
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          item.roboTitle,
                                                          style:
                                                              GoogleFonts.getFont(
                                                            'Poppins',
                                                            fontSize: 14.sp,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        Text(
                                                          item.roboSubTitle,
                                                          style:
                                                              GoogleFonts.getFont(
                                                            color:
                                                                Theme.of(context)
                                                                    .colorScheme
                                                                    .secondary,
                                                            'Poppins',
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      '${item.percent}%',
                                                      style: GoogleFonts.getFont(
                                                        'Poppins',
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Icon(Icons
                                                        .arrow_forward_ios_rounded)
                                                  ],
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              SizedBox(
                                height: 20.h,

                              ),

                              Container(
                                height: 40.h,
                                width: 250.w,
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primary,
                                  borderRadius:
                                  BorderRadius.circular(8.r),
                                ),
                                child: Center(
                                  child: Text(
                                    'Buat Portofolio',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20.h,
              ),
              Container(
                color: Theme.of(context).colorScheme.inversePrimary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(10.sp),
                      child: Row(children: [
                        SvgPicture.asset(
                          AssetPaths.promo,
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Promo',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ]),
                    ),



                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10.sp),
                      child: Text(
                        'Promo Menarik untuk Kamu',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 150.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 4,
                            margin: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r)
                              ),
                              height: 100,
                              width: 300,
                              child: Image.asset(
                                AssetPaths.promoImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),

                    ),
                    SizedBox(
                      height: 10.h,
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 20.h,
              ),
              Container(
                color: Theme.of(context).colorScheme.inversePrimary,
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(10.sp),
                      child: Row(children: [
                        SvgPicture.asset(
                          AssetPaths.promo,
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Promo',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: artikelAssetData.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final artikel = artikelAssetData[index];

                        return Container(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 60.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.r),
                                  child: Image.asset(
                                    artikel.artikelAssetPath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      artikel.artikelTitle,
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      artikel.artikelSubTitle,
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: Theme.of(context).colorScheme.secondary,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    )




                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

class AssetData {
  final String assetPath;
  final String name;

  AssetData({required this.assetPath, required this.name});
}

class RoboAssetData {
  final String roboAssetPath;
  final String roboTitle;
  final String roboSubTitle;
  final String percent;

  RoboAssetData({
    required this.roboAssetPath,
    required this.roboTitle,
    required this.roboSubTitle,
    required this.percent,
  });
}


class ArtikelAssetData {
  final String artikelAssetPath;
  final String artikelTitle;
  final String artikelSubTitle;

  ArtikelAssetData({
    required this.artikelAssetPath,
    required this.artikelTitle,
    required this.artikelSubTitle,
  });
}
