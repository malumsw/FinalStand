local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\55\187","\133\25\149\137\225\34\129\168"),function(v42) if (v9(v42,2)==79) then local v101=0;while true do if (v101==0) then v30=v8(v11(v42,2 -1 ,1));return "";end end else local v102=0;local v103;while true do if (v102==0) then v103=v10(v8(v42,16));if v30 then local v121=v13(v103,v30);v30=nil;return v121;else return v103;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v104=(v43/((5 -3)^(v44-1)))%(2^(((v45-1) -(v44-(1 -0))) + 1)) ;return v104-(v104%1) ;else local v105=0;local v106;while true do if (0==v105) then v106=(5 -3)^(v44-(1 + 0)) ;return (((v43%(v106 + v106))>=v106) and 1) or 0 ;end end end end local function v32() local v46=0;local v47;while true do if (v46==1) then return v47;end if (v46==0) then v47=v9(v27,v29,v29);v29=v29 + (1 -0) ;v46=1;end end end local function v33() local v48,v49=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;return (v49 * 256) + v48 ;end local function v34() local v50,v51,v52,v53=v9(v27,v29,v29 + 3 );v29=v29 + (7 -3) ;return (v53 * (16642996 + 134220)) + (v52 * 65536) + (v51 * 256) + v50 ;end local function v35() local v54=0;local v55;local v56;local v57;local v58;local v59;local v60;while true do if (v54==1) then v57=1;v58=(v31(v56,1,20) * (2^32)) + v55 ;v54=2;end if (v54==2) then v59=v31(v56,21,31);v60=((v31(v56,32)==1) and  -1) or 1 ;v54=3;end if (v54==3) then if (v59==0) then if (v58==0) then return v60 * 0 ;else local v122=0;while true do if (v122==0) then v59=1;v57=0;break;end end end elseif (v59==2047) then return ((v58==(791 -(368 + 423))) and (v60 * (1/0))) or (v60 * NaN) ;end return v16(v60,v59-1023 ) * (v57 + (v58/(2^52))) ;end if (v54==0) then v55=v34();v56=v34();v54=1;end end end local function v36(v61) local v62=0;local v63;local v64;while true do if (v62==0) then v63=nil;if  not v61 then v61=v34();if (v61==0) then return "";end end v62=1;end if (3==v62) then return v14(v64);end if (v62==2) then v64={};for v109=1, #v63 do v64[v109]=v10(v9(v11(v63,v109,v109)));end v62=3;end if (v62==1) then v63=v11(v27,v29,(v29 + v61) -1 );v29=v29 + v61 ;v62=2;end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v65={};local v66={};local v67={};local v68={v65,v66,nil,v67};local v69=v34();local v70={};for v78=1,v69 do local v79=v32();local v80;if (v79==1) then v80=v32()~=0 ;elseif (v79==2) then v80=v35();elseif (v79==3) then v80=v36();end v70[v78]=v80;end v68[3]=v32();for v82=1,v34() do local v83=0;local v84;while true do if (v83==0) then v84=v32();if (v31(v84,19 -(10 + 8) ,3 -2 )==0) then local v117=0;local v118;local v119;local v120;while true do if (v117==2) then if (v31(v119,3 -2 ,1)==1) then v120[2]=v70[v120[2]];end if (v31(v119,2,2)==1) then v120[1 + 2 ]=v70[v120[3]];end v117=3;end if (v117==3) then if (v31(v119,3,3)==1) then v120[4]=v70[v120[4]];end v65[v82]=v120;break;end if (v117==1) then v120={v33(),v33(),nil,nil};if (v118==0) then local v130=0;while true do if (v130==0) then v120[571 -(367 + 201) ]=v33();v120[4]=v33();break;end end elseif (v118==1) then v120[930 -(214 + 713) ]=v34();elseif (v118==2) then v120[1 + 2 ]=v34() -(2^16) ;elseif (v118==3) then v120[3]=v34() -(2^16) ;v120[4]=v33();end v117=2;end if (0==v117) then v118=v31(v84,2,3);v119=v31(v84,4,6);v117=1;end end end break;end end end for v85=1,v34() do v66[v85-1 ]=v39();end return v68;end local function v40(v72,v73,v74) local v75=v72[1];local v76=v72[2];local v77=v72[3];return function(...) local v87=v75;local v88=v76;local v89=v77;local v90=v38;local v91=1;local v92= -1;local v93={};local v94={...};local v95=v20("#",...) -1 ;local v96={};local v97={};for v107=0,v95 do if (v107>=v89) then v93[v107-v89 ]=v94[v107 + 1 ];else v97[v107]=v94[v107 + 1 ];end end local v98=(v95-v89) + 1 ;local v99;local v100;while true do local v108=0;while true do if (0==v108) then v99=v87[v91];v100=v99[1];v108=1;end if (v108==1) then if (v100<=(8 + 9)) then if (v100<=8) then if (v100<=3) then if (v100<=1) then if (v100==0) then local v135=0;local v136;local v137;local v138;local v139;while true do if (v135==1) then v92=(v138 + v136) -1 ;v139=0;v135=2;end if (2==v135) then for v334=v136,v92 do v139=v139 + (878 -(282 + 595)) ;v97[v334]=v137[v139];end break;end if (v135==0) then v136=v99[3 -1 ];v137,v138=v90(v97[v136](v21(v97,v136 + (439 -(145 + 293)) ,v99[3])));v135=1;end end else local v140=0;local v141;local v142;local v143;while true do if (v140==1) then v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v99[3];v91=v91 + 1 ;v140=2;end if (v140==4) then v142=v97[v143];v141=v97[v143 + 2 ];if (v141>0) then if (v142>v97[v143 + 1 ]) then v91=v99[3];else v97[v143 + 3 ]=v142;end elseif (v142<v97[v143 + 1 ]) then v91=v99[3];else v97[v143 + 3 ]=v142;end break;end if (v140==3) then v97[v99[2]]=v99[3];v91=v91 + (1638 -(1523 + 114)) ;v99=v87[v91];v143=v99[2 + 0 ];v140=4;end if (v140==0) then v141=nil;v142=nil;v143=nil;v97[v99[432 -(44 + 386) ]]={};v140=1;end if (v140==2) then v99=v87[v91];v97[v99[2]]= #v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v140=3;end end end elseif (v100>(2 -0)) then local v144=v99[1488 -(998 + 488) ];local v145=v97[v144];for v212=v144 + 1 ,v92 do v15(v145,v97[v212]);end else local v146=0;local v147;local v148;local v149;local v150;while true do if (v146==1) then v92=(v149 + v147) -1 ;v150=0;v146=2;end if (v146==0) then v147=v99[2];v148,v149=v90(v97[v147](v21(v97,v147 + 1 ,v92)));v146=1;end if (v146==2) then for v337=v147,v92 do local v338=0;while true do if (v338==0) then v150=v150 + 1 ;v97[v337]=v148[v150];break;end end end break;end end end elseif (v100<=5) then if (v100>4) then v97[v99[1 + 1 ]]=v74[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]][v99[4]];v91=v91 + 1 + 0 ;v99=v87[v91];v97[v99[2]]=v74[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[774 -(201 + 571) ]]=v97[v99[3]][v99[4]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v74[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[1141 -(116 + 1022) ]][v99[4]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v74[v99[3]];v91=v91 + 1 ;v99=v87[v91];if  not v97[v99[2]] then v91=v91 + 1 ;else v91=v99[3];end elseif v97[v99[8 -6 ]] then v91=v91 + 1 + 0 ;else v91=v99[3];end elseif (v100<=6) then local v158=0;local v159;local v160;local v161;while true do if (v158==0) then v159=v88[v99[3]];v160=nil;v158=1;end if (v158==2) then for v339=1,v99[4] do v91=v91 + (3 -2) ;local v340=v87[v91];if (v340[1]==29) then v161[v339-1 ]={v97,v340[3]};else v161[v339-1 ]={v73,v340[1068 -(68 + 997) ]};end v96[ #v96 + 1 ]=v161;end v97[v99[7 -5 ]]=v40(v159,v160,v74);break;end if (v158==1) then v161={};v160=v18({},{[v7("\208\15\245\218\254\234\40","\154\143\80\156\180")]=function(v342,v343) local v344=0;local v345;while true do if (0==v344) then v345=v161[v343];return v345[1][v345[2]];end end end,[v7("\141\12\5\77\89\52\11\129\183\43","\229\210\83\107\40\46\93\101")]=function(v346,v347,v348) local v349=0;local v350;while true do if (v349==0) then v350=v161[v347];v350[1][v350[2]]=v348;break;end end end});v158=2;end end elseif (v100==(1277 -(226 + 1044))) then local v225=0;local v226;while true do if (v225==0) then v226=v99[861 -(814 + 45) ];v97[v226]=v97[v226](v21(v97,v226 + 1 ,v92));break;end end else v97[v99[2]]=v97[v99[3]][v99[4]];end elseif (v100<=12) then if (v100<=(24 -14)) then if (v100>9) then v97[v99[2]]=v73[v99[3]];else v97[v99[2]]={};end elseif (v100==11) then local v165;local v166;local v167,v168;local v169;v97[v99[2]]=v73[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v73[v99[3]];v91=v91 + (4 -3) ;v99=v87[v91];v97[v99[2]]=v73[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]={};v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v73[v99[120 -(32 + 85) ]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2 + 0 ]]=v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];for v213=v99[1 + 1 ],v99[1 + 2 ] do v97[v213]=nil;end v91=v91 + 1 ;v99=v87[v91];v169=v99[2];v167,v168=v90(v97[v169](v21(v97,v169 + 1 ,v99[3])));v92=(v168 + v169) -1 ;v166=0;for v215=v169,v92 do v166=v166 + 1 ;v97[v215]=v167[v166];end v91=v91 + 1 ;v99=v87[v91];v169=v99[2];v165=v97[v169];for v218=v169 + (958 -(892 + 65)) ,v92 do v15(v165,v97[v218]);end else v97[v99[2]]=v97[v99[3]]%v99[4] ;end elseif (v100<=14) then if (v100==13) then if (v97[v99[2]]==v99[4]) then v91=v91 + (2 -1) ;else v91=v99[3];end else local v179=0;local v180;local v181;local v182;local v183;while true do if (10==v179) then v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v99[3] + v97[v99[1084 -(1020 + 60) ]] ;v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]] + v99[4] ;v179=11;end if (v179==7) then v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]= #v97[v99[3]];v179=8;end if (v179==15) then v181,v182=v90(v97[v183](v97[v183 + 1 ]));v92=(v182 + v183) -1 ;v180=0 -0 ;for v351=v183,v92 do local v352=0;while true do if (v352==0) then v180=v180 + 1 ;v97[v351]=v181[v180];break;end end end v91=v91 + 1 ;v99=v87[v91];v179=16;end if (v179==9) then v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]= #v97[v99[3]];v91=v91 + (1 -0) ;v99=v87[v91];v97[v99[2]]=v97[v99[353 -(87 + 263) ]]%v97[v99[4]] ;v179=10;end if (v179==12) then for v353=v183,v92 do local v354=0;while true do if (0==v354) then v180=v180 + (3 -2) ;v97[v353]=v181[v180];break;end end end v91=v91 + 1 ;v99=v87[v91];v183=v99[2];v181,v182=v90(v97[v183](v21(v97,v183 + 1 ,v92)));v92=(v182 + v183) -1 ;v179=13;end if (v179==4) then v97[v99[2]]=v97[v99[3]] + v99[4] ;v91=v91 + 1 ;v99=v87[v91];v183=v99[2];v181,v182=v90(v97[v183](v21(v97,v183 + 1 ,v99[3])));v92=(v182 + v183) -1 ;v179=5;end if (v179==0) then v180=nil;v181,v182=nil;v183=nil;v97[v99[2]]=v97[v99[5 -2 ]];v91=v91 + 1 ;v99=v87[v91];v179=1;end if (v179==6) then v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v73[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v73[v99[3]];v179=7;end if (v179==11) then v91=v91 + 1 ;v99=v87[v91];v183=v99[1425 -(630 + 793) ];v181,v182=v90(v97[v183](v21(v97,v183 + 1 ,v99[3])));v92=(v182 + v183) -1 ;v180=0;v179=12;end if (v179==8) then v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]]%v97[v99[4]] ;v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v99[3] + v97[v99[4]] ;v179=9;end if (v179==3) then v97[v99[2]]=v97[v99[2 + 1 ]];v91=v91 + 1 ;v99=v87[v91];v97[v99[887 -(261 + 624) ]]=v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v179=4;end if (v179==5) then v180=0;for v355=v183,v92 do local v356=0;while true do if (v356==0) then v180=v180 + 1 ;v97[v355]=v181[v180];break;end end end v91=v91 + 1 ;v99=v87[v91];v183=v99[2];v97[v183]=v97[v183](v21(v97,v183 + 1 ,v92));v179=6;end if (v179==1) then v97[v99[2]]=v73[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v73[v99[3]];v91=v91 + 1 ;v99=v87[v91];v179=2;end if (16==v179) then v183=v99[1 + 1 ];v97[v183](v21(v97,v183 + (2 -1) ,v92));break;end if (v179==13) then v180=180 -(67 + 113) ;for v357=v183,v92 do v180=v180 + 1 ;v97[v357]=v181[v180];end v91=v91 + 1 ;v99=v87[v91];v183=v99[2];v97[v183]=v97[v183](v21(v97,v183 + 1 ,v92));v179=14;end if (v179==14) then v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]]%v99[3 + 1 ] ;v91=v91 + 1 ;v99=v87[v91];v183=v99[2];v179=15;end if (v179==2) then v97[v99[2]]=v73[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[3 -1 ]]=v73[v99[3]];v91=v91 + 1 ;v99=v87[v91];v179=3;end end end elseif (v100<=15) then for v219=v99[2],v99[3 + 0 ] do v97[v219]=nil;end elseif (v100==16) then local v230=0;local v231;while true do if (v230==0) then v231=v99[2];do return v21(v97,v231,v92);end break;end end else local v232=0;local v233;while true do if (0==v232) then v233=v99[2];do return v97[v233](v21(v97,v233 + (3 -2) ,v99[3]));end break;end end end elseif (v100<=26) then if (v100<=21) then if (v100<=19) then if (v100>18) then local v184=0;local v185;local v186;local v187;while true do if (v184==1) then v187=v97[v185 + 2 ];if (v187>0) then if (v186>v97[v185 + (3 -2) ]) then v91=v99[3];else v97[v185 + 3 ]=v186;end elseif (v186<v97[v185 + 1 ]) then v91=v99[3];else v97[v185 + 3 ]=v186;end break;end if (v184==0) then v185=v99[2];v186=v97[v185];v184=1;end end elseif  not v97[v99[2]] then v91=v91 + 1 ;else v91=v99[3];end elseif (v100==20) then v97[v99[2]]=v74[v99[3]];else v97[v99[2]]= #v97[v99[3]];end elseif (v100<=23) then if (v100==22) then do return v97[v99[2]]();end else local v191=0;local v192;local v193;local v194;while true do if (v191==1) then v194=v97[v192] + v193 ;v97[v192]=v194;v191=2;end if (v191==0) then v192=v99[2];v193=v97[v192 + 2 ];v191=1;end if (v191==2) then if (v193>0) then if (v194<=v97[v192 + 1 ]) then local v393=0;while true do if (v393==0) then v91=v99[3];v97[v192 + 3 ]=v194;break;end end end elseif (v194>=v97[v192 + 1 ]) then v91=v99[1750 -(760 + 987) ];v97[v192 + 3 ]=v194;end break;end end end elseif (v100<=(976 -(802 + 150))) then local v195=0;local v196;while true do if (v195==0) then v196=nil;v97[v99[2]]=v99[3];v91=v91 + 1 ;v195=1;end if (5==v195) then v91=v99[2 + 1 ];break;end if (v195==3) then v91=v91 + 1 ;v99=v87[v91];v196=v99[2];v195=4;end if (v195==1) then v99=v87[v91];v97[v99[2]]=v99[3];v91=v91 + 1 ;v195=2;end if (v195==2) then v99=v87[v91];v196=v99[2];do return v97[v196](v21(v97,v196 + 1 ,v99[3]));end v195=3;end if (v195==4) then do return v21(v97,v196,v92);end v91=v91 + (767 -(745 + 21)) ;v99=v87[v91];v195=5;end end elseif (v100>25) then v97[v99[5 -3 ]]=v99[11 -8 ];else local v237=0;local v238;while true do if (v237==0) then v238=v99[2];v97[v238]=v97[v238](v21(v97,v238 + (2 -1) ,v99[3]));break;end end end elseif (v100<=30) then if (v100<=(1 + 27)) then if (v100==27) then v97[v99[2]]=v97[v99[3 + 0 ]] + v99[1059 -(87 + 968) ] ;else v97[v99[2]]=v99[3] + v97[v99[4]] ;end elseif (v100==29) then v97[v99[8 -6 ]]=v97[v99[3]];else do return;end end elseif (v100<=32) then if (v100>31) then local v201=0;local v202;local v203;local v204;local v205;while true do if (1==v201) then v97[v99[3 -1 ]]=v99[3];v91=v91 + 1 ;v99=v87[v91];v201=2;end if (v201==3) then v99=v87[v91];v97[v99[2]]=v99[3];v91=v91 + 1 ;v201=4;end if (v201==8) then if (v97[v99[2]]==v99[11 -7 ]) then v91=v91 + 1 + 0 ;else v91=v99[3 -0 ];end break;end if (7==v201) then v97[v205]=v97[v205](v21(v97,v205 + (1414 -(447 + 966)) ,v92));v91=v91 + 1 ;v99=v87[v91];v201=8;end if (v201==6) then v91=v91 + (998 -(915 + 82)) ;v99=v87[v91];v205=v99[2];v201=7;end if (v201==0) then v202=nil;v203,v204=nil;v205=nil;v201=1;end if (v201==4) then v99=v87[v91];v205=v99[2 + 0 ];v203,v204=v90(v97[v205](v21(v97,v205 + 1 ,v99[3])));v201=5;end if (2==v201) then v205=v99[2];v97[v205]=v97[v205](v21(v97,v205 + (2 -1) ,v99[3]));v91=v91 + 1 ;v201=3;end if (v201==5) then v92=(v204 + v205) -1 ;v202=0;for v360=v205,v92 do v202=v202 + 1 ;v97[v360]=v203[v202];end v201=6;end end else local v206=0;local v207;local v208;local v209;local v210;while true do if (v206==1) then v92=(v209 + v207) -1 ;v210=0;v206=2;end if (v206==0) then v207=v99[2];v208,v209=v90(v97[v207](v97[v207 + 1 ]));v206=1;end if (v206==2) then for v363=v207,v92 do local v364=0;while true do if (v364==0) then v210=v210 + 1 ;v97[v363]=v208[v210];break;end end end break;end end end elseif (v100<=33) then v91=v99[3];elseif (v100>34) then local v239=v99[1189 -(1069 + 118) ];v97[v239](v21(v97,v239 + (2 -1) ,v92));else v97[v99[2]]=v97[v99[3]]%v97[v99[4]] ;end v91=v91 + 1 ;break;end end end end;end return v40(v39(),{},v28)(...);end return v23(v7("\30\249\172\111\184\41\17\29\134\208\126\187\93\20\97\249\208\126\191\94\21\102\129\210\120\177\91\103\100\129\208\125\184\89\17\29\134\208\120\187\91\26\100\135\215\124\184\94\18\102\133\175\126\184\91\16\101\143\215\122\190\88\16\29\134\211\125\199\93\18\101\133\215\123\190\95\18\97\134\213\125\199\93\18\100\132\214\119\191\89\17\97\133\210\124\199\93\17\97\249\208\126\190\95\20\107\129\212\126\187\93\22\97\249\208\126\190\95\21\106\128\166\121\186\93\17\98\131\211\1\184\93\21\102\128\209\120\186\91\97\100\131\208\125\184\91\17\29\134\208\120\187\91\100\100\243\214\125\190\92\21\102\134\211\126\190\94\109\98\134\214\119\190\40\21\97\128\213\121\186\90\22\98\133\208\123\187\34\18\98\128\164\120\185\90\22\100\133\214\118\184\94\18\106\133\175\126\184\90\22\100\240\214\11\191\88\20\22\128\210\120\189\90\16\98\133\208\123\187\34\18\98\129\208\120\187\91\19\96\249\214\13\184\93\16\102\133\175\126\184\92\16\98\131\211\1\184\93\18\99\133\175\126\184\95\18\100\249\208\126\184\95\18\98\135\210\124\199\93\18\98\135\208\126\184\92\17\29\134\208\124\184\95\109\98\134\208\127\184\93\18\99\134\208\126\187\93\18\99\132\210\1\184\93\18\96\134\208\126\185\94\109\98\134\210\126\186\34\18\98\134\210\126\184\93\16\98\134\208\122\184\93\19\96\132\175\126\184\93\17\98\134\208\123\187\34\18\98\134\214\124\199\93\18\98\133\208\126\184\44\18\98\134\209\126\184\93\19\98\134\208\122\186\92\17\29\134\208\126\201\93\18\98\135\208\126\185\95\19\102\134\208\126\187\93\18\98\128\211\1\184\93\16\98\134\216\126\184\93\22\98\134\208\125\184\93\18\101\134\208\127\186\92\22\98\134\208\123\184\93\18\106\133\175\126\184\95\18\98\142\208\126\184\88\18\98\134\213\126\184\93\27\98\134\209\124\185\89\18\98\134\214\126\184\93\26\97\249\208\126\186\93\18\106\134\208\126\190\93\18\98\128\208\126\184\44\18\98\132\175\126\190\93\18\98\129\211\1\184\93\18\99\134\208\126\190\95\109\98\134\209\10\187\34\18\98\134\214\122\199\93\18\99\242\216\1\184\93\19\22\133\175\126\184\93\22\102\249\208\126\185\41\17\29\134\208\126\185\89\109\98\134\209\10\187\34\18\98\134\210\122\199\93\18\99\242\211\1\184\93\18\103\133\175\126\184\92\16\99\130\208\126\184\85\18\98\134\209\125\199\93\18\96\134\208\118\184\93\18\106\134\208\126\176\93\18\98\244\208\126\185\95\19\102\134\208\126\177\93\18\98\245\211\1\184\93\19\96\135\212\126\184\93\99\98\134\208\10\187\34\18\98\132\175\126\190\93\18\98\244\208\126\184\92\18\98\134\209\126\184\93\23\96\249\208\126\185\41\17\29\134\208\126\191\89\109\98\134\209\10\187\34\18\98\134\217\122\199\93\18\99\242\211\1\184\93\18\106\130\175\126\184\92\102\97\249\208\126\184\44\22\29\134\208\127\204\94\109\98\134\208\12\188\34\18\98\135\164\126\184\93\97\98\134\208\12\188\34\18\98\135\214\126\184\93\97\98\134\208\127\188\34\18\98\135\208\126\184\93\97\100\249\208\126\185\40\17\29\134\208\126\185\94\109\98\134\208\124\187\34\18\98\134\210\125\199\93\18\98\132\214\1\184\93\100\98\133\166\126\186\91\109\98\134\215\126\188\93\18\96\132\214\122\199\93\18\98\135\208\126\184\95\23\29\134\208\127\186\95\109\98\134\208\125\184\93\18\99\128\175\126\184\93\22\103\249\208\126\185\95\16\29\134\208\126\189\93\18\98\135\211\1\184\93\18\102\132\175\126\184\93\17\98\134\210\127\184\93\18\99\132\175\126\184\93\99\98\134\208\121\190\34\18\98\134\165\126\184\93\26\98\134\208\124\190\34\18\98\134\217\126\184\93\19\100\249\208\126\184\44\18\98\134\210\120\199\93\18\98\244\208\126\184\94\20\29\134\208\126\203\93\18\98\130\214\1\184\93\18\22\142\175\126\184\93\103\98\134\208\120\187\34\18\98\132\208\124\199\93\18\98\240\208\126\184\91\18\98\134\209\122\199\93\18\98\245\208\126\184\43\20\29\134\208\126\202\94\109\98\134\208\124\188\34\18\98\134\163\126\184\93\17\100\249\208\126\184\41\18\98\134\212\120\199\93\18\98\243\208\126\184\92\20\29\134\208\126\206\93\18\98\135\214\1\184\93\18\20\134\208\126\190\93\18\98\240\208\126\185\93\16\29\134\208\126\206\93\18\98\135\208\126\184\43\22\29\134\208\127\184\93\18\98\135\214\1\184\93\19\98\134\208\126\190\93\18\99\134\208\126\185\93\16\29\134\208\127\184\93\18\98\135\208\126\185\93\18\98\132\208\124\199\93\18\99\134\208\126\185\93\18\98\134\209\122\199\93\18\98\242\208\126\185\93\20\29\134\208\126\203\85\109\98\134\208\15\187\34\18\98\134\210\126\184\95\18\96\249\208\126\184\44\18\98\134\161\126\184\93\16\102\249\208\126\184\84\18\98\134\161\120\199\93\18\98\129\211\1\184\93\18\99\134\208\126\188\92\21\98\134\208\125\184\93\18\103\134\208\126\185\95\109\98\134\208\15\184\93\18\97\134\208\126\189\89\109\98\134\209\10\184\93\18\102\134\208\126\186\89\109\98\134\209\127\184\93\18\97\134\208\126\188\89\109\98\134\209\126\184\93\18\97\128\175\126\184\92\103\97\249\208\126\184\92\21\29\134\208\126\188\94\109\98\134\208\124\191\34\18\98\130\208\126\187\93\23\97\249\208\126\187\44\16\103\128\212\124\202\94\99\96\249\208\125\187\34\18\98\132\213\120\188\95\96\98\132\214\1\184\93\100\98\133\166\126\184\92\97\97\249\208\126\186\34\18\100\131\175\126\184\93\19\98\134\208\127\186\34\18\98\134\161\118\199\93\18\98\244\208\126\184\92\18\98\134\209\120\199\93\18\98\132\208\126\184\95\20\29\134\208\126\187\93\18\98\132\214\1\184\93\18\102\142\175\126\184\93\23\98\134\208\125\190\34\18\98\134\214\118\199\93\18\98\129\208\126\184\90\20\29\134\208\126\189\93\18\98\129\214\1\184\93\18\102\133\175\126\184\93\19\98\134\210\126\184\85\18\98\134\212\126\184\93\22\98\134\208\127\184\93\19\96\132\208\126\184\93\23\98\134\208\124\190\34\18\98\134\211\126\184\93\23\98\134\208\124\184\93\19\96\132\175\126\184\93\22\98\134\208\125\190\34\18\98\134\210\126\184\93\22\100\249\208\126\184\92\17\29\134\208\126\186\93\18\96\128\210\1\184\93\18\99\134\208\127\176\93\18\98\135\208\126\184\89\18\98\134\212\124\185\94\109\98\134\209\118\184\93\18\99\132\175\126\184\92\102\98\134\208\127\190\34\18\98\134\217\126\184\93\16\100\249\208\126\185\92\18\98\134\209\126\184\93\16\102\249\208\126\185\93\18\98\134\209\123\199\93\18\98\130\210\127\187\34\18\98\135\162\126\184\93\19\96\249\208\126\184\44\18\98\134\209\126\184\93\22\102\249\208\126\185\91\18\98\134\209\126\184\93\19\102\249\208\126\185\93\18\98\134\209\120\199\93\18\99\243\211\1\184\93\18\99\133\175\126\184\93\19\97\249\208\126\184\94\17\29\134\208\126\187\93\96\97\249\208\126\205\90\27\96\143\213\121\190\44\26\23\133\216\13\187\85\97\97\245\214\10\205\93\17\98\142\211\1\184\93\21\23\244\209\15\187\47\96\102\131\216\120\204\47\99\101\134\210\120\199\93\18\20\134\211\8\184\92\18\19\133\175\126\184\93\20\98\130\211\1\184\93\18\106\134\208\126\185\94\109\98\134\208\122\186\92\17\29\134\208\126\176\93\18\98\135\210\1\184\93\18\19\134\208\126\185\88\109\98\134\209\124\185\85\18\98\134\210\126\184\93\19\97\249\208\126\185\95\16\29\134\208\126\187\93\18\98\132\214\1\184\93\18\99\134\208\126\187\91\109\98\134\208\127\189\34\18\98\134\212\122\199\93\18\98\143\208\126\184\92\18\98\132\208\126\176\93\18\98\135\211\1\184\93\18\97\132\175\126\184\92\103\97\249\208\126\184\92\21\29\134\208","\34\82\182\224\78\136\109"),v17(),...);
-- ⚠️ WARNING: integrity protected!
--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.6) ~  Much Love, Ferib 

]]--
