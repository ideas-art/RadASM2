Windows App
aRC_PROJECT
Template using DialogBoxParam, low resources (by Furious Logic [aRC])
[*BEGINPRO*]
[*BEGINDEF*]
[MakeDef]
Menu=0,0,0,1,1,1,0
1=4,O,porc,1
2=
3=5,O,$B\fhla -w -@ -p:temp -obj:temp "$11" "$1" $R\fhla\Lib\*.lib
4=0,0,,5
5=
6=
7=0,0,$E\OllyDbg,5
[MakeFiles]
0=aRC_PROJECT.rap
1=aRC_PROJECT.rc
2=aRC_PROJECT.asm
3=aRC_PROJECT.obj
4=aRC_PROJECT.res
5=aRC_PROJECT.exe
6=aRC_PROJECT.def
7=aRC_PROJECT.dll
8=aRC_PROJECT.txt
9=aRC_PROJECT.lib
10=aRC_PROJECT.mak
11=aRC_PROJECT.hla
12=aRC_PROJECT
[Resource]
[StringTable]
[VerInf]
[AutoLoad]
1=1
[*ENDDEF*]
[*BEGINTXT*]
aRC_PROJECT.hla
//	RadAsm template:  aRC-DialogBoxParam Light 1.1
//	Created by Furious Logic [aRC]
//	furiouslogic@eml.cc
//
//	It works using only 1 KiB memory !!
//	If it is necessary, increase the heap and stack size.
//	in aRC_PROJECT.link file
//
unit aRC_PROJECT;
?@NoDisplay		:=	true;
?@NoStackAlign	:=	true;
#include ( "w.hhf" );

const
	DLG_MAIN	:=	1000;

static
	hInstance	:	dword;

procedure WinMain; @external ( "_HLAMain" );

procedure DlgProc( lParam: dword; wParam: dword; uMsg: dword; hwnd: dword );
	@nodisplay;
	begin DlgProc;
		if ( uMsg = w.WM_INITDIALOG ) then
			w.LoadIcon( hInstance, "Icon_App" );
			w.SendMessage( hwnd, w.WM_SETICON, true, eax );
			
		elseif ( uMsg = w.WM_COMMAND ) then
			
	
		elseif ( uMsg = w.WM_CLOSE ) then
			w.EndDialog ( hwnd, 0 );
	
		else
			mov ( false, eax );
			exit DlgProc;
		endif;
		mov ( true, eax );
	end DlgProc;

procedure WinMain;
	begin WinMain;
		w.GetModuleHandle( NULL );
		mov( eax, hInstance );
		w.InitCommonControls();
		w.DialogBoxParam( hInstance, val DLG_MAIN, NULL, &DlgProc, NULL );
		w.ExitProcess( 0 );
	end WinMain;

end aRC_PROJECT;
[*ENDTXT*]
[*BEGINTXT*]
aRC_PROJECT.rc
#include	"./Res/aRC_PROJECTDlg.rc"
Icon_App	ICON	DISCARDABLE	"./icons/aRCicon2.ico"

[*ENDTXT*]
[*BEGINTXT*]
temp\aRC_PROJECT.link
-heap:0x400,0x400
-stack:0x400,0x400
-base:0x4000000
-entry:HLAMain
-machine:ix86
-section:.text,ER
-section:.data,RW
-merge:.text=.data
-release
-fixed
kernel32.lib
user32.lib
gdi32.lib
[*ENDTXT*]
[*BEGINBIN*]
icons\aRCicon2.ico
0000010001002020100001000400E80200001600000028000000200000004000
0000010004000000000000000000FC010000FC01000010000000000000000202
020002020400020E0400020E060002190800022A0C00022F1000023B10000246
1200025D1800027E230002A02B0002A62F0002B7330002D33A0002EA40000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000002000020002000000020000000200002577
55775446854000467520246877428ABBAAABA77ABA60048AA95479ABBA98BDEE
DDEEB88BEB8205ADD977ACEEEEDBEEEECDEFB99CEB8238BEC969CEEDDEEEFFCA
9ADEC99BEC7349DEB88AEEB99AEFFFD969DEC97CEB845ADDA77BED9539CEFFDA
9ADEC79CEC848BEC958CEC7136ABDEEDDDEFC97CEB759DEB747CEC830458ABDE
EEFFC89CEC97AEDA518CEB73002179ABCDEFC98CEDAACEC9438CEB8200008999
9ADEC89BFEDDEED9338CEC730000BBA969DEC79CFFFEFFEA747CEB830000DEDB
AADEB78CFEDDDEED958CEC810000ADEEDEEDA78CEDA99BEEA78CEB8200008ADE
EECA748BEC7449DEB89CEC730002469BBBA7437CEC8337CEB99BEB8204580356
7653138CEB7318CEB97CEC8127AB00133110118CEC8449DEB77BED9549CE0000
0000038CEDA89BEEA78AEEB99BEF00000000028CFEDDDEEC9659CEEDDDEE0000
0000008BEFEEEECA6116ACEEEEDB00000000026ABCCBBA97411169ABBA980000
0000004578777743100133667633000000000003133331100000013133000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000
[*ENDBIN*]
[*BEGINBIN*]
aRC_PROJECT.dlg
6500000001000000004954554C4F5F44455F4C415F56454E54414E4100000000
0000000000000000000000000000000000000000000000000000000000000000
00000000000000004D532053616E732053657269660000000000000000000000
000000000000000008000000F5FFFFFF00000000E90300000000000000000000
0000000000000000B20B0A6B000090014E032B0000000000F7DB4100D8033D00
000000000000CF10000000000A0000000A000000900100002C01000057494E44
4F57535F5449544C4500454E54414E4100000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000E8030000444C47
5F4D41494E000000000000000000000000000000000000000000000000000000
0000000000
[*ENDBIN*]
[*ENDPRO*]
[*BEGINTXT*]
res\aRC_PROJECTDlg.rc
#define DLG_MAIN 1000
DLG_MAIN DIALOGEX 6,6,261,163
CAPTION "WINDOWS_TITLE"
FONT 8,"MS Sans Serif",400,0
STYLE 0x10CF0000
EXSTYLE 0x00000000
BEGIN
END
[*ENDTXT*]
