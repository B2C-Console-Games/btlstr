0900 REM Game of BattleStar
0901 REM 
0902 REM Variable List:
0903 REM     A$			- 
0904 REM     B8			- 
0905 REM     B9			- 
0906 REM     C			- 
0907 REM     C$			- Alert Condition
0908 REM     D$[11]		- 
0909 REM     E1			- Hyperdrive Coil Energy
0910 REM     E2			- Star Drive Energy
0911 REM     E3			- Viper Reserve Energy
0912 REM     E4			- Defence Laser Energy
0913 REM     F9			- 
0914 REM     G[11][11]	- 
0915 REM     I			- 
0916 REM     J			- 
0917 REM     K[6][4]	- 
0918 REM     N[10]		- 
0919 REM     N1			- 
0920 REM     N2			- Cylons left.
0921 REM     N3			- 
0922 REM     N4			- 
0923 REM     N5			- 
0924 REM     N6			- 
0925 REM     N7			- 
0926 REM     P			- Number of missles
0927 REM     P4			- 
0928 REM     Q[11][11]	- 
0929 REM     Q$[8]		- 
0930 REM     Q1			- Quadrant Indice
0931 REM     Q2			- Quadrant Indice
0932 REM     Q8			- 
0933 REM     Q9			- 
0934 REM     R[3][4]	- 
0935 REM     S[11][11]	- 
0936 REM     S1			- Sector Indice
0937 REM     S2			- Sector Indice
0938 REM     T			- Game time in Centare
0939 REM     T0			- End time for game. 
0940 REM     T9			- 
0941 REM     W			- 
0942 REM     X			- 
0943 REM     X1			- 
0944 REM     X2			- 
0945 REM     X3			- 
0946 REM     X4			- 
0947 REM     X5			- 
0948 REM     X6			- 
0949 REM     X7			- 
0950 REM     X8			- 
0951 REM     X9			- 
0952 REM     Y			- 
0953 REM     Z9			- 
1000 DIM Q(10,10),G(10,10),K(5,3),R(2,3),Q$(7),S(10,10)
1010 PRINT"WELCOME TO ** BATTLESTAR **          (BY RWMELHUISH)"
1012 PRINT
1013 PRINT
1020 FOR I=1 TO 7
1022 READ Q$(I)
1023 NEXT I
1030 DATA ".","*",B,P,C,E,O
1040 DIM D$(10)
1050 FOR I=1 TO 10
1052 READ D$(I)
1053 NEXT I
1060 DATA H,SS,V,M,G,L,S,C,A,R
1070 T0=INT(RND(-1)*20000)/10+INT(RND(-1)*5000)
1072 Z9=0
1080 DEF FND(X1,X2)=SQR((S1-X1)^2+(S2-X2)^2)
1090 DEF FNR(X1)=INT(RND(X1)*10)+1
1100 T=T9=T0-(60-3*ABS(FNR(-1)-5))
1110 E1=1250
1112 E2=300
1113 E3=2000
1114 Q8=E4=1250
1115 P=13
1116 B8=B9=-1
1120 MAT G=ZER
1130 Q1=FNR(-1)
1132 Q2=FNR(-1)
1133 S1=FNR(-1)
1134 S2=FNR(-1)
1135 N1=N2=N3=F9=P4=0
1140 FOR I=1 TO 10
1142 FOR J=1 TO 10
1143 X1=RND(-1)*50
1144 N4=N5=N6=0
1150 IF X1>.08 THEN 1160
1152 N5=N5+1
1160 IF X1>.28 THEN 1170
1162 N5=N5+1
1170 IF X1>1.28 THEN 1180
1172 N5=N5+1
1180 IF X1>3.28 THEN 1190
1182 N5=N5+1
1190 IF X1>13.28 THEN 1200
1192 N5=N5+1
1200 IF N2<36 THEN 1210
1202 N5=0
1210 N2=N2+N5
1212 IF N1>2 THEN 1220
1213 IF RND(-1)<.97 THEN 1220
1214 N4=1
1220 N7=ABS(FNR(-1)-1)
1222 N1=N1+N4
1223 IF N5>3 THEN 1260
1224 X1=RND(-1)*40
1230 IF X1>4.25 THEN 1240
1232 N6=N6+1
1240 IF X1>16.25 THEN 1250
1242 N6=N6+1
1250 N3=N3+N6
1260 G(I,J)=N6*1000+N5*100+N4*10+N7
1270 IF RND(-1)>.45 THEN 1280
1272 G(I,J)=G(I,J)+.1
1280 NEXT J
1282 NEXT I
1283 IF N1>0 THEN 1300
1290 I=FNR(-1)
1292 J=FNR(-1)
1293 G(I,J)=G(I,J)+10
1294 N1=1
1300 PRINT
1302 PRINT N2;"CYLONS HAVE PENETRATED TERRAN SPACE."
1310 PRINT ".....THEY ARE ASSISTED BY THE EASTERN ALLIANCE."
1320 PRINT "ONLY";N1;"TERRAN PLANET";
1322 IF N1<2 THEN 1340
1330 PRINT "S HAVE";
1332 GOTO 1350
1340 PRINT" HAS";
1350 PRINT" SURVIVED THE INITIAL ASSAULT."
1360 PRINT"YOU HAVE UNTIL CENTARE";T0;"TO DEFEAT THE CYLONS"
1370 PRINT"AND DRIVE AWAY THE EASTERN ALLIANCE."
1380 PRINT
1382 PRINT".....REMEMBER :"
1390 PRINT".....DO NOT RUN INTO ANY BLACK HOLES....."
1400 PRINT
1402 PRINT
1403 C$="WHO CARES"
1404 PRINT" CONTINUE(C)";
1405 INPUT A$
1407 IF A$<>"C" THEN 1404
1410 IF N2=0 THEN 3820
1412 N6=INT(INT(G(Q1,Q2))/1000)
1420 N5=INT(INT(G(Q1,Q2))/100)-N6*10
1430 N4=INT(INT(G(Q1,Q2))/10)-N6*100-N5*10
1440 N7=INT(G(Q1,Q2))-N6*1000-N5*100-N4*10
1450 MAT Q=CON
1460 Q(S1,S2)=3
1462 IF F9<>1 THEN 1470
1463 Q(B9,B8)=4
1470 IF N5=0 THEN 1550
1472 PRINT
1473 PRINT
1480 PRINT"COMPUTER LASERS ACTIVATING  ** RED ALERT **"
1482 PRINT
1490 PRINT"SCANNERS SHOW";N5;"CYLON";
1492 IF N5<2 THEN 1500
1493 PRINT"S";
1500 PRINT"."
1502 FOR I=1 TO N5
1510 GOSUB 2300
1520 K(I,1)=X1
1522 K(I,2)=X2
1523 IF F9=1 THEN 1540
1524 K(I,3)=175+RND(0)*51
1530 IF Z9<>1THEN1540
1532 K(I,3)=K(I,3)/2
1540 Q(X1,X2)=5
1542 NEXT I
1550 IF N6=0 THEN 1600
1552 FOR I=1 TO N6
1560 GOSUB 2300
1570 R(I,1)=X1
1572 R(I,2)=X2
1573 IF F9=1 THEN 1590
1574 R(I,3)=175+RND(0)*51
1580 IF Z9<>1THEN1590
1582 R(I,3)=R(I,3)/1.5
1590 Q(X1,X2)=6
1592 NEXT I
1600 IF N7=0 THEN 1640
1610FOR I=1 TO N7
1620 GOSUB 2300
1630 Q(X1,X2)=2
1632 NEXT I
1640 IF N4=0 THEN 1670
1642 IF F9=1 THEN 1670
1650 GOSUB 2300
1660 Q(X1,X2)=4
1662 B9=X1
1663 B8=X2
1670 IF G(Q1,Q2)<>INT(G(Q1,Q2)) THEN 1700
1680 GOSUB 2300
1690 Q(X1,X2)=7
1700 IF N5<>0 THEN 1710
1702 IF N6=0 THEN 1720
1710 GOSUB 3400
1720 IF N4=0 THEN 1740
1722 IF C$<>"ORBITING" THEN 1740
1730 P=13
1732 E2=300
1733 GOTO1790
1740 IF N5<>0 THEN 1750
1742 IF N6=0 THEN 1760
1750 C$="RED"
1752 GOTO1790
1760 IF E1>399 THEN 1780
1762 PRINT"HYPERDRIVE COILS LOW.  ** YELLOW ALERT **"
1770 C$="YELLOW"
1772 GOTO1790
1780 C$="GREEN"
1790 IF E1<1 THEN 3710
1800 PRINT
1802 PRINT"==================="
1803 FOR I=1 TO 10
1810 FOR J=1 TO 10
1812 PRINT Q$(Q(I,J));" ";
1813 NEXT J
1814 PRINT"  ";
1820 ON I GOTO 1830,1840,1850,1860,1870,1880,1890,1900,1910,1920
1830 PRINT"CENTARE          ";T;"(UNTIL";T0;")"
1832 GOTO 1930
1840 PRINT"CONDITION         ";C$
1842 GOTO 1930
1850 PRINT"QUADRANT      ";Q1;"-";Q2
1852 GOTO 1930
1860 PRINT"SECTOR        ";S1;"-";S2
1862 GOTO 1930
1870 PRINT"HYPERDRIVE AT    ";E1;"-DEVICE #1"
1872 GOTO 1930
1880 PRINT"STAR DRIVE AT    ";E2
1882 GOTO 1930
1890 PRINT"VIPER RESERVES   ";E3;"-DEVICE #2"
1892 GOTO 1930
1900 PRINT"DEFENSE LASERS   ";E4;"-DEVICE #3"
1902 GOTO 1930
1910 PRINT"MISSILES         ";P
1912 GOTO 1930
1920 PRINT"CYLONS LEFT      ";N2
1930 NEXT I
1932 PRINT"==================="
1940 PRINT "COMMAND ";
1942 INPUT A$
1943 IF A$="Q" THEN 3910
1950 FOR I=1 TO 10
1952 IF A$=D$(I) THEN 1990
1953 NEXT I
1960 IF A$<>"OBIWAN KENOBI" THEN 3290
1970 PRINT"YOU HAVE CALLED UPON THE LEGENDARY POWER OF THE FORCE FOR AID."
1980 PRINT"THE FORCE WEAKENS YOUR ENEMIES !"
1982 Z9=1
1983 GOTO1940
1990 ON I GOTO 2000,2040,2450,2840,3930,2310,1800,3290,3140,3970
2000 PRINT"COURSE ";
2003 INPUT C
2004 IF C<1 THEN 1940
2005 IF C>=9 THEN 1940
2010 PRINT "HYPERDRIVE JUMP SPEED ";
2013 INPUT W
2014 IF W<1 THEN 1940
2020 IF W>8 THEN 1940
2023 X5=INT(W*8)
2024 IF E1<=2*X5 THEN 2070
2025 E1=E1-2*X5
2030 T=T+SQR(W)
2033 E1=E1+325*SQR(W)
2034 GOTO 2090
2040 PRINT"COURSE ";
2043 INPUT C
2044 IF C<1 THEN 1940
2045 IF C>=9 THEN 1940
2050 PRINT"STAR SPEED ";
2053 INPUT W
2054 W=W/10
2055 IF W<.2 THEN 1940
2060 IF W>.9 THEN 1940
2063 X5=INT(W*8)
2064 IF E2>=7.5*X5 THEN 2080
2070 PRINT"INSUFFICIENT POWER FOR MOVEMENT"
2073 GOTO 1940
2080 E2=E2-7.5*X5
2083 E1=E1+350*SQR(W)
2084 T=T+SQR(W)/1.5
2090 Q(S1,S2)=1
2093 C$="MOVING"
2094 IF T>T0 THEN 3710
2095 X=S1
2096 Y=S2
2100 GOSUB 2290
2110 FOR I=1TO X5
2113 S1=S1+X1
2114 S2=S2+X2
2115 IF S1<.5 THEN 2190
2120 IF S1>10.5 THEN 2190
2123 IF S2<.5 THEN 2190
2124 IF S2>10.5 THEN 2190
2130 X6=INT(S1+.5)
2133 X7=INT(S2+.5)
2134 IF Q(X6,X7)<>7 THEN 2150
2135 PRINT
2140 PRINT"** YOUR BATTLESTAR HAS BEEN ABSORBED BY A BLACK HOLE **"
2143 GOTO3710
2150 IF INT(ABS(X6-B9)+.5)>1 THEN 2200
2153 IF INT(ABS(X7-B8)+.5)>1 THEN 2200
2160 PRINT"DO YOU WISH TO ORBIT";
2163 INPUT A$
2164 IF A$="Y" THEN 2180
2170 IF A$="YES" THEN 2180
2173 B8=B9=F9=-1
2174 GOTO 2200
2180 C$="ORBITING"
2183 S1=X6
2184 S2=X7
2185 F9=1
2186 GOTO 1410
2190 F9=B8=B9=-1
2200 NEXT I
2203 S1=INT(S1+.5)
2204 S2=INT(S2+.5)
2210 IF S1>0 THEN 2220
2213 S1=S1+10
2214 Q1=Q1-1
2215 GOTO2210
2220 IF S1<11 THEN 2230
2223 S1=S1-10
2224 Q1=Q1+1
2225 GOTO2220
2230 IF S2>0 THEN 2240
2233 S2=S2+10
2234 Q2=Q2-1
2235 GOTO 2230
2240 IF S2<11 THEN 2250
2243 S2=S2-10
2244 Q2=Q2+1
2245 GOTO2240
2250 IF Q1>0 THEN 2260
2253 Q1=Q1+10
2260 IF Q1<11 THEN 2270
2263 Q1=Q1-10
2270 IF Q2>0 THEN 2280
2273 Q2=Q2+10
2280 IF Q2<11 THEN 1410
2283 Q2=Q2-10
2284 GOTO 1410
2290 X1=-SIN((C-1)*.785398)
2293 X2=COS((C-1)*.785398)
2294 RETURN
2300 X1=FNR(-1)
2303 X2=FNR(-1)
2304 IF Q(X1,X2)<>1 THEN 2300
2305 RETURN
2310 IF T-INT(T)>RND(0)/7 THEN 2330
2320 PRINT"NEBULA CLOUD PREVENTS SCAN"
2323 GOTO 1940
2330 PRINT
2333 PRINT"LONGE RANGE SENSOR SCAN FOR QUADRANT";Q1;"-";Q2
2340 PRINT"     |--------|--------|--------|   POSITIONAL KEY (C P *)"
2350 FOR I=Q1-1 TO Q1+1
2353 X1=I
2354 FOR J=Q2-1 TO Q2+1
2355 X2=J
2360 IF X1>0 THEN 2370
2363 X1=X1+10
2370 IF X1<11 THEN 2380
2373 X1=X1-10
2380 IF X2>0 THEN 2390
2383 X2=X2+10
2390 IF X2<11 THEN 2400
2393 X2=X2-10
2400 X3=INT(G(X1,X2)/1000)
2403 N(J-Q2+2)=INT(G(X1,X2))-X3*1000
2410 S(X1,X2)=N(J-Q2+2)
2413 NEXT J
2420 PRINT TAB(5);"  ";N(1);TAB(14);"  ";N(2);TAB(23);"  ";N(3);
2430 PRINT TAB(32);"  "
2433 PRINT"     |--------|--------|--------|"
2440 NEXT I
2443 GOTO 1940
2450 IF N5>0 THEN 2470
2453 IF N6>0 THEN 2470
2460 PRINT"YOU ARE HALLUCINATING; NOTHING IS OUT THERE !!!"
2463 GOTO 1940
2470 PRINT "VIPERS STANDING BY. SQUADRON SIZE";E3
2480 PRINT "HOW MANY UNITS TO LAUNCH ";
2483 INPUT X1
2490 IF E3>=X1 THEN 2510
2500 PRINT"I TOLD YOU THERE ARE ONLY";E3;"UNITS !!!"
2503 GOTO 1940
2510 IF X1<1 THEN 1940
2513 PRINT"VIPERS LAUNCHED"
2514 E3=E3-X1
2515 IF N5=0 THEN2680
2520 X8=0
2523 X9=100
2524 FOR I=1 TO N5
2530 IF (FND(K(I,1),K(I,2)))>X9 THEN 2550
2540 IF K(I,3)<=0 THEN 2550
2543 X8=I
2544 X9=FND(K(I,1),K(I,2))
2550 NEXT I
2553 IF X8=0 THEN 2670
2554 I=X8
2560 IF FND(K(I,1),K(I,2))>3 THEN 2640
2570 IF X1<K(I,3) THEN 2620
2573 X1=X1-K(I,3)
2580 PRINT"CYLON BASE-STAR AT SECTOR";K(I,1);"-";K(I,2);"DESTROYED"
2590 P4=P4+1
2593 K(I,3)=0
2594 Q(K(I,1),K(I,2))=1
2595 N2=N2-1
2600 IF N2=0 THEN 3820
2603 G(Q1,Q2)=G(Q1,Q2)-100
2610 IF S(Q1,Q2)=0 THEN 2520
2613 S(Q1,Q2)=S(Q1,Q2)-100
2614 GOTO 2520
2620 PRINT X1;"CYLON FIGHTERS REMOVED AT SECTOR";K(I,1);"-";K(I,2)
2630 K(I,3)=K(I,3)-X1
2633 X1=0
2634 GOTO 2800
2640 X2=K(I,3)*(FND(K(I,1),K(I,2))/3)^2
2650 IF X1<X2 THEN 2660
2653 X1=X1-X2
2654 GOTO 2580
2660 X1=X1/(FND(K(I,1),K(I,2))/3)^2
2663 GOTO 2620
2670 IF X1=0 THEN 2800
2680 IF N6=0 THEN 2800
2683 FOR I=1 TO N6
2684 IF R(I,3)<=0 THEN 2790
2690 IF FND(R(I,1),R(I,2))>3 THEN 2760
2700 IF X1<R(I,3) THEN 2740
2703 X1=X1-R(I,3)
2710 PRINT"E.A.FLEET AT SECTOR";R(I,1);"-";R(I,2);"DESTROYED"
2720 P4=P4+.5
2723 R(I,3)=0
2724 Q(R(I,1),R(I,2))=1
2725 N3=N3-1
2730 G(Q1,Q2)=G(Q1,Q2)-1000
2733 N6=N6-1
2734 GOTO 2800
2740 PRINT X1;"UNITS HIT IN E.A.FLEET AT SECTOR";R(I,1);"-";R(I,2)
2750 R(I,3)=R(I,3)-X1
2753 X1=0
2754 GOTO 2800
2760 X2=R(I,3)*(FND(R(I,1),R(I,2))/3)^2
2770 IF X1<X2 THEN 2780
2773 X1=X1-X2
2774 GOTO 2710
2780 X1=X1/(FND(R(I,1),R(I,2))/3)^2
2783 GOTO 2740
2790 NEXT I
2800 IF X1<10 THEN 2820
2810 PRINT"COMPUTER REPORTS";X1;"VIPERS EXPLODED IN LAUNCH TUBES"
2820 GOSUB 3400
2830 GOTO 1940
2840 IF P>0 THEN 2850
2843 PRINT"MISSILES EXPENDED"
2844 GOTO 1940
2850 PRINT"COURSE ";
2853 INPUT C
2854 IF C<1 THEN 1940
2855 IF C>=9 THEN 1940
2860 GOSUB 2290
2870 X=S1
2873 Y=S2
2874 IF C$="ORBITING" THEN 2880
2875 P=P-1
2880 PRINT"MISSILE AWAY, TRACKING:"
2890 X=X+X1
2893 Y=Y+X2
2894 IF X<.5 THEN 3130
2900 IF X>10.5 THEN 3130
2903 IF Y<.5 THEN 3130
2904 IF Y>10.5 THEN 3130
2910 PRINT INT(X*100)/100;"-";INT(Y*100)/100
2913 X3=INT(X+.5)
2914 X4=INT(Y+.5)
2920 ON Q(X3,X4) GOTO 2890,2940,2890,3020,2960,3060,2930
2930 PRINT"MISSILE ABSORBED BY BLACK HOLE"
2933 GOTO 3130
2940 PRINT"MISSILE ABSORBED BY STAR - DISRUPTION SLIGHT"
2950 P4=P4-RND(-1)*2
2953 GOTO 3110
2960 PRINT"CYLON BASE-STAR AT SECTOR";X3;"-";X4;"DESTROYED"
2970 P4=P4+1
2973 FOR I=1 TO N5
2974 IF K(I,1)<>X3 THEN 3010
2980 IF K(I,2)<>X4 THEN 3010
2983 K(I,3)=0
2984 G(Q1,Q2)=G(Q1,Q2)-100
2990 IF S(Q1,Q2)=0 THEN 3000
2993 S(Q1,Q2)=S(Q1,Q2)-100
3000 N2=N2-1
3004 IF N2=0 THEN 3820
3005 GOTO 3100
3010 NEXT I
3014 GOTO 3130
3020 PRINT "COMMANDER, WHAT HAVE YOU DONE ??!!"
3024 P4=P4-30
3030 PRINT"*** TERRAN PLANET AT SECTOR";X3;"-";X4;"DESTROYED ***"
3040 PRINT
3044 PRINT"ENERGY BOLT APPROACHING FROM DIRECTION OF FORMER PLANET!"
3050 PRINT
3054 PRINT"                     **** ZZZZAAP  ****"
3055 PRINT
3056 GOTO3710
3060 PRINT"E.A.FLEET AT SECTOR";X3;"-";X4;"DESTROYED"
3070 P4=P4+.5
3074 FOR I=1 TO N6
3075 IF R(I,1)<>X3 THEN3090
3076 IF R(I,2)<>X4 THEN3090
3080 R(I,3)=0
3084 G(Q1,Q2)=G(Q1,Q2)-1000
3085 N3=N3-1
3086 GOTO 3100
3090 NEXT I
3100 Q(X3,X4)=1
3110 GOSUB 3400
3120 GOTO 1940
3130 PRINT"MISSILE MISSED TARGET"
3134 GOTO 3110
3140 PRINT"TRANSFER ENERGY FROM DEVICE # ";
3144 INPUT X1
3150 IF X1=0 THEN 1940
3160 PRINT".... AND ALLOCATE TO DEVICE # ";
3164 INPUT X2
3170 IF X2=0 THEN 1940
3174 IF X2>X1 THEN 3190
3180 PRINT"IMPOSSIBLE, COMMANDER !"
3184 GOTO 1940
3190 IF X2>3 THEN 3180
3194 PRINT"# OF UNITS TO TRANSFER ";
3195 INPUT X3
3200 ON X1 GOTO 3210,3240
3210 IF E1>X3 THEN 3230
3220 PRINT"INSUFFICIENT POWER AVAILABLE"
3224 GOTO 1940
3230 E1=E1-X3
3234 GOTO 3250
3240 IF X3>E3 THEN 3220
3244 E3=E3+X3
3250 ON X2-1 GOTO 3260,3270
3260 E3=E3+X3
3264 GOTO 3280
3270 E4=E4+X3
3274 Q8=Q8+X3
3280 PRINT"TRANSFER COMPLETE"
3284 GOTO 1940
3290 PRINT" H -- HYPERDRIVE JUMP";TAB(37);"COURSE GUIDE"
3300 PRINT" SS - STAR-SPEED MANEUVER"
3310 PRINT" L -- LONG RANGE SENSOR SCAN";TAB(40);"4  3  2"
3320 PRINT" S -- SHORT RANGE SENSOR SCAN";TAB(42);"\|/"
3330 PRINT" V -- LAUNCH VIPERS";TAB(40);"5 -*- 1"
3340 PRINT" M -- FIRE MISSILE";TAB(42);"/|\"
3350 PRINT" A -- ALLOCATE ENERGY UNITS";TAB(40);"6  7  8"
3360 PRINT" G -- GENERATE POWER"
3370 PRINT" R -- RECALL LONG RANGE SENSOR INFORMATION"
3380 PRINT" C -- THIS LIST OF COMMANDS"
3390 PRINT" Q -- QUIT GAME(ABNORMAL ENDING)"
3394 GOTO 1940
3400 IF C$<>"ORBITING" THEN 3420
3410 PRINT"PLANETARY DEFENSES PROTECT YOUR BATTLESTAR"
3414 RETURN
3420 IF Z9=0THEN3430
3424 PRINT"THE FORCE IS WITH YOU !"
3430 C$="GREEN"
3434 Q9=0
3435 IF N5=0 THEN 3550
3436 FOR I=1 TO N5
3440 IF K(I,3)=0 THEN 3540
3444 C$="RED"
3450 IF FND(K(I,1),K(I,2))>3 THEN 3520
3454 E4=E4-K(I,3)
3455 Q9=Q9+K(I,3)
3460 PRINT K(I,3);"UNIT HIT ON LASER";INT(RND(-1)*10)+1;
3470 PRINT"FROM CYLON AT SECTOR";K(I,1);"-";K(I,2)
3474 IF E4>0THEN3490
3480 GOSUB 3740
3490 IF E4>400 THEN 3510
3500 PRINT"LASER CANNONS FAILING !"
3510 GOTO 3540
3520 X1=K(I,3)/(FND(K(I,1),K(I,2))/3)^2
3524 E4=E4-X1
3525 Q9=Q9+X1
3530 PRINT X1;"UNIT HIT ON LASER";INT(RND(-1)*10)+1;
3534 GOTO 3470
3540 NEXT I
3550 IF N6=0 THEN 3660
3554 FOR I=1 TO N6
3555 IF R(I,3)=0THEN3650
3556 C$="RED"
3560 IF FND(R(I,1),R(I,2))>3 THEN 3630
3564 E4=E4-R(I,3)
3565 Q9=Q9+R(I,3)
3570 PRINT R(I,3);"UNIT HIT ON LASER";INT(RND(-1)*10)+1;
3580 PRINT"FROM E.A.FLEET AT SECTOR";R(I,1);"-";R(I,2)
3590 IF E4>0 THEN 3600
3594 GOSUB 3740
3600 IF E4>400 THEN 3620
3610 PRINT"LASER CANNONS FAILING !"
3620 GOTO 3650
3630 X1=R(I,3)/(FND(R(I,1),R(I,2))/3)^2
3634 E4=E4-X1
3635 Q9=Q9+X1
3640 PRINT X1;"UNIT HIT ON LASER";INT(RND(-1)*10)+1;
3644 GOTO 3580
3650 NEXT I
3660 IF E1<=0THEN3710
3664 PRINT ((Q8-E4)/Q8)*100;"PERCENT DAMAGE.";
3670 PRINT"          LASERS FIRING AT";E4;"."
3680 IF Q9<E4 THEN 3700
3690 PRINT"COMMANDER, WE CANNOT WITHSTAND ANOTHER ATTACK !!"
3700 RETURN
3710 PRINT"*** YOU HAVE BEEN DEFEATED ***"
3720 PRINT N2;"CYLON BASE-STARS AND";N3;"E.A.FLEETS REMAIN !!!!"
3730 GOTO 3920
3740 PRINT"DRAWING ENERGY FOR LASER CANNONS"
3744 Q8=Q8-E4+1
3750 IF -E4*1.5+1>E3 THEN 3780
3760PRINT".....TAPPING VIPER FUEL RESERVES"
3770 E3=E3-1+E4*1.25
3774 E4=1
3775 RETURN
3780 IF -E4*1.5+1>E1+E3 THEN 3710
3790PRINT"....> VIPER FUEL EXHAUSTED"
3800 PRINT".......TAPPING HYPERDRIVE COILS"
3810 E4=E4+E3
3814 E3=0
3815 E1=E1-1+E4*1.66
3816 E4=1
3817 RETURN
3820 P4=P4-(T-T9)/2
3824 IF P4>10THEN3870
3825 PRINT
3830 PRINT"EVEN THOUGH THE CYLONS HAVE BEEN DESTROYED, AND THE"
3840 PRINT"EASTERN ALLIANCE HAS FLED, YOU HAVE BEEN TOO DAMAGING"
3850 PRINT"TO TERRAN CIVILIZATIONS TO WIN."
3860 PRINT"..... CALL IT A DRAW ....."
3864 GOTO3920
3870 PRINT
3874 PRINT"CONGRATULATIONS, COMMANDER."
3880 PRINT"THE CYLONS HAVE BEEN DESTROYED, AND THE EASTERN"
3890 PRINT"ALLIANCE HAS FLED, MAKING THIS A GREAT VICTORY"
3900 PRINT"FOR THE TERRAN EMPIRE."
3910 PRINT
3914 PRINT"A RATING GREATER THAN 10 IS GOOD!"
3915 P4=P4-(T-T9)/2
3920 PRINT"=RATING= ";P4
3924 PRINT
3925 PRINT"PLEASE TYPE* DONE"
3926 STOP
3930 IF C$="GREEN" THEN3940
3934 IF C$="YELLOW" THEN3940
3935 GOTO3960
3940 E1=E1+500
3944 T=T+.5
3945 IF T>T0 THEN3710
3950 PRINT"POWER GENERATED"
3954 GOTO1940
3960 PRINT"IMPOSSIBLE UNDER RED ALERT"
3964 GOTO1940
3970 PRINT
3974 FOR X6=1TO10
3975 FOR X7=1TO10
3976 PRINT S(X6,X7);TAB(X7*5);
3980 NEXT X7
3984 PRINT
3985 NEXT X6
3986 GOTO1940
3990 END
