
{"app_name":"Messenger","timestamp":"2019-07-23 04:04:07.02 -0400","app_version":"221.0","slice_uuid":"e75c3b1d-0c72-3ac3-915e-e1166cfac528","adam_id":454638411,"build_version":"160689034","bundleID":"com.facebook.Messenger","share_with_app_devs":false,"is_first_party":false,"bug_type":"109","os_version":"iPhone OS 12.3.1 (16F203)","incident_id":"46148F59-4873-4D90-BB5D-70FFE1BF6E50","name":"Messenger"}
Incident Identifier: 46148F59-4873-4D90-BB5D-70FFE1BF6E50
CrashReporter Key:  f17d5875f63e524e1fd85123cb1c4c8f5b76d768
Hardware Model:      iPhone8,1
Process:            Messenger [169]
Path:                /private/var/containers/Bundle/Application/1820D524-1AD5-485A-BEA3-B87CC62795DD/Messenger.app/Messenger
Identifier:          com.facebook.Messenger
Version:            160689034 (221.0)
AppStoreTools:      10G3
AppVariant:          1:iPhone8,1:12.2
Code Type:          ARM-64 (Native)
Role:                Non UI
Parent Process:      launchd [1]
Coalition:          com.facebook.Messenger [272]


Date/Time:          2019-07-23 04:04:06.7827 -0400
Launch Time:        2019-07-23 04:03:36.6937 -0400
OS Version:          iPhone OS 12.3.1 (16F203)
Baseband Version:    5.60.01
Report Version:      104

Exception Type:  EXC_CRASH (SIGKILL)
Exception Codes: 0x0000000000000000, 0x0000000000000000
Exception Note:  EXC_CORPSE_NOTIFY
Termination Reason: Namespace SPRINGBOARD, Code 0x8badf00d
Termination Description: SPRINGBOARD, scene-create watchdog transgression: com.facebook.Messenger exhausted real (wall clock) time allowance of 29.43 seconds | ProcessVisibility: Background | ProcessState: Running | WatchdogEvent: scene-create | WatchdogVisibility: Background | WatchdogCPUStatistics: ( | "Elapsed total CPU time (seconds): 1.880 (user 1.880, system 0.000), 3% CPU", | "Elapsed application CPU time (seconds): 0.434, 1% CPU" | )
Triggered by Thread:  0

Thread 0 name:  Dispatch queue: com.apple.main-thread
Thread 0 Crashed:
0  libsystem_kernel.dylib        0x000000022653f0f4 0x226527000 + 98548
1  libsystem_kernel.dylib        0x000000022653e5a0 0x226527000 + 95648
2  libdispatch.dylib            0x00000002263a4880 0x22638d000 + 96384
3  libdispatch.dylib            0x00000002263a4d10 0x22638d000 + 97552
4  libxpc.dylib                  0x000000022660391c 0x2265f9000 + 43292
5  Foundation                    0x000000022752fa28 0x2272ff000 + 2296360
6  Foundation                    0x0000000227312f60 0x2272ff000 + 81760
7  CoreFoundation                0x00000002269b276c 0x226895000 + 1169260
8  CoreFoundation                0x00000002269b475c 0x226895000 + 1177436
9  CFNetwork                    0x0000000226f670fc 0x226f51000 + 90364
10  CFNetwork                    0x0000000226f735c4 0x226f51000 + 140740
11  CFNetwork                    0x0000000226f5b314 0x226f51000 + 41748
12  FBSharedFramework            0x0000000108ccafd8 0x108234000 + 11104216
13  FBSharedFramework            0x0000000108ccb080 0x108234000 + 11104384
14  FBSharedFramework            0x00000001083d1394 0x108234000 + 1692564
15  FBSharedFramework            0x0000000108ccaf94 0x108234000 + 11104148
16  FBSharedFramework            0x0000000108ccb17c 0x108234000 + 11104636
17  FBSharedFramework            0x0000000108b4128c 0x108234000 + 9491084
18  libdispatch.dylib            0x00000002263ed7d4 0x22638d000 + 395220
19  libdispatch.dylib            0x0000000226390eb4 0x22638d000 + 16052
20  FBSharedFramework            0x0000000108b41208 0x108234000 + 9490952
21  FBSharedFramework            0x0000000108b41584 0x108234000 + 9491844
22  FBSharedFramework            0x0000000108d47bd8 0x108234000 + 11615192
23  FBSharedFramework            0x000000010858ead0 0x108234000 + 3517136
24  FBSharedFramework            0x00000001085931a8 0x108234000 + 3535272
25  FBSharedFramework            0x0000000108592d50 0x108234000 + 3534160
26  FBSharedFramework            0x00000001085880a0 0x108234000 + 3489952
27  FBSharedFramework            0x00000001085927d8 0x108234000 + 3532760
28  FBSharedFramework            0x0000000108592208 0x108234000 + 3531272
29  FBSharedFramework            0x0000000108591dbc 0x108234000 + 3530172
30  FBSharedFramework            0x000000010858f354 0x108234000 + 3519316
31  FBSharedFramework            0x000000010858f184 0x108234000 + 3518852
32  FBSharedFramework            0x000000010858ef24 0x108234000 + 3518244
33  FBSharedFramework            0x000000010858e204 0x108234000 + 3514884
34  FBSharedFramework            0x000000010858dde8 0x108234000 + 3513832
35  FBSharedFramework            0x00000001085880a0 0x108234000 + 3489952
36  FBSharedFramework            0x0000000108589490 0x108234000 + 3495056
37  FBSharedFramework            0x00000001085890ac 0x108234000 + 3494060
38  FBSharedFramework            0x000000010858d9ac 0x108234000 + 3512748
39  FBSharedFramework            0x000000010858d118 0x108234000 + 3510552
40  FBSharedFramework            0x0000000108587ca4 0x108234000 + 3488932
41  FBSharedFramework            0x00000001085864a8 0x108234000 + 3482792
42  FBSharedFramework            0x00000001085863d0 0x108234000 + 3482576
43  FBSharedFramework            0x000000010858c7c8 0x108234000 + 3508168
44  FBSharedFramework            0x000000010858bc34 0x108234000 + 3505204
45  FBSharedFramework            0x00000001085880a0 0x108234000 + 3489952
46  FBSharedFramework            0x0000000108589b38 0x108234000 + 3496760
47  FBSharedFramework            0x0000000108589648 0x108234000 + 3495496
48  FBSharedFramework            0x00000001085880a0 0x108234000 + 3489952
49  FBSharedFramework            0x0000000108589490 0x108234000 + 3495056
50  FBSharedFramework            0x00000001085890ac 0x108234000 + 3494060
51  FBSharedFramework            0x0000000108588464 0x108234000 + 3490916
52  FBSharedFramework            0x00000001085880a0 0x108234000 + 3489952
53  FBSharedFramework            0x000000010865dc38 0x108234000 + 4365368
54  FBSharedFramework            0x000000010865d7c4 0x108234000 + 4364228
55  FBSharedFramework            0x0000000108a70490 0x108234000 + 8635536
56  FBSharedFramework            0x0000000108241dcc 0x108234000 + 56780
57  FBSharedFramework            0x000000010829c820 0x108234000 + 428064
58  FBSharedFramework            0x000000010829c73c 0x108234000 + 427836
59  FBSharedFramework            0x0000000108266c00 0x108234000 + 207872
60  FBSharedFramework            0x000000010826688c 0x108234000 + 206988
61  FBSharedFramework            0x0000000108284ffc 0x108234000 + 331772
62  FBSharedFramework            0x0000000108284f88 0x108234000 + 331656
63  FBSharedFramework            0x0000000108284bd8 0x108234000 + 330712
64  FBSharedFramework            0x0000000108284a88 0x108234000 + 330376
65  FBSharedFramework            0x0000000108266a6c 0x108234000 + 207468
66  FBSharedFramework            0x0000000108266568 0x108234000 + 206184
67  FBSharedFramework            0x000000010826600c 0x108234000 + 204812
68  FBSharedFramework            0x0000000108264208 0x108234000 + 197128
69  FBSharedFramework            0x00000001082627a0 0x108234000 + 190368
70  UIKitCore                    0x0000000253166e30 0x2528b3000 + 9125424
71  UIKitCore                    0x0000000253168594 0x2528b3000 + 9131412
72  UIKitCore                    0x000000025316dd20 0x2528b3000 + 9153824
73  UIKitCore                    0x0000000252a312dc 0x2528b3000 + 1565404
74  UIKitCore                    0x0000000252a39874 0x2528b3000 + 1599604
75  UIKitCore                    0x0000000252a30f60 0x2528b3000 + 1564512
76  UIKitCore                    0x0000000252a31850 0x2528b3000 + 1566800
77  UIKitCore                    0x0000000252a2fb9c 0x2528b3000 + 1559452
78  UIKitCore                    0x0000000252a2f864 0x2528b3000 + 1558628
79  UIKitCore                    0x0000000252a343a4 0x2528b3000 + 1577892
80  UIKitCore                    0x0000000252a35188 0x2528b3000 + 1581448
81  UIKitCore                    0x0000000252a3425c 0x2528b3000 + 1577564
82  UIKitCore                    0x0000000252a38f5c 0x2528b3000 + 1597276
83  UIKitCore                    0x000000025316c328 0x2528b3000 + 9147176
84  UIKitCore                    0x0000000252d68ba8 0x2528b3000 + 4938664
85  FrontBoardServices            0x00000002293289fc 0x22931d000 + 47612
86  FrontBoardServices            0x000000022933240c 0x22931d000 + 87052
87  FrontBoardServices            0x0000000229331c14 0x22931d000 + 85012
88  libdispatch.dylib            0x00000002263ed7d4 0x22638d000 + 395220
89  libdispatch.dylib            0x00000002263925d8 0x22638d000 + 21976
90  FrontBoardServices            0x0000000229363040 0x22931d000 + 286784
91  FrontBoardServices            0x0000000229362cdc 0x22931d000 + 285916
92  FrontBoardServices            0x0000000229363294 0x22931d000 + 287380
93  CoreFoundation                0x000000022693f018 0x226895000 + 696344
94  CoreFoundation                0x000000022693ef98 0x226895000 + 696216
95  CoreFoundation                0x000000022693e880 0x226895000 + 694400
96  CoreFoundation                0x00000002269397bc 0x226895000 + 673724
97  CoreFoundation                0x00000002269390b0 0x226895000 + 671920
98  GraphicsServices              0x0000000228b3979c 0x228b2f000 + 42908
99  UIKitCore                    0x000000025316f978 0x2528b3000 + 9161080
100 Messenger                    0x0000000104e54994 0x104e50000 + 18836
101 libdyld.dylib                0x00000002263fe8e0 0x2263fd000 + 6368

Thread 1:
0  libsystem_kernel.dylib        0x000000022653f0f4 0x226527000 + 98548
1  libsystem_kernel.dylib        0x000000022653e5a0 0x226527000 + 95648
2  FBSharedFramework            0x000000010824473c 0x108234000 + 67388
3  libsystem_pthread.dylib      0x00000002265cc2c0 0x2265c1000 + 45760
4  libsystem_pthread.dylib      0x00000002265cc220 0x2265c1000 + 45600
5  libsystem_pthread.dylib      0x00000002265cfcdc 0x2265c1000 + 60636

Thread 2 name:  JavaScriptCore bmalloc scavenger
Thread 2:
0  libsystem_kernel.dylib        0x0000000226549ee4 0x226527000 + 143076
1  libsystem_pthread.dylib      0x00000002265c4cf8 0x2265c1000 + 15608
2  libc++.1.dylib                0x0000000225b21090 0x225b19000 + 32912
3  JavaScriptCore                0x000000022db44aa8 0x22daba000 + 567976
4  JavaScriptCore                0x000000022db48a9c 0x22daba000 + 584348
5  JavaScriptCore                0x000000022db48214 0x22daba000 + 582164
6  JavaScriptCore                0x000000022db49c54 0x22daba000 + 588884
7  libsystem_pthread.dylib      0x00000002265cc2c0 0x2265c1000 + 45760
8  libsystem_pthread.dylib      0x00000002265cc220 0x2265c1000 + 45600
9  libsystem_pthread.dylib      0x00000002265cfcdc 0x2265c1000 + 60636

Thread 3 name:  WebThread
Thread 3:
0  libsystem_kernel.dylib        0x0000000226549ee4 0x226527000 + 143076
1  libsystem_pthread.dylib      0x00000002265c4cf8 0x2265c1000 + 15608
2  JavaScriptCore                0x000000022db0b554 0x22daba000 + 333140
3  JavaScriptCore                0x000000022daf21dc 0x22daba000 + 229852
4  JavaScriptCore                0x000000022dae247c 0x22daba000 + 164988
5  WebCore                      0x000000022f5c7280 0x22f200000 + 3961472
6  WebCore                      0x000000022f5c9e04 0x22f200000 + 3972612
7  CoreFoundation                0x000000022693e5f8 0x226895000 + 693752
8  CoreFoundation                0x0000000226939320 0x226895000 + 672544
9  CoreFoundation                0x0000000226939a80 0x226895000 + 674432
10  CoreFoundation                0x00000002269390b0 0x226895000 + 671920
11  WebCore                      0x000000022f5c9bd8 0x22f200000 + 3972056
12  libsystem_pthread.dylib      0x00000002265cc2c0 0x2265c1000 + 45760
13  libsystem_pthread.dylib      0x00000002265cc220 0x2265c1000 + 45600
14  libsystem_pthread.dylib      0x00000002265cfcdc 0x2265c1000 + 60636

Thread 4 name:  Dispatch queue: com.apple.CoreLocation.0x105020ac0
Thread 4:
0  libsystem_kernel.dylib        0x000000022653f148 0x226527000 + 98632
1  libdispatch.dylib            0x000000022638f880 0x22638d000 + 10368
2  libdispatch.dylib            0x00000002263901d8 0x22638d000 + 12760
3  CoreLocation                  0x000000022d6c7708 0x22d6c4000 + 14088
4  CoreLocation                  0x000000022d6cc810 0x22d6c4000 + 34832
5  CoreLocation                  0x000000022d725e6c 0x22d6c4000 + 401004
6  CoreLocation                  0x000000022d725d98 0x22d6c4000 + 400792
7  CoreLocation                  0x000000022d720cc4 0x22d6c4000 + 380100
8  CoreLocation                  0x000000022d720b7c 0x22d6c4000 + 379772
9  CoreLocation                  0x000000022d722eb8 0x22d6c4000 + 388792
10  libxpc.dylib                  0x0000000226604afc 0x2265f9000 + 47868
11  libxpc.dylib                  0x0000000226604e60 0x2265f9000 + 48736
12  libdispatch.dylib            0x00000002263ed894 0x22638d000 + 395412
13  libdispatch.dylib            0x00000002263a55bc 0x22638d000 + 99772
14  libdispatch.dylib            0x00000002263961ec 0x22638d000 + 37356
15  libdispatch.dylib            0x00000002263a61c8 0x22638d000 + 102856
16  libdispatch.dylib            0x00000002263961ec 0x22638d000 + 37356
17  libdispatch.dylib            0x0000000226396e3c 0x22638d000 + 40508
18  libdispatch.dylib            0x000000022639f4a8 0x22638d000 + 74920
19  libsystem_pthread.dylib      0x00000002265cd114 0x2265c1000 + 49428
20  libsystem_pthread.dylib      0x00000002265cfcd4 0x2265c1000 + 60628

Thread 5 name:  com.apple.uikit.eventfetch-thread
Thread 5:
0  libsystem_kernel.dylib        0x000000022653f0f4 0x226527000 + 98548
1  libsystem_kernel.dylib        0x000000022653e5a0 0x226527000 + 95648
2  CoreFoundation                0x000000022693ea10 0x226895000 + 694800
3  CoreFoundation                0x0000000226939920 0x226895000 + 674080
4  CoreFoundation                0x00000002269390b0 0x226895000 + 671920
5  Foundation                    0x0000000227306fac 0x2272ff000 + 32684
6  Foundation                    0x0000000227306e3c 0x2272ff000 + 32316
7  UIKitCore                    0x0000000253255494 0x2528b3000 + 10101908
8  Foundation                    0x00000002274336a4 0x2272ff000 + 1263268
9  libsystem_pthread.dylib      0x00000002265cc2c0 0x2265c1000 + 45760
10  libsystem_pthread.dylib      0x00000002265cc220 0x2265c1000 + 45600
11  libsystem_pthread.dylib      0x00000002265cfcdc 0x2265c1000 + 60636

Thread 6:
0  libsystem_pthread.dylib      0x00000002265cfcd0 0x2265c1000 + 60624

Thread 0 crashed with ARM Thread State (64-bit):
   x0: 0x0000000010004005  x1: 0x000000000400400e  x2: 0x0000000000000000  x3: 0x0000000000004000
   x4: 0x0000000000001203  x5: 0x0000000000000000  x6: 0x0000000000009403  x7: 0x0000000000000bf0
   x8: 0x00000000fffffbbf  x9: 0x000000000400400e  x10: 0x000000016afa8900  x11: 0x0000000000000000
 x12: 0x0000000000001203  x13: 0x0000000000007507  x14: 0xffffffd0ffffffff  x15: 0x0000002800000000
 x16: 0xffffffffffffffe1  x17: 0x0000008600000300  x18: 0x0000000000000000  x19: 0x0000000000009403
 x20: 0x0000000000000000  x21: 0x0000000000001203  x22: 0x0000000000004000  x23: 0x000000016afa4900
 x24: 0x000000000400400e  x25: 0x0000000000000000  x26: 0x000000000400400e  x27: 0x000000000400400e
 x28: 0x0000000105256ca0  fp: 0x000000016afa48f0  lr: 0x000000022653e5a0
   sp: 0x000000016afa48a0  pc: 0x000000022653f0f4 cpsr: 0x20000000

Binary Images:
0x104e50000 - 0x104e5bfff Messenger arm64  <e75c3b1d0c723ac3915ee1166cfac528> /var/containers/Bundle/Application/1820D524-1AD5-485A-BEA3-B87CC62795DD/Messenger.app/Messenger
0x104e78000 - 0x104e87fff MobileConfig arm64  <5e2fcf31e3f83d75ac3d05e358b242fa> /var/containers/Bundle/Application/1820D524-1AD5-485A-BEA3-B87CC62795DD/Messenger.app/Frameworks/MobileConfig.framework/MobileConfig
0x105100000 - 0x105107fff FBPluginPointers arm64  <e0e30c1532e636358535bfa099ad4bc2> /var/containers/Bundle/Application/1820D524-1AD5-485A-BEA3-B87CC62795DD/Messenger.app/Frameworks/FBPluginPointers.framework/FBPluginPointers
0x1051c8000 - 0x10521ffff dyld arm64  <9c893b6aa3b13d9596326ef6952e7195> /usr/lib/dyld
0x1052ac000 - 0x1052b7fff libobjc-trampolines.dylib arm64  <7e51dd446ecc38e6a5ab21d88fc0e15b> /usr/lib/libobjc-trampolines.dylib
0x1054c4000 - 0x1054d3fff GAXClient arm64  <ddafdb7b3f1c336f83b6e665aa6c1f8c> /System/Library/AccessibilityBundles/GAXClient.bundle/GAXClient
0x108234000 - 0x10904bfff FBSharedFramework arm64  <9e936720dc53316bb0671b0689685d65> /var/containers/Bundle/Application/1820D524-1AD5-485A-BEA3-B87CC62795DD/Messenger.app/Frameworks/FBSharedFramework.framework/FBSharedFramework
0x225b17000 - 0x225b18fff libSystem.B.dylib arm64  <2d9d93c74687353281fc2f486a371680> /usr/lib/libSystem.B.dylib
0x225b19000 - 0x225b6efff libc++.1.dylib arm64  <e1843de67f9234e6a7c59cfb6ffe5e76> /usr/lib/libc++.1.dylib
0x225b6f000 - 0x225b81fff libc++abi.dylib arm64  <b2407b2b53073779b86b8765c6ea72c2> /usr/lib/libc++abi.dylib
0x225b82000 - 0x226309fff libobjc.A.dylib arm64  <c48d66667b893a29959044bb49a1973e> /usr/lib/libobjc.A.dylib
0x22630a000 - 0x22630efff libcache.dylib arm64  <22202d885c35395a9734dc0d7dc02b29> /usr/lib/system/libcache.dylib
0x22630f000 - 0x22631afff libcommonCrypto.dylib arm64  <0670536269b63ab289d61f36dd2aa431> /usr/lib/system/libcommonCrypto.dylib
0x22631b000 - 0x22631ffff libcompiler_rt.dylib arm64  <14258a4709af3ffba47a04bc00b9646a> /usr/lib/system/libcompiler_rt.dylib
0x226320000 - 0x226328fff libcopyfile.dylib arm64  <903036d60844385987e8bec76e22bcad> /usr/lib/system/libcopyfile.dylib
0x226329000 - 0x22638cfff libcorecrypto.dylib arm64  <9f7915fc35b737e880ff06f14f73d523> /usr/lib/system/libcorecrypto.dylib
0x22638d000 - 0x2263fcfff libdispatch.dylib arm64  <94dcbc89bacb39beadffccea74e7bdb6> /usr/lib/system/libdispatch.dylib
0x2263fd000 - 0x226426fff libdyld.dylib arm64  <39ee943ad0ca301180519d4a1173734f> /usr/lib/system/libdyld.dylib
0x226427000 - 0x226427fff liblaunch.dylib arm64  <729cfcd40d393f308cdbb266917306db> /usr/lib/system/liblaunch.dylib
0x226428000 - 0x22642dfff libmacho.dylib arm64  <0cc10aed9fe1322fa37cdd01e6c3e771> /usr/lib/system/libmacho.dylib
0x22642e000 - 0x22642ffff libremovefile.dylib arm64  <5a2545f357d6342d9641ec17eedebf59> /usr/lib/system/libremovefile.dylib
0x226430000 - 0x226447fff libsystem_asl.dylib arm64  <40fd59634e5532d49a4f441f37283d0e> /usr/lib/system/libsystem_asl.dylib
0x226448000 - 0x226448fff libsystem_blocks.dylib arm64  <8dd7ed74d37d3dde8eb600edf862c82f> /usr/lib/system/libsystem_blocks.dylib
0x226449000 - 0x2264cafff libsystem_c.dylib arm64  <5dcc765a916a3daeb108d6502c377ae4> /usr/lib/system/libsystem_c.dylib
0x2264cb000 - 0x2264cffff libsystem_configuration.dylib arm64  <99cc1779fbeb371a8dc9971a007cf6e1> /usr/lib/system/libsystem_configuration.dylib
0x2264d0000 - 0x2264d6fff libsystem_containermanager.dylib arm64  <b342816916ef3f3e9e22cf2f1544acfd> /usr/lib/system/libsystem_containermanager.dylib
0x2264d7000 - 0x2264d8fff libsystem_coreservices.dylib arm64  <90373e3876e03823a8ed93ea69564b3d> /usr/lib/system/libsystem_coreservices.dylib
0x2264d9000 - 0x2264dffff libsystem_darwin.dylib arm64  <24fd8e0c02383189a10f80ac34a9755c> /usr/lib/system/libsystem_darwin.dylib
0x2264e0000 - 0x2264e6fff libsystem_dnssd.dylib arm64  <1fb1d15c469934529208e8bd6ad41085> /usr/lib/system/libsystem_dnssd.dylib
0x2264e7000 - 0x226526fff libsystem_info.dylib arm64  <82fee029e7e039cfbf2b75818cd69028> /usr/lib/system/libsystem_info.dylib
0x226527000 - 0x226551fff libsystem_kernel.dylib arm64  <cc9f9508b5bf3478a442f3cec1591804> /usr/lib/system/libsystem_kernel.dylib
0x226552000 - 0x22657ffff libsystem_m.dylib arm64  <fa8fefc7c2f33c228b635f1526ee1943> /usr/lib/system/libsystem_m.dylib
0x226580000 - 0x2265a2fff libsystem_malloc.dylib arm64  <3cf7982226b039749f8eebd3f328c63e> /usr/lib/system/libsystem_malloc.dylib
0x2265a3000 - 0x2265aefff libsystem_networkextension.dylib arm64  <16d95a4894953f70bdbd6b2e6fa2ada3> /usr/lib/system/libsystem_networkextension.dylib
0x2265af000 - 0x2265b5fff libsystem_notify.dylib arm64  <3e85f77a7641310c827a7e926a8bf673> /usr/lib/system/libsystem_notify.dylib
0x2265b6000 - 0x2265c0fff libsystem_platform.dylib arm64  <8b5dd1f4cd3c3c99b2911f7290ddf050> /usr/lib/system/libsystem_platform.dylib
0x2265c1000 - 0x2265d1fff libsystem_pthread.dylib arm64  <beb13d8311cd3aa1a18dea822da57c69> /usr/lib/system/libsystem_pthread.dylib
0x2265d2000 - 0x2265d4fff libsystem_sandbox.dylib arm64  <1328091ae30237658e045dcbb41772f9> /usr/lib/system/libsystem_sandbox.dylib
0x2265d5000 - 0x2265dcfff libsystem_symptoms.dylib arm64  <a31d562710bd3d99a1cff7b78de4491a> /usr/lib/system/libsystem_symptoms.dylib
0x2265dd000 - 0x2265f2fff libsystem_trace.dylib arm64  <813eaa7de9753714a813eabaea1e39e2> /usr/lib/system/libsystem_trace.dylib
0x2265f3000 - 0x2265f8fff libunwind.dylib arm64  <e00ff283d08538c1b34675a5e665bcdc> /usr/lib/system/libunwind.dylib
0x2265f9000 - 0x226626fff libxpc.dylib arm64  <7047fecf09023c959ca2a8499239f4a2> /usr/lib/system/libxpc.dylib
0x226627000 - 0x226882fff libicucore.A.dylib arm64  <9015b4c283943ee891433bd65535e6bf> /usr/lib/libicucore.A.dylib
0x226883000 - 0x226894fff libz.1.dylib arm64  <869dd3bee3ba3e7abd0cbad2f428cdbc> /usr/lib/libz.1.dylib
0x226895000 - 0x226bf1fff CoreFoundation arm64  <8f67863fa23e377190d7993168740877> /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
0x226bf2000 - 0x226c02fff libbsm.0.dylib arm64  <4524c293a9ab3f40bd476f0e665dfc55> /usr/lib/libbsm.0.dylib
0x226c03000 - 0x226c03fff libenergytrace.dylib arm64  <4733292256c23d85910a258f21770d6c> /usr/lib/libenergytrace.dylib
0x226c04000 - 0x226c92fff IOKit arm64  <8cbd79075b063189808df404fe3ae179> /System/Library/Frameworks/IOKit.framework/Versions/A/IOKit
0x226c93000 - 0x226d7afff libxml2.2.dylib arm64  <1b51169d88b436ac8b374a52fc7ee591> /usr/lib/libxml2.2.dylib
0x226d7b000 - 0x226d88fff libbz2.1.0.dylib arm64  <0c1876f0044234339a72c5d1f1ab2c9b> /usr/lib/libbz2.1.0.dylib
0x226d89000 - 0x226da1fff liblzma.5.dylib arm64  <dbbb8e6e5cd333969343748c303a771d> /usr/lib/liblzma.5.dylib
0x226da2000 - 0x226f1bfff libsqlite3.dylib arm64  <48776c5c404d3ed589a60f07eb2e995b> /usr/lib/libsqlite3.dylib
0x226f1c000 - 0x226f50fff libMobileGestalt.dylib arm64  <0d11307f9a3e3ddb80779e03e5e6a31c> /usr/lib/libMobileGestalt.dylib
0x226f51000 - 0x2272fefff CFNetwork arm64  <f76b7b973d7d306484d1922a6b85d0f8> /System/Library/Frameworks/CFNetwork.framework/CFNetwork
0x2272ff000 - 0x2275e9fff Foundation arm64  <25293172df9f3fb99e4ffd4ea250557e> /System/Library/Frameworks/Foundation.framework/Foundation
0x2275ea000 - 0x2276f8fff Security arm64  <198a5510ae6c3605898d3b06c7dec3d9> /System/Library/Frameworks/Security.framework/Security
0x2276f9000 - 0x227762fff SystemConfiguration arm64  <67fe60d5ad553f63a9f973e11e5a9dad> /System/Library/Frameworks/SystemConfiguration.framework/SystemConfiguration
0x227763000 - 0x227795fff libCRFSuite.dylib arm64  <c2a13500b7e33a71b9c36cb6bb890286> /usr/lib/libCRFSuite.dylib
0x227796000 - 0x2277acfff libapple_nghttp2.dylib arm64  <1637a851ff65353888978ec0c4d1e0ac> /usr/lib/libapple_nghttp2.dylib
0x2277ad000 - 0x2277d6fff libarchive.2.dylib arm64  <598c101a5eaa3da89ddf37e4a8003757> /usr/lib/libarchive.2.dylib
0x2277d7000 - 0x22789efff libboringssl.dylib arm64  <257b28e49d1132538179c8d287e8ad16> /usr/lib/libboringssl.dylib
0x22789f000 - 0x2278b5fff libcoretls.dylib arm64  <89b2a60485493023b95e8ec9e624c5f7> /usr/lib/libcoretls.dylib
0x2278b6000 - 0x2278b7fff libcoretls_cfhelpers.dylib arm64  <83728d8a332239578fb6ace719b8e0ac> /usr/lib/libcoretls_cfhelpers.dylib
0x2278b8000 - 0x2278b9fff liblangid.dylib arm64  <eb6be37c1f11338088aaf9cc9b08cc6b> /usr/lib/liblangid.dylib
0x2278ba000 - 0x227c2afff libnetwork.dylib arm64  <c8c1090660d536519b1fad5945225560> /usr/lib/libnetwork.dylib
0x227c2b000 - 0x227c5efff libpcap.A.dylib arm64  <ba41e93b1cca3f14847891c4cf5750cf> /usr/lib/libpcap.A.dylib
0x227c5f000 - 0x227cbcfff libusrtcp.dylib arm64  <3d2ea758e1c3378b9a889d7f84a7a7d4> /usr/lib/libusrtcp.dylib
0x227cbd000 - 0x227cc9fff IOSurface arm64  <24abbc56094a3cdcb452e7e7e58e8ce7> /System/Library/Frameworks/IOSurface.framework/IOSurface
0x227cca000 - 0x227d7cfff libBLAS.dylib arm64  <1227677a0887399cabb9f71366fe24db> /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/libBLAS.dylib
0x227d7d000 - 0x228099fff libLAPACK.dylib arm64  <ce98dc1d007d31619daf31c5adac2442> /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/libLAPACK.dylib
0x22809a000 - 0x228308fff vImage arm64  <41f05566962d355e91f4477b4e772f70> /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/vImage
0x228309000 - 0x22831afff libSparseBLAS.dylib arm64  <338f8bc90d683be99382785725295111> /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/libSparseBLAS.dylib
0x22831b000 - 0x228375fff libvMisc.dylib arm64  <bc70159cdf0e3898a103465d9b005d36> /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/libvMisc.dylib
0x228376000 - 0x2283a4fff libBNNS.dylib arm64  <eb84695115b436b0bc094c2093447946> /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/libBNNS.dylib
0x2283a5000 - 0x2283b9fff libLinearAlgebra.dylib arm64  <20ba3f17bfc0399bb11c86ba2229eb39> /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/libLinearAlgebra.dylib
0x2283ba000 - 0x2283befff libQuadrature.dylib arm64  <f28bbbb64cec3491afa2b8e612bcb6c9> /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/libQuadrature.dylib
0x2283bf000 - 0x22842dfff libSparse.dylib arm64  <115f63580cd03880bd3532006327fc91> /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/libSparse.dylib
0x22842e000 - 0x2284befff libvDSP.dylib arm64  <7e74fa8ecbaf3facb1ac7c3e5b7b2843> /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/libvDSP.dylib
0x2284bf000 - 0x2284bffff vecLib arm64  <a1abbd2b223933ba966abab8ce22b3be> /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/vecLib
0x2284c0000 - 0x2284c0fff Accelerate arm64  <17b91b414a5c3add8f30fe76901ab19a> /System/Library/Frameworks/Accelerate.framework/Accelerate
0x2284c1000 - 0x2284d8fff libcompression.dylib arm64  <14d85278114631f8b8384811ef3ba90d> /usr/lib/libcompression.dylib
0x2284d9000 - 0x228a7dfff CoreGraphics arm64  <d0efda4febfd32be87af4ca6191fa356> /System/Library/Frameworks/CoreGraphics.framework/CoreGraphics
0x228a7e000 - 0x228a83fff IOAccelerator arm64  <82d5bf7d8aa23351881345c17cc0f5d1> /System/Library/PrivateFrameworks/IOAccelerator.framework/IOAccelerator
0x228a84000 - 0x228a89fff libCoreFSCache.dylib arm64  <b15618da4b7f347a9df5eb993d690b9f> /System/Library/Frameworks/OpenGLES.framework/libCoreFSCache.dylib
0x228a8a000 - 0x228b2efff Metal arm64  <20bff78b5b9f3877a27d0083a594eb63> /System/Library/Frameworks/Metal.framework/Metal
0x228b2f000 - 0x228b41fff GraphicsServices arm64  <e8535e857a0c368483051d66703ec391> /System/Library/PrivateFrameworks/GraphicsServices.framework/GraphicsServices
0x228b42000 - 0x228b42fff MobileCoreServices arm64  <84949e37138737c488acfe4d81f23634> /System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices
0x228b43000 - 0x228b45fff IOSurfaceAccelerator arm64  <bbde7ec6029033c48544300be8e04ae3> /System/Library/PrivateFrameworks/IOSurfaceAccelerator.framework/IOSurfaceAccelerator
0x228b46000 - 0x228b88fff AppleJPEG arm64  <47f914569162375c85d858d2edf92463> /System/Library/PrivateFrameworks/AppleJPEG.framework/AppleJPEG
0x228b89000 - 0x229125fff ImageIO arm64  <d93107d7853e394aa20505d1dbf6facf> /System/Library/Frameworks/ImageIO.framework/ImageIO
0x229126000 - 0x229194fff BaseBoard arm64  <345238425f6d348c8cce0c59797c54dd> /System/Library/PrivateFrameworks/BaseBoard.framework/BaseBoard
0x229195000 - 0x2291aafff AssertionServices arm64  <bf3871acff283785bbbc9556abf09265> /System/Library/PrivateFrameworks/AssertionServices.framework/AssertionServices
0x2291ab000 - 0x2291b3fff CorePhoneNumbers arm64  <4123c73c515830768ad46d6c1efbb38c> /System/Library/PrivateFrameworks/CorePhoneNumbers.framework/CorePhoneNumbers
0x2291b4000 - 0x2291f7fff AppSupport arm64  <57d2d9ea472335769c846670f9fddccb> /System/Library/PrivateFrameworks/AppSupport.framework/AppSupport
0x2291f8000 - 0x229210fff CrashReporterSupport arm64  <13c0b22ea99c336b80fb210972762030> /System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport
0x229211000 - 0x229216fff AggregateDictionary arm64  <95a34ce9fd14339383d991821b281389> /System/Library/PrivateFrameworks/AggregateDictionary.framework/AggregateDictionary
0x229217000 - 0x229292fff libTelephonyUtilDynamic.dylib arm64  <d77edc67ae16313fb8ac305524407770> /usr/lib/libTelephonyUtilDynamic.dylib
0x229293000 - 0x2292b1fff ProtocolBuffer arm64  <91032fdf155b3f87924a7525285f16e4> /System/Library/PrivateFrameworks/ProtocolBuffer.framework/ProtocolBuffer
0x2292b2000 - 0x2292e1fff MobileKeyBag arm64  <6dededb77a1e357e8f9e0e4a4637cd8b> /System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag
0x2292e2000 - 0x22931cfff BackBoardServices arm64  <8bdbee668d39300abe172a65eb4a21bf> /System/Library/PrivateFrameworks/BackBoardServices.framework/BackBoardServices
0x22931d000 - 0x22937ffff FrontBoardServices arm64  <3fb118c67c7c30bd8495888e2cae5eeb> /System/Library/PrivateFrameworks/FrontBoardServices


Sent from my iPhone


Sent from my iPhone

Begin forwarded message:

Show quoted text
