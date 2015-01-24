.head 0 +  Application Description: ATLANTA §301 application program

Galilei Software GmbH
25.05.97  AS, GP
24.11.97  SK inserted help context_id
22.10.98  AS ! UK asked to change the date format from 'ddMMyy' to 'yyMMdd'
	        in the output file header /* see frmPar301.Out301_FileHeader(  ) */
	     + CheckAndUpgrade(  )  /* set HIDDEN = 'j' for NAD fields */
02.11.98  AS  ...sCurrTime || "+" || sFileNr || "++" || sFilePrefix... 
      instead of  ...sCurrTime || ":" || sFileNr || "+" || sFilePrefix...
13.09.00	AH added switching of triggers on/off, clearing of data not stored in files
14.09.00	AH changed design of main form, aded WaitCursor, StatusText to Delete function,
		moved cbActive to Options dialog and added warning to it, unhided dfEinrichtKey
v.1.0.3 @ 20.09.00 AH changed version, date
v.1.0.4 @ 04.10.00 AH added 'Regenerate file' feature; date and version - as constants;
			error msg clearing in Start_301()
v.1.0.5 @ 19.10.00 AH corrected spelling 'Aufnahmestelle' -> 'Annahmestelle'
v.1.0.6 @ 04.01.01 (needs DB v.4.58) AH maked file numbering independent for different rec_offices,
			 put files to the subdirectories
v.3.0.0 @ 19.04.01 AH moved VersionString to INI for p301v3
v.3.0.1 @ 28.04.01 AH removed FilePrefix from OutFileHeader, -Footer calls
v.3.0.2 @ 01.06.01 AH returned back old frmPar301.Out301_FileHeader call
			( change was required only in footer )
v.3.0.4 @ 19.07.01 AH extended trailing delimiters removing to process ':' too
v.3.0.5 @ 17.08.01 AH implemented inline segments
v.3.0.6 @ 19.09.01 AH corrected spelling Einschlißlig->Einschließlich
v.3.0.7 @ 16.12.01 MR added EDIalog fixed format support for 301-export
v.3.0.8 @ 08.01.02 MR fixed: now export files are produced only for Kostenträger with Annahmestelle
v.3.0.9 @ 21.01.02 MR removed "Loeschen" button, function DelNotSent, menuitem Loeshen from the frmPar301
v.3.1.0 @ 08.02.02 MR fixed bug in ReadSegmentFormat function (error message "Wrong segment format in the 301-description at the row #54")
v.3.1.1 @ 21.02.02 MR added EDIalog format support for 301-import
v.3.1.2 @ 25.02.02 MR fixed bug with a constant zero for numbers with a format like 0.00, new string formatting for EDIalog
v.3.1.3 @ 27.02.02 MR fixed bug with reformatting numbers in frmPar301.FormatWord, added check of proper format for numbers to frmPar301.CheckWord
v.3.1.4 @ 01.03.02 MR corrected check and numbers reformatting in CheckWord_301,
		corrected AddTXTSegment_301 (MBEG-TXT, <CRLF>->space)
v.3.1.5 @ 11.03.02 MR added writing appropriate messages to the protocol file during 301-import, events are not selected for 'nicht aktiv' Kostentraegers,
		fixed bug (func. CopyFilesToTable) "commit called even when an error occured"
v.3.1.6 @ 19.04.02 MR: if a path to the import files is empty, files of this type are not imported unless "Read all" is unchecked
		fixed bug: wrong IK-number check order when importing messages
v.3.1.6a @ 23.04.02 MR: added several log messages
v.3.1.7 @ 26.04.02 MR: added the '§301 Satzformat' string to the main window's title and dlgAbout301,
		added pbDelOldErr and function DelOldErrMsg for deleting old erroneous import messages,
		added a cbIgnoreOldErrors checkbox to dlgOptions301 (the program will ignore old erroneous messages during import)
v.3.1.8 @ 10.05.02 MR: added more log messages during 301-import, some changes to commit/rollback sequence in frmPar301.Read301
v.3.1.9 @ 27.05.02 MR added message generation for a particular Fall
v.3.2.0 @ 28.05.02 MR fixed erroneous bCanFetchElse setting in Do301_SegmentSQLs
v.3.2.1 @ 14.08.02 MR fixed: error is not issued when reading non-EDIalog formatted files
		Message being exported is printed to the protocol file,
		also imported message and affected fall is put to the protocol,
		fixed wrong SQL statement (COLUMN->COL),
		changed CheckDBVersion(5.22)
v.3.2.2 @ 14.08.02 MR added 'Browse' buttons to dlgOptions301
v.3.2.3 @ 16.08.02 MR added EVENT.Event_Nr field support (DB version: 5.34, 301 version: 3.14),
		fixed bug with fields initialization (InitSegmentVariables function)
v.3.2.4 @ 29.08.02 MR fixed message importing process: now if a file has a logical mistake, all files are read and process is not broken,
		for EDIalog imported messages: only valid (by name) files are processed.
v.3.2.5 @ 02.09.02 MR fixed a bug in CheckEDIalogFiles (when a directory contains one file, nothing is done)
v.3.2.6 @ 03.09.02 MR added inserting of strArr301 values to log messages (field is specified as index enclosed with '~': "Fall_Key = ~15~" <=> "Fall_Key = " || strArr301[15] )
v.3.2.7 @ 29.10.02 MR fixed bug in frmPar301.Do301_SegmentSQLs: additional data is not fetched when nRepeatCount > 0,
		fixed SQL for 301 bSendForFalls; inline segment corrections for EDIalog; warnings for 301-input;
		button hints are read from the hint file now
v.3.2.8 @ 30.10.02 MR fixed error in 301-format files writing.
v.3.2.9 @ 13.11.02 MR fixed bug "unique constraint violation when sending messages"
v.3.3.0 @ 15.11.02 MR removed smilie ( :-( ) from Write_301Fehler, changed font in dlgOptions tabs,
		new minimal DB version: 5.53, added n301_REQUIRED_* constants
v.3.3.1 @ 22.11.02 MR fixed bug with wrong reading ASCII characters with codes above 126 (frmPar301.GetCharX);
		error is not issued on ZAHL->ENT and ZAHL->ZLG segments (frmPar301.CopyMsgToTable)
v.3.3.2 @ 05.12.02 MR added frmPar301.pbViewErr and tbl301ErrView,
		new minimal DB version: 5.62, new 301 version: 3.21;
		corrected Read301: 'commit' was not made when updating erroneous message
v.3.3.3 @ 17.12.02 MR fixed bug on reading repeated segments, fixed error issuing on reading 'K' segments in Read301_Local
v.3.3.4 @ 11.02.03 MR added AE_Start option for single Fall's messages building, changed Sal{Get|Set}Profile* to GalConfig_{Get|Set}* in INI reading
		fixed bug in frmPar301.AM_Export: protocol is not opened and error is raised
v.3.3.5 @ 11.02.03 MR removed RO_Key check from frmPar301.
v.3.3.6 @ 17.02.03 MR added ZGUT message support
v.3.3.7 @ 17.03.03 MR: fixed special symbols handling for EDIalog messages;
		added handling of AUFN, ENTL, etc. messages as input (containing error messages) - ConvertFHLMessages function;
		added creation of Storno messages for ENTL (BuildENTLStorno function)
v.3.3.8 @ 24.03.03 MR changed column names (select from EVENT): READ -> IS_READ, new required DB version
v.3.3.9 @ 28.03.03 MR fixed FHL segments processing that have extra space characters, multi-FHL receiving fixed
v.3.4.0 @ 05.06.03 MR fixed: error message now issued for 'K' segments with undefined 'M' fields.
v.3.4.1 @ 14.08.03 MR added support for R301_INPUT.MESSAGE_DATE, R301_INPUT.KEY9, R301_UPDATE_FLD.UPD_IF_NULL
v.3.4.2 @ 19.08.03 MR sSysadmName was added to trigger activation procedure
v.3.4.3 @ 23.09.03 MR commented dlg301Options.cbActive (now active on/off is done through Einrichtung settings)
01.07.2006 AS: 301 constants are moved to 301_Const.apl
v.3.4.4 @ 07.07.2004-09.08.2004 AS: using 301_Write.apd, 301_options.apd, 301_ErrView.apd
v.3.4.5 @ 18.08.2004 AS: DB v.6.45 (EVENT.DONE) is used; runs 301event.exe
v.3.4.6 @ 09.09.2004 AS: fixed bug "On AM_GetFallData" there "frmPar301.dt301_AE_Start was used instead of direct :dt301_AE_Start
v.3.4.7 @ 14.09.2004 AS: Msg301_Start(): do not care the value of KSTR.CANCELED
v.3.4.8 @ 23.09.2004 AS: fixed a bug in Out301_MakeFile() ( a concatenation was missed)
v.3.4.9 @ 30.09.2004 AS: fixed another bug in Out301_MakeFile() ('w.' were missed in one of IFs) 
v.3.5.0 @ 14.10.2004 AS: added check to Read301 "is Fall Nr correct" to avoid further stupid Sql Errors.;
		          added tbl301_Input
v.3.5.1 @ 17.11.2004 AS: corrected reading of 301-input files (added Trim for Serment)
.data CLASSPROPSSIZE
0000: 5F00
.enddata
.data CLASSPROPS
0000: 4442475F504C4159 4241434B5F475549 44001000F03656F0 1D4B8047BB59FF9F
0020: 06145C3500417070 5061746800000000 417070506174684C 656E000400000000
0040: 0000557365476C6F 62616C5061746800 0400010000000000 00000000000000
.enddata
.head 1 -  Outline Version - 4.0.35
.head 1 +  Design-time Settings
.data VIEWINFO
0000: 6F00000004000000 FFFF01000D004347 5458566965775374 6174650400080000
0020: 0000000000AD0000 002C000000020000 0003000000FFFFFF FFFFFFFFFFFCFFFF
0040: FFE9FFFFFF7A0000 0010000000DE0200 00D8010000010000 0001000000010000
0060: 000F4170706C6963 6174696F6E497465 6D00000000000001 8004000200000000
0080: 000000BF0000002C 0000000000000001 000000FFFFFFFFFF FFFFFFFCFFFFFFE9
00A0: FFFFFFCEFFFFFF2D 00000000030000D8 0100000000000001 000000030000000F
00C0: 4170706C69636174 696F6E4974656D07 57696E646F777309 66726D5061723330
00E0: 3100000000018004 0001000000000000 00E60000002C0000 0000000000010000
0100: 00FFFFFFFFFFFFFF FFFCFFFFFFE9FFFF FFE5FFFFFF320000 0017030000DD0100
0120: 0000000000010000 00040000000F4170 706C69636174696F 6E4974656D075769
0140: 6E646F7773096672 6D50617233303109 46756E6374696F6E 7300000000
.enddata
.data DT_MAKERUNDLG
0000: 0000000007333031 2E69636F07333031 2E65786507333031 2E646C6C07333031
0020: 2E61706300010101 010A573A5C333031 2E72756E0A573A5C 3330312E646C6C0A
0040: 573A5C3330312E61 706300000101010A 573A5C3330312E61 70640A573A5C3330
0060: 312E646C6C0A573A 5C3330312E617063 00000101010A573A 5C3330312E61706C
0080: 0A573A5C3330312E 646C6C0A573A5C33 30312E6170630000 010101
.enddata
.head 2 -  Outline Window State: Maximized
.head 2 +  Outline Window Location and Size
.data VIEWINFO
0000: 6600010003001B00 0200000000000000 0000D32A921A0500 1D00FFFF4D61696E
0020: 00
.enddata
.data VIEWSIZE
0000: 2100
.enddata
.head 3 -  Left: -0.013"
.head 3 -  Top: 0.0"
.head 3 -  Width:  8.013"
.head 3 -  Height: 4.969"
.head 2 +  Options Box Location
.data VIEWINFO
0000: D4182E07B80B2A00
.enddata
.data VIEWSIZE
0000: 0800
.enddata
.head 3 -  Visible? Yes
.head 3 -  Left: 4.15"
.head 3 -  Top: 1.885"
.head 3 -  Width:  3.8"
.head 3 -  Height: 2.073"
.head 2 +  Class Editor Location
.head 3 -  Visible? No
.head 3 -  Left: 1.038"
.head 3 -  Top: 0.26"
.head 3 -  Width:  5.063"
.head 3 -  Height: 2.719"
.head 2 +  Tool Palette Location
.head 3 -  Visible? No
.head 3 -  Left: 7.775"
.head 3 -  Top: 1.865"
.head 2 -  Fully Qualified External References? Yes
.head 2 -  Reject Multiple Window Instances? Yes
.head 2 -  Enable Runtime Checks Of External References? No
.head 2 -  Use Release 4.0 Scope Rules? No
.head 2 -  Edit Fields Read Only On Disable? No
.head 1 +  Libraries
.head 2 -  File Include: MAINACTS.APL
.head 2 -  File Include: MODUL.APL
.head 2 -  File Include: 301_Const.apl
.head 2 -  Dynalib: Dyna_Vars_INI.apd
.head 2 -  Dynalib: Dyna_Vars_Gnrl.apd
.head 2 -  Dynalib: Dyna_Vars_GHS.apd
.head 2 -  Dynalib: Dyna_Vars_301.apd
.head 2 -  Dynalib: 301_options.apd
.head 2 -  Dynalib: 301_Write.APD
.head 2 -  ! File Include: 301_Write.apl
.head 2 -  Dynalib: 301_ErrView.apd
.head 2 -  ! File Include: 301_GLOB.APL
.head 2 -  File Include: start_exe.apl
.head 2 -  File Include: CLS_HLST.APL
.head 2 -  File Include: GLOBAL_V.APL
.head 2 -  File Include: CLSMODUL.APL
.head 2 -  File Include: Cls_gnrl.apl
.head 2 -  File Include: cls_obj.apl
.head 2 -  File Include: cls_pb.apl
.head 2 -  File Include: SQLHANDL.APL
.head 2 -  File Include: VTFILE.APL
.head 2 -  File Include: VTDOS.APL
.head 2 -  File Include: VTARRAY.APL
.head 2 -  Dynalib: Dyna_Reader.apd
.head 2 -  Dynalib: Dyna_Routine.apd
.head 2 -  ! File Include: ERR_INFO.APL
.head 2 -  ! File Include: CLS_CHOOSE.APL
.head 2 -  ! File Include: qcktabs.apl
.head 2 -  !
.head 1 +  Global Declarations
.head 2 +  Window Defaults
.head 3 +  Tool Bar
.head 4 -  Display Style? Etched
.head 4 -  Font Name: System Default
.head 4 -  Font Size: System Default
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: System Default
.head 4 -  Background Color: System Default
.head 3 +  Form Window
.head 4 -  Display Style? Etched
.head 4 -  Font Name: System Default
.head 4 -  Font Size: System Default
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: System Default
.head 4 -  Background Color: System Default
.head 3 +  Dialog Box
.head 4 -  Display Style? Etched
.head 4 -  Font Name: System Default
.head 4 -  Font Size: System Default
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: System Default
.head 4 -  Background Color: System Default
.head 3 +  Top Level Table Window
.head 4 -  Font Name: System Default
.head 4 -  Font Size: System Default
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: System Default
.head 4 -  Background Color: System Default
.head 3 +  Data Field
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Multiline Field
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Spin Field
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Background Text
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Pushbutton
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 3 +  Radio Button
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Check Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Option Button
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 3 +  Group Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Child Table Window
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  List Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Combo Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Line
.head 4 -  Line Color: Use Parent
.head 3 +  Frame
.head 4 -  Border Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Picture
.head 4 -  Border Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 2 +  Formats
.head 3 -  Number: 0'%'
.head 3 -  Number: #0
.head 3 -  Number: ###000
.head 3 -  Date/Time: MMM d, yyyy hh:mm AMPM
.head 3 -  Date/Time: dd.MM.yyyy
.head 2 +  External Functions
.head 2 +  Constants
.data CCDATA
0000: 3000000000000000 0000000000000000 00000000
.enddata
.data CCSIZE
0000: 1400
.enddata
.head 3 +  System
.head 3 +  User
.head 4 -  String: s301_VERSION = '3.5.1'
.head 4 -  String: s301_DATE = '17.11.2004'
.head 3 -  Enumerations
.head 2 +  Resources
.head 2 +  Variables
.head 3 -  FunctionalVar: P301
.head 4 -  Class: clsP301
.head 2 +  Internal Functions
.head 2 +  Named Menus
.head 2 +  Class Definitions
.data RESOURCE 0 0 1 1674934702
0000: 1F070000EC040000 0000000000000000 0200001200FFFF01 00160000436C6173
0020: 73566172004F7574 6C696E6552006567 496E666F19003C00 000F63006C734765
0040: 6E657261006C4669 656C642200C00000 0100000053190000 01C07C0307000000
0060: 0026037300000001 000D000180040010 0000010000126302 6C44617461466907
0080: 50726F7065C87222 0000019E00040002 00027C03060000C6 008603736C000100
00A0: 0100806800000002 000010000C636C53 716C0048616E646C 659A00C000000500
00C0: 00005B190001D27C 0500001090087300 0001006D00190016 0400037C03B60600
00E0: 9067000100831D00 000019A500017C07 ED0090D100010000 6036000000190009
0100: 017C080000007B90 00340100004F0058 0000190001C27C09 0000001E90000100
0120: 0D00018025000000 00030000000D6302 6C436F6C6C656300 74696F6E7C000000
0140: F60400960400037C 360500720B447300 000100009B040004 B5000306ED0072D9
0160: 0001006408000004 006D0307007B7200 3601000C00580000 190004D87C030800
0180: 9E7200010D000180 1D0011000400000B 63026C4261736963 57806E6440000000
01A0: 02BD0004B5000305 8D007E0B73D10001 0000660400190069 017C06007B7E0034
01C0: 0100000180661D00 0500000A63436F6D 626F4820656C7040 0000027B00046B00
01E0: 03051B00380C73A2 0000010000CD0400 19D200017C06F600 3868000100000180
0200: 8029000000060060 00056344619AA200 00050000B70400B6 03050031620C7300
0220: 01DA000004AC0004 00036D060062CF00 0136000800046B00 0307DB0062B30001
0240: 00CD0C0004DA0003 08F600626C000100 10B0000000190084 017C0A0000003D62
0260: 00011A0000018004 23000700000B0153 637265656E442661 220000017A000004
0280: 6B0003061B007A0C 73B3000100310180 0400080300096352 6163F86B4461E800
02A0: 010000AD0400036F 0086CC0C730001C6 0001800408000900 00096343E0616765
02C0: 4461A300010000B7 0400BE030031920C 7300011B0001807D 200000000A00000D
02E0: 055264696F4C6980 7374426F789A00EC 0005002D1900017C 6F00B8880D730000
0300: 010036001900194B 00017C07DB00B8A3 00010000C1320000 0019D200017C08F6
0320: 00B868000100004B B00000001900B401 7C09003DB800011A 00006400002C0019
0340: 00017C6D0A00B88F 000100C60001801D 00000B0000001963 6CAD476561005461
0360: 626C6542726F0077 73654D61726B40B2 00000200A7190000 B4017C0600215E13
0380: 73000001DA000019 AC000400036D0700 5ECF000186000180 36000C000C001163
03A0: 6C014368696C6454 61774D5EA0000000 030000B71900B401 7C0A00317C137300
03C0: 01DA0000192C0004 00037C690B00007C CF000136001D0019 4B00017C0DD80000
03E0: 007CA30001000021 01803200000D4200 0010636C44006C67 5265706F72746057
0400: 6F72644000F60200 961900017C346800 00EE134673000100 009B190019250001
0420: 7C6900EC0000EED1 0001000010018019 00000E000000000C 6347554953006574
0440: 74696E677322A200 00010000B71900B4 017C080021321573 0000011A00000180
0460: 3603000F0000000B 0063476C6F62616C 562261735E000003 7A000004CB00027C
0480: 1B00381573A30001 0000CD040019D200 017C07F600386800 0100001DB3001900
04A0: B4017C0B003D3800 011A000001800423 001000000A00634D 44494F707469106F
04C0: 6E2200000100BD00 0435000219003D00 7300D90001001801 8004001100C00000
04E0: 066346698C642200 0100DE0004420007 7C030601C532B615 736400010000
.enddata
.head 3 +  Functional Class: clsP301
.head 4 -  Description:
.head 4 -  Derived From
.head 4 -  Class Variables
.head 4 +  Instance Variables
.head 5 -  String: Fall_Key
.head 5 -  String: Kstr_Key
.head 5 -  String: Rechnung_Nr
.head 5 -  String: Kue_Verl_Nr
.head 5 -  Long String: ls[*]
.head 4 +  Functions
.head 5 +  Function: Clear
.head 6 -  Description:
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Set Fall_Key = ''
.head 7 -  Set Kstr_Key = ''
.head 7 -  Set Rechnung_Nr = ''
.head 7 -  Set Kue_Verl_Nr = ''
.head 7 -  Call SalArraySetUpperBound ( ls, 1, -1 )
.head 7 -  Call SalArraySetUpperBound ( strArr301, 1, -1 )
.head 2 +  Default Classes
.head 3 -  MDI Window: cBaseMDI
.head 3 -  Form Window:
.head 3 -  Dialog Box:
.head 3 -  Table Window:
.head 3 -  Quest Window:
.head 3 -  Data Field: clsDataField
.head 3 -  Spin Field:
.head 3 -  Multiline Field:
.head 3 -  Pushbutton: clsHintedPushbutton
.head 3 -  Radio Button: clsRadioButton
.head 3 -  Option Button:
.head 3 -  ActiveX:
.head 3 -  Check Box: clsCheckBox
.head 3 -  Child Table: cQuickTable
.head 3 -  Quest Child Window: cQuickDatabase
.head 3 -  List Box:
.head 3 -  Combo Box:
.head 3 -  Picture:
.head 3 -  Vertical Scroll Bar:
.head 3 -  Horizontal Scroll Bar:
.head 3 -  Column:
.head 3 -  Background Text: clsBackgroundText
.head 3 -  Group Box: clsGroupBox
.head 3 -  Line:
.head 3 -  Frame: clsFrame
.head 3 -  Custom Control:
.head 2 +  Application Actions
.head 3 +  On SAM_AppStartup
.head 4 +  If App_ReadExeArguments(  )
.head 5 -  ! Set SqlIsolationLevel = 'RL'
.head 5 +  If CheckDBVersion( n301_REQUIRED_DB_VERSION ) and CheckVersion( VERSION_301, n301_REQUIRED_DB_VERSION_301 )
.head 6 -  ! Call GalConfig_InitDefault( )
.head 6 -  Call AssignLocking(SalCreateWindow( frmPar301, hWndStar2000 ))
.head 5 +  Else
.head 6 -  Call SalQuit( )
.head 3 +  On SAM_AppExit
.head 4 -  Call App_EndOfSeparateEXE(  )
.head 3 +  On SAM_SqlError
.head 4 +  Select Case MainOnSqlError( )
.head 5 +  Case RETURN_True
.head 6 -  Return TRUE
.head 5 +  Case RETURN_False
.head 6 -  Return FALSE
.head 5 +  Case RETURN_Nothing
.head 6 -  Break
.head 5 +  Default
.head 6 -  Call SalMessageBox( "Return value Error!", "MainOnSqlError( )", MB_IconExclamation )
.head 1 +  Form Window: frmPar301
.head 2 -  Class: clsSimpleForm
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Nachrichten für §301
.head 2 -  Icon File: 301.ICO
.data RESOURCE 2 0 1 2476573350
0000: FE0200007C010000 0000000000000000 0200A20001000120 3010000000E80200
0020: 0000160000002800 0000002000000040 0008000001040000 00A380020000FFFF
0040: 8F80000003008080 0080006800008080 800D008000C0C080 C0000000FF000003
0060: 00FFFF00FF006800 00FFFFFF4D00FF00 07F87777771F7000 77FC77773F0000FE
0080: 002F070088C08888 0777777700708880 8880770888C08888 07700007D7887789
00A0: 8807880777D38088 77918807700777D3 8088779188077007 77D3808877918807
00C0: 700777D3808877E1 88077000D78877D1 88077777D6708877 E188000000E78880
00E0: FD88EF80FD88EF80 FD88EF80FA0000F7 88F00EEEEEEEE3E0 8880F7EEFBE0F7EE
0100: FBE0F7EEFBE001E4 4EEE44EEE44EF14E E088014EE4E4EE4E 4EE4FAEEE081EE4E
0120: EEEE4E4EFBE009E4 E4E4EE4EE4FBE031 4E4EEE4EE4FBE091 E4EEE44E4EF8E44E
0140: E0614EE4EE444EF8 EE4EE0C9E44EEEEE C3E0808077F1EEEE EEFBE0F7EE13E088
0160: 700888F7EE1BE000 0000FF3FE0001800 01C000C000D10080 0000FFFFFFFFFFFF
0180: FFFFFFFFFFFF9F01 001800038007
.enddata
.head 2 -  Accessories Enabled? Class Default
.head 2 -  Visible? Class Default
.head 2 -  Display Settings
.head 3 -  Display Style? Etched
.head 3 -  Visible at Design time? No
.head 3 -  Automatically Created at Runtime? No
.head 3 -  Initial State: Normal
.head 3 -  Maximizable? Class Default
.head 3 -  Minimizable? Class Default
.head 3 -  Allow Child Docking? No
.head 3 -  Docking Orientation: All
.head 3 -  System Menu? Class Default
.head 3 -  Resizable? Class Default
.head 3 -  Window Location and Size
.head 4 -  Left: 1.425"
.head 4 -  Top: 1.073"
.head 4 -  Width:  9.95"
.head 4 -  Width Editable? Class Default
.head 4 -  Height: 5.406"
.head 4 -  Height Editable? Class Default
.head 3 -  Form Size
.head 4 -  Width:  Class Default
.head 4 -  Height: Class Default
.head 4 -  Number of Pages: Class Default
.head 3 -  Font Name: Class Default
.head 3 -  Font Size: Class Default
.head 3 -  Font Enhancement: Class Default
.head 3 -  Text Color: Class Default
.head 3 -  Background Color: Class Default
.head 2 -  Description:
.head 2 -  Named Menus
.head 2 +  Menu
.head 3 +  Popup Menu: &Datei
.head 4 -  Resource Id: 7914
.head 4 -  Enabled when:
.head 4 -  Status Text:
.head 4 -  Menu Item Name:
.head 4 +  Menu Item: &Protokoll anzeigen 
.head 5 -  Resource Id: 7915
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text:
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalPostMsg( pbProtocol, SAM_Click, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 -  Menu Separator
.head 4 +  Menu Item: &Beenden
.head 5 -  Resource Id: 7916
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text:
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalPostMsg( hWndForm, SAM_Close, 0, 0 )
.head 5 -  Menu Item Name:
.head 3 +  Popup Menu: &Vorgang
.head 4 -  Resource Id: 7917
.head 4 -  Enabled when:
.head 4 -  Status Text:
.head 4 -  Menu Item Name:
.head 4 +  Menu Item: &Start
.head 5 -  Resource Id: 7918
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text:
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalIsWindowEnabled( pbStart )
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalPostMsg( pbStart, SAM_Click, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 +  Menu Item: &Wiedereinschreiben ...
.head 5 -  Resource Id: 30441
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text:
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalSendMsg( pbRefresh, SAM_Click, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 +  Menu Item: &Nachrichten speichern
.head 5 -  Resource Id: 8648
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text:
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalIsWindowEnabled( pbWriteMsgs )
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalPostMsg( pbWriteMsgs, SAM_Click, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 -  Menu Separator
.head 4 +  Menu Item: &EVENT Management
.head 5 -  Resource Id: 20092
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text:
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalPostMsg( pbViewEvents, SAM_Click, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 -  Menu Separator
.head 4 +  Menu Item: 301 &Input...
.head 5 -  Resource Id: 34871
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text:
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 +  If VisWinIsWindow( hWnd301Input )
.head 7 -  Call SalBringWindowToTop( hWnd301Input )
.head 7 -  Call SalSetFocus( hWnd301Input )
.head 6 +  Else
.head 7 -  Set hWnd301Input = SalCreateWindow( tbl301_Input, hWndForm )
.head 5 -  Menu Item Name:
.head 4 -  Menu Separator
.head 4 +  Menu Item: &Optionen...
.head 5 -  Resource Id: 7919
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text:
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalPostMsg( pbOptions, SAM_Click, 0, 0 )
.head 5 -  Menu Item Name:
.head 3 +  Popup Menu: &Hilfe
.head 4 -  Resource Id: 37064
.head 4 -  Enabled when:
.head 4 -  Status Text:
.head 4 -  Menu Item Name:
.head 4 +  Menu Item: &Hilfe
.head 5 -  Resource Id: 37066
.head 5 -  Keyboard Accelerator: F1
.head 5 -  Status Text:
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalSendMsg( hWndForm, SAM_Help, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 -  Menu Separator
.head 4 +  Menu Item: &Über...
.head 5 -  Resource Id: 37065
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text:
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalModalDialog( dlgAbout301, frmPar301 )
.head 5 -  Menu Item Name:
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Class Default
.head 4 -  Location? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Size: 0.323"
.head 4 -  Size Editable? Class Default
.head 4 -  Docking Toolbar? Class Default
.head 4 -  Toolbar Docking Orientation: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Resizable? Class Default
.head 3 +  Contents
.head 4 +  Pushbutton: pbExit
.head 5 -  Class Child Ref Key: 0
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsPbExit
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: 0.013"
.head 6 -  Top: 0.031"
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 4 +  Pushbutton: pbOptions
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 5374617274000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 5 -  Class Child Ref Key: 0
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsPbOptionsPic
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: 0.363"
.head 6 -  Top: 0.031"
.head 6 -  Width:  0.35"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.292"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Yes
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Gray
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 4 +  Pushbutton: pbStart
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 5374617274000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 5 -  Class Child Ref Key: 0
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsPushbuttonOk
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: 0.713"
.head 6 -  Top: 0.031"
.head 6 -  Width:  0.35"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.292"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Yes
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name: GO.BMP
.head 5 -  Picture Transparent Color: Chartreuse
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Dark Green
.head 5 -  Background Color: Gray
.head 5 -  Button Appearance: Standard
.head 5 +  Message Actions
.head 6 +  On SAM_Create
.head 7 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 7 -  Set sHint =  GetMessageXX( 2901, 'Start', sGhsMSG_Hint_FileName )
.head 4 +  Pushbutton: pbWriteMsgs
.head 5 -  Class Child Ref Key: 0
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsHintedPushbutton
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: 1.063"
.head 6 -  Top: 0.031"
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name: FILESAVE.BMP
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 +  Message Actions
.head 6 +  On SAM_Create
.head 7 -  Set sHint =  GetMessageXX( 2902, 'Nachrichten speichern', sGhsMSG_Hint_FileName )
.head 7 -  Set nAM_Msg = AM_Export
.head 7 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 4 +  Pushbutton: pbSendFallEvents
.head 5 -  Class Child Ref Key: 0
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsHintedPushbutton
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: 1.413"
.head 6 -  Top: 0.031"
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name: 301_4fall.bmp
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 +  Message Actions
.head 6 +  On SAM_Create
.head 7 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 7 -  Set sHint =  GetMessageXX( 2903, 'Alle Nachrichten eines Falles senden', sGhsMSG_Hint_FileName )
.head 7 -  Set nAM_Msg = AM_GetFallData
.head 4 +  Pushbutton: pbCancel
.head 5 -  Class Child Ref Key: 0
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsPushbuttonCancel
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: 1.763"
.head 6 -  Top: 0.031"
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 +  Message Actions
.head 6 +  On SAM_Create
.head 7 -  Call Disable(  )
.head 7 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 4 +  Pushbutton: pbProtocol
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 5374617274000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 5 -  Class Child Ref Key: 0
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsPbProtocolPic
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: 2.113"
.head 6 -  Top: 0.031"
.head 6 -  Width:  0.35"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.292"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Yes
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Gray
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 4 +  Pushbutton: pbRefresh
.head 5 -  Class Child Ref Key: 0
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsPbRefresh
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: 2.463"
.head 6 -  Top: 0.031"
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name: RELOAD.BMP
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 +  Message Actions
.head 6 +  On SAM_Create
.head 7 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 7 -  Set sHint =  GetMessageXX( 2904, 'Datei wiedereinschreiben...', sGhsMSG_Hint_FileName )
.head 4 +  Pushbutton: pbDelErrMsg
.head 5 -  Class Child Ref Key: 0
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsPbDelete
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: 2.813"
.head 6 -  Top: 0.031"
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 +  Message Actions
.head 6 +  On SAM_Create
.head 7 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 7 -  Set sHint =  GetMessageXX( 2905, 'Alte fehlerhafte empfangene Nachrichten löschen', sGhsMSG_Hint_FileName )
.head 4 +  Pushbutton: pbViewErr
.head 5 -  Class Child Ref Key: 0
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsHintedPushbutton
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: 3.163"
.head 6 -  Top: 0.031"
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name: errview.BMP
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 +  Message Actions
.head 6 +  On SAM_Create
.head 7 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 7 -  Set sHint =  GetMessageXX( 2911, 'Fehlerliste', sGhsMSG_Hint_FileName )
.head 7 -  Set nAM_Msg = AM_Zoom
.head 4 +  Pushbutton: pbViewEvents
.head 5 -  Class Child Ref Key: 0
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsHintedPushbutton
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: 3.513"
.head 6 -  Top: 0.031"
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name: MSG_upd.bmp
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 +  Message Actions
.head 6 +  On SAM_Create
.head 7 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 7 -  Set sHint =  "EVENT Management"
.head 7 -  Set nAM_Msg = AM_Control
.head 2 +  Contents
.head 3 +  Data Field: dfCurrAction1
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 0.075"
.head 6 -  Top: 0.052"
.head 6 -  Width:  1.563"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.24"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Bold
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  Data Field: dfCurrAction2
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.75"
.head 6 -  Top: 0.052"
.head 6 -  Width:  2.75"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.24"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Left
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Bold-Italic
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 -  Background Text: Einrichtung:
.head 4 -  Resource Id: 48523
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundText
.head 4 -  Window Location and Size
.head 5 -  Left: 4.688"
.head 5 -  Top: 0.083"
.head 5 -  Width:  0.888"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfEinrichtKey
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataFieldEinrichtKey
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 5.6"
.head 6 -  Top: 0.052"
.head 6 -  Width:  1.588"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.24"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Yes
.head 5 -  Border? Class Default
.head 5 -  Justify: Left
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 -  Background Text: Datei Name:
.head 4 -  Resource Id: 23979
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundText
.head 4 -  Window Location and Size
.head 5 -  Left: 5.475"
.head 5 -  Top: 0.833"
.head 5 -  Width:  1.1"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfFileName
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 6.625"
.head 6 -  Top: 0.792"
.head 6 -  Width:  2.85"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Center
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 6 -  Call Hide(  )
.head 3 -  Background Text: KSTR:
.head 4 -  Resource Id: 7925
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundTextRight
.head 4 -  Window Location and Size
.head 5 -  Left: 6.5"
.head 5 -  Top: 1.406"
.head 5 -  Width:  1.238"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfKstr_Key
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: 15
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.763"
.head 6 -  Top: 1.365"
.head 6 -  Width:  1.575"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Left
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 6 -  Call Hide(  )
.head 3 -  Background Text: Fall-Nr.:
.head 4 -  Resource Id: 7926
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundTextRight
.head 4 -  Window Location and Size
.head 5 -  Left: 6.5"
.head 5 -  Top: 1.719"
.head 5 -  Width:  1.238"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfMainFall
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: 12
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.763"
.head 6 -  Top: 1.677"
.head 6 -  Width:  1.575"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Left
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 6 -  Call Hide(  )
.head 3 -  Background Text: Rechnung-Nr.:
.head 4 -  Resource Id: 7927
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundTextRight
.head 4 -  Window Location and Size
.head 5 -  Left: 6.5"
.head 5 -  Top: 2.031"
.head 5 -  Width:  1.238"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfRech_Nr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: 15
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.763"
.head 6 -  Top: 1.99"
.head 6 -  Width:  1.575"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Left
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 6 -  Call Hide(  )
.head 3 -  Background Text: Nachricht Nr.:
.head 4 -  Resource Id: 23988
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundText
.head 4 -  Window Location and Size
.head 5 -  Left: 5.313"
.head 5 -  Top: 1.396"
.head 5 -  Width:  1.15"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Yes
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfMsgNr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 5.313"
.head 6 -  Top: 1.594"
.head 6 -  Width:  1.138"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Yes
.head 5 -  Border? Class Default
.head 5 -  Justify: Center
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 6 -  Call Hide(  )
.head 3 -  Background Text: Nachricht:
.head 4 -  Resource Id: 23991
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundTextRight
.head 4 -  Window Location and Size
.head 5 -  Left: 6.725"
.head 5 -  Top: 1.396"
.head 5 -  Width:  0.813"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Yes
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfSection
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.575"
.head 6 -  Top: 1.354"
.head 6 -  Width:  0.7"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Yes
.head 5 -  Border? Class Default
.head 5 -  Justify: Center
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 6 -  Call Hide(  )
.head 3 -  Background Text: Segment:
.head 4 -  Resource Id: 23990
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundTextRight
.head 4 -  Window Location and Size
.head 5 -  Left: 6.725"
.head 5 -  Top: 1.729"
.head 5 -  Width:  0.813"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Yes
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfSegment
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.575"
.head 6 -  Top: 1.688"
.head 6 -  Width:  0.55"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Yes
.head 5 -  Border? Class Default
.head 5 -  Justify: Center
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 6 -  Call Hide(  )
.head 3 -  Background Text: Feld:
.head 4 -  Resource Id: 23989
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundTextRight
.head 4 -  Window Location and Size
.head 5 -  Left: 6.725"
.head 5 -  Top: 2.042"
.head 5 -  Width:  0.813"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Yes
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfField
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.575"
.head 6 -  Top: 2.0"
.head 6 -  Width:  1.725"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Yes
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 6 -  Call Hide(  )
.head 3 -  Background Text: Inhalt der aktuellen Nachricht:
.head 4 -  Resource Id: 7928
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundText
.head 4 -  Window Location and Size
.head 5 -  Left: 5.175"
.head 5 -  Top: 2.469"
.head 5 -  Width:  3.1"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Multiline Field: mlCurrContents
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsMultilineField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  String Type: Long String
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Border? Class Default
.head 5 -  Word Wrap? Yes
.head 5 -  Vertical Scroll? Class Default
.head 5 -  Window Location and Size
.head 6 -  Left: 5.175"
.head 6 -  Top: 2.729"
.head 6 -  Width:  4.3"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 1.76"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 4 -  Message Actions
.head 3 +  List Box: lbStatus301
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.163"
.head 5 -  Top: 1.354"
.head 5 -  Width:  4.838"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.688"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Multiple selection? No
.head 4 -  Sorted? No
.head 4 -  Vertical Scroll? Yes
.head 4 -  Font Name: MS Sans Serif
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Bold
.head 4 -  Text Color: Blue
.head 4 -  Background Color: Default
.head 4 -  Horizontal Scroll? No
.head 4 -  List Initialization
.head 4 -  Message Actions
.head 3 -  Background Text: Letzter Fehler:
.head 4 -  Resource Id: 7929
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundText
.head 4 -  Window Location and Size
.head 5 -  Left: 0.163"
.head 5 -  Top: 3.125"
.head 5 -  Width:  1.4"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Multiline Field: mlError
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsMultilineField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  String Type: Long String
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Border? Class Default
.head 5 -  Word Wrap? Yes
.head 5 -  Vertical Scroll? Class Default
.head 5 -  Window Location and Size
.head 6 -  Left: 0.163"
.head 6 -  Top: 3.344"
.head 6 -  Width:  4.838"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 1.063"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Font Name: MS Sans Serif
.head 5 -  Font Size: 8
.head 5 -  Font Enhancement: Bold
.head 5 -  Text Color: Red
.head 5 -  Background Color: Class Default
.head 4 -  Message Actions
.head 3 -  Group Box: Nachricht / Datei:
.head 4 -  Resource Id: 7930
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 0.088"
.head 5 -  Top: 0.365"
.head 5 -  Width:  3.2"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.677"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 -  Background Text: Gesamt:
.head 4 -  Resource Id: 7931
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundText
.head 4 -  Window Location and Size
.head 5 -  Left: 0.35"
.head 5 -  Top: 0.573"
.head 5 -  Width:  0.725"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfAllNum
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.1"
.head 6 -  Top: 0.563"
.head 6 -  Width:  0.5"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.188"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: MS Sans Serif
.head 5 -  Font Size: 8
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  ! Data Field: dfAllNum
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: Number
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.063"
.head 6 -  Top: 0.281"
.head 6 -  Width:  0.5"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.167"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? No
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: MS Sans Serif
.head 5 -  Font Size: 8
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Gray
.head 5 -  Input Mask: Unformatted
.end
.head 4 -  Message Actions 
.head 3 -  Background Text: Aktuelle:
.head 4 -  Resource Id: 7932
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundText
.head 4 -  Window Location and Size
.head 5 -  Left: 0.35"
.head 5 -  Top: 0.802"
.head 5 -  Width:  0.725"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfCurrNum
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.1"
.head 6 -  Top: 0.792"
.head 6 -  Width:  0.5"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.188"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: MS Sans Serif
.head 5 -  Font Size: 8
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  ! Data Field: dfCurrNum
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: Number
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.063"
.head 6 -  Top: 0.5"
.head 6 -  Width:  0.5"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.167"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? No
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: MS Sans Serif
.head 5 -  Font Size: 8
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Gray
.head 5 -  Input Mask: Unformatted
.end
.head 4 -  Message Actions 
.head 3 -  Background Text: Korrekt:
.head 4 -  Resource Id: 7933
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundText
.head 4 -  Window Location and Size
.head 5 -  Left: 1.763"
.head 5 -  Top: 0.573"
.head 5 -  Width:  0.788"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfAllGood
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 2.575"
.head 6 -  Top: 0.563"
.head 6 -  Width:  0.5"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.188"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: MS Sans Serif
.head 5 -  Font Size: 8
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Blue
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  ! Data Field: dfAllGood
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: Number
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 2.538"
.head 6 -  Top: 0.281"
.head 6 -  Width:  0.5"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.167"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? No
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: MS Sans Serif
.head 5 -  Font Size: 8
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Blue
.head 5 -  Background Color: Gray
.head 5 -  Input Mask: Unformatted
.end
.head 4 -  Message Actions 
.head 3 -  Background Text: Fehlerhaft:
.head 4 -  Resource Id: 7934
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundText
.head 4 -  Window Location and Size
.head 5 -  Left: 1.763"
.head 5 -  Top: 0.802"
.head 5 -  Width:  0.788"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfAllBad
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 2.575"
.head 6 -  Top: 0.792"
.head 6 -  Width:  0.5"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.188"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: MS Sans Serif
.head 5 -  Font Size: 8
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Red
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  ! Data Field: dfAllBad
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: Number
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 2.538"
.head 6 -  Top: 0.51"
.head 6 -  Width:  0.5"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.167"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? No
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: MS Sans Serif
.head 5 -  Font Size: 8
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Red
.head 5 -  Background Color: Gray
.head 5 -  Input Mask: Unformatted
.end
.head 4 -  Message Actions 
.head 3 -  ! clsFrame
.winattr class Frame
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsFrame
.head 4 -  Window Location and Size
.head 5 -  Left: 5.163"
.head 5 -  Top: 0.969"
.head 5 -  Width:  4.613"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.198"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Corners: Square
.head 4 -  Border Style: Etched
.head 4 -  Border Thickness: 1
.head 4 -  Border Color: Dark Gray
.head 4 -  Background Color: Gray
.end
.head 3 -  ! Frame
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 5.163"
.head 5 -  Top: 0.969"
.head 5 -  Width:  4.613"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.198"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Corners: Square
.head 4 -  Border Style: Raised-Shadow
.head 4 -  Border Thickness: 1
.head 4 -  Border Color: Default
.head 4 -  Background Color: Gray
.end
.head 3 -  Group Box: Aktuelle Aktion:
.head 4 -  Resource Id: 7936
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 0.075"
.head 5 -  Top: 1.188"
.head 5 -  Width:  5.025"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 3.281"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  ! clsPushbutton: pbCancel
.data CLASSPROPSSIZE
0000: 2400
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573001100 53656E64656E0945 6D7066616E67656E
0020: 00000000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.winattr class Pushbutton:
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Abbrechen
.head 4 -  Window Location and Size
.head 5 -  Left: 4.65"
.head 5 -  Top: 4.771"
.head 5 -  Width:  1.038"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.271"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: (none)
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Gray
.head 4 -  Image Style: Single
.head 4 -  Text Color: Red
.head 4 -  Background Color: Gray
.head 4 -  Button Appearance: Standard
.end
.head 4 +  Message Actions 
.head 5 +  On SAM_Click
.head 6 -  ! 212=Benutzerabbruch
! 213=Wollen Sie das Programm abbrechen ?
.head 6 +  If SalMessageBox( GetMessage( 213 ),  GetMessage( 212 ) || ' (213)', MB_YesNo | MB_IconStop ) = IDYES
.head 7 -  ! 225= User break !
.head 7 -  Call frmPar301.Write301_Fehler( GetMessage( 225 ) )
.head 7 -  Set frmPar301.bExit = TRUE
.head 5 +  On SAM_Create
.head 6 -  Call Disable(  )
.head 6 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 3 +  Multiline Field: mlTitle
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsMultilineField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  String Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Border? Class Default
.head 5 -  Word Wrap? Yes
.head 5 -  Vertical Scroll? No
.head 5 -  Window Location and Size
.head 6 -  Left: 3.375"
.head 6 -  Top: 0.417"
.head 6 -  Width:  6.063"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.26"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 4 -  Message Actions
.head 3 -  Group Box: Information
.head 4 -  Resource Id: 48524
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 5.188"
.head 5 -  Top: 1.188"
.head 5 -  Width:  4.275"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 1.177"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 2 +  Functions
.head 3 -  !
.head 3 +  ! Function: OpenProtocol
.head 4 -  Description: 
.head 4 -  Returns 
.head 4 -  Parameters 
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  Boolean: bOk
.head 4 +  Actions 
.head 5 -  Set bP301_ProtocolOpened = FALSE
.head 5 -  Set bP301_ProtocolOpened = SalFileOpen( fhProtocol, s301_ProtocolName, OF_Append )
.head 5 +  If Not bP301_ProtocolOpened
.head 6 -  Set bP301_ProtocolOpened = SalFileOpen( fhProtocol, s301_ProtocolName, OF_Create | OF_Append )
.head 5 +  If bP301_ProtocolOpened
.head 6 -  Set bOk = SalFilePutStr( fhProtocol, '' )
.head 6 -  Set bOk = SalFilePutStr( fhProtocol, SalStrRepeatX( '*', 50 ) )
.head 6 -  Set bOk = SalFilePutStr( fhProtocol,
	'* Ausgabe nach § 301      Datum:' || SalFmtFormatDateTime( SalDateCurrent(  ), 'dd/MM/yyyy-hhhh.mm' ) )
.head 6 -  Set bOk = SalFilePutStr( fhProtocol, SalStrRepeatX( '*', 50 ) )
.head 3 +  ! Function: Write301_Fehler
.head 4 -  Description: Opens file (name of file stores in strFileName) if it has not opened yet.
Writes message (stored in strPutMessage) into file.
.head 4 +  Returns 
.head 5 -  Boolean: 
.head 4 +  Parameters 
.head 5 -  Long String: strPutMessage
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  Boolean: bOk
.head 5 -  Long String: strMessage
.head 4 +  Actions 
.head 5 +  If Not bP301_ProtocolOpened
.head 6 -  Set bP301_ProtocolOpened = SalFileOpen( fhProtocol, s301_ProtocolName, OF_Append )
.head 6 +  If Not bP301_ProtocolOpened
.head 7 -  Return FALSE
.head 5 -  Set strMessage = 	"Event: " ||
		 SalStrLeftX( sEvent_Event_Type || "(" || sEvent_Key_9 || ")" || SalStrRepeatX( ' ', 8 ), 8 ) ||
		", Fall Nr: " || 
		 SalStrLeftX( dfMainFall || SalStrRepeatX( ' ', 14 ), 14 ) ||
		", Segment: " || strCurrentSegment ||
		", Index: " || SalStrLeftX( SalNumberToStrX( n301_Index, 0 ) || SalStrRepeatX( ' ', 4 ), 4 ) || 
		' ' || strPutMessage
.head 5 -  Set bOk = SalFilePutStr( fhProtocol, strMessage )
.head 5 +  If Not bOk
.head 6 -  Call SalFileClose( fhProtocol )
.head 5 -  Set mlError = strMessage
.head 5 -  Return bOk
.head 3 +  Function: InitDataFields
.head 4 -  Description:
.head 4 -  Returns
.head 4 +  Parameters
.head 5 -  Number: nAction
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 +  Select Case nAction
.head 6 +  Case 0
.head 7 -  Set dfCurrAction1 = ''
.head 7 -  Set dfCurrAction2 = ''
.head 7 -  Call dfFileName.Hide(  )
.head 7 -  Call dfSection.Hide(  )
.head 7 -  Call dfSegment.Hide(  )
.head 7 -  Call dfField.Hide(  )
.head 7 -  Call dfMsgNr.Hide(  )
.head 7 -  Call dfKstr_Key.Hide(  )
.head 7 -  Call dfMainFall.Hide(  )
.head 7 -  Call dfRech_Nr.Hide(  )
.head 7 -  Break
.head 6 +  Case 1
.head 7 -  Set dfCurrAction1 = 'Senden:'
.head 7 -  Set dfCurrAction2 = 'Nachrichtenerstellung'
.head 7 -  Call dfFileName.Hide(  )
.head 7 -  Call dfSection.Hide(  )
.head 7 -  Call dfSegment.Hide(  )
.head 7 -  Call dfField.Hide(  )
.head 7 -  Call dfMsgNr.Hide(  )
.head 7 -  Call dfKstr_Key.Show(  )
.head 7 -  Call dfMainFall.Show(  )
.head 7 -  Call dfRech_Nr.Show(  )
.head 7 -  Break
.head 6 +  Case 2
.head 7 -  Set dfCurrAction1 = 'Senden:'
.head 7 -  Set dfCurrAction2 = 'Datei schreiben'
.head 7 -  Call dfKstr_Key.Hide(  )
.head 7 -  Call dfMainFall.Hide(  )
.head 7 -  Call dfRech_Nr.Hide(  )
.head 7 -  Call dfSection.Hide(  )
.head 7 -  Call dfSegment.Hide(  )
.head 7 -  Call dfField.Hide(  )
.head 7 -  Call dfMsgNr.Hide(  )
.head 7 -  Call dfFileName.Hide(  )
.head 7 -  Break
.head 6 +  Case 3
.head 7 -  Set dfCurrAction1 = 'Empfangen:'
.head 7 -  Set dfCurrAction2 = 'Datei lesen'
.head 7 -  Call dfKstr_Key.Hide(  )
.head 7 -  Call dfMainFall.Hide(  )
.head 7 -  Call dfRech_Nr.Hide(  )
.head 7 -  Call dfFileName.Show(  )
.head 7 -  Call SalClearField( dfFileName )
.head 7 -  Call dfSection.Show(  )
.head 7 -  Call SalClearField( dfSection )
.head 7 -  Call dfSegment.Show(  )
.head 7 -  Call SalClearField( dfSegment )
.head 7 -  Call dfField.Show(  )
.head 7 -  Call SalClearField( dfField )
.head 7 -  Call dfMsgNr.Show(  )
.head 7 -  Call SalClearField( dfMsgNr )
.head 7 -  Break
.head 6 +  Case 4
.head 7 -  Set dfCurrAction1 = 'Empfangen:'
.head 7 -  Set dfCurrAction2 = 'Nachrichtenbearbeitung'
.head 7 -  Call dfKstr_Key.Hide(  )
.head 7 -  Call dfMainFall.Hide(  )
.head 7 -  Call dfRech_Nr.Hide(  )
.head 7 -  Call dfFileName.Hide(  )
.head 7 -  Call dfSection.Show(  )
.head 7 -  Call SalClearField( dfSection )
.head 7 -  Call dfSegment.Show(  )
.head 7 -  Call SalClearField( dfSegment )
.head 7 -  Call dfField.Show(  )
.head 7 -  Call SalClearField( dfField )
.head 7 -  Call dfMsgNr.Show(  )
.head 7 -  Call SalClearField( dfMsgNr )
.head 7 -  Break
.head 5 -  Set dfAllNum = 0
.head 5 -  Set dfCurrNum = 0
.head 5 -  Set dfAllGood = 0
.head 5 -  Set dfAllBad = 0
.head 5 -  Call SalClearField( mlCurrContents )
.head 5 -  Call SalClearField( mlCurrContents )
.head 5 -  Call SalClearField( mlTitle )
.head 5 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, '---- ' || dfCurrAction1 || dfCurrAction2 || ' -----' ) )
.head 5 -  Call SalUpdateWindow( hWndForm )
.head 3 -  !
.head 3 +  Function: Start_301
.head 4 -  Description:
.head 4 -  Returns
.head 4 +  Parameters
.head 5 -  Number: np301_ToDo
.head 5 -  Boolean: bpSendForFalls
.head 5 -  Boolean: bpReloading
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  Call VisWaitCursor( TRUE )
.head 5 -  Call SetButtonState( FALSE )
.head 5 -  Set bYield = FALSE
.head 5 +  If SalYieldEnable( TRUE )
.head 6 +  If SalYieldQueryState(  )
.head 7 -  Set bYield = SalYieldStartMessages( pbCancel )
.head 5 -  !
.head 5 -  Set bExit = FALSE
.head 5 -  Call f301_Protocol_Open(  )
.head 5 -  Call InitDataFields( 0 )
.head 5 -  Call SalListClear( lbStatus301 )
.head 5 -  Set mlError = ''
.head 5 -  ! Output
.head 5 +  If np301_ToDo != P301_INPUT or bpReloading
.head 6 -  ! Make OUT messages
.head 6 +  If not bpReloading
.head 7 -  Set nMsgCreated = Msg301_Start( bpSendForFalls )
.head 6 -  ! Make OUT files
.head 6 -  Call Out301_Start( bpSendForFalls, bpReloading )
.head 5 -  ! Read In files
.head 5 +  If np301_ToDo != P301_OUTPUT
.head 6 +  If not bpReloading
.head 7 -  Call CopyFilesToTable( )
.head 7 -  ! Operate In messages
.head 7 -  Call Read301( )
.head 5 -  !
.head 5 -  Call f301_Protocol_Close(  )
.head 5 -  Call SalMessageBox( GetMessageX( 202, 'Fertig !' ), '§301', 0 )
.head 5 -  ! ------------------------------------------------
.head 5 -  !
.head 5 +  If bYield
.head 6 -  Call SalYieldStopMessages(  )
.head 5 -  Call SalYieldEnable( FALSE )
.head 5 -  !
.head 5 -  Call SetButtonState( TRUE )
.head 5 -  Call VisWaitCursor( FALSE )
.head 5 -  Call SalStatusSetText( hWndForm, GetMessageX( 202, 'Fertig !' ) )
.head 3 -  !
.head 3 +  Function: Msg301_Start
.head 4 -  Description: This function will call all sections for §301
Returns the number of created messages
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  Boolean: bpSendForFalls
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Number: na301EventNr[ * ]
.head 5 -  String: sEventSelect
.head 5 -  Sql Handle: hsqlEvent
.head 5 -  Number: nCurrEventIndex
.head 5 -  Number: nMaxEventIndex
.head 5 -  Number: nFetch
.head 5 -  String: sList
.head 5 -  Number: nMsg
.head 4 +  Actions
.head 5 +  If Not GalConnect( hsqlEvent )
.head 6 -  Set mlError = 'SQL connect error !!!'
.head 6 -  ! 226=SQL Error: 
.head 6 -  Call f301_Protocol_WriteMsg(  GetMessage( 226 ) || '  CONNECT' )
.head 6 -  Return 0
.head 5 -  !
.head 5 -  Set nMsg = 0
.head 5 -  !
.head 5 -  ! AS 18.08.2004: using DONE
.head 5 +  ! AS 14.09.2004: do not care the value of KSTR.CANCELED (if it was used for a FALL then 301-messages have to be created anyway)
.head 6 -  ! Set sEventSelect = "
select	e.EVENT_NR
into	:frmPar301.nEvent_Event_Nr
from	EVENT e, KSTR k
where	e.EINRICHT_ID = :nEinrichtId
   and	e.KSTR_KEY = k.KSTR_KEY
   and	k.CANCELED = 'N'
   and	( e.DONE is null or e.DONE = 0 ) "
.head 5 -  Set sEventSelect = "
select	e.EVENT_NR
into	:frmPar301.nEvent_Event_Nr
from	EVENT e, KSTR k
where	e.EINRICHT_ID = :nEinrichtId
   and	e.KSTR_KEY = k.KSTR_KEY
   and	( e.DONE is null or e.DONE = 0 ) "
.head 5 +  If bpSendForFalls
.head 6 -  Set sEventSelect = sEventSelect || "
   and	e.fall_key in (" || sFallKeys || ")"
.head 6 +  If not b301_FallUpdateOld
.head 7 -  Set sEventSelect = sEventSelect || "
and	e.MESSAGE_NR is null "
.head 5 +  Else
.head 6 -  Set sEventSelect = sEventSelect || "
   and	e.MESSAGE_NR is null "
.head 5 +  If b301_WriteForAll_RO
.head 6 -  Set sEventSelect = sEventSelect || "
   and	k.RO_KEY is not null "
.head 5 +  Else
.head 6 -  Set sEvent_RO_Key = s301_CurrentRO
.head 6 -  Set sEventSelect = sEventSelect || "
   and	k.RO_KEY = :frmPar301.sEvent_RO_Key "
.head 5 +  If Not ( b301_AUFN and b301_AMBO and b301_ENTL and b301_MBEG and b301_RECH and b301_VERL and b301_ZGUT )
.head 6 +  If b301_AUFN
.head 7 -  Set sList = "'AUFN'"
.head 6 +  If b301_AMBO
.head 7 +  If sList != ''
.head 8 -  Set sList = sList || ", "
.head 7 -  Set sList = sList || "'AMBO'"
.head 6 +  If b301_ZGUT
.head 7 +  If sList != ''
.head 8 -  Set sList = sList || ", "
.head 7 -  Set sList = sList || "'ZGUT'"
.head 6 +  If b301_ENTL
.head 7 +  If sList != ''
.head 8 -  Set sList = sList || ", "
.head 7 -  Set sList = sList || "'ENTL'"
.head 6 +  If b301_MBEG
.head 7 +  If sList != ''
.head 8 -  Set sList = sList || ", "
.head 7 -  Set sList = sList || "'MBEG'"
.head 6 +  If b301_RECH
.head 7 +  If sList != ''
.head 8 -  Set sList = sList || ", "
.head 7 -  Set sList = sList || "'RECH'"
.head 6 +  If b301_VERL
.head 7 +  If sList != ''
.head 8 -  Set sList = sList || ", "
.head 7 -  Set sList = sList || "'VERL'"
.head 6 -  Set sEventSelect = sEventSelect || "
   and	EVENT_TYPE in (" || sList || ")"
.head 5 -  Set sEventSelect = sEventSelect || "
order by	k.RO_KEY, e.EVENT_DATE "
.head 5 -  !
.head 5 +  If Not SqlPrepareAndExecute( hsqlEvent, sEventSelect )
.head 6 -  Call SqlDisconnect( hsqlEvent )
.head 6 -  Set mlError = 'SQL PrepareAndExecute error (EVENT) !!!'
.head 6 -  Call f301_Protocol_WriteMsg(  GetMessage( 226 ) || "  'PrepareAndExecute'  " )
.head 6 -  Return 0
.head 5 -  Set nMaxEventIndex = 0
.head 5 +  While SqlFetchNext( hsqlEvent, nFetch )
.head 6 -  Set na301EventNr[ nMaxEventIndex ] = nEvent_Event_Nr
.head 6 -  Set nMaxEventIndex = nMaxEventIndex + 1
.head 5 -  Call SqlDisconnect( hsqlEvent )
.head 5 -  !
.head 5 +  If nMaxEventIndex > 0
.head 6 -  Call InitDataFields( 1 )
.head 6 -  Set dfAllNum = nMaxEventIndex
.head 6 -  Set dfCurrNum = 0
.head 6 -  Set nCurrEventIndex = 0
.head 6 -  !
.head 6 -  Call f301_OpenChannels(  )
.head 6 +  While nCurrEventIndex < nMaxEventIndex and Not bExit
.head 7 -  Set dfCurrNum = dfCurrNum + 1
.head 7 -  Set mlError = ''
.head 7 -  ! Do Create !
.head 7 +  If f301_MakeCurrMsg( 
	na301EventNr[ nCurrEventIndex ], FALSE, FALSE, 
	mlCurrContents, pbCancel, lbStatus301, 
	dfMainFall, dfKstr_Key, dfRech_Nr, mlTitle,
	bExit )	! Msg301_Create(  )
.head 8 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, 'Ok' ) )
.head 8 -  Set nMsg = nMsg + 1
.head 8 -  Set dfAllGood = nMsg
.head 7 +  Else
.head 8 -  Call SalListAdd( lbStatus301, 'Fehler' )
.head 8 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, '' ) )
.head 8 -  Set dfAllBad = dfAllBad + 1
.head 7 -  !
.head 7 -  Set nCurrEventIndex = nCurrEventIndex + 1
.head 6 -  Call f301_CloseChannels( FALSE )
.head 5 -  !
.head 5 -  Return nMsg
.head 3 +  ! !! Functions for Making Messages §301
.head 4 +  ! Function: Msg301_Start
.head 5 -  Description: This function will call all sections for §301
Returns the number of created messages
.head 5 +  Returns 
.head 6 -  Number: 
.head 5 -  Parameters 
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  Long String: sEventSelect
.head 6 -  : hsqlEvent
.head 6 -  Number: nCurrEvent
.head 6 -  Number: nErr
.head 6 -  String: sList
.head 6 -  Number: nMsg
.head 5 +  Actions 
.head 6 -  Set nMsg = 0
.head 6 -  !
.head 6 -  Set sEventSelect = "
select	e.EVENT_NR, e.EVENT_TYPE, 
	e.KEY_9, e.REASON, 
	e.RO_KEY, e.KK_IK, e.IS_READ, e.BEW_NR,
	e.KSTR_KEY, e.FALL_KEY, e.RECHNUNG_NR,
	e.MESSAGE_NR, e.MESSAGE_NR_EDI
into	:frmPar301.nEvent_Event_Nr, :frmPar301.sEvent_Event_Type, 
	:frmPar301.sEvent_Key_9, :frmPar301.sEvent_Reason,
	:frmPar301.sEvent_RO_Key, :frmPar301.nEvent_KK_IK, :frmPar301.sEvent_Read, :frmPar301.nEvent_Bew_Nr,
	:frmPar301.sEvent_Kstr_Key, :frmPar301.nEvent_Fall_Key, :frmPar301.nEvent_Rech_Nr,
	:frmPar301.nMessageNr, :frmPar301.nMessageNrEDI
from	EVENT e, KSTR k
where	e.EINRICHT_ID = :nEinrichtId
   and	e.KSTR_KEY = k.KSTR_KEY
   and	k.CANCELED = 'N' "
.head 6 +  If bSendForFalls
.head 7 -  Set sEventSelect = sEventSelect || "
   and	e.fall_key in (" || sFallKeys || ")"
.head 7 +  If not b301_FallUpdateOld
.head 8 -  Set sEventSelect = sEventSelect || "
and	MESSAGE_NR is null "
.head 6 +  Else 
.head 7 -  Set sEventSelect = sEventSelect || "
   and	MESSAGE_NR is null "
.head 6 +  If b301_WriteForAll_RO
.head 7 -  Set sEventSelect = sEventSelect || "
   and	e.RO_KEY is not null "
.head 6 +  Else 
.head 7 -  Set sEvent_RO_Key = s301_CurrentRO
.head 7 -  Set sEventSelect = sEventSelect || "
   and	e.RO_KEY = :frmPar301.sEvent_RO_Key "
.head 6 +  If Not ( b301_AUFN and b301_AMBO and b301_ENTL and b301_MBEG and b301_RECH and b301_VERL and b301_ZGUT )
.head 7 +  If b301_AUFN
.head 8 -  Set sList = "'AUFN'"
.head 7 +  If b301_AMBO
.head 8 +  If sList != ''
.head 9 -  Set sList = sList || ", "
.head 8 -  Set sList = sList || "'AMBO'"
.head 7 +  If b301_ZGUT
.head 8 +  If sList != ''
.head 9 -  Set sList = sList || ", "
.head 8 -  Set sList = sList || "'ZGUT'"
.head 7 +  If b301_ENTL
.head 8 +  If sList != ''
.head 9 -  Set sList = sList || ", "
.head 8 -  Set sList = sList || "'ENTL'"
.head 7 +  If b301_MBEG
.head 8 +  If sList != ''
.head 9 -  Set sList = sList || ", "
.head 8 -  Set sList = sList || "'MBEG'"
.head 7 +  If b301_RECH
.head 8 +  If sList != ''
.head 9 -  Set sList = sList || ", "
.head 8 -  Set sList = sList || "'RECH'"
.head 7 +  If b301_VERL
.head 8 +  If sList != ''
.head 9 -  Set sList = sList || ", "
.head 8 -  Set sList = sList || "'VERL'"
.head 7 -  Set sEventSelect = sEventSelect || "
   and	EVENT_TYPE in (" || sList || ")"
.head 6 -  Set sEventSelect = sEventSelect || "
order by	e.RO_KEY, e.EVENT_DATE "
.head 6 -  !
.head 6 +  If Not hsqlEvent.Connect(  )
.head 7 -  Set mlError = 'SQL connect error !!!'
.head 7 -  ! 226=SQL Error: 
.head 7 -  Call Write301_Fehler(  GetMessage( 226 ) || '  CONNECT' )
.head 7 -  Return 0
.head 6 -  Call hsqlEvent.Initialize( sEventSelect )
.head 6 +  If Not hsqlEvent.PrepareAndExecute(  )
.head 7 -  Set mlError = 'SQL PrepareAndExecute error (EVENT) !!!'
.head 7 -  Call Write301_Fehler(  GetMessage( 226 ) || "  'PrepareAndExecute'  " )
.head 7 -  Call hsqlEvent.Disconnect(  )
.head 7 -  Return 0
.head 6 +  If hsqlEvent.nResultSetCount > 0
.head 7 -  Call InitDataFields( 1 )
.head 7 -  Set dfAllNum = hsqlEvent.nResultSetCount
.head 7 -  Set dfCurrNum = 0
.head 7 -  Set nCurrEvent = 0
.head 7 -  !
.head 7 +  While nCurrEvent < hsqlEvent.nResultSetCount and Not bExit
.head 8 +  If hsqlEvent.FetchRow( nCurrEvent, nErr, TRUE )
.head 9 -  Set dfCurrNum = dfCurrNum + 1
.head 9 -  Set dfKstr_Key = sEvent_Kstr_Key
.head 9 -  Set dfMainFall = SalNumberToStrX( nEvent_Fall_Key, 0 )
.head 9 +  If nEvent_Rech_Nr != NUMBER_Null
.head 10 -  Set dfRech_Nr = SalNumberToStrX( nEvent_Rech_Nr, 0 )
.head 9 +  Else 
.head 10 -  Call SalClearField( dfRech_Nr )
.head 9 -  Set mlTitle = sEvent_Event_Type || ' - ' || sEvent_Key_9 || ' - ' || sEvent_Reason
.head 9 -  Set mlCurrContents = ''
.head 9 -  Set mlError = ''
.head 9 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, sEvent_Event_Type || ' - ' || sEvent_Key_9 ) )
.head 9 -  ! Do Create !
.head 9 +  If f301_MakeCurrMsg(  )	! Msg301_Create(  )
.head 10 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, 'Ok' ) )
.head 10 -  Set nMsg = nMsg + 1
.head 10 -  Set dfAllGood = nMsg
.head 9 +  Else 
.head 10 -  Call SalListAdd( lbStatus301, 'Fehler' )
.head 10 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, '' ) )
.head 10 -  Set dfAllBad = dfAllBad + 1
.head 8 -  Set nCurrEvent = nCurrEvent + 1
.head 6 -  Call hsqlEvent.Disconnect(  )
.head 6 -  !
.head 6 -  Return nMsg
.head 4 +  ! Function: Msg301_Create
.head 5 -  Description: Creates §301-Message depends on *Event_* variables
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 -  Parameters 
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  String: strCurrSection
.head 6 -  !
.head 6 -  Number: nCurrMainRow
.head 6 -  Boolean: bUpdatedGlobal
.head 6 -  Boolean: bUpdatedLocal
.head 5 +  Actions 
.head 6 -  Call SqlImmediate( "
select	TITLE
from	W301_MAIN
where	SECTION = :frmPar301.sEvent_Event_Type
into	:frmPar301.s301_sectionTitle" )
.head 6 -  Set s301_Section = sEvent_Event_Type
.head 6 -  Set mlTitle = s301_sectionTitle || ' - ' || sEvent_Key_9 || ' - ' || sEvent_Reason
.head 6 -  Set bYield = SalYieldEnable( TRUE )
.head 6 -  ! Open SQL Channels and Execute MainLoop-select
.head 6 +  If Not OpenChannels( )
.head 7 -  Return FALSE
.head 6 -  Set bUpdatedGlobal = FALSE
.head 6 -  Set bYield = SalYieldStartMessages( pbCancel )
.head 6 -  ! 
Reset strArr301
.head 6 -  Call SalArraySetUpperBound ( strArr301, 1, -1 )
.head 6 -  Set strArr301[0] = ''
.head 6 -  !
.head 6 -  Set mlError = ''
.head 6 -  Set mlCurrContents = ''
.head 6 -  ! 
!
.head 6 -  Set bUpdatedLocal = Msg301_MakeCurrMsg(  )
.head 6 -  !
.head 6 +  ! If Not bUpdatedLocal
.head 7 -  Call SqlImmediate( 'rollback' )
.head 6 -  !
.head 6 -  Set bUpdatedGlobal = bUpdatedGlobal OR bUpdatedLocal
.head 6 -  Set bYield = SalYieldStopMessages(  )
.head 6 -  Call CloseChannels( )
.head 6 +  If bExit
.head 7 -  Return FALSE
.head 6 -  Return bUpdatedLocal
.head 4 +  ! Function: CloseChannels
.head 5 -  Description: 
.head 5 -  Returns 
.head 5 -  Parameters 
.head 5 -  Static Variables 
.head 5 -  Local variables 
.head 5 +  Actions 
.head 6 -  ! Close Protocol file
.head 6 -  ! 214='Alle schließen...'
.head 6 -  Call SalStatusSetText( hWndForm, GetMessageAndNumber( 214 ) )
.head 6 -  ! Close SQL Channels
.head 6 -  Call h301_Description.Disconnect( )
.head 6 -  Call h301_SQL.Disconnect( )
.head 6 -  Call h301_SQL_Local.Disconnect( )
.head 6 -  Call SqlClearImmediate(  )
.head 4 +  ! Function: OpenChannels
.head 5 -  Description: 
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 -  Parameters 
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  Long String: s301_SQL
.head 6 -  Long String: s301_Description
.head 6 -  Boolean: bOk
.head 5 +  Actions 
.head 6 -  ! Write begin message to protocol
.head 6 -  Set bOk = SalFilePutStr( fhProtocol, SalStrRepeatX( '. ', 25 ) )
.head 6 -  Set bOk = SalFilePutStr( fhProtocol, '. ' || s301_sectionTitle )
.head 6 -  Set bOk = SalFilePutStr( fhProtocol, SalStrRepeatX( '. ', 25 ) )
.head 6 -  ! 
 DESCRIPTION SQL
.head 6 -  Set s301_Description =  "
select	SEGMENT, MUST_BE, 
	ATR, TYPE, LEN, 
	VARIABLE, FORMAT, 
	@upper( HIDDEN ), DELIMITER,
	INDEX_ARR, @nullvalue( @abs( WIEDERHOLBAR ), 1), FEHLER,
	@if( @abs( WIEDERHOLBAR ) - WIEDERHOLBAR, 1, 0 ),
	RES_FORMAT
from	W301_DESCRIPTION
where	SECTION = :frmPar301.s301_Section
order by 	FIELD_ORDER
into	:frmPar301.s301_SegmentName, :frmPar301.s301_MustBe,
	:frmPar301.s301_Atr, :frmPar301.s301_Typ, :frmPar301.n301_Len, 
	:frmPar301.s301_Variable, :frmPar301.s301_Format, 
	:frmPar301.s301_Hidden, :frmPar301.s301_Delimiter,
	:frmPar301.n301_Index, :frmPar301.n301_Wiederholbar,
	:frmPar301.s301_FehlerMsg, :frmPar301.b301_InlineSegment,
	:frmPar301.s301_ResFormat "
.head 6 +  If Not h301_Description.InitConnectPrepare( s301_Description )
.head 7 -  ! 226=SQL Error: 
.head 7 -  Call Write301_Fehler(  GetMessage( 226 ) || "'" || s301_Description || "'" )
.head 7 -  Return FALSE
.head 6 -  ! 
Rretrieves SQL
.head 6 -  Set s301_SQL =  "
select	SQL_CHECK, NOTE, RES_FORMAT
from	W301_SQL
where	SECTION = :frmPar301.s301_Section
   and	SEGMENT = :frmPar301.s301_SegmentName
order by 	FIELD_ORDER
into	:frmPar301.s301_SQL_Local, :frmPar301.s301_SQL_Local_Note, :frmPar301.s301_SQL_ResFormat "
.head 6 +  If Not h301_SQL.InitConnectPrepare( s301_SQL )
.head 7 -  ! 226=SQL Error: 
.head 7 -  Call Write301_Fehler(  GetMessage( 226 ) || "'" || s301_SQL || "'" )
.head 7 -  Return FALSE
.head 6 +  If Not h301_SQL_Local.Connect( )
.head 7 -  ! 228=SQL Connect Error
.head 7 -  Call Write301_Fehler(  GetMessage( 228 ) )
.head 7 -  Return FALSE
.head 6 -  Return TRUE
.head 4 +  ! Function: Msg301_MakeCurrMsg
.head 5 -  Description: 
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 -  Parameters 
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  Number: nRowDescription
.head 6 -  Number: nSegmentRowCount
.head 6 -  Number: nResCode
.head 6 -  Boolean: bUpdateOk
.head 6 -  Boolean: bCanFetchElse
.head 6 -  Boolean: bOk301
.head 6 -  Long String: s301_SQL_Update
.head 5 +  Actions 
.head 6 +  If not (sEvent_Event_Type = 'ENTL' and sEvent_Key_9 = '40' and BuildENTLStorno( bOk301 ))
.head 7 -  ! Read Description
.head 7 +  If Not h301_Description.Execute( )
.head 8 -  ! 229=Read Description: SQL Execute error
.head 8 -  Call f301_Protocol_WriteMsg(  GetMessage( 229 ) )
.head 8 -  Return FALSE
.head 7 -  Set s301_MessageContents = ''
.head 7 -  Set sEDI_MessageContents = ''
.head 7 -  Set nSegmentNr301 = 0
.head 7 -  Set nSegmentNrEDI = 0
.head 7 -  Set nRepeat = 0
.head 7 -  Set nRepeatEDI = 0
.head 7 -  Set nRepeat301 = 0
.head 7 -  Set bOk301 = TRUE
.head 7 -  Set nRowDescription = 0
.head 7 -  Set bYield = SalYieldStartMessages( pbCancel )
.head 7 +  While nRowDescription < h301_Description.nResultSetCount And bOk301 And Not bExit
.head 8 -  ! 215=Element lesen... 
.head 8 +  If bExit
.head 9 -  Return FALSE
.head 8 -  Set bIsEDISegment = FALSE
.head 8 -  Set bIs301Segment = FALSE
.head 8 -  !
.head 8 +  If nRepeat <= 0
.head 9 -  Set nRowsToSkip = 0
.head 8 -  !
.head 8 +  If ReadSegmentHeader( '', nRowDescription, nResCode )
.head 9 +  If Not bIsEDISegment
.head 10 +  If Not ReadSegmentHeader( 'EDI', nRowDescription+1, nResCode )
.head 11 -  Return FALSE
.head 9 +  Else If Not bIs301Segment
.head 10 +  If Not ReadSegmentHeader( '301', nRowDescription+1, nResCode )
.head 11 -  Return FALSE
.head 8 -  ! For first encounter:
	Store Max number of segment repeat
      and	Execute h301_SQL
.head 8 +  If nRepeat <= 0		! (i.e. it's a first encounter of segment
.head 9 -  Set nRepeat = SalNumberMax( nRepeatEDI, nRepeat301 )
.head 9 -  ! ! inline:
.head 9 -  ! Set bInlineSegment = b301_InlineSegment
.head 9 -  Set nSegmentMaxRepeat = nRepeat
.head 9 -  Set nRepeatCount = 0
.head 9 +  If Not h301_SQL.Execute( )
.head 10 -  ! 232=Local SQL Execute error
.head 10 -  Call f301_Protocol_WriteMsg(  GetMessage( 232 ) )
.head 10 -  Return FALSE
.head 8 -  ! Init correspondent strArr301[ ]
.head 8 +  If Not InitSegmentVariables( nRowDescription, strCurrentSegment, nSegmentRowCount )
.head 9 -  Return FALSE
.head 8 -  !
.head 8 -  Set bEmptySegm = TRUE
.head 8 -  ! Retrieve fields and Check required fields
.head 8 +  If Not Do301_SegmentSQLs( bCanFetchElse )
.head 9 -  Return FALSE
.head 8 -  ! Add words for current segment to OUTPUT
.head 8 +  If Not CheckSegment_301( nRowDescription, strCurrentSegment, nSegmentRowCount )
.head 9 -  Return FALSE
.head 8 +  If strCurrentSegment != 'TXT'
.head 9 -  Set bNotLast = nRepeat>1 and bCanFetchElse
.head 9 +  If bIsEDISegment and nRepeatEDI <= 0
.head 10 -  ! Don't add this segment
.head 10 -  Set bIsEDISegment = FALSE
.head 9 +  If bIs301Segment and nRepeat301 <= 0
.head 10 -  ! Don't add this segment
.head 10 -  Set bIs301Segment = FALSE
.head 9 +  If Not AddSegment_301(  )
.head 10 -  Return FALSE
.head 9 -  ! Decrease nRepeats
.head 9 -  Set nRepeat = nRepeat - 1
.head 9 -  Set nRepeatEDI = nRepeatEDI - 1
.head 9 -  Set nRepeat301 = nRepeat301 - 1
.head 9 -  Set nRepeatCount = nRepeatCount + 1
.head 9 +  If nRepeat > 0 And bCanFetchElse
.head 10 -  Set nRowDescription = nSegmentRowBegin	! for reading another time
.head 9 +  Else 
.head 10 -  Set nRowDescription = nRowDescription + nSegmentRowCount
.head 10 -  Set nRepeat = 0
.head 10 -  Set nRepeatEDI = 0
.head 10 -  Set nRepeat301 = 0
.head 8 +  Else 
.head 9 -  ! ls[ 1 ] should contain the contents of TEXT
.head 9 +  If Not AddTXTSegment_301( ls[1] )
.head 10 -  Return FALSE
.head 9 -  ! Decrease nRepeat
.head 9 -  Set nRepeat = 0
.head 9 -  Set nRowDescription = nRowDescription + nSegmentRowCount
.head 7 +  If bExit
.head 8 -  Return FALSE
.head 7 -  ! NUMBER_OF_SEGM in MESSAGE should contains number of all segments including UNH and UNT.
So nSegmentNr should be inceased.
.head 7 -  Set nSegmentNr301 = nSegmentNr301 + 2
.head 6 -  ! 
! Update !
.head 6 -  ! s301_MessageContents, sEDI_MessageContents
.head 6 -  ! Write Message INFO into DB
.head 6 +  If bOk301
.head 7 +  If b301_FallUpdateOld and nMessageNr != NUMBER_Null
.head 8 -  Set s301_SQL_Update = "
update W301_MESSAGE
set	MESSAGE_TYPE = :frmPar301.s301_Section,
	RO_KEY = :frmPar301.sEvent_RO_Key,
	MESSAGE_TEXT = :frmPar301.s301_MessageContents,
	NUMBER_OF_SEGM = :frmPar301.nSegmentNr301,
	MSG_FMT_TYPE = '301'
where	MESSAGE_NR = :frmPar301.nMessageNr
"
.head 7 +  Else 
.head 8 -  Set s301_SQL_Update = "
select	@nullvalue( max( MESSAGE_NR ), 0 ) + 1
from	W301_MESSAGE
into	:frmPar301.nMessageNr
;
insert into	W301_MESSAGE (
	MESSAGE_NR, MESSAGE_TYPE, RO_KEY, 
	MESSAGE_TEXT, NUMBER_OF_SEGM, MSG_FMT_TYPE )
values (
	:frmPar301.nMessageNr, :frmPar301.s301_Section, :frmPar301.sEvent_RO_Key, 
	:frmPar301.s301_MessageContents, :frmPar301.nSegmentNr301, '301' )
;
update	EVENT
set	MESSAGE_NR = :frmPar301.nMessageNr
where	EVENT_NR = :frmPar301.nEvent_Event_Nr;"
.head 7 -  Set bUpdateOk = DoImmediate( s301_SQL_Update )
.head 7 +  If bUpdateOk
.head 8 -  Call SqlImmediate( 'commit' )
.head 7 +  Else 
.head 8 -  ! 233=SQL Update error:
.head 8 -  Call f301_Protocol_WriteMsg(  GetMessage( 233 ) || ' insert into W301_MESSAGE...   oder  update EVENT' )
.head 8 -  Call SqlImmediate( 'rollback' )
.head 7 +  If b301_FallUpdateOld and nMessageNrEDI != NUMBER_Null
.head 8 -  Set s301_SQL_Update = "
update W301_MESSAGE
set	MESSAGE_TYPE = :frmPar301.s301_Section,
	RO_KEY = :frmPar301.sEvent_RO_Key,
	MESSAGE_TEXT = :frmPar301.sEDI_MessageContents,
	NUMBER_OF_SEGM = :frmPar301.nSegmentNrEDI,
	MSG_FMT_TYPE = 'EDI'
where	MESSAGE_NR = :frmPar301.nMessageNrEDI
"
.head 7 +  Else 
.head 8 -  Set s301_SQL_Update = "
select	@nullvalue( max( MESSAGE_NR ), 0 ) + 1
from	W301_MESSAGE
into	:frmPar301.nMessageNr
;
insert into	W301_MESSAGE (
	MESSAGE_NR, MESSAGE_TYPE, RO_KEY, 
	MESSAGE_TEXT, NUMBER_OF_SEGM, MSG_FMT_TYPE )
values (
	:frmPar301.nMessageNr, :frmPar301.s301_Section, :frmPar301.sEvent_RO_Key, 
	:frmPar301.sEDI_MessageContents, :frmPar301.nSegmentNrEDI, 'EDI' )
;
update	EVENT
set	MESSAGE_NR_EDI = :frmPar301.nMessageNr
where	EVENT_NR = :frmPar301.nEvent_Event_Nr;
"
.head 7 -  Set bUpdateOk = DoImmediate( s301_SQL_Update )
.head 7 +  If bUpdateOk
.head 8 -  Call SqlImmediate( 'commit' )
.head 7 +  Else 
.head 8 -  ! 233=SQL Update error:
.head 8 -  Call f301_Protocol_WriteMsg(  GetMessage( 233 ) || ' insert into W301_MESSAGE...   oder  update EVENT' )
.head 8 -  Call SqlImmediate( 'rollback' )
.head 6 -  Set bYield = SalYieldStopMessages(  )
.head 6 -  Return bOk301 And bUpdateOk
.head 4 +  ! Function: Do301_SegmentSQLs
.head 5 -  Description: 
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 +  Parameters 
.head 6 -  Receive Boolean: bCanFetchElse
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  Number: nCurrLocalSQL
.head 6 -  Number: nResCode
.head 6 -  Boolean: bDoneOk
.head 6 -  String: sRes
.head 6 -  Boolean: bAllowFetchResult
.head 5 +  Actions 
.head 6 +  If bExit
.head 7 -  Return FALSE
.head 6 -  !
.head 6 -  Set bCanFetchElse = FALSE
.head 6 -  Set bDoneOk = TRUE
.head 6 -  Set nCurrLocalSQL = 0
.head 6 -  Set bAllowFetchResult = TRUE
.head 6 -  Set bYield = SalYieldStartMessages( pbCancel )
.head 6 +  While nCurrLocalSQL < h301_SQL.nResultSetCount And Not bExit
.head 7 +  If bExit
.head 8 -  Set bDoneOk = FALSE
.head 7 -  ! 216=Ausführen SQL...
.head 7 -  Call SalStatusSetText( hWndForm, GetMessageAndNumber( 216 ) || ' (' || SalNumberToStrX( nCurrLocalSQL, 0 ) || '/' || SalNumberToStrX( h301_SQL.nResultSetCount, 0 ) || ')' )
.head 7 -  Set s301_SQL_Local = ''
.head 7 +  If h301_SQL.FetchRow( nCurrLocalSQL, nResCode, FALSE )
.head 8 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, '        ' || s301_SQL_Local_Note ) )
.head 8 +  If s301_SQL_Local != ''
.head 9 -  Set s301_SQL_Local = VisStrSubstitute( s301_SQL_Local, '::event_nr', StrX(nEvent_Event_Nr) )
.head 9 -  Call h301_SQL_Local.Initialize( s301_SQL_Local )
.head 9 +  If h301_SQL_Local.PrepareAndExecute( )
.head 10 +  If nCurrLocalSQL = 0
.head 11 -  Set bAllowFetchResult = nRepeatCount < h301_SQL_Local.nResultSetCount
.head 11 -  Set bEmptySegm = h301_SQL_Local.nResultSetCount = 0
.head 10 -  ! Check existing of result
.head 10 +  If bAllowFetchResult and h301_SQL_Local.nResultSetCount > 0
.head 11 -  ! Retrieve values for current segment
.head 11 +  If Not h301_SQL_Local.FetchRow( 
	VisNumberChoose( nCurrLocalSQL = 0, nRepeatCount, 0 ),
	nResCode, FALSE )
.head 12 -  ! Wrong SQL Satement
.head 12 -  ! 234=Fetch error on Local SQL:
.head 12 -  Call f301_Protocol_WriteMsg( GetMessage( 234 ) || s301_SQL_Local )
.head 12 -  Set bDoneOk = FALSE
.head 11 +  If nCurrLocalSQL = 0 and nRepeatCount + 1 < h301_SQL_Local.nResultSetCount
.head 12 -  Set bCanFetchElse = TRUE
.head 9 +  Else 
.head 10 -  ! 235= SQL Prepare or Execute Error:
.head 10 -  Call f301_Protocol_WriteMsg(  GetMessage( 235 ) || s301_SQL_Local )
.head 10 -  Set bDoneOk = FALSE
.head 8 +  Else 
.head 9 -  ! 236= Leerer SQL Befehl
.head 9 -  Call f301_Protocol_WriteMsg(  GetMessage( 236 ) )
.head 9 -  Set bDoneOk = FALSE
.head 8 +  If bDoneOk 
.head 9 -  Set sRes = 'Ok'
.head 8 +  Else 
.head 9 -  Set sRes = 'Fehler'
.head 7 -  Set nCurrLocalSQL = nCurrLocalSQL + 1
.head 6 -  Set bYield = SalYieldStopMessages(  )
.head 6 -  Return bDoneOk
.head 4 +  ! Function: InitSegmentVariables
.head 5 -  Description: 
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 +  Parameters 
.head 6 -  Number: nRowBegin
.head 6 -  String: strParamSegmentName
.head 6 -  Receive Number: nParamSegmentRowCount
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  Number: nRow
.head 6 -  Number: nResCode
.head 5 +  Actions 
.head 6 -  ! Counts numbers of segments elements (including Name of segment)
.head 6 -  Set nParamSegmentRowCount = 1
.head 6 -  Set nRow = nRowBegin + 1
.head 6 +  While nRow < h301_Description.nResultSetCount And Not bExit
.head 7 +  If Not h301_Description.FetchRow( nRow, nResCode, FALSE )
.head 8 -  Return FALSE
.head 7 +  If strParamSegmentName != s301_SegmentName
.head 8 -  Return TRUE
.head 7 -  ! If nSegmentMaxRepeat > 1
.head 7 -  Set strArr301[n301_Index] = ''
.head 7 -  Set nParamSegmentRowCount = nParamSegmentRowCount + 1
.head 7 -  Set nRow = nRow + 1
.head 6 -  Return Not bExit
.head 4 +  ! Function: CheckSegment_301
.head 5 -  Description: 
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 +  Parameters 
.head 6 -  Number: nParamRowBegin
.head 6 -  String: strParamSegmentName
.head 6 -  Number: nParamSegmentRowCount
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  Number: nRow
.head 6 -  Number: nResCode
.head 6 -  Number: nCount
.head 6 -  Boolean: bOk
.head 5 +  Actions 
.head 6 -  Set nCount = 0
.head 6 -  Set nNumOfIndexes = 0
.head 6 -  Set nRow = nParamRowBegin
.head 6 -  Set bOk = TRUE
.head 6 +  While nCount < nParamSegmentRowCount And Not bExit
.head 7 +  If Not h301_Description.FetchRow( nRow, nResCode, FALSE )
.head 8 -  ! 219=Fetch error
.head 8 -  Call f301_Protocol_WriteMsg( GetMessage( 219 ) )
.head 8 -  Set bOk = FALSE
.head 7 +  If strParamSegmentName != s301_SegmentName
.head 8 -  ! 220=Erwartete Zeile hat den Segmentnamen:
.head 8 -  Call f301_Protocol_WriteMsg( GetMessage( 220 ) || strParamSegmentName )
.head 8 -  Set bOk = FALSE
.head 7 -  Set sArrOfDelimiters[ nNumOfIndexes ] = s301_Delimiter
.head 7 -  Set sArrOfHides[ nNumOfIndexes ] = s301_Hidden
.head 7 -  Set nArrOfLengthes[ nNumOfIndexes ] = n301_Len
.head 7 -  Set sArrOfFormats[ nNumOfIndexes ] = s301_Format
.head 7 -  Set sArrOfTypes[ nNumOfIndexes ] = s301_Typ
.head 7 -  Set sArrOfResFormats[ nNumOfIndexes ] = s301_ResFormat
.head 7 -  Set bOk = bOk And CheckWord_301( )
.head 7 -  Set nRow = nRow + 1
.head 7 -  Set nCount = nCount + 1
.head 7 -  Set nNumOfIndexes = nNumOfIndexes + 1
.head 6 +  If bExit
.head 7 -  Return FALSE
.head 6 -  Return bOk
.head 4 +  ! Function: CheckWord_301
.head 5 -  Description: 
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 -  Parameters 
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  String: strTypeOfField
.head 6 -  String: strFormat
.head 6 -  Number: nWord
.head 6 -  String: sWord
.head 5 +  Actions 
.head 6 -  ! Save n301_Index into Array
.head 6 -  Set nIndexOfArr301[ nNumOfIndexes ] = n301_Index
.head 6 +  If s301_MustBe != ''
.head 7 -  Set strArr301[ n301_Index ] = s301_MustBe
.head 6 -  ! 'N' -name,  'V' -variable,  'F' -fixed
.head 6 -  Set strTypeOfField = SalStrUpperX( s301_Variable )
.head 6 -  Set strFormat = SalStrLowerX( s301_Format )
.head 6 -  ! change J -> Y, T -> D in format so as to check if this is a date format
.head 6 -  Set strFormat = VisStrSubstitute( strFormat, 'j', 'y' )
.head 6 -  Set strFormat = VisStrSubstitute( strFormat, 't', 'd' )
.head 6 -  Set strFormat = VisStrSubstitute( strFormat, 'm', 'M' )
.head 6 +  If s301_Format != '' And strArr301[ n301_Index ] != '' And Not SalFmtIsValidPicture( strFormat, FMT_Pic_DateTime )
.head 7 -  Set strFormat = s301_Format
.head 7 -  Set strFormat = SetLocaleDecimalSeparator( strFormat )
.head 7 +  If Not SalFmtIsValidPicture( strFormat, FMT_Pic_Number )
.head 8 -  Call f301_Protocol_WriteMsg( 'Wrong format for the field: ' || s301_Format )
.head 8 -  Return FALSE
.head 7 -  Set sWord = strArr301[ n301_Index ]
.head 7 -  Set nWord = SalStrToNumber( sWord )
.head 7 +  If nWord = 0 and sWord != '0'
.head 8 -  ! An error happened when converting
.head 8 -  Set sWord = SetLocaleDecimalSeparator( sWord )
.head 8 -  ! try again
.head 8 -  Set nWord = SalStrToNumber( sWord )
.head 8 +  If nWord = 0
.head 9 -  Call f301_Protocol_WriteMsg( 'Cannot convert a value to a number! Please, contact the technical support.' )
.head 9 -  Return FALSE
.head 7 -  Set strArr301[ n301_Index ] = SalFmtFormatNumber( nWord, strFormat )
.head 7 -  Set strArr301[ n301_Index ] = VisStrSubstitute( strArr301[ n301_Index ], '.', ',' )
.head 7 -  Set strArr301[ n301_Index ] = VisStrSubstitute( strArr301[ n301_Index ], ' ', '' )
.head 6 +  If s301_Atr = 'M' and (s301_SegmentAtr = 'M' or not bEmptySegm)
.head 7 +  If strTypeOfField = 'N' Or strTypeOfField = 'F'
.head 8 +  If SalStrLength( strArr301[ n301_Index ] ) != n301_Len
.head 9 -  Call f301_Protocol_WriteMsg( s301_FehlerMsg )
.head 9 -  Return FALSE
.head 7 +  Else 
.head 8 +  If SalStrLength( strArr301[ n301_Index ] ) = 0
.head 9 -  Call f301_Protocol_WriteMsg( s301_FehlerMsg )
.head 9 -  Return FALSE
.head 6 -  Return TRUE
.head 4 +  ! Function: AddSegment_301
.head 5 -  Description: 
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 -  Parameters 
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  Number: nIndex
.head 6 -  String: sResFmtType
.head 6 -  String: sWord
.head 5 +  Actions 
.head 6 -  Set s301_SegmentContents = ''
.head 6 -  Set sEDI_SegmentContents = ''
.head 6 -  Set nIndex = 0
.head 6 +  If nRepeatCount ! skip segment header if inline
.head 7 -  Set nIndex = nRowsToSkip
.head 6 +  While nIndex < nNumOfIndexes
.head 7 +  If Not sArrOfHides[ nIndex ] = 'J'
.head 8 -  Set sWord = AddWord_301( nIndex )
.head 8 -  Set sResFmtType = sArrOfResFormats[ nIndex ]
.head 8 +  If bIs301Segment
.head 9 +  If (sResFmtType = '' or sResFmtType = '301') and not (bInlineSegment_301 and nIndex = nRowsToSkip)
.head 10 -  Set s301_SegmentContents = s301_SegmentContents || FormatWord( sWord, '301', nIndex )
.head 8 +  If bIsEDISegment
.head 9 +  If (sResFmtType = '' or sResFmtType = 'EDI') and not (bInlineSegment_EDI and nIndex = nRowsToSkip)
.head 10 -  Set sEDI_SegmentContents = sEDI_SegmentContents || FormatWord( sWord, 'EDI', nIndex )
.head 7 -  Set nIndex = nIndex + 1
.head 6 +  If Not CloseSegment_301( )
.head 7 -  Return FALSE
.head 6 -  Return TRUE
.head 4 +  ! Function: AddTXTSegment_301
.head 5 -  Description: 
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 +  Parameters 
.head 6 -  Long String: lsParm
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  Number: nMaxLen
.head 6 -  Number: nLen
.head 6 -  Number: nRestLen
.head 6 -  Long String: lsRest
.head 6 -  String: sWord
.head 5 +  Actions 
.head 6 -  Set nMaxLen = nArrOfLengthes[ 1 ]
.head 6 -  Set lsRest = lsParm
.head 6 -  Set nRestLen = SalStrLength( lsRest )
.head 6 +  While nRestLen > 0 And nRepeat > 0
.head 7 +  If bIsEDISegment
.head 8 +  If nRepeatEDI <= 0
.head 9 -  Set bIsEDISegment = FALSE
.head 8 +  Else 
.head 9 +  If nRestLen >= nMaxLen
.head 10 -  Set sWord = SalStrLeftX( lsRest, nMaxLen )
.head 9 +  Else 
.head 10 -  Set sWord = SalStrLeftX ( lsRest || SalStrRepeatX( ' ', nMaxLen ), nMaxLen )
.head 9 -  Set sEDI_SegmentContents = 'TXT' || sWord
.head 9 -  Set nRepeatEDI = nRepeatEDI - 1
.head 7 +  If bIs301Segment 
.head 8 +  If nRepeat301 <= 0
.head 9 -  Set bIs301Segment = FALSE
.head 8 +  Else 
.head 9 +  If nRestLen > nMaxLen
.head 10 -  Set sWord = SalStrLeftX( lsRest, nMaxLen )
.head 9 +  Else 
.head 10 -  Set sWord = lsRest
.head 9 -  Set s301_SegmentContents = 'TXT' || sArrOfDelimiters[ 0 ] || sWord
.head 9 -  Set nRepeat301 = nRepeat301 - 1
.head 7 -  ! Substitute <CRLF> to spaces
.head 7 -  Set s301_SegmentContents = VisStrSubstitute( s301_SegmentContents, SalNumberToChar( 13 ) || SalNumberToChar( 10 ), ' ' )
.head 7 -  Set sEDI_SegmentContents = VisStrSubstitute( sEDI_SegmentContents, SalNumberToChar( 13 ) || SalNumberToChar( 10 ), ' ' )
.head 7 +  If Not CloseSegment_301( )
.head 8 -  Return FALSE
.head 7 +  If nRestLen >= nMaxLen
.head 8 -  Set lsRest = SalStrRightX( lsRest, nRestLen - nMaxLen )
.head 7 +  Else 
.head 8 -  Set lsRest = ''
.head 7 -  Set nRestLen = SalStrLength( lsRest )
.head 7 -  Set nRepeat = nRepeat - 1
.head 7 -  Set nRepeatCount = nRepeatCount + 1
.head 6 -  Return TRUE
.head 4 +  ! Function: AddWord_301
.head 5 -  Description: 
.head 5 +  Returns 
.head 6 -  String: 
.head 5 +  Parameters 
.head 6 -  Number: nIndex
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  String: strCurrValue
.head 5 +  Actions 
.head 6 +  If sArrOfHides[ nIndex ]  = 'J'
.head 7 -  Return ''
.head 6 -  Set strCurrValue = strArr301[ nIndexOfArr301[ nIndex ] ]
.head 6 -  ! Set strCurrValue = VisStrSubstitute( strCurrValue, "?", "??" )
.head 6 -  ! Set strCurrValue = VisStrSubstitute( strCurrValue, "'", "?'" )
.head 6 -  ! Set strCurrValue = VisStrSubstitute( strCurrValue, "+", "?+" )
.head 6 -  ! Set strCurrValue = VisStrSubstitute( strCurrValue, ":", "?:" )
.head 6 -  ! Set strCurrValue = VisStrSubstitute( strCurrValue, ",", "?," )
.head 6 -  Return strCurrValue
.head 4 +  ! Function: CloseSegment_301
.head 5 -  Description: 
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 -  Parameters 
.head 5 -  Static Variables 
.head 5 -  Local variables 
.head 5 +  Actions 
.head 6 +  If bExit
.head 7 -  Return FALSE
.head 6 -  ! Removes rightests '+'
.head 6 +  ! While SalStrRightX( s301_SegmentContents, 1 ) = '+'
.head 7 -  Set s301_SegmentContents = SalStrLeftX( s301_SegmentContents, SalStrLength( s301_SegmentContents ) - 1 )
.head 6 -  ! ! inline:
.head 6 +  If not (bInlineSegment_301 and bNotLast )
.head 7 -  Set s301_SegmentContents = f301_RemoveTrailingDelimiters( s301_SegmentContents )
.head 7 -  ! Check and skip an empty segment
.head 7 +  If s301_SegmentContents = s301_SegmentName
.head 8 +  If s301_SegmentAtr = 'M' And nRepeatCount = 0
.head 9 -  ! 221=Segment darf nicht leer sein. 
.head 9 -  Call f301_Protocol_WriteMsg( GetMessage( 221 ) )
.head 9 -  Return FALSE
.head 8 -  Return TRUE
.head 7 -  ! Add -'- if format is 301 and Chr(13) Chr(10)
.head 7 -  Set s301_SegmentContents = s301_SegmentContents || "'" || SalNumberToChar( 13 ) || SalNumberToChar( 10 )
.head 6 +  If not (bInlineSegment_EDI and bNotLast )
.head 7 -  Set sEDI_SegmentContents = VisStrRightTrim( sEDI_SegmentContents )
.head 7 -  ! Check and skip an empty segment
.head 7 +  If sEDI_SegmentContents = s301_SegmentName
.head 8 +  If s301_SegmentAtr = 'M' And nRepeatCount = 0
.head 9 -  ! 221=Segment darf nicht leer sein. 
.head 9 -  Call f301_Protocol_WriteMsg( GetMessage( 221 ) )
.head 9 -  Return FALSE
.head 8 -  Return TRUE
.head 7 -  ! Add Chr(13) Chr(10)
.head 7 -  Set sEDI_SegmentContents = sEDI_SegmentContents || SalNumberToChar( 13 ) || SalNumberToChar( 10 )
.head 6 +  If b301_EDICompatible
.head 7 -  Set mlCurrContents = mlCurrContents || sEDI_SegmentContents
.head 6 +  Else 
.head 7 -  Set mlCurrContents = mlCurrContents || s301_SegmentContents
.head 6 -  ! Write SEGMENT into DB
.head 6 +  If bIs301Segment
.head 7 -  Set s301_MessageContents = s301_MessageContents || s301_SegmentContents
.head 7 -  Set nSegmentNr301 = nSegmentNr301 + 1
.head 6 +  If bIsEDISegment
.head 7 -  Set sEDI_MessageContents = sEDI_MessageContents || sEDI_SegmentContents
.head 7 -  Set nSegmentNrEDI = nSegmentNrEDI + 1
.head 6 -  Return TRUE
.head 4 +  ! Function: ReadSegmentHeader
.head 5 -  Description: 
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 +  Parameters 
.head 6 -  String: sNeededResultType
.head 6 -  Number: nRowDescription
.head 6 -  Receive Number: nResCode
.head 5 -  Static Variables 
.head 5 -  Local variables 
.head 5 +  Actions 
.head 6 -  Call SalStatusSetText( hWndForm, GetMessageAndNumber( 215 ) || ' (' || SalNumberToStrX( nRowDescription, 0 ) || '/' || SalNumberToStrX( h301_Description.nResultSetCount, 0 ) || ')' )
.head 6 +  If Not h301_Description.FetchRow( nRowDescription, nResCode, FALSE )
.head 7 -  ! 230= Description Fetch error on line:
.head 7 -  Call f301_Protocol_WriteMsg( GetMessage( 230 ) || SalNumberToStrX( nRowDescription+1, 0 ) )
.head 7 -  Return FALSE
.head 6 -  Set strCurrentSegment = s301_SegmentName
.head 6 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, '    ' || s301_SegmentName ) )
.head 6 -  ! Read Begin of the segment
.head 6 +  If s301_SegmentName != s301_MustBe
.head 7 +  If sNeededResultType = ''
.head 8 -  ! 231= Segmentname wird erwartet !
.head 8 -  Call f301_Protocol_WriteMsg( GetMessage( 231 ) )
.head 8 -  Return FALSE
.head 7 +  Else If sNeededResultType = 'EDI'
.head 8 -  Set bIsEDISegment = FALSE
.head 7 +  Else 
.head 8 -  Set bIs301Segment = FALSE
.head 6 +  Else 
.head 7 +  If sNeededResultType != ''
.head 8 +  If sNeededResultType != s301_ResFormat
.head 9 -  Call f301_Protocol_WriteMsg( GetMessage( 1000003 ) || SalNumberToStrX( nRowDescription, 0 ) )
.head 9 -  Return FALSE
.head 7 +  Else 
.head 8 -  ! Store begin segment row
.head 8 -  Set nSegmentRowBegin = nRowDescription
.head 8 -  ! Store segment Atr ( 'M' or 'K' )
.head 8 -  Set s301_SegmentAtr = s301_Atr
.head 7 +  If s301_ResFormat = ''
.head 8 -  Set bIsEDISegment = TRUE
.head 8 -  Set bIs301Segment = TRUE
.head 8 +  If nRepeat <= 0
.head 9 -  Set nRepeat301 = n301_Wiederholbar
.head 9 -  Set nRepeatEDI = n301_Wiederholbar
.head 9 -  Set bInlineSegment_301 = b301_InlineSegment
.head 9 -  Set bInlineSegment_EDI = b301_InlineSegment
.head 9 +  If b301_InlineSegment
.head 10 -  Set nRowsToSkip = nRowsToSkip + 1
.head 7 +  Else If s301_ResFormat = 'EDI'
.head 8 -  Set bIsEDISegment = TRUE
.head 8 +  If nRepeatEDI <= 0
.head 9 -  Set nRepeatEDI = n301_Wiederholbar
.head 9 -  Set bInlineSegment_EDI = b301_InlineSegment
.head 9 +  If b301_InlineSegment
.head 10 -  Set nRowsToSkip = nRowsToSkip + 1
.head 7 +  Else 
.head 8 -  Set bIs301Segment = TRUE
.head 8 +  If nRepeat301 <= 0
.head 9 -  Set nRepeat301 = n301_Wiederholbar
.head 9 -  Set bInlineSegment_301 = b301_InlineSegment
.head 9 +  If b301_InlineSegment
.head 10 -  Set nRowsToSkip = nRowsToSkip + 1
.head 6 -  Return TRUE
.head 4 +  ! Function: FormatWord
.head 5 -  Description: 
.head 5 +  Returns 
.head 6 -  String: 
.head 5 +  Parameters 
.head 6 -  String: sWord
.head 6 -  String: sType
.head 6 -  Number: nIndex
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  String: strFormat
.head 6 -  Number: nNumDigits
.head 6 -  Number: nPos
.head 5 +  Actions 
.head 6 +  If sType = 'EDI'
.head 7 -  Set strFormat = sArrOfFormats[ nIndex ]
.head 7 +  If sArrOfTypes[ nIndex ] = 'N'
.head 8 -  ! Get rid of comma in EDIalog format
.head 8 -  Set sWord = VisStrSubstitute( sWord, ',', '' )
.head 8 +  ! If strFormat != ''
.head 9 -  Set nNumDigits = SalStrScan( strFormat, '.' )
.head 9 +  If nNumDigits != -1
.head 10 -  Set nNumDigits = SalStrLength( strFormat ) - nNumDigits - 1
.head 10 -  Set nPos = SalStrScan( sWord, ',' )
.head 10 +  If nPos >= 0
.head 11 -  Set sWord = SalStrReplaceX( sWord, nPos, 1, '.' )
.head 10 -  Set sWord = SalNumberToStrX( SalStrToNumber( sWord ) * SalNumberPower( 10, nNumDigits ), 0 )
.head 8 -  ! add spaces on the left
.head 8 -  Set sWord = SalStrRightX ( SalStrRepeatX( ' ', nArrOfLengthes[ nIndex ] ) || sWord, nArrOfLengthes[ nIndex ] )
.head 7 +  Else If sArrOfTypes[ nIndex ] = 'C'
.head 8 -  ! add spaces on the right
.head 8 -  Set sWord = SalStrLeftX ( sWord || SalStrRepeatX( ' ', nArrOfLengthes[ nIndex ] ), nArrOfLengthes[ nIndex ] )
.head 6 +  Else 
.head 7 +  If sArrOfTypes[ nIndex ] = 'C' And sWord != ''
.head 8 -  Set sWord = VisStrSubstitute( sWord, "?", "??" )
.head 8 -  Set sWord = VisStrSubstitute( sWord, "'", "?'" )
.head 8 -  Set sWord = VisStrSubstitute( sWord, "+", "?+" )
.head 8 -  Set sWord = VisStrSubstitute( sWord, ":", "?:" )
.head 8 -  Set sWord = VisStrSubstitute( sWord, ",", "?," )
.head 7 -  Set sWord = sWord || sArrOfDelimiters[ nIndex ]
.head 6 -  Return sWord
.head 4 +  ! Function: SetLocaleDecimalSeparator
.head 5 -  Description: 
.head 5 +  Returns 
.head 6 -  String: 
.head 5 +  Parameters 
.head 6 -  String: strNumber
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  Number: nDecSymPos
.head 6 -  String: sSeparator
.head 5 +  Actions 
.head 6 -  Set sSeparator = GetDecimalSeparator( FALSE )
.head 6 -  Set nDecSymPos = VisStrScanReverse( strNumber, -1, '.' )
.head 6 +  If nDecSymPos >= 0 ! We do have a dot in format
.head 7 -  Set strNumber = SalStrReplaceX( strNumber, nDecSymPos, 1, sSeparator )
.head 6 +  Else 
.head 7 -  Set nDecSymPos = VisStrScanReverse( strNumber, -1, ',' )
.head 7 +  If nDecSymPos >= 0 ! We do have a comma in format
.head 8 -  Set strNumber = SalStrReplaceX( strNumber, nDecSymPos, 1, sSeparator )
.head 6 -  Return strNumber
.head 4 +  ! Function: BuildENTLStorno
.head 5 -  Description: 
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 +  Parameters 
.head 6 -  Receive Boolean: bOk
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  Boolean: bExists
.head 5 +  Actions 
.head 6 -  Set bOk = DoImmediateSingle( "
select *	from BEWEGUNG
where	EINRICHT_ID = :nEinrichtId
  and	FALL_KEY = :frmPar301.nEvent_Fall_Key
  and	BEW_NR = :frmPar301.nEvent_Bew_Nr
  and	GELOESCHT = 'J'
", bExists)
.head 6 +  If bOk and bExists
.head 7 -  Return FALSE ! it's possible to build a message
.head 6 +  If bOk
.head 7 -  ! select the latest ENTL event for this Fall (ENTL Storno is sent for this event)
.head 7 -  Set bOk = DoImmediate( "
select	max(EVENT_NR)
from	EVENT
where	EVENT_TYPE = :frmPar301.sEvent_Event_Type
  and	KEY_9 in ('10', '20')
  and	FALL_KEY = :frmPar301.nEvent_Fall_Key
  and	KSTR_KEY = :frmPar301.sEvent_Kstr_Key
  and	EINRICHT_ID = :nEinrichtId
  and	EVENT_NR < :frmPar301.nEvent_Event_Nr
into	:frmPar301.nStornENTL_Nr" )
.head 7 +  If bOk and nStornENTL_Nr = NUMBER_Null
.head 8 -  Set mlError = 'Cannot find previously built ENTL message!'
.head 8 -  Call f301_Protocol_WriteMsg( mlError )
.head 8 -  Set bOk = FALSE
.head 8 -  Return TRUE
.head 7 -  Set bOk = DoImmediate( "
select 	MESSAGE_NR, MESSAGE_NR_EDI
from	EVENT
where	EVENT_NR = :frmPar301.nStornENTL_Nr
into	:frmPar301.nStornMessageNr, :frmPar301.nStornMessageNrEDI
")
.head 7 -  Set bOk = bOk and DoImmediate( "
select	MESSAGE_TEXT, NUMBER_OF_SEGM
from	W301_MESSAGE
where	MESSAGE_NR = :frmPar301.nStornMessageNr
into	:frmPar301.s301_MessageContents, :frmPar301.nSegmentNr301
" )
.head 7 +  If bOk
.head 8 +  If s301_MessageContents != ''
.head 9 -  Set s301_MessageContents = 'FKT+40' || SalStrRightX( s301_MessageContents, SalStrLength( s301_MessageContents ) - 6 )
.head 8 +  Else 
.head 9 -  Set mlError = 'Cannot create message of type §301!'
.head 9 -  Call f301_Protocol_WriteMsg( mlError )
.head 7 -  Set bOk = bOk and DoImmediate( "
select	MESSAGE_TEXT, NUMBER_OF_SEGM
from	W301_MESSAGE
where	MESSAGE_NR = :frmPar301.nStornMessageNrEDI
into	:frmPar301.sEDI_MessageContents, :frmPar301.nSegmentNrEDI
" )
.head 7 +  If bOk
.head 8 +  If sEDI_MessageContents != ''
.head 9 -  Set sEDI_MessageContents = 'FKT40' || SalStrRightX( sEDI_MessageContents, SalStrLength( sEDI_MessageContents ) - 5 )
.head 8 +  Else 
.head 9 -  Set mlError = 'Cannot create message of type EDIalog!'
.head 9 -  Call f301_Protocol_WriteMsg( mlError )
.head 7 -  Return TRUE
.head 3 -  !
.head 3 -  ! Functions for Writing Files §301
.head 3 +  Function: Out301_Start
.head 4 -  Description:
.head 4 -  Returns
.head 4 +  Parameters
.head 5 -  Boolean: bpSendForFalls
.head 5 -  Boolean: bpReloading
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  FunctionalVar: hsqlSelect4Out
.head 6 -  Class: clsSqlHandleSelect
.head 5 -  Long String: sSelect
.head 5 -  Number: nCurrRO
.head 5 -  Boolean: bContinue
.head 5 -  Number: nErr
.head 4 +  Actions
.head 5 +  If Not b301_EDICompatible
.head 6 +  If bpReloading
.head 7 -  Set sSelect = "
select distinct RO.RO_KEY, RO.RO_BEZ, RO.RO_IK_NR, W301.FILE_NAME
into	:frmPar301.sRO_Key, :frmPar301.sRO_Bez, :frmPar301.sRO_KK_IK, :frmPar301.s301_FileName
from	RECEIVING_OFFICE RO, W301_MESSAGE W301
where	W301.RO_KEY = RO.RO_KEY
  and	W301.FILE_NUMBER || ':' || W301.RO_KEY in (" || sFileNrs || ")
order by	w301.FILE_NAME"
.head 6 +  Else
.head 7 -  Set sSelect = "
select distinct RO.RO_KEY, RO.RO_BEZ, RO.RO_IK_NR
into	:frmPar301.sRO_Key, :frmPar301.sRO_Bez, :frmPar301.sRO_KK_IK
from	RECEIVING_OFFICE RO, W301_MESSAGE W301
where	W301.RO_KEY = RO.RO_KEY
  and	W301.FILE_NUMBER is NULL"
.head 7 +  If not b301_WriteForAll_RO
.head 8 -  Set sSelect = sSelect || "
  and	RO.RO_KEY = '" || s301_CurrentRO || "' "
.head 7 -  Set sSelect = sSelect || "
order by	RO.RO_KEY "
.head 6 -  !
.head 6 +  If Not hsqlSelect4Out.Connect(  )
.head 7 -  Set mlError = 'SQL connect error !!!'
.head 7 -  ! 226=SQL Error: 
.head 7 -  Call f301_Protocol_WriteMsg(  GetMessage( 226 ) || '  CONNECT' )
.head 7 -  Return FALSE
.head 6 -  Call hsqlSelect4Out.Initialize( sSelect )
.head 6 +  If Not hsqlSelect4Out.PrepareAndExecute(  )
.head 7 -  Set mlError = 'SQL PrepareAndExecute error (RecOffice) !!!'
.head 7 -  Call f301_Protocol_WriteMsg(  GetMessage( 226 ) || "  'PrepareAndExecute'  " )
.head 7 -  Call hsqlSelect4Out.Disconnect(  )
.head 7 -  Return FALSE
.head 6 -  !
.head 6 +  If hsqlSelect4Out.nResultSetCount > 0
.head 7 -  Call InitDataFields( 2 )
.head 7 -  Set dfAllNum = hsqlSelect4Out.nResultSetCount
.head 7 -  Set dfCurrNum = 0
.head 7 -  Set nCurrRO = 0
.head 7 -  !
.head 7 -  Set bContinue = TRUE
.head 7 +  While nCurrRO < hsqlSelect4Out.nResultSetCount and bContinue
.head 8 +  If hsqlSelect4Out.FetchRow( nCurrRO, nErr, TRUE )
.head 9 -  Set dfCurrNum = dfCurrNum + 1
.head 9 -  Call Out301_MakeFile( bpSendForFalls, bpReloading )
.head 8 -  Set nCurrRO = nCurrRO + 1
.head 6 -  Call hsqlSelect4Out.Disconnect(  )
.head 5 +  Else
.head 6 -  !
.head 6 -  Call InitDataFields( 2 )
.head 6 -  Set dfCurrNum = 0
.head 6 -  Set nCurrRO = 0
.head 6 +  If bpReloading
.head 7 -  Set sSelect = "
select distinct FILE_NAME, FILE_NUMBER
into	:frmPar301.s301_FileName, :frmPar301.s301_FileNr
from	W301_MESSAGE
where	FILE_NUMBER in (" || sFileNrs || ")
order by	FILE_NAME"
.head 7 -  !
.head 7 +  If Not hsqlSelect4Out.Connect(  )
.head 8 -  Set mlError = 'SQL connect error !!!'
.head 8 -  ! 226=SQL Error: 
.head 8 -  Call f301_Protocol_WriteMsg(  GetMessage( 226 ) || '  CONNECT' )
.head 8 -  Return FALSE
.head 7 -  Call hsqlSelect4Out.Initialize( sSelect )
.head 7 +  If Not hsqlSelect4Out.PrepareAndExecute(  )
.head 8 -  Set mlError = 'SQL PrepareAndExecute error (Filenames) !!!'
.head 8 -  Call f301_Protocol_WriteMsg(  GetMessage( 226 ) || "  'PrepareAndExecute'  " )
.head 8 -  Call hsqlSelect4Out.Disconnect(  )
.head 8 -  Return FALSE
.head 7 -  !
.head 7 +  If hsqlSelect4Out.nResultSetCount > 0
.head 8 -  Set dfAllNum = hsqlSelect4Out.nResultSetCount
.head 8 -  !
.head 8 -  Set bContinue = TRUE
.head 8 +  While nCurrRO < hsqlSelect4Out.nResultSetCount and bContinue
.head 9 +  If hsqlSelect4Out.FetchRow( nCurrRO, nErr, TRUE )
.head 10 -  Set dfCurrNum = dfCurrNum + 1
.head 10 -  Call Out301_MakeFile( bpSendForFalls, bpReloading )
.head 9 -  Set nCurrRO = nCurrRO + 1
.head 7 -  Call hsqlSelect4Out.Disconnect(  )
.head 6 +  Else
.head 7 -  Call Out301_MakeFile( bpSendForFalls, bpReloading )
.head 5 -  !
.head 5 -  Return TRUE
.head 3 +  Function: MakeFileName
.head 4 -  Description:
.head 4 -  Returns
.head 4 +  Parameters
.head 5 -  String: sRO_Key
.head 5 -  Receive String: sFileName
.head 5 -  Receive String: sFilePrefix
.head 5 -  Receive String: sFileNr
.head 5 -  Boolean: bpReloading
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Number: nFileNr
.head 5 -  String: sRO_Dir
.head 4 +  Actions
.head 5 +  If b301_EDICompatible
.head 6 +  If Not bpReloading
.head 7 -  Set s1 = ''
.head 7 -  Call DoImmediate( "
select	max( @nullvalue( FILE_NUMBER, 0 ) ) + 1
from	W301_MESSAGE
where	FILE_NAME is not NULL
  and	@nullvalue(MSG_FMT_TYPE, '301') = 'EDI'
into	:s1 " )
.head 7 -  Set sFileNr = s1
.head 7 +  If sFileNr = ''
.head 8 -  Set sFileNr = '1'
.head 7 -  Set sFilePrefix = sMessageType
.head 7 -  ! Set sFileNr = Fmt( sFileNr, 4, '0', TRUE )
.head 7 -  Set sFileName = sFilePrefix || ".DAT"
.head 7 -  Call VisDosMakeAllDir( s301_OutputEDIDir )
.head 7 -  Set sFileName = s301_OutputEDIDir || sFileName
.head 5 +  Else
.head 6 +  If bpReloading
.head 7 -  Set sFilePrefix = GalStrExtractFileName( sFileName )
.head 7 -  Set nFileNr = SalStrScan( sFilePrefix, '.' )
.head 7 +  If nFileNr > 0
.head 8 -  Set sFilePrefix = SalStrLeftX( sFilePrefix, nFileNr )
.head 7 -  Set sFileNr = SalStrRightX( sFilePrefix, 5 )
.head 7 -  Set sFilePrefix = SalStrLeftX( sFilePrefix, SalStrLength( sFilePrefix )-5 )
.head 6 +  Else
.head 7 +  ! If FALSE ! INI-file
.head 8 -  Set nFileNr = SalGetProfileInt( '§301', 'TransferNummer', 1, ATLANTA_INI ) + 1
.head 8 -  Call SalSetProfileString( '§301', 'TransferNummer', SalNumberToStrX( nFileNr, 0 ), ATLANTA_INI )
.head 8 -  Call SalGetProfileString( '§301', 'TransferNummer', '1', sFileNr, ATLANTA_INI )
.head 7 -  Set s1 = ''
.head 7 -  Call DoImmediate( "
select	@nullvalue( FILE_NR, 0 ) + 1
from	RECEIVING_OFFICE
where	RO_KEY = '" || sRO_Key || "'
into	:s1
;
update	RECEIVING_OFFICE
set	FILE_NR = :s1
where	RO_KEY = '" || sRO_Key || "' " )
.head 7 -  Set sFileNr = s1
.head 7 -  Set sFileNr = Fmt( sFileNr, 5, '0', TRUE )
.head 7 -  Call SalGetProfileString( '§301', 'AnwendungsreferenzPrefix', 'TST', sFilePrefix, ATLANTA_INI )
.head 6 -  Set sFileName = sFilePrefix || sFileNr
.head 6 -  Set sRO_Dir = s301_Output301Dir || VisStrSubstitute( sRO_Key, '\\', '' )
.head 6 -  Call VisDosMakeAllDir( sRO_Dir )
.head 6 -  Set sFileName = sRO_Dir || '\\' || sFileName
.head 3 +  Function: WriteMsgToFile
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  File Handle: fhP301
.head 5 -  Long String: lstrForOut
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Number: nLen
.head 5 -  Number: nSend
.head 4 +  Actions
.head 5 -  ! 
Write string to File
.head 5 -  Set nLen = SalStrLength( lstrForOut )
.head 5 -  Set nSend = SalFileWrite( fhP301, lstrForOut, nLen )
.head 5 +  If nSend < nLen
.head 6 -  ! 224= Fehler beim Schreiben der Datei 
.head 6 -  Call f301_Protocol_WriteMsg( GetMessage( 224 ) )
.head 6 -  Return FALSE
.head 5 -  Return TRUE
.head 3 +  Function: Out301_MakeFile
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Boolean: bpSendForFalls
.head 5 -  Boolean: bpReloading
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  FunctionalVar: hSqlMessage
.head 6 -  Class: clsSqlHandleSelect
.head 5 -  Number: nCurrMessage
.head 5 -  Number: nResCode
.head 5 -  Boolean: b301Ok
.head 5 -  Boolean: bUpdateWasCalled
.head 5 -  File Handle: fh301_File
.head 5 -  String: s301_FilePrefix
.head 5 -  String: sOrderBy
.head 5 -  String: sCurrMsgType
.head 5 -  String: sArrFileNames[*]
.head 5 -  String: sMsgSQL
.head 5 -  Number: nFNIndex
.head 5 -  Number: nI
.head 4 +  Actions
.head 5 -  Set b301Ok = TRUE
.head 5 -  !
.head 5 +  If Not hSqlMessage.Connect(  )
.head 6 -  ! 226=SQL Error: 
.head 6 -  Call f301_Protocol_WriteMsg(  GetMessage( 226 ) || "  'Connect to MESSAGE'" )
.head 6 -  Return FALSE
.head 5 -  !
.head 5 -  Set sMsgSQL = "
select	w.MESSAGE_NR, w.MESSAGE_TYPE, 
	w.MESSAGE_TEXT, w.NUMBER_OF_SEGM
into	:frmPar301.nMessageNr, :frmPar301.sMessageType, 
	:frmPar301.s301_MessageContents, :frmPar301.sSegmentNr "
.head 5 +  If b301_EDICompatible
.head 6 +  If bpReloading
.head 7 -  Set sMsgSQL = sMsgSQL || "
from	W301_MESSAGE w
where	w.FILE_NAME = :frmPar301.s301_FileName
and	w.FILE_NUMBER = :frmPar301.s301_FileNr
order by	w.MESSAGE_NR "
.head 6 +  Else
.head 7 +  If bpSendForFalls
.head 8 -  Set sMsgSQL = sMsgSQL || "
from	W301_MESSAGE w, EVENT e
where	e.FALL_KEY in (" || sFallKeys || ")
  and	@nullvalue( w.MSG_FMT_TYPE, '301') = :s301_MsgFmtType "
.head 8 +  If s301_MsgFmtType = '301'
.head 9 -  Set sMsgSQL = sMsgSQL || "
  and	w.MESSAGE_NR = e.MESSAGE_NR "
.head 8 +  Else
.head 9 -  Set sMsgSQL = sMsgSQL || "
  and	w.MESSAGE_NR = e.MESSAGE_NR_EDI  "
.head 8 -  Set sMsgSQL = sMsgSQL || "
order by	w.MESSAGE_TYPE, w.MESSAGE_NR "
.head 7 +  Else
.head 8 -  Set sMsgSQL = sMsgSQL || "
from	W301_MESSAGE w
where	w.FILE_NAME is null
  and	@nullvalue(w.MSG_FMT_TYPE, '301') = :s301_MsgFmtType
order by	w.MESSAGE_TYPE, w.MESSAGE_NR "
.head 5 +  Else
.head 6 +  If bpReloading
.head 7 -  Set sMsgSQL = sMsgSQL || "
from	W301_MESSAGE w
where	w.RO_KEY = :frmPar301.sRO_Key
  and	w.FILE_NAME = :frmPar301.s301_FileName
order by	w.MESSAGE_NR "
.head 6 +  Else
.head 7 -  Set sMsgSQL = sMsgSQL || "
from	W301_MESSAGE w, EVENT e
where	w.MESSAGE_NR = e.MESSAGE_NR
  and	@nullvalue(w.MSG_FMT_TYPE, '301') = :s301_MsgFmtType
  and	w.RO_KEY = :frmPar301.sRO_Key "
.head 7 +  If bpSendForFalls
.head 8 -  Set sMsgSQL = sMsgSQL || "
  and	e.FALL_KEY in (" || sFallKeys || ") "
.head 7 +  Else
.head 8 -  Set sMsgSQL = sMsgSQL || "
  and	w.FILE_NAME is null "
.head 7 -  Set sMsgSQL = sMsgSQL || "
order by	w.MESSAGE_TYPE, w.MESSAGE_NR "
.head 5 -  Call hSqlMessage.Initialize( sMsgSQL )
.head 5 -  !
.head 5 +  If Not hSqlMessage.PrepareAndExecute(  )
.head 6 -  ! 226=SQL Error: 
.head 6 -  Call f301_Protocol_WriteMsg(  GetMessage( 226 ) || "  'PrepareAndExecute for MESSAGE'" )
.head 6 -  Call hSqlMessage.Disconnect(  )
.head 6 -  Return FALSE
.head 5 -  !
.head 5 +  If hSqlMessage.nResultSetCount = 0
.head 6 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, sRO_Bez || " -  nicht nachrichten" ) )
.head 6 -  Call hSqlMessage.Disconnect(  )
.head 6 -  Return TRUE
.head 5 -  !
.head 5 +  If Not b301_EDICompatible
.head 6 -  Call MakeFileName( sRO_Key, s301_FileName, s301_FilePrefix, s301_FileNr, bpReloading )
.head 6 -  !
.head 6 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, sRO_Bez || " -  Datei: '" || s301_FileName || "'" ) )
.head 6 -  Set mlTitle = sRO_Bez || " -  Datei: '" || s301_FileName || "'"
.head 6 -  !
.head 6 +  If bpReloading ! try to backup existing
.head 7 +  If VisDosExist( s301_FileName )
.head 8 +  If 1 > VisFileRename( s301_FileName, s301_FileName || '.bak' )
.head 9 -  Call SalFileOpen( fh301_File, s301_FileName, OF_Delete )
.head 6 -  !
.head 6 -  ! Check file existence
.head 6 +  If SalFileOpen( fh301_File, s301_FileName, OF_Exist )
.head 7 -  Call f301_Protocol_WriteMsg(  "Fehler:  File already exists '" || s301_FileName || "'" )
.head 7 -  Call hSqlMessage.Disconnect(  )
.head 7 -  Return FALSE
.head 6 +  If Not SalFileOpen( fh301_File, s301_FileName, OF_Create | OF_Write )
.head 7 -  Call f301_Protocol_WriteMsg(  "Fehler:  'FileOpen' " || s301_FileName )
.head 7 -  Call hSqlMessage.Disconnect(  )
.head 7 -  Return FALSE
.head 6 -  !
.head 6 -  Set sOut301_Contents = Out301_FileHeader( sRO_KK_IK, s301_FilePrefix, s301_FileNr )
.head 6 -  ! Set sOut301_Contents = Out301_FileHeader( sRO_KK_IK, '', s301_FileNr )
.head 6 -  Set mlCurrContents = sOut301_Contents
.head 6 +  If sOut301_Contents = ''
.head 7 -  Return FALSE
.head 6 -  !
.head 6 -  Set b301Ok = WriteMsgToFile( fh301_File, sOut301_Contents )
.head 6 -  !
.head 6 -  Set nCurrMessage = 0
.head 6 +  While nCurrMessage < hSqlMessage.nResultSetCount And b301Ok
.head 7 +  If hSqlMessage.FetchRow( nCurrMessage, nResCode, FALSE )
.head 8 -  Set nCurrMessage = nCurrMessage + 1
.head 8 -  !
.head 8 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, "        " || sMessageType || " - " || sSegmentNr || " segm." ) )
.head 8 -  !
.head 8 -  Set sOut301_Contents = 
	Out301_MsgHeader( nCurrMessage, sMessageType ) || 
	s301_MessageContents || 
	Out301_MsgFooter( nCurrMessage, sSegmentNr )
.head 8 -  Set mlCurrContents = mlCurrContents || sOut301_Contents
.head 8 -  Set b301Ok = WriteMsgToFile( fh301_File, sOut301_Contents )
.head 8 +  If b301Ok
.head 9 -  Set bUpdateWasCalled = TRUE
.head 9 +  If Not DoImmediate( "
update	W301_MESSAGE
set	FILE_NAME = '" || s301_FileName || "',
	FILE_NUMBER = '" || s301_FileNr || "',
	MESSAGE_NR_IN_FILE = " || StrX( nCurrMessage ) || "
where	MESSAGE_NR = " || StrX( frmPar301.nMessageNr ) )
.head 10 -  ! 226=SQL Error: 
.head 10 -  Call f301_Protocol_WriteMsg(  GetMessage( 226 ) || "  'update W301_MESSAGE ... '" )
.head 10 -  Set b301Ok = FALSE
.head 7 +  Else
.head 8 -  ! 226=SQL Error: 
.head 8 -  Call f301_Protocol_WriteMsg( GetMessage( 226 ) || SalNumberToStrX( nCurrMessage+1, 0 ) || 'Fetch für W301_MESSAGE' )
.head 8 -  Set b301Ok = FALSE
.head 6 +  If b301Ok
.head 7 -  ! Set sOut301_Contents = Out301_FileFooter( nCurrMessage, s301_FilePrefix, s301_FileNr )
.head 7 -  Set sOut301_Contents = Out301_FileFooter( nCurrMessage, '', s301_FileNr )
.head 7 -  Set mlCurrContents = mlCurrContents || sOut301_Contents
.head 7 -  Set b301Ok = WriteMsgToFile( fh301_File, sOut301_Contents )
.head 6 -  Call SalFileClose( fh301_File )
.head 5 +  Else
.head 6 -  Set nCurrMessage = 0
.head 6 -  Set nI = 0
.head 6 -  Set nFNIndex = -1
.head 6 -  Set sCurrMsgType = ''
.head 6 +  While nI < hSqlMessage.nResultSetCount And b301Ok
.head 7 +  If hSqlMessage.FetchRow( nI, nResCode, FALSE )
.head 8 +  If sCurrMsgType != sMessageType
.head 9 -  Set sCurrMsgType = sMessageType
.head 9 -  ! Close the previously opened file
.head 9 +  If nFNIndex >= 0 ! Some files have been opened
.head 10 -  Call SalFileClose( fh301_File )
.head 10 -  Set sArrFileNames[ nFNIndex ] = s301_FileName
.head 9 -  Call MakeFileName( sRO_Key, s301_FileName, s301_FilePrefix, s301_FileNr, bpReloading )
.head 9 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, "Datei: '" || s301_FileName || "'" ) )
.head 9 -  Set mlTitle = "Datei: '" || s301_FileName || "'"
.head 9 +  If bpReloading ! try to backup existing
.head 10 +  If VisDosExist( s301_FileName )
.head 11 +  If 1 > VisFileRename( s301_FileName, s301_FileName || '.bak' )
.head 12 -  Call SalFileOpen( fh301_File, s301_FileName, OF_Delete )
.head 9 -  ! Check file existence
.head 9 +  If SalFileOpen( fh301_File, s301_FileName, OF_Exist )
.head 10 +  If Not SalFileOpen( fh301_File, s301_FileName, OF_Append )
.head 11 -  Call f301_Protocol_WriteMsg(  "Fehler:  FileOpen '" || s301_FileName || "'" )
.head 11 -  Call hSqlMessage.Disconnect(  )
.head 11 -  Return FALSE
.head 9 +  Else If Not SalFileOpen( fh301_File, s301_FileName, OF_Create | OF_Write )
.head 10 -  Call f301_Protocol_WriteMsg(  "Fehler:  'FileOpen' " || s301_FileName )
.head 10 -  Call hSqlMessage.Disconnect(  )
.head 10 -  Return FALSE
.head 9 -  Set nFNIndex = nFNIndex + 1
.head 9 -  Set nCurrMessage = 0
.head 8 -  !
.head 8 -  Set sOut301_Contents = ''
.head 8 -  Set mlCurrContents = sOut301_Contents
.head 8 -  !
.head 8 -  Set nCurrMessage = nCurrMessage + 1
.head 8 -  !
.head 8 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, "        " || sMessageType || " - " || sSegmentNr || " segm." ) )
.head 8 -  !
.head 8 -  Set sOut301_Contents = s301_MessageContents
.head 8 -  Set mlCurrContents = mlCurrContents || sOut301_Contents
.head 8 -  Set b301Ok = WriteMsgToFile( fh301_File, sOut301_Contents )
.head 8 +  If b301Ok
.head 9 -  Set bUpdateWasCalled = TRUE
.head 9 +  If Not SqlImmediate( "
update	W301_MESSAGE
set	FILE_NAME = :s301_FileName,
	FILE_NUMBER = :s301_FileNr,
	MESSAGE_NR_IN_FILE = :nCurrMessage
where	MESSAGE_NR = :frmPar301.nMessageNr
" )
.head 10 -  ! 226=SQL Error: 
.head 10 -  Call f301_Protocol_WriteMsg(  GetMessage( 226 ) || "  'update W301_MESSAGE ... '" )
.head 10 -  Set b301Ok = FALSE
.head 8 +  If b301Ok
.head 9 -  ! Write Message info to protocol
.head 9 -  Set b301Ok = f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 9 -  Set b301Ok = b301Ok and f301_Protocol_WriteMsg( '. Message exported (file: ' || s301_FileName || ')' )
.head 9 -  Set b301Ok = b301Ok and f301_Protocol_WriteMsg( s301_MessageContents )
.head 9 -  Set b301Ok = b301Ok and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 8 -  !
.head 7 +  Else
.head 8 -  ! 226=SQL Error: 
.head 8 -  Call f301_Protocol_WriteMsg( GetMessage( 226 ) || SalNumberToStrX( nCurrMessage+1, 0 ) || 'Fetch für W301_MESSAGE' )
.head 8 -  Set b301Ok = FALSE
.head 7 -  Set nI = nI + 1
.head 6 +  If nFNIndex >= 0
.head 7 -  Call SalFileClose( fh301_File )
.head 7 -  Set sArrFileNames[ nFNIndex ] = s301_FileName
.head 5 -  Call hSqlMessage.Disconnect(  )
.head 5 +  If b301Ok
.head 6 -  Call DoCommit(  )
.head 6 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, "Ok" ) )
.head 5 +  Else
.head 6 +  If bUpdateWasCalled
.head 7 -  Call DoRollback(  )
.head 6 -  ! Delete wrong file(s)
.head 6 +  If b301_EDICompatible ! we have an array of files
.head 7 -  Set nI = 0
.head 7 +  While nI <= nFNIndex
.head 8 -  Call SalFileOpen( fh301_File, sArrFileNames[ nI ], OF_Delete )
.head 8 -  Set nI = nI + 1
.head 6 +  Else
.head 7 -  Call SalFileOpen( fh301_File, s301_FileName, OF_Delete )
.head 6 -  Call SalListSetSelect( lbStatus301, SalListAdd( lbStatus301, "Fehler" ) )
.head 5 -  Return b301Ok
.head 3 +  Function: Out301_FileHeader
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Long String:
.head 4 +  Parameters
.head 5 -  String: sRO_KK_IK_Par
.head 5 -  String: sFilePrefix
.head 5 -  String: sFileNr
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sEinricht_KH_IK
.head 5 -  String: sCurrDate
.head 5 -  String: sCurrTime
.head 5 -  Long String: sOut301_Header
.head 4 +  Actions
.head 5 -  Set s1 = ''
.head 5 +  If Not DoImmediate( "
select	KH_IK
from	EINRICHTUNG
where	EINRICHT_ID = :nEinrichtId
into	:s1 " )
.head 6 -  ! 226=SQL Error: 
.head 6 -  Call f301_Protocol_WriteMsg(  GetMessage( 226 ) || "'select KH_IK from EINRICHTUNG'" )
.head 6 -  Return ''
.head 5 -  Set sEinricht_KH_IK = s1
.head 5 -  !
.head 5 -  Set sOut301_Header = ''
.head 5 -  ! Set sCurrDate = SalFmtFormatDateTime( SalDateCurrent(  ), 'ddMMyy' )
.head 5 -  ! UK asked to change the date format from 'ddMMyy' to 'yyMMdd'
.head 5 -  Set sCurrDate = SalFmtFormatDateTime( SalDateCurrent(  ), 'yyMMdd' )
.head 5 -  Set sCurrTime = SalFmtFormatDateTime( SalDateCurrent(  ), 'hhhhmm' )
.head 5 -  Set sOut301_Header = 
"UNB+UNOC:3+" || sEinricht_KH_IK || "+" || sRO_KK_IK_Par || "+" 
|| sCurrDate || ":" || sCurrTime || "+" || sFileNr || "++" || sFilePrefix || sFileNr || "'" || 
SalNumberToChar( 13 ) || SalNumberToChar( 10 )
.head 5 -  Return sOut301_Header
.head 3 +  Function: Out301_FileFooter
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Long String:
.head 4 +  Parameters
.head 5 -  Number: nMsgInFile
.head 5 -  String: sFilePrefix
.head 5 -  String: sFileNr
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Long String: sOut301_Footer
.head 5 -  String: sMsgInFile
.head 4 +  Actions
.head 5 -  Set sMsgInFile = SalStrRightX( '000000' || SalNumberToStrX( nMsgInFile, 0 ), 6 )
.head 5 -  Set sOut301_Footer = 
"UNZ+" || sMsgInFile || "+" || sFilePrefix || sFileNr || "'" || 
SalNumberToChar( 13 ) || SalNumberToChar( 10 )
.head 5 -  Return sOut301_Footer
.head 3 +  Function: Out301_MsgHeader
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  String:
.head 4 +  Parameters
.head 5 -  Number: nCurrMsgInFile
.head 5 -  String: sMsgType
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sMsgHeader
.head 5 -  String: sCurrMsg
.head 4 +  Actions
.head 5 -  Set sCurrMsg = SalStrRightX( '00000' || SalNumberToStrX( nCurrMsgInFile, 0 ), 5 )
.head 5 -  Set sMsgHeader = "UNH+" || sCurrMsg || "+" || sMsgType || sVersStr || "'" || 
SalNumberToChar( 13 ) || SalNumberToChar( 10 )
.head 5 -  Return sMsgHeader
.head 3 +  Function: Out301_MsgFooter
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  String:
.head 4 +  Parameters
.head 5 -  Number: nCurrMsgInFile
.head 5 -  String: sNumOfSgmnt
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sMsgFooter
.head 5 -  String: sCurrMsg
.head 4 +  Actions
.head 5 -  Set sCurrMsg = SalStrRightX( '00000' || SalNumberToStrX( nCurrMsgInFile, 0 ), 5 )
.head 5 -  Set sMsgFooter = "UNT+" || sNumOfSgmnt || "+" || sCurrMsg || "'" || 
SalNumberToChar( 13 ) || SalNumberToChar( 10 )
.head 5 -  Return sMsgFooter
.head 3 -  !
.head 3 -  ! Functions for Reading Files §301
.head 3 +  Function: CopyFilesToTable
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  ! ! indicates logic error (wrong format etc.)
.head 5 -  Boolean: bFail
.head 5 -  ! ! indicates normal input stream
.head 5 -  Boolean: bOk
.head 5 -  !
.head 5 -  String: strFilters[0:6]
.head 5 -  String: strParamFileName
.head 5 -  Number: nIndex
.head 5 -  !
.head 5 -  String: sWord
.head 5 -  Number: nErr
.head 5 -  Number: nStartPos
.head 5 -  Number: nFinishPos
.head 5 -  Number: nBytesRead
.head 5 -  !
.head 5 -  Number: nMsgNr
.head 5 -  String: sMsg_Nr_inFile
.head 5 -  Number: nSegmCount
.head 5 -  String: sSect
.head 5 -  Long String: sText
.head 5 -  Number: nMsgCount
.head 5 -  Number: nRO_IK_Nr
.head 5 -  String: sRO_IK_Nr
.head 5 -  String: sKH_IK
.head 5 -  String: sRO_Key
.head 5 -  ! !
.head 5 -  Boolean: bWasFKT
.head 5 -  Boolean: bWasINV
.head 5 -  Boolean: bWasNAD
.head 5 -  Boolean: bWasREC
.head 5 -  Boolean: bWasKOS
.head 5 -  Boolean: bWasZPR
.head 5 -  Boolean: bWasTXT
.head 5 -  Boolean: bWasFHL
.head 5 -  String: sSegm
.head 5 -  Number: nSameSegmCount
.head 5 -  !
.head 5 -  Number: nNumFiles
.head 5 -  Number: nCurrFile
.head 5 -  String: sFiles[*]
.head 5 -  String: sCurrFile
.head 4 +  Actions
.head 5 -  Set bFail = FALSE
.head 5 -  Set bOk = TRUE
.head 5 -  ! Read par.301 files
.head 5 +  If bOk
.head 6 -  !
.head 6 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 6 -  Set bOk = f301_Protocol_WriteMsg( GetMessageX( 1000008, '. Reading pure §301-files...' ) )
.head 6 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 6 -  !
.head 6 -  Set nCurrFile = 0
.head 6 +  If b301_ReadAllFiles
.head 7 +  If s301_Input301Dir != ''
.head 8 -  Set nNumFiles = GetFileList( s301_Input301Dir, '*.*', sFiles )
.head 7 +  Else
.head 8 -  Set nNumFiles = 0
.head 6 +  Else
.head 7 -  Set nNumFiles = 1
.head 6 +  If nNumFiles <= 0
.head 7 -  ! Write to Protocol that file list is empty
.head 7 -  Set dfCurrNum = 0
.head 7 -  Set nNumFiles = 0
.head 7 -  !
.head 7 -  Set bOk = f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 7 -  Set bOk = bOk and f301_Protocol_WriteMsg( '. ' || GetMessageX( 1000011, 'No 301-import files found.' ) )
.head 7 -  !
.head 6 -  !
.head 6 -  Call InitDataFields( 3 )
.head 6 -  Set dfAllNum = nNumFiles
.head 6 +  While bOk And nCurrFile < nNumFiles
.head 7 -  Set bFail = FALSE
.head 7 -  Set dfCurrNum = nCurrFile + 1
.head 7 -  ! !	Opening of INPUT.301 file
.head 7 +  If bOk
.head 8 +  If bP301_InputOpened
.head 9 -  Call SalFileClose( fhP301 )
.head 9 -  Set bP301_InputOpened = FALSE
.head 8 +  If b301_ReadAllFiles
.head 9 -  Set strFileP301 = sFiles[ nCurrFile ]
.head 8 +  Else
.head 9 -  ! !	setting file types
.head 9 -  Call SalGetProfileString( '§301', 'AnwendungsreferenzPrefix', '', sWord, ATLANTA_INI )
.head 9 -  Set strFilters[1] = sWord || '*.'
.head 9 -  Set strFilters[0] = '§301 Anwendungsreferenz Datei (' || strFilters[1] || ')'
.head 9 -  Call SalGetProfileString( '§301', 'TransferDateiPrefix', '', sWord, ATLANTA_INI )
.head 9 -  Set strFilters[3] = sWord || '*.'
.head 9 -  Set strFilters[2] = '§301 Transfer Datei (' || strFilters[3] || ')'
.head 9 -  Set strFilters[5] = '*.*'
.head 9 -  Set strFilters[4] = 'All Files (' || strFilters[5] || ')'
.head 9 -  ! !	getting file name from user
.head 9 -  Call SalGetProfileString( '§301', 'Input301FilesDir', '', strFileP301, ATLANTA_INI )
.head 9 -  Set strParamFileName = strFilters[1] || ';' || strFilters[3]
.head 9 +  If not SalDlgOpenFile( hWndForm, 'Open file...', strFilters, 6, nIndex, strParamFileName, strFileP301 )
.head 10 -  Break
.head 8 -  !
.head 8 -  Set mlTitle = " Dateibearbeitung: '" || strFileP301 || "'"
.head 8 -  ! !	file opening
.head 8 +  If Not bP301_InputOpened
.head 9 -  Set bP301_InputOpened = SalFileOpen( fhP301, strFileP301, OF_Read )
.head 8 +  If not bP301_InputOpened
.head 9 -  Set bOk = FALSE
.head 7 -  ! !	reading file header ( UNB )
.head 7 +  If bOk and not bFail
.head 8 -  ! !	1
.head 8 -  Set sWord = GetWord( TRUE, 'M', 'C', 3, 'F', '', 'UNB', nErr, 0, '301' )
.head 8 +  If dfSegment != sWord
.head 9 -  Set dfSegment = sWord
.head 8 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessageAndNumber( 10001 ) )
.head 8 +  If nErr = P301_EOField
.head 9 -  ! !	2
.head 9 -  Set sWord = GetWord( TRUE, 'M', 'C', 4, 'F', '', 'UNOC', nErr, P301_BadWord, '301' )
.head 9 +  If nErr = P301_BadWord
.head 10 -  Set bFail = TRUE
.head 10 -  Call LogError( GetMessageAndNumber( 10040 ) )
.head 9 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 10 -  Set bFail = TRUE
.head 9 +  If nErr = P301_EOField
.head 10 -  ! !	3
.head 10 -  Set sWord = GetWord( TRUE, 'M', 'N', 1, 'F', '', '3', nErr, P301_BadWord, '301' )
.head 10 +  If nErr = P301_BadWord
.head 11 -  Set bFail = TRUE
.head 11 -  Call LogError( GetMessageAndNumber( 10040 ) )
.head 10 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 11 -  Set bFail = TRUE
.head 10 +  If nErr = P301_EOField
.head 11 -  ! !	4
.head 11 -  Set sRO_IK_Nr = GetWord( TRUE, 'M', 'C', 35, 'V', '', '', nErr, 0, '301' )
.head 11 -  Set sRO_Key = ''
.head 11 -  Set bOk = SqlImmediate( "
select  RO_Key  from  receiving_office  where  RO_IK_Nr = :sRO_IK_Nr  into  :sRO_Key
" )
.head 11 +  If not sRO_Key
.head 12 -  Set bFail = TRUE
.head 12 -  Call LogError( GetMessageAndNumber( 10041 ) )
.head 11 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 12 -  Set bFail = TRUE
.head 11 +  If nErr = P301_EOField
.head 12 -  ! !	5
.head 12 -  Set sWord = GetWord( TRUE, 'M', 'C', 35, 'V', '', '', nErr, 0, '301' )
.head 12 -  Set bOk = SqlImmediate( "
select  KH_IK  from  einrichtung  where  einricht_id = :nEinrichtId  into  :sKH_IK
" )
.head 12 +  If sWord != sKH_IK
.head 13 -  Set bFail = TRUE
.head 13 -  Call LogError( GetMessageAndNumber( 10043 ) )
.head 12 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 13 -  Set bFail = TRUE
.head 12 +  If nErr = P301_EOField
.head 13 -  ! !	6
.head 13 -  Set sWord = GetWord( TRUE, 'M', 'C', 6, 'F', '', '', nErr, 0, '301' )
.head 13 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 14 -  Set bFail = TRUE
.head 13 +  If nErr = P301_EOField
.head 14 -  ! !	7
.head 14 -  Set sWord = GetWord( TRUE, 'M', 'C', 4, 'F', '', '', nErr, 0, '301' )
.head 14 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 15 -  Set bFail = TRUE
.head 14 +  If nErr = P301_EOField
.head 15 -  ! !	8
.head 15 -  Set sFileNr = GetWord( TRUE, 'M', 'C', 14, 'V', '', '', nErr, 0, '301' )
.head 15 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 16 -  Set bFail = TRUE
.head 15 +  If nErr = P301_EOField
.head 16 -  ! !	9
.head 16 -  Set sFileName = GetWord( TRUE, 'M', 'C', 14, 'V', '', '', nErr, 0, '301' )
.head 16 +  If dfFileName != sFileName
.head 17 -  Set dfFileName = sFileName
.head 16 +  If SalStrLength( sFileName ) < 8  or  SalStrLength( sFileName ) > 11
.head 17 -  Set bFail = TRUE
.head 17 -  Call LogError( GetMessageAndNumber( 10045 ) )
.head 16 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 17 -  Set bFail = TRUE
.head 16 +  If nErr = P301_EOField
.head 17 -  ! !	else
.head 17 -  Set sWord = GetSegm( TRUE, nErr, 0, '301' )
.head 17 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 18 -  Set bFail = TRUE
.head 7 -  ! !	reading file body
.head 7 +  If bOk and not bFail
.head 8 -  Set nMsgCount = 0
.head 8 +  Loop ReadFile
.head 9 +  If not bOk or bFail
.head 10 -  Break
.head 9 -  ! !	reading message header ( UNH )
.head 9 +  If bOk and not bFail
.head 10 -  ! !	1
.head 10 -  Set sWord = GetWord( TRUE, 'M', 'C', 3, 'F', '', '', nErr, 0, '301' )
.head 10 +  If dfSegment != sWord
.head 11 -  Set dfSegment = sWord
.head 10 +  If sWord = 'UNZ'
.head 11 -  Break ReadFile
.head 10 -  Set nMsgCount = nMsgCount + 1
.head 10 +  If nErr != P301_EOSegm  and  nErr != P301_EOField  or  sWord != 'UNH'
.head 11 -  Set bFail = TRUE
.head 11 -  Call LogError( GetMessageAndNumber( 10003 ) )
.head 11 -  Break ReadFile
.head 10 +  If nErr = P301_EOField
.head 11 -  ! !	2
.head 11 -  Set sMsg_Nr_inFile = GetWord( TRUE, 'M', 'C', 14, 'V', '', '', nErr, 0, '301' )
.head 11 +  If dfMsgNr != sMsg_Nr_inFile
.head 12 -  Set dfMsgNr = sMsg_Nr_inFile
.head 11 +  If SalStrToNumber( sMsg_Nr_inFile ) != nMsgCount
.head 12 -  Set bFail = TRUE
.head 12 -  Call LogError( GetMessageAndNumber( 20060 ) )
.head 12 -  Break ReadFile
.head 11 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 12 -  Break
.head 11 +  If nErr = P301_EOField
.head 12 -  ! !	3
.head 12 -  Set sSect = GetWord( TRUE, 'M', 'C', 6, 'V', '', '', nErr, 0, '301' )
.head 12 +  If dfSection != sSect
.head 13 -  Set dfSection = sSect
.head 12 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 13 -  Break
.head 12 +  If nErr = P301_EOField
.head 13 -  ! !	4
.head 13 -  Set sWord = GetWord( TRUE, 'M', 'C', 2, 'F', '', '01', nErr, P301_BadWord, '301' )
.head 13 +  If nErr = P301_BadWord
.head 14 -  Set bFail = TRUE
.head 14 -  Call LogError( GetMessageAndNumber( 20062 ) )
.head 14 -  Break ReadFile
.head 13 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 14 -  Break
.head 13 +  If nErr = P301_EOField
.head 14 -  ! !	5
.head 14 -  Set sWord = GetWord( TRUE, 'M', 'C', 3, 'F', '', '000', nErr, P301_BadWord, '301' )
.head 14 +  If nErr = P301_BadWord
.head 15 -  Set bFail = TRUE
.head 15 -  Call LogError( GetMessageAndNumber( 20064 ) )
.head 15 -  Break ReadFile
.head 14 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 15 -  Break
.head 14 +  If nErr = P301_EOField
.head 15 -  ! !	6
.head 15 -  Set sWord = GetWord( TRUE, 'M', 'C', 2, 'F', '', '00', nErr, P301_BadWord, '301' )
.head 15 +  If nErr = P301_BadWord
.head 16 -  Set bFail = TRUE
.head 16 -  Call LogError( GetMessageAndNumber( 20065 ) )
.head 16 -  Break ReadFile
.head 15 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 16 -  Break
.head 15 +  If nErr = P301_EOField
.head 16 -  ! !	else
.head 16 -  Set sWord = GetSegm( TRUE, nErr, 0, '301' )
.head 16 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 17 -  Break
.head 9 -  ! !	init vars for reading
.head 9 +  If bOk and not bFail
.head 10 -  Set bWasFKT = FALSE
.head 10 -  Set bWasINV = FALSE
.head 10 -  Set bWasNAD = FALSE
.head 10 -  Set bWasREC = FALSE
.head 10 -  Set bWasKOS = FALSE
.head 10 -  Set bWasZPR = FALSE
.head 10 -  Set bWasTXT = FALSE
.head 10 -  Set sSegm = ''
.head 10 -  Set nSameSegmCount = 0
.head 10 -  Set nSegmCount = 1
.head 10 -  Set nStartPos = SalFileTell( fhP301 )
.head 9 -  ! !	passing message body
.head 9 +  Loop ReadMsg
.head 10 -  Set nFinishPos = SalFileTell( fhP301 )
.head 10 -  Set sWord = SalStrLeftX( GetSegm( TRUE, nErr, 0, '301' ), 3 )
.head 10 -  Set nSegmCount = nSegmCount + 1
.head 10 +  If sSegm = sWord
.head 11 -  Set nSameSegmCount = nSameSegmCount + 1
.head 11 +  If nSameSegmCount > 10
.head 12 +  If sSect = 'ZAAO'  and  sSegm = 'EZV'
.head 13 -  Set bFail = TRUE
.head 13 -  Call LogError( GetMessageAndNumber( 24036 ) )
.head 13 -  Break ReadFile
.head 12 +  If ( sSect = 'KOUB'  or  sSect = 'AUFM' ) and  sSegm = 'TXT'
.head 13 -  Set bFail = TRUE
.head 13 -  Call LogError( GetMessageAndNumber( 24037 ) )
.head 13 -  Break ReadFile
.head 12 +  If nSameSegmCount > 30
.head 13 +  If sSect = 'ZAAO'  and  sSegm = 'EZA'
.head 14 -  Set bFail = TRUE
.head 14 -  Call LogError( GetMessageAndNumber( 24035 ) )
.head 14 -  Break ReadFile
.head 13 +  If sSect = 'ZAHL'  and  sSegm = 'ENT'
.head 14 -  Set bFail = TRUE
.head 14 -  Call LogError( GetMessageAndNumber( 24034 ) )
.head 14 -  Break ReadFile
.head 10 +  Else
.head 11 -  Set sSegm = sWord
.head 11 -  Set nSameSegmCount = 1
.head 11 +  If sSegm = 'FKT'
.head 12 -  Set bWasFKT = TRUE
.head 11 +  Else If sSegm = 'INV'
.head 12 -  Set bWasINV = TRUE
.head 11 +  Else If sSegm = 'NAD'
.head 12 -  Set bWasNAD = TRUE
.head 11 +  Else If sSegm = 'REC'
.head 12 -  Set bWasREC = TRUE
.head 11 +  Else If sSegm = 'KOS'
.head 12 -  Set bWasKOS = TRUE
.head 11 +  Else If sSegm = 'ZPR'
.head 12 -  Set bWasZPR = TRUE
.head 11 +  Else If sSegm = 'TXT'
.head 12 -  Set bWasTXT = TRUE
.head 10 +  If dfSegment != sWord
.head 11 -  Set dfSegment = sWord
.head 10 +  If sWord = 'UNT'
.head 11 -  Break
.head 10 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 11 -  Set bFail = TRUE
.head 11 -  Call LogError( GetMessageAndNumber( 10080 ) )
.head 11 -  Break ReadFile
.head 9 -  ! !	error check on existing of certain segments
.head 9 +  If bOk and not bFail
.head 10 +  If not bWasFKT  and ( sSect = 'KOUB'  or  sSect = 'ANFM'  or  sSect = 'ZAHL'  or  sSect = 'ZAAO' )
.head 11 -  Set bFail = TRUE
.head 11 -  Call LogError( GetMessageAndNumber( 24010 ) )
.head 11 -  Break ReadFile
.head 10 +  If not bWasINV  and ( sSect = 'KOUB'  or  sSect = 'ANFM'  or  sSect = 'ZAHL'  or  sSect = 'ZAAO' )
.head 11 -  Set bFail = TRUE
.head 11 -  Call LogError( GetMessageAndNumber( 24011 ) )
.head 11 -  Break ReadFile
.head 10 +  If not bWasNAD  and ( sSect = 'KOUB'  or  sSect = 'ANFM'  or  sSect = 'ZAHL'  or  sSect = 'ZAAO' )
.head 11 -  Set bFail = TRUE
.head 11 -  Call LogError( GetMessageAndNumber( 24012 ) )
.head 11 -  Break ReadFile
.head 10 +  If not bWasREC  and ( sSect = 'ZAHL'  or  sSect = 'ZAAO' )
.head 11 -  Set bFail = TRUE
.head 11 -  Call LogError( GetMessageAndNumber( 24018 ) )
.head 11 -  Break ReadFile
.head 10 +  If not bWasKOS  and ( sSect = 'KOUB' )
.head 11 -  Set bFail = TRUE
.head 11 -  Call LogError( GetMessageAndNumber( 24021 ) )
.head 11 -  Break ReadFile
.head 10 +  If not bWasZPR  and ( sSect = 'ZAHL'  or  sSect = 'ZAAO' )
.head 11 -  Set bFail = TRUE
.head 11 -  Call LogError( GetMessageAndNumber( 24022 ) )
.head 11 -  Break ReadFile
.head 9 -  ! !	reading message body
.head 9 -  Call SalFileSeek( fhP301, nStartPos, FILE_SeekBegin )
.head 9 -  Set nBytesRead =  SalFileRead( fhP301, sText, nFinishPos - nStartPos )
.head 9 -  ! !	reading message footer ( UNT )
.head 9 +  If bOk and not bFail
.head 10 -  ! !	1
.head 10 -  Set sWord = GetWord( TRUE, 'M', 'C', 3, 'F', '', 'UNT', nErr, 0, '301' )
.head 10 +  If dfSegment != sWord
.head 11 -  Set dfSegment = sWord
.head 10 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 11 -  Set bFail = TRUE
.head 11 -  Call LogError( GetMessageAndNumber( 10080 ) )
.head 11 -  Break ReadFile
.head 10 +  If nErr = P301_EOField
.head 11 -  ! !	2
.head 11 -  Set sWord = GetWord( TRUE, 'M', 'N', 6, 'V', '', '', nErr, 0, '301' )
.head 11 +  If SalStrToNumber( sWord ) != nSegmCount
.head 12 -  Set bFail = TRUE
.head 12 -  Call LogError( GetMessageAndNumber( 20070 ) )
.head 12 -  Break ReadFile
.head 11 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 12 -  Break ReadFile
.head 11 +  If nErr = P301_EOField
.head 12 -  ! !	3
.head 12 -  Set sWord = GetWord( TRUE, 'M', 'N', 6, 'V', '', '', nErr, 0, '301' )
.head 12 +  If SalStrToNumber( sWord ) != nMsgCount
.head 13 -  Set bFail = TRUE
.head 13 -  Call LogError( GetMessageAndNumber( 20071 ) )
.head 13 -  Break ReadFile
.head 12 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 13 -  Break ReadFile
.head 12 +  If nErr = P301_EOField
.head 13 -  ! !	else
.head 13 -  Set sWord = GetSegm( TRUE, nErr, 0, '301' )
.head 13 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 14 -  Break ReadFile
.head 9 -  ! !	writing into Message table
.head 9 +  If bOk and not bFail
.head 10 -  Set bOk = SqlImmediate( "
select  @nullvalue( max( message_nr ), 0 ) + 1  from  r301_input  into  :nMsgNr
" )
.head 10 -  Set bOk = SqlImmediate( "
insert  into  r301_input( Message_Nr, MESSAGE_DATE, Message_Type, File_Name, File_Number,
  Message_Nr_In_File, Number_Of_Segm, RO_Key, Message_Text, Msg_Fmt_Type )
values( :nMsgNr, SYSDATE, :sSect, :sFileName, :sFileNr,
  :sMsg_Nr_inFile, :nSegmCount, :sRO_Key, :sText, '301' )
" )
.head 7 -  ! !	reading file footSer ( UNZ )
.head 7 +  If bOk and not bFail
.head 8 -  ! !	1
.head 8 -  ! Set sWord = GetWord( TRUE, 'M', 'C', 3, 'F', '', 'UNZ', nErr, 0, FALSE )
.head 8 +  If sWord != 'UNZ'
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessageAndNumber( 10080 ) )
.head 8 +  If dfSegment != sWord
.head 9 -  Set dfSegment = sWord
.head 8 +  If nErr = P301_EOField
.head 9 -  ! !	2
.head 9 -  Set sWord = GetWord( TRUE, 'M', 'N', 6, 'V', '', '', nErr, 0, '301' )
.head 9 +  If SalStrToNumber( sWord ) != nMsgCount
.head 10 -  Set bFail = TRUE
.head 10 -  Call LogError( GetMessageAndNumber( 10090 ) )
.head 9 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 10 -  Set bFail = TRUE
.head 9 +  If nErr = P301_EOField
.head 10 -  ! !	3
.head 10 -  Set sWord = GetWord( TRUE, 'M', 'C', 14, 'V', '', '', nErr, 0, '301' )
.head 10 +  If sWord != sFileName
.head 11 -  Set bFail = TRUE
.head 11 -  Call LogError( GetMessageAndNumber( 10091 ) )
.head 10 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 11 -  Set bFail = TRUE
.head 10 +  If nErr = P301_EOField
.head 11 -  Set sWord = GetSegm( TRUE, nErr, 0, '301' )
.head 11 +  If nErr != P301_EOSegm  and  nErr != P301_EOField
.head 12 -  Set bFail = TRUE
.head 7 -  ! !	checking EOF
.head 7 +  If bOk and not bFail
.head 8 -  Set sWord = GetWord( TRUE, 'K', 'C', 1, 'V', '', '', nErr, P301_EOF, '301' )
.head 8 +  If nErr != P301_EOF
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessageAndNumber( 10092 ) )
.head 7 -  ! !	file closing
.head 7 +  If bP301_InputOpened
.head 8 -  Call SalFileClose( fhP301 )
.head 8 -  Set bP301_InputOpened = FALSE
.head 7 +  If bOk
.head 8 -  Set bOk = MoveFileToResultDir( not bFail, '301' )
.head 7 -  ! !	commiting
.head 7 +  If bOk and not bFail
.head 8 -  Set bOk = SqlImmediate( "commit" )
.head 8 -  Set dfAllGood = dfAllGood + 1
.head 7 +  Else
.head 8 -  Call SqlImmediate( "rollback" )
.head 8 -  Set dfAllBad = dfAllBad + 1
.head 7 -  !
.head 7 -  Set nCurrFile = nCurrFile + 1
.head 5 -  ! Read EDIalog files
.head 5 +  If bOk
.head 6 -  !
.head 6 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 6 -  Set bOk = bOk and f301_Protocol_WriteMsg( GetMessageX( 1000009, '. Reading EDIalog files...' ) )
.head 6 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 6 -  !
.head 6 -  Set nCurrFile = 0
.head 6 +  If b301_ReadAllFiles
.head 7 +  If s301_InputEDIDir != ''
.head 8 -  Set nNumFiles = GetFileList( s301_InputEDIDir, '????.dat', sFiles )
.head 8 -  Call ConvertFHLMessages( sFiles, nNumFiles, s301_InputEDIDir )
.head 8 -  Set nNumFiles = CheckEDIalogFiles( sFiles )
.head 7 +  Else
.head 8 -  Set nNumFiles = 0
.head 6 +  Else
.head 7 -  Set nNumFiles = 1
.head 6 +  If nNumFiles <= 0
.head 7 -  ! Write to Protocol that file list is empty
.head 7 -  !
.head 7 -  Set bOk = f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 7 -  Set bOk = bOk and f301_Protocol_WriteMsg( '. ' || GetMessageX( 1000012, 'No EDIalog-import files found.' ) )
.head 7 -  !
.head 7 -  Return TRUE
.head 6 -  !
.head 6 -  Call InitDataFields( 3 )
.head 6 -  Set dfAllNum = dfAllNum + nNumFiles
.head 6 +  While bOk And nCurrFile < nNumFiles
.head 7 -  Set bFail = FALSE
.head 7 -  Set dfCurrNum = nCurrFile + 1
.head 7 -  ! !	Opening of INPUT.EDI file
.head 7 +  If bOk
.head 8 +  If bP301_InputOpened
.head 9 -  Call SalFileClose( fhP301 )
.head 9 -  Set bP301_InputOpened = FALSE
.head 8 +  If b301_ReadAllFiles
.head 9 -  Set strFileP301 = sFiles[ nCurrFile ]
.head 8 +  Else
.head 9 -  ! !	setting file types
.head 9 -  Set strFilters[1] = '????.dat'
.head 9 -  Set strFilters[0] = '§301 Transfer Datei für EDIalog(' || strFilters[1] || ')'
.head 9 -  Set strFilters[3] = '*.*'
.head 9 -  Set strFilters[2] = 'Alle Dateien (' || strFilters[3] || ')'
.head 9 -  ! !	getting file name from user
.head 9 -  Call SalGetProfileString( '§301', 'InputEDIFilesDir', '', strFileP301, ATLANTA_INI )
.head 9 -  Set strParamFileName = strFilters[1]
.head 9 +  If not SalDlgOpenFile( hWndForm, 'Open file...', strFilters, 4, nIndex, strParamFileName, strFileP301 )
.head 10 -  Return TRUE
.head 8 -  !
.head 8 -  Set mlTitle = " Dateibearbeitung: '" || strFileP301 || "'"
.head 8 -  !
.head 8 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 8 -  Set bOk = bOk and f301_Protocol_WriteMsg( mlTitle )
.head 8 -  !
.head 8 -  ! !	file opening
.head 8 +  If Not bP301_InputOpened
.head 9 -  Set bP301_InputOpened = SalFileOpen( fhP301, strFileP301, OF_Read )
.head 8 +  If Not bP301_InputOpened
.head 9 -  Set bOk = FALSE
.head 8 +  Else
.head 9 -  Set sFileName = strFileP301
.head 9 -  Set dfFileName = sFileName
.head 7 -  ! !              Reading messages
.head 7 +  If bOk
.head 8 -  Set sSect = SalStrUpperX( SalStrMidX( strFileP301, VisStrScanReverse( strFileP301, -1, '.' ) - 4, 4 ) )
.head 8 -  Set nMsgCount = 0
.head 8 -  Set sSegm = ''
.head 8 -  Set nSameSegmCount = 0
.head 8 -  Set nSegmCount = 0
.head 8 +  Loop ReadFile
.head 9 -  Set nFinishPos = SalFileTell( fhP301 )
.head 9 -  Set sWord = GetSegm( TRUE, nErr, 0, 'EDI' )
.head 9 +  If nErr = P301_EOF
.head 10 -  Break ReadFile
.head 9 -  !
.head 9 -  Set sWord = SalStrTrimX( SalStrLeftX( sWord, 3 ) )
.head 9 +  If sWord = ' '
.head 10 -  Set sWord = ''
.head 9 -  !
.head 9 +  If sWord
.head 10 +  If dfSegment != sWord
.head 11 -  Set dfSegment = sWord
.head 10 +  If sSegm = sWord
.head 11 -  Set nSameSegmCount = nSameSegmCount + 1
.head 11 +  If nSameSegmCount > 10
.head 12 +  If sSect = 'ZAAO'  and  sSegm = 'EZV'
.head 13 -  Set bFail = TRUE
.head 13 -  Call LogError( GetMessageAndNumber( 24036 ) )
.head 13 -  Break ReadFile
.head 12 +  If ( sSect = 'KOUB'  or  sSect = 'ANFM' ) and  sSegm = 'TXT'
.head 13 -  Set bFail = TRUE
.head 13 -  Call LogError( GetMessageAndNumber( 24037 ) )
.head 13 -  Break ReadFile
.head 12 +  If nSameSegmCount > 20
.head 13 +  If sSect = 'FEHL' and sSegm = 'FHL'
.head 14 -  Set bFail = TRUE
.head 14 -  Call LogError( GetMessageAndNumber( 24038 ) )
.head 14 -  Break ReadFile
.head 13 +  If nSameSegmCount > 30
.head 14 +  If sSect = 'ZAAO'  and  sSegm = 'EZA'
.head 15 -  Set bFail = TRUE
.head 15 -  Call LogError( GetMessageAndNumber( 24035 ) )
.head 15 -  Break ReadFile
.head 14 +  If sSect = 'ZAHL'  and  sSegm = 'ENT'
.head 15 -  Set bFail = TRUE
.head 15 -  Call LogError( GetMessageAndNumber( 24034 ) )
.head 15 -  Break ReadFile
.head 10 +  Else
.head 11 -  Set sSegm = sWord
.head 11 -  Set nSameSegmCount = 1
.head 11 +  If sSegm = 'FKT'
.head 12 +  If nSegmCount > 0
.head 13 -  ! ! Check if all segments are present
.head 13 +  If bOk and not bFail
.head 14 +  If not bWasFKT  and ( sSect = 'KOUB'  or  sSect = 'ANFM'  or  sSect = 'ZAHL'  or  sSect = 'ZAAO' or sSect = 'FEHL' )
.head 15 -  Set bFail = TRUE
.head 15 -  Call LogError( GetMessageAndNumber( 24010 ) )
.head 15 -  Break ReadFile
.head 14 +  If not bWasINV  and ( sSect = 'KOUB'  or  sSect = 'ANFM'  or  sSect = 'ZAHL'  or  sSect = 'ZAAO' )
.head 15 -  Set bFail = TRUE
.head 15 -  Call LogError( GetMessageAndNumber( 24011 ) )
.head 15 -  Break ReadFile
.head 14 +  If not bWasNAD  and ( sSect = 'KOUB'  or  sSect = 'ANFM'  or  sSect = 'ZAHL'  or  sSect = 'ZAAO' )
.head 15 -  Set bFail = TRUE
.head 15 -  Call LogError( GetMessageAndNumber( 24012 ) )
.head 15 -  Break ReadFile
.head 14 +  If not bWasREC  and ( sSect = 'ZAHL'  or  sSect = 'ZAAO' )
.head 15 -  Set bFail = TRUE
.head 15 -  Call LogError( GetMessageAndNumber( 24018 ) )
.head 15 -  Break ReadFile
.head 14 +  If not bWasKOS  and ( sSect = 'KOUB' )
.head 15 -  Set bFail = TRUE
.head 15 -  Call LogError( GetMessageAndNumber( 24021 ) )
.head 15 -  Break ReadFile
.head 14 +  If not bWasZPR  and ( sSect = 'ZAHL'  or  sSect = 'ZAAO' )
.head 15 -  Set bFail = TRUE
.head 15 -  Call LogError( GetMessageAndNumber( 24022 ) )
.head 15 -  Break ReadFile
.head 14 +  If not bWasFHL and sSect = 'FEHL'
.head 15 -  Set bFail = TRUE
.head 15 -  Call LogError( GetMessageAndNumber( 24039 ) )
.head 15 -  Break ReadFile
.head 13 -  ! !	reading message body
.head 13 -  Call SalFileSeek( fhP301, nStartPos, FILE_SeekBegin )
.head 13 -  Set nBytesRead =  SalFileRead( fhP301, sText, nFinishPos - nStartPos )
.head 13 -  Set sMsg_Nr_inFile = SalNumberToStrX( nMsgCount, 0 )
.head 13 -  ! !	writing into Message table
.head 13 +  If bOk and not bFail
.head 14 -  Call SqlImmediate( "
select  @nullvalue( max( message_nr ), 0 ) + 1  from  r301_input  into  :nMsgNr
" )
.head 14 -  !
.head 14 -  Set bOk = SqlImmediate( "
insert  into  r301_input( Message_Nr, MESSAGE_DATE, Message_Type, File_Name, File_Number,
  Message_Nr_In_File, Number_Of_Segm, RO_Key, Message_Text, Msg_Fmt_Type )
values( :nMsgNr, SYSDATE, :sSect, :sFileName, :sFileNr,
  :sMsg_Nr_inFile, :nSegmCount, :sRO_Key, :sText, 'EDI' )
" )
.head 14 -  !
.head 14 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 14 -  Set bOk = bOk and f301_Protocol_WriteMsg( '. ' || GetMessageX( 1000013, 'A message received. Internal number:' ) || ' ' || SalNumberToStrX( nMsgNr, 0 ) )
.head 14 -  Set bOk = bOk and f301_Protocol_WriteMsg( sText )
.head 14 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 14 -  !
.head 12 -  ! ! Initialize
.head 12 -  Set bWasFKT = FALSE
.head 12 -  Set bWasINV = FALSE
.head 12 -  Set bWasNAD = FALSE
.head 12 -  Set bWasREC = FALSE
.head 12 -  Set bWasKOS = FALSE
.head 12 -  Set bWasZPR = FALSE
.head 12 -  Set bWasTXT = FALSE
.head 12 -  Set bWasFHL = FALSE
.head 12 -  Set nSegmCount = 0
.head 12 -  Set nStartPos = nFinishPos
.head 12 -  Set nMsgCount = nMsgCount + 1
.head 12 -  Set sMsg_Nr_inFile = SalNumberToStrX( nMsgCount, 0 )
.head 12 -  Set dfMsgNr = sMsg_Nr_inFile
.head 12 -  ! Read info from FKT
.head 12 -  Set bOk = SalFileSeek( fhP301, nFinishPos, FILE_SeekBegin )
.head 12 +  If bOk and not bFail
.head 13 -  Set sWord = GetWord( TRUE, 'M', 'C', 3, 'F', '', 'FKT', nErr, 0, 'EDI' )
.head 13 +  If nErr != P301_OK
.head 14 -  Set bFail = TRUE
.head 14 -  Call LogError( GetMessageAndNumber( 24010 ) )
.head 12 +  If bOk and not bFail
.head 13 -  Set sWord = GetWord( TRUE, 'M', 'C', 4, 'F', '', '', nErr, 0, 'EDI' )
.head 13 +  If nErr != P301_OK
.head 14 -  Set bFail = TRUE
.head 14 -  Call LogError( GetMessageAndNumber( 24010 ) )
.head 12 +  If bOk and not bFail
.head 13 -  Set sRO_IK_Nr = SalStrTrimX( GetWord( TRUE, 'M', 'C', 9, 'F', '', '', nErr, 0 , 'EDI' ) )
.head 13 +  If nErr != P301_OK
.head 14 -  Set bFail = TRUE
.head 14 -  Call LogError( GetMessageAndNumber( 24010 ) )
.head 13 +  Else
.head 14 -  Set sRO_Key = ''
.head 14 -  Set nRO_IK_Nr = SalStrToNumber( sRO_IK_Nr )
.head 14 +  If (SalNumberToStrX( nRO_IK_Nr, 0 ) = sRO_IK_Nr)
.head 15 -  Set bOk = DoImmediate( "
select	RO_Key
from	RECEIVING_OFFICE
where	RO_IK_Nr = '" || sRO_IK_Nr || "'
into	:s[1]
" )
.head 15 +  If bOk
.head 16 -  Set sRO_Key = s[1]
.head 14 +  Else
.head 15 -  Set bFail = TRUE
.head 15 -  Call LogError( 'Could not convert RO_IK_Nr to number - RO_IK_Nr=' || sRO_IK_Nr )
.head 14 -  ! statement below is commented: EDIalog checks this value before
.head 14 +  ! If not sRO_Key
.head 15 -  Set bFail = TRUE
.head 15 -  Call LogError( GetMessageAndNumber( 10041 ) )
.head 12 +  If bOk and not bFail
.head 13 -  Set sWord = GetWord( TRUE, 'M', 'C', 9, 'F', '', '', nErr, 0, 'EDI' )
.head 13 +  If nErr != P301_OK
.head 14 -  Set bFail = TRUE
.head 14 -  Call LogError( GetMessageAndNumber( 24010 ) )
.head 13 +  Else
.head 14 -  Set bOk = SqlImmediate( "
select  KH_IK  from  einrichtung  where  einricht_id = :nEinrichtId  into  :sKH_IK
" )
.head 14 +  If sWord != sKH_IK
.head 15 -  Set bFail = TRUE
.head 15 -  Call LogError( GetMessageAndNumber( 10043 ) )
.head 12 +  If bOk and not bFail
.head 13 -  ! ! Check the end of the segment
.head 13 -  Set sWord = GetWord( TRUE, 'K', 'C', 2, 'V', '', '', nErr, 0, 'EDI' )
.head 13 +  If nErr != P301_OK and nErr != P301_EOF and nErr != P301_EOSegm
.head 14 -  Set bFail = TRUE
.head 14 -  Call LogError( GetMessageAndNumber( 24010 ) )
.head 13 +  Else
.head 14 -  Set bWasFKT = TRUE
.head 11 +  Else If sSegm = 'INV'
.head 12 -  Set bWasINV = TRUE
.head 11 +  Else If sSegm = 'NAD'
.head 12 -  Set bWasNAD = TRUE
.head 11 +  Else If sSegm = 'REC'
.head 12 -  Set bWasREC = TRUE
.head 11 +  Else If sSegm = 'KOS'
.head 12 -  Set bWasKOS = TRUE
.head 11 +  Else If sSegm = 'ZPR'
.head 12 -  Set bWasZPR = TRUE
.head 11 +  Else If sSegm = 'TXT'
.head 12 -  Set bWasTXT = TRUE
.head 11 +  Else If sSegm = 'FHL'
.head 12 -  Set bWasFHL = TRUE
.head 11 -  Else If sSegm = 'ENT'
.head 11 -  Else If sSegm = 'ZLG'
.head 11 +  Else
.head 12 -  Set bFail = TRUE
.head 12 -  Call LogError( GetMessageX( 1000016, "Segment is unknown!" ) || "  Value: " || sSegm )
.head 10 +  If bOk and not bFail and nErr != P301_EOSegm and nErr != P301_EOF
.head 11 -  Set bFail = TRUE
.head 11 -  Call LogError( 'Segment ' || sSegm || ' fehlt' )
.head 10 +  If not bOk or bFail
.head 11 -  Break
.head 10 -  Set nSegmCount = nSegmCount + 1
.head 7 -  ! ! Check if all segments are present
.head 7 +  If bOk and not bFail
.head 8 +  If not bWasFKT  and ( sSect = 'KOUB'  or  sSect = 'ANFM'  or  sSect = 'ZAHL'  or  sSect = 'ZAAO' or sSect = 'FEHL' )
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessageAndNumber( 24010 ) )
.head 8 +  If not bWasINV  and ( sSect = 'KOUB'  or  sSect = 'ANFM'  or  sSect = 'ZAHL'  or  sSect = 'ZAAO' )
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessageAndNumber( 24011 ) )
.head 8 +  If not bWasNAD  and ( sSect = 'KOUB'  or  sSect = 'ANFM'  or  sSect = 'ZAHL'  or  sSect = 'ZAAO' )
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessageAndNumber( 24012 ) )
.head 8 +  If not bWasREC  and ( sSect = 'ZAHL'  or  sSect = 'ZAAO' )
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessageAndNumber( 24018 ) )
.head 8 +  If not bWasKOS  and ( sSect = 'KOUB' )
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessageAndNumber( 24021 ) )
.head 8 +  If not bWasZPR  and ( sSect = 'ZAHL'  or  sSect = 'ZAAO' )
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessageAndNumber( 24022 ) )
.head 8 +  If not bWasFHL and sSect = 'FEHL'
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessageAndNumber( 24039 ) )
.head 7 -  ! !	reading message body
.head 7 +  If bOk and not bFail
.head 8 -  Call SalFileSeek( fhP301, nStartPos, FILE_SeekBegin )
.head 8 -  Set nBytesRead =  SalFileRead( fhP301, sText, nFinishPos - nStartPos )
.head 7 -  ! !	writing into Message table
.head 7 +  If bOk and not bFail
.head 8 -  Set bOk = SqlImmediate( "
select  @nullvalue( max( message_nr ), 0 ) + 1  from  r301_input  into  :nMsgNr
" )
.head 8 -  !
.head 8 -  Set bOk = bOk and SqlImmediate( "
insert  into  r301_input( Message_Nr, MESSAGE_DATE, Message_Type, File_Name, File_Number,
  Message_Nr_In_File, Number_Of_Segm, RO_Key, Message_Text, Msg_Fmt_Type )
values( :nMsgNr, SYSDATE, :sSect, :sFileName, :sFileNr,
  :sMsg_Nr_inFile, :nSegmCount, :sRO_Key, :sText, 'EDI' )
" )
.head 8 -  !
.head 8 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 8 -  Set bOk = bOk and f301_Protocol_WriteMsg( GetMessageX( 1000013, '. A message received. Internal number: ' ) || SalNumberToStrX( nMsgNr, 0 ) )
.head 8 -  Set bOk = bOk and f301_Protocol_WriteMsg( sText )
.head 8 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 8 -  !
.head 7 -  ! !	checking EOF
.head 7 +  ! If bOk
.head 8 -  Set sWord = GetWord( TRUE, 'K', 'C', 1, 'V', '', '', nErr, P301_EOF, TRUE )
.head 8 +  If nErr != P301_OK
.head 9 -  Set bOk = FALSE 
.head 9 -  Call LogError( GetMessageAndNumber( 1000008 ) )
.head 7 -  ! !	close file
.head 7 +  If bP301_InputOpened
.head 8 -  Call SalFileClose( fhP301 )
.head 8 -  Set bP301_InputOpened = FALSE
.head 7 +  If bOk
.head 8 -  Set bOk = MoveFileToResultDir( not bFail, 'EDI' )
.head 8 +  If not bOk
.head 9 -  ! !
.head 9 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 9 -  Set bOk = bOk and f301_Protocol_WriteMsg( '. ' || GetMessageX( 1000014, 'Cannot move file to the result directory') )
.head 9 -  ! !
.head 7 -  ! !	commiting	
.head 7 +  If bOk and not bFail
.head 8 -  Set bOk = SqlImmediate( "commit" )
.head 8 -  Set dfAllGood = dfAllGood + 1
.head 7 +  Else
.head 8 -  Call SqlImmediate( "rollback" )
.head 8 -  Set dfAllBad = dfAllBad + 1
.head 7 -  !
.head 7 -  Set nCurrFile = nCurrFile + 1
.head 5 -  ! Set mlCurrContents = ''
.head 5 -  Return bOk
.head 3 +  Function: MoveFileToResultDir
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Boolean: bOk
.head 5 -  String: sType
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sDrive
.head 5 -  String: sDir
.head 5 -  String: sBase
.head 5 -  String: sExt
.head 5 -  String: sDescFileName
.head 5 -  String: sParentDir
.head 5 -  Number: nErr
.head 5 -  File Handle: fhTmp
.head 4 +  Actions
.head 5 +  If sType = 'EDI'
.head 6 -  Set sParentDir = s301_InputEDIDir
.head 5 +  Else
.head 6 -  Set sParentDir = s301_Input301Dir
.head 5 +  If bOk
.head 6 -  Set sDescFileName = sParentDir || P301_SuccessSubdir || '\\'
.head 5 +  Else
.head 6 -  Set sDescFileName = sParentDir || P301_FailSubdir || '\\'
.head 5 +  If not VisDosExist( sDescFileName )
.head 6 -  Call SalFileCreateDirectory( sDescFileName )
.head 5 -  Call VisDosSplitPath( strFileP301, sDrive, sDir, sBase, sExt )
.head 5 -  Set sDescFileName = sDescFileName || sBase
.head 5 +  If SalStrTrimX( sExt ) != '.'
.head 6 -  Set sDescFileName = sDescFileName || sExt
.head 5 -  Set nErr = SalFileCopy( strFileP301, sDescFileName, TRUE )
.head 5 +  If nErr = 0
.head 6 -  Return SalFileOpen( fhTmp, strFileP301, OF_Delete )
.head 5 -  Return FALSE
.head 3 -  !
.head 3 +  Function: Read301
.head 4 -  Description: Reads §301-file, Makes DB changes or create error protocol.
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  ! !	indicates fatal error ( sql syntax, server problems, etc. )
.head 5 -  Boolean: bFail
.head 5 -  ! !	indicates normal input stream
.head 5 -  Boolean: bOk
.head 5 -  !
.head 5 -  Number: nErr
.head 5 -  ! !	for 301_Check
.head 5 -  Number: nRow
.head 5 -  Boolean: bResCode
.head 5 -  Boolean: bExist
.head 5 -  Boolean: bDoTrueUpdate
.head 5 -  Boolean: bDoUpdate
.head 5 -  String: sFallInfo
.head 5 -  Number: nIndex4FallNr
.head 4 +  Actions
.head 5 -  Set bFail = FALSE
.head 5 -  Set bOk = TRUE
.head 5 -  !
.head 5 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '--', 25 ) )
.head 5 -  Set bOk = f301_Protocol_WriteMsg( GetMessageX( 1000010, '. Importing/Operating messages' ) || ' (DB Table = R301_INPUT)...' )
.head 5 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 5 -  !
.head 5 +  If Not h301_Check.Connect( ) Or Not h301_Descript.Connect( )
.head 6 -  ! 228=SQL Connect Error
.head 6 -  Set bOk = FALSE
.head 6 -  Set bFail = TRUE
.head 6 -  Call LogError( GetMessage( 228 ) )
.head 5 -  ! !	preparing reading INPUT_301 table
.head 5 +  If bOk
.head 6 -  Set bOk = GalConnect( hSqlMessage )
.head 6 -  Set bOk = bOk and SqlSetParameter( hSqlMessage, DBP_PRESERVE, TRUE, '' )
.head 6 -  Set bOk = bOk and SqlPrepareAndExecute( hSqlMessage, "
select	file_name, message_nr, file_number, message_nr_in_file, message_type, message_text, msg_fmt_type
from	r301_input  
where	( err_nr  is null  " || VisStrChoose( b301_IgnoreOldErrors, "", "or  err_nr < 0" ) || ")
order	by  1, 2
into  :sFileName, :nMsgNr, :sFileNr, :sMsg_Nr_inFile, :s301_Section, :sMessage, :s301_MsgFmtType
" )
.head 5 -  ! !	loop by file(-s) and message(-s)
.head 5 +  If bOk
.head 6 -  Call InitDataFields( 4 )
.head 6 +  Loop
.head 7 +  If bExit
.head 8 -  Break
.head 7 -  ! !	Reset strArr301
.head 7 -  Call P301.Clear( )
.head 7 -  ! !	fetching message
.head 7 +  If bOk
.head 8 +  If not SqlFetchNext( hSqlMessage, nFetch )
.head 9 -  Break
.head 8 -  !
.head 8 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 8 -  Set bOk = bOk and f301_Protocol_WriteMsg( 'MsgNr.=' || StrX(nMsgNr) || ', File Name: ' || sFileName || ', Msg.Nr. inFile:' || sMsg_Nr_inFile || ', Section: ' || s301_Section )
.head 8 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 8 -  !
.head 8 -  Set mlTitle = sMessage
.head 8 +  If dfFileName != sFileName
.head 9 -  Set dfFileName = sFileName
.head 8 +  If dfSection != s301_Section
.head 9 -  Set dfSection = s301_Section
.head 8 +  If dfMsgNr != sMsg_Nr_inFile
.head 9 -  Set dfMsgNr = sMsg_Nr_inFile
.head 7 -  ! !	Read INPUT.301 file
.head 7 -  Set bOk = bOk And Read301_Local(  )
.head 7 +  If bOk 
.head 8 -  ! clear information fields
.head 8 -  Set dfSegment = ''
.head 8 -  Set dfField = ''
.head 8 -  Set dfMainFall = ''
.head 8 -  ! Store information for logging
.head 8 -  Set sLog_KK_IK = strArr301[7]
.head 8 +  If s301_Section = 'KOUB'
.head 9 -  Set sLog_KOUBFrom = strArr301[31]
.head 9 -  Set sLog_KOUBTill = strArr301[32]
.head 9 -  Set nIndex4FallNr = 0
.head 8 +  If s301_Section = 'FEHL'
.head 9 -  Set nIndex4FallNr = 22
.head 9 -  Set sLog_FullName = ''
.head 8 +  Else
.head 9 -  Set nIndex4FallNr = 15
.head 9 -  Set sLog_FullName = strArr301[20] || ' ' || strArr301[21]
.head 8 +  If nIndex4FallNr
.head 9 -  Set sLog_FallNr = strArr301[nIndex4FallNr]
.head 9 -  Set dfMainFall = sLog_FallNr
.head 9 +  If SalIsNull( dfMainFall ) Or Not SalIsValidDecimal( dfMainFall, 12, 0 )
.head 10 -  Call LogError( 'Wrong Fall Nr.=' || dfMainFall || ' - Check Arr301[' || StrX(nIndex4FallNr) || '] - there should be correct FallNr.' )
.head 10 -  Set bFail = TRUE
.head 7 +  If bFail
.head 8 -  Break
.head 7 -  ! ! Log message info
.head 7 -  Set sFallInfo = 'Fall information: ' || sLightCarriageReturn ||
		'Fall Nr.: ' || sLog_FallNr || ', Name: ' || sLog_FullName || ', IK: ' || sLog_KK_IK
.head 7 -  Set bOk = bOk and f301_Protocol_WriteMsg( sFallInfo || sLightCarriageReturn
				|| VisStrChoose( s301_Section = 'KOUB', ', KOUB from: ' || sLog_KOUBFrom || ', KOUB till: ' || sLog_KOUBTill, '' )
			)
.head 7 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 7 -  ! !	Run SQL Statements from 'CHECK_301' (local section)
.head 7 +  If bOk
.head 8 -  Call h301_Check.Initialize( "
	Select	SQL_CHECK, FEHLER, @if( @exact(WARN, 'Y'), 1, 0 )
	From	R301_CHECK
	Where	SECTION = :frmPar301.s301_Section
	Order by	FIELD_ORDER
	Into	:frmPar301.lstrSQL, :frmPar301.strFehler301, :frmPar301.bWarn
")
.head 8 +  If bOk  and  Not h301_Check.PrepareAndExecute( )
.head 9 -  ! 239=SQL PrepareAndExecute Error :
.head 9 -  Set bOk = FALSE
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessage( 239 ) || " SELECT ... FROM 301_CHECK ! " )
.head 8 -  Set nRow = 0
.head 8 +  While bOk  and  nRow < h301_Check.nResultSetCount and not bExit
.head 9 +  If bOk  and  Not h301_Check.FetchRow( nRow, bResCode, FALSE )
.head 10 -  ! 240=SQL Fetch Error:
.head 10 -  Set bOk = FALSE
.head 10 -  Set bFail = TRUE
.head 10 -  Call LogError( GetMessage( 240 ) || " SELECT... FROM 301_CHECK (Local) ! Row# " || SalNumberToStrX( nRow+1, 0 ) )
.head 9 -  Set mlCurrContents = lstrSQL
.head 9 +  If bOk  and  Not SqlExists( lstrSQL, bExist )
.head 10 -  ! 241=SQL Error on Statement:
.head 10 -  Set bOk = FALSE
.head 10 -  Set bFail = TRUE
.head 10 -  Call LogError( GetMessage( 241 ) || ' ' || lstrSQL )
.head 9 +  If bOk  and  Not bExist
.head 10 +  If not bWarn
.head 11 -  Set bOk = FALSE
.head 10 -  Call LogError( strFehler301 )
.head 9 -  Set nRow = nRow + 1
.head 7 -  ! !	Run SQL Statements from 'UPDATE_301' (local section)
.head 7 +  If bOk
.head 8 +  If bOk  and  Not h301_Update.Connect( )
.head 9 -  ! 228=SQL Connect Error !
.head 9 -  Set bOk = FALSE
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessage( 228 ) )
.head 8 -  ! !	Check first
.head 8 -  Call h301_Update.Initialize(
		"Select	SQL1
		  From	R301_UPDATE
		  Where	SECTION = :frmPar301.s301_Section and ATR = 'C'
		  Order by	FIELD_ORDER
		  Into 	:frmPar301.lstrSQL ")
.head 8 +  If bOk  and  Not h301_Update.PrepareAndExecute( )
.head 9 -  ! 239=SQL PrepareAndExecute Error :
.head 9 -  Set bOk = FALSE
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessage( 239 ) || " SELECT ... FROM 301_UPDATE ! " )
.head 8 -  Set nRow = 0
.head 8 -  Set bDoTrueUpdate = TRUE
.head 8 +  While bOk  and  nRow < h301_Update.nResultSetCount and not bExit
.head 9 +  If bOk  and  Not h301_Update.FetchRow( nRow, bResCode, FALSE )
.head 10 -  ! 240=SQL Fetch Error:
.head 10 -  Set bOk = FALSE
.head 10 -  Set bFail = TRUE
.head 10 -  Call LogError( GetMessage( 240 ) || " SELECT... FROM 301_UPDATE (C) ! Row# " || SalNumberToStrX( nRow+1, 0 ) )
.head 9 -  Set mlCurrContents = lstrSQL
.head 9 +  If bOk  and  Not SqlExists( lstrSQL, bExist )
.head 10 -  ! 241=SQL Error on Statement:
.head 10 -  Set bOk = FALSE
.head 10 -  Set bFail = TRUE
.head 10 -  Call LogError( GetMessage( 241 ) || ' ' || lstrSQL )
.head 9 +  If bOk  and  Not bExist
.head 10 -  Set bDoTrueUpdate = FALSE
.head 9 -  Set nRow = nRow + 1
.head 8 -  ! !	Do Update (Depends on result of check)
.head 8 +  If bDoTrueUpdate
.head 9 -  Call h301_Update.Initialize(
		"Select	SQL1, TABLE_ID, SQL_ST, SQL_WHERE, ERR_MSG, SUCC_MSG
		  From	R301_UPDATE
		  Where	SECTION = :frmPar301.s301_Section and ATR = 'T'
		  Order by	FIELD_ORDER
		  Into 	:frmPar301.lstrSQL
			:frmPar301.nTableId, :frmPar301.strSqlStatement, :frmPar301.strSqlWhere,
			:frmPar301.strErrMsg, :frmPar301.strSuccMsg ")
.head 8 +  Else
.head 9 -  Call h301_Update.Initialize(
		"Select	SQL1, TABLE_ID, SQL_ST, SQL_WHERE
		  From	R301_UPDATE
		  Where	SECTION = :strArrM301[0] and ATR = 'F'
		  Order by	FIELD_ORDER
		  Into 	:frmPar301.lstrSQL,
			:frmPar301.nTableId, :frmPar301.strSqlStatement, :frmPar301.strSqlWhere ")
.head 8 +  If bOk  and  Not h301_Update.PrepareAndExecute( )
.head 9 -  ! 239=SQL PrepareAndExecute Error:
.head 9 -  Set bOk = FALSE
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessage( 239 ) || " SELECT ... FROM 301_UPDATE ! " )
.head 8 +  If bOk  and  Not h301_Update_Fld.InitConnectPrepare(
		"Select	COL, INDEX_ARR, @nullvalue(UPD_IF_NULL, 0)
		  From	R301_UPDATE_FLD
		  Where	SECTION = :frmPar301.s301_Section
		      and	TABLE_ID = :frmPar301.nTableId
		  Into 	:frmPar301.strColName, :frmPar301.nIndexArr, :frmPar301.bUpdIfNull ")
.head 9 -  ! 242=SQL Error on InitConnectPrepare:
.head 9 -  Set bOk = FALSE
.head 9 -  Set bFail = TRUE
.head 9 -  Call LogError( GetMessage( 242 ) || " SELECT ... FROM 301_UPDATE_FLD ! " )
.head 8 -  Set bDoUpdate = TRUE
.head 8 +  If bOk and bDoTrueUpdate and s301_Section = 'KOUB'
.head 9 -  ! Check fields to be changed and show a confirmation dialog
.head 9 -  Set bOk = CheckAndConfirmUpdate( bDoUpdate, sFallInfo )
.head 8 +  If bOk and bDoUpdate and not bExit
.head 9 -  Set nRow = 0
.head 9 +  While bOk  and  nRow < h301_Update.nResultSetCount and not bExit
.head 10 -  Set lstrSQL = ''
.head 10 +  If bOk  and  Not h301_Update.FetchRow( nRow, bResCode, FALSE )
.head 11 -  ! 240=SQL Fetch Error:
.head 11 -  Set bOk = FALSE
.head 11 -  Set bFail = TRUE
.head 11 -  Call LogError( GetMessage( 240 ) || " SELECT ...  FROM 301_UPDATE (T/F) ! Row# " || SalNumberToStrX( nRow+1, 0 ) )
.head 10 +  If SalStrLength( lstrSQL ) = 0
.head 11 +  If bOk  and  Not MakeSqlStatement( lstrSQL )
.head 12 -  Set bOk = FALSE
.head 12 -  Set bFail = TRUE
.head 10 -  Set mlCurrContents = lstrSQL
.head 10 +  If SalStrLength( lstrSQL ) > 0
.head 11 +  If bOk and not SqlImmediate( lstrSQL )
.head 12 -  ! 241=SQL Error on Statement:
.head 12 -  Set bOk = FALSE
.head 12 -  Set bFail = TRUE
.head 12 -  Call LogError( GetMessage( 241 ) || ' ' || lstrSQL )
.head 11 +  If bOk
.head 12 -  ! Set bOk = SalFilePutStr( fhProtocol, 'Update was done for message #' || StrX(nMsgNr) || '. Affects:' )
.head 12 -  ! Set bOk = bOk and SalFilePutStr( fhProtocol, 'Section: ' || s301_Section || ', Fall: ' || P301.Fall_Key )
.head 12 -  Set bOk = f301_Protocol_WriteMsg( ReplaceIndexes( strSuccMsg ) )
.head 11 +  Else
.head 12 -  Call f301_Protocol_WriteMsg( ReplaceIndexes( strErrMsg ) )
.head 10 -  Set nRow = nRow + 1
.head 8 -  Call h301_Update.Disconnect( )
.head 8 -  Call h301_Update_Fld.Disconnect( )
.head 7 -  ! !	updating Message table and committing
.head 7 +  If bOk
.head 8 +  If bDoUpdate
.head 9 -  ! Set bOk = SqlImmediate( "
update  R301_Input  set  fall_key = :P301.Fall_Key, kstr_key = :P301.Kstr_Key,
  rechnung_nr = :P301.Rechnung_Nr, kue_verl_nr = :P301.Kue_Verl_Nr,
  err_nr = 0
where  message_nr = :nMsgNr
" )
.head 9 -  Set bOk = bOk and SqlImmediate( 'commit' )
.head 9 -  Set nErr = 0
.head 9 -  Set bOk = bOk and f301_Protocol_WriteMsg( '. . Fields updated successfully.' )
.head 9 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 8 +  Else
.head 9 -  Set nErr = NUMBER_Null
.head 9 -  Set bOk = f301_Protocol_WriteMsg( '. . Message update canceled by the user.' )
.head 9 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 7 +  Else
.head 8 +  If not nErr
.head 9 -  Set nErr = -1
.head 8 -  Call SqlImmediate( 'rollback' )
.head 8 -  Set bOk = bOk and f301_Protocol_WriteMsg( '. . Message import failed.' )
.head 8 -  Set bOk = bOk and f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 7 -  ! !
.head 7 -  Set bOk = SqlImmediate( "
update  R301_Input  set  fall_key = :P301.Fall_Key, kstr_key = :P301.Kstr_Key,
  rechnung_nr = :P301.Rechnung_Nr, kue_verl_nr = :P301.Kue_Verl_Nr,
  key9 = :strArr301[5],
  err_nr = :nErr
where  message_nr = :nMsgNr
" )
.head 7 -  ! Set bOk = SqlImmediate( "
update  R301_Input  set  err_nr = :nErr
where  message_nr = :nMsgNr
" )
.head 7 -  Set bOk = SqlImmediate( 'commit' )
.head 7 +  If not bOk
.head 8 -  Break
.head 5 -  ! !	Close Protocol file
.head 5 -  Call SalStatusSetText( hWndForm, '' )
.head 5 -  Call h301_Descript.Disconnect( )
.head 5 -  Call h301_Check.Disconnect( )
.head 5 -  ! !
.head 5 -  Set mlCurrContents = ''
.head 5 -  Return bOk
.head 3 +  Function: Read301_Local
.head 4 -  Description: Reads §301-file, Makes DB changes or create error protocol.
.head 4 +  Returns
.head 5 -  Number:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 5 -  Boolean: bNewSegm
.head 5 -  !
.head 5 -  Number: nAllNum
.head 5 -  Number: nRow
.head 5 -  Number: nRowRest
.head 5 -  String: strAllNum
.head 5 -  String: strRow
.head 5 -  String: strSegmentCurrent
.head 5 -  String: strCurrWord
.head 5 -  Boolean: bResCode
.head 5 -  Number: nRes
.head 5 -  !
.head 5 -  Number: nRepeatCurrent
.head 4 +  Actions
.head 5 -  Set bOk = TRUE
.head 5 -  ! !	Read INPUT file into buffer
.head 5 -  Call h301_Descript.Initialize( "
select	 INDEX_ARR, SEGMENT, @IF( @EXACT( N1.NUM + (N2.NUM-1)*10, 1 ), ATR, 'K' ),
  TYPE, LEN, VARIABLE, FORMAT, MUST_BE, RES_FORMAT, N1.NUM + (N2.NUM-1)*10
from	R301_SYNTAX S, NUMBERS N1, NUMBERS N2
where	SECTION =  :frmPar301.s301_Section
  and  N1.NUM + (N2.NUM-1)*10  between  1  and  @nullvalue( S.REPEAT, 1 )
and (S.RES_FORMAT is NULL or S.RES_FORMAT in ( '', :s301_MsgFmtType ))
order by	10, S.FIELD_ORDER
into 	:frmPar301.n301_Index, :frmPar301.s301_SegmentName, :frmPar301.s301_Atr,
	:frmPar301.s301_Typ, :frmPar301.n301_Len, :frmPar301.s301_Variable,
	:frmPar301.s301_Format, :frmPar301.s301_MustBe, :frmPar301.s301_ResFormat, :frmPar301.nRepeatNum
" )
.head 5 +  If bOk  and  Not h301_Descript.PrepareAndExecute( )
.head 6 -  ! 239=SQL PrepareAndExecute Error:
.head 6 -  Call LogError( GetMessage( 239 ) || " SELECT ... FROM 301_DESKRIPTION ! " )
.head 6 -  Set bOk = FALSE
.head 5 -  ! !	Reading loop
.head 5 -  Set nAllNum = h301_Descript.nResultSetCount
.head 5 -  Set strAllNum = SalNumberToStrX( nAllNum, 0 )
.head 5 -  Set strSegmentCurrent = ''
.head 5 -  Set nRow = 0
.head 5 +  While bOk  and  nRow < nAllNum
.head 6 -  Set strRow = SalNumberToStrX( nRow+1, 0 )
.head 6 -  Set bNewSegm = FALSE
.head 6 -  ! 237=Lesen...
.head 6 -  Call SalStatusSetText( hWndForm, GetMessageAndNumber( 237 ) || ' (' || strRow || ':' || strAllNum || ')' )
.head 6 -  ! Get next word description
.head 6 +  If bOk  and  Not h301_Descript.FetchRow( nRow, nRes, FALSE )
.head 7 -  ! 240=SQL Fetch Error:
.head 7 -  Call LogError( GetMessage( 240 ) || " SELECT ...  FROM 301_DESCRIPTION ! Row# " || strRow )
.head 7 -  Set bOk = FALSE
.head 6 +  If strSegmentCurrent != s301_SegmentName
.head 7 -  ! ! Try to read EOSegm if 'EDI'
.head 7 +  If strSegmentCurrent != '' and s301_MsgFmtType = 'EDI' and bResCode != P301_EOSegm
.head 8 -  Set strCurrWord = GetWord( FALSE, 'K', 'C', 2, 'F', '', '', bResCode, 0, s301_MsgFmtType )
.head 8 +  If bResCode != P301_EOSegm
.head 9 -  Set bOk = FALSE
.head 9 -  Call LogError( GetMessageAndNumber( 249 ) )
.head 9 -  Break
.head 7 -  Set strSegmentCurrent = s301_SegmentName
.head 7 -  Set bNewSegm = TRUE
.head 6 +  If dfSegment != strSegmentCurrent
.head 7 -  Set dfSegment = strSegmentCurrent
.head 6 -  ! Read word from file
.head 6 -  Set strCurrWord = GetWord( FALSE, s301_Atr, s301_Typ, n301_Len, s301_Variable,
 s301_Format, s301_MustBe, bResCode, 0, s301_MsgFmtType )
.head 6 +  If bResCode != P301_EOSegm
.head 7 -  Set nRepeatCurrent = nRepeatNum
.head 6 +  If bResCode != P301_EOF
.head 7 +  If n301_Index > 0
.head 8 +  If bResCode = P301_BadMust and bNewSegm ! probably it's a 'K' segment
.head 9 -  ! Skip description of K segment
.head 9 +  Loop
.head 10 +  Loop
.head 11 -  Set nRow = nRow + 1
.head 11 +  If nRow >= nAllNum
.head 12 -  Break
.head 11 +  If bOk  and  Not h301_Descript.FetchRow( nRow, nRes, FALSE )
.head 12 -  ! 240=SQL Fetch Error:
.head 12 -  Call LogError( GetMessage( 240 ) || " SELECT ...  FROM 301_DESCRIPTION ! Row# " || strRow )
.head 12 -  Set bOk = FALSE
.head 11 +  If not bOk or strSegmentCurrent != s301_SegmentName
.head 12 -  Break
.head 10 +  If s301_MustBe = strCurrWord
.head 11 -  Break
.head 10 +  If s301_Atr = 'M'
.head 11 -  Set bOk = FALSE 
.head 11 -  Call LogError( GetMessage( 247 ) || ' ' || GetMessage( 244 ) || ' ' || s301_SegmentName || ' ' || GetMessage( 245 ) || SalNumberToStrX( n301_Index, 0 ) )
.head 9 -  Set strSegmentCurrent =  s301_SegmentName
.head 9 -  Set bResCode = P301_OK
.head 9 -  Set nRepeatCurrent = nRepeatNum
.head 8 +  If strSegmentCurrent = 'TXT'  and  strArr301[ n301_Index ]  and  strCurrWord != s301_MustBe
.head 9 -  Set strArr301[ n301_Index ] = strArr301[ n301_Index ] || ' ' || strCurrWord
.head 8 +  Else
.head 9 -  Set strArr301[ n301_Index ] = strCurrWord
.head 8 -  Set dfField = strArr301[ n301_Index ]
.head 7 +  Else If n301_Index < 0
.head 8 +  If strSegmentCurrent = 'TXT'  and  P301.ls[ -n301_Index ]  and  strCurrWord != s301_MustBe
.head 9 -  Set P301.ls[ -n301_Index ] = P301.ls[ -n301_Index ] || ' ' || strCurrWord
.head 8 +  Else
.head 9 -  Set P301.ls[ -n301_Index ] = strCurrWord
.head 8 -  Set dfField = P301.ls[ -n301_Index ]
.head 7 +  Else
.head 8 -  Set dfField = ''
.head 6 +  If bResCode < 0
.head 7 -  Set bOk = FALSE
.head 6 -  Set nRow = nRow + 1
.head 6 +  If bOk  and bResCode = P301_EOSegm
.head 7 +  If nRepeatCurrent = nRepeatNum
.head 8 -  ! Read rest of Segment syntax fields and check it on 'M'
.head 8 -  Set nRowRest = nRow
.head 8 +  While bOk  and  nRowRest < nAllNum
.head 9 -  ! Get next word description
.head 9 +  If bOk  and  Not h301_Descript.FetchRow( nRowRest, nRes, FALSE )
.head 10 -  ! 240=SQL Fetch Error:
.head 10 -  Call LogError( GetMessage( 240 ) || " SELECT ... FROM 301_DESKRIPTION ! Row# " || SalNumberToStrX( nRowRest + 1, 0 ) )
.head 10 -  Set bOk = FALSE
.head 9 +  If nRepeatCurrent != nRepeatNum
or  strSegmentCurrent != s301_SegmentName
.head 10 -  Set nRowRest = nAllNum	! for loop finish
.head 9 +  Else
.head 10 +  If s301_Atr = 'M'
.head 11 -  ! 243=Erforderliches Feld ist leer.  
.head 11 -  ! 244=Segment:
.head 11 -  ! 245=Fld.order:
.head 11 -  Call LogError( GetMessage( 243 ) || ' ' || GetMessage( 244 ) || ' ' || s301_SegmentName || ', ' || GetMessage( 245 ) || SalNumberToStrX( n301_Index, 0 ) )
.head 11 -  Set bOk = FALSE
.head 10 -  ! Set strArr301[n301_Index] = ''
.head 10 -  ! Incr. nRow, because we have red field from current segment
.head 10 -  Set nRow = nRow + 1
.head 9 -  Set nRowRest = nRowRest + 1
.head 7 +  Else
.head 8 -  Set nRow = nRow - 1 ! let to reread word's attributes
.head 6 +  If bOk  and bResCode = P301_EOF
.head 7 -  ! Read rest of Section syntax fields and check it on 'M'
.head 7 -  Set nRowRest = nRow
.head 7 +  While bOk  and  nRowRest < nAllNum
.head 8 -  ! Get next word description
.head 8 +  If bOk  and  Not h301_Descript.FetchRow( nRowRest, nRes, FALSE )
.head 9 -  ! 240=SQL Fetch Error:
.head 9 -  Call LogError( GetMessage( 240 ) || " SELECT ... FROM 301_DESKRIPTION ! Row# " || SalNumberToStrX( nRowRest + 1, 0 ) )
.head 9 -  Set bOk = FALSE
.head 8 +  If s301_Atr = 'M'  and  s301_MustBe = s301_SegmentName
.head 9 -  ! 243=Erforderliches Feld ist leer.  
.head 9 -  ! 244=Segment:
.head 9 -  ! 245=Fld.order:
.head 9 -  Call LogError( GetMessage( 243 ) || ' ' || GetMessage( 244 ) || ' ' || s301_SegmentName || ', ' || GetMessage( 245 ) || SalNumberToStrX( n301_Index, 0 ) )
.head 9 -  Set bOk = FALSE
.head 8 -  ! Incr. nRow, because we have red field from current segment
.head 8 -  Set nRow = nRow + 1
.head 8 -  Set nRowRest = nRowRest + 1
.head 5 -  Return bOk
.head 3 +  Function: MakeSqlStatement
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Receive Long String: longRes
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 5 -  Number: nRow
.head 5 -  Boolean: bResCode
.head 5 -  Boolean: bInsert
.head 5 -  Number: nFields
.head 5 -  String: strFieldForSQL
.head 5 -  Long String: strUpdateFld
.head 5 -  Long String: strInsertCol
.head 5 -  Long String: strInsertFld
.head 4 +  Actions
.head 5 -  Set bOk = TRUE
.head 5 -  Set longRes = ''
.head 5 +  If SalStrUpperX( SalStrLeftX( strSqlStatement, 6 ) ) = 'UPDATE'
.head 6 -  Set bInsert = FALSE 
.head 5 +  Else If SalStrUpperX( SalStrLeftX( strSqlStatement, 6 ) ) = 'INSERT'
.head 6 -  Set bInsert = TRUE
.head 5 +  Else
.head 6 -  ! 250=Sql statement in 301_UPDATE ist weder UPDATE noch INSERT:
.head 6 -  Call LogError( GetMessage( 250 ) || ' ' || strSqlStatement  )
.head 6 -  Set bOk = FALSE
.head 5 -  !
.head 5 +  If bOk  and  Not  h301_Update_Fld.Execute( ) 
.head 6 -  ! 227=SQL Execute error:
.head 6 -  Call LogError( GetMessage( 227 ) || " SELECT ... FROM 301_UPDATE_FLD ! " )
.head 6 -  Set bOk = FALSE
.head 5 -  Set nFields = 0
.head 5 -  Set nRow = 0
.head 5 +  While bOk  and  nRow < h301_Update_Fld.nResultSetCount
.head 6 +  If bOk  and  Not h301_Update_Fld.FetchRow( nRow, bResCode, FALSE )
.head 7 -  ! 240=SQL Fetch Error:
.head 7 -  Call LogError( GetMessage( 240 ) || " SELECT ...  FROM 301_UPDATE_FLD  ! Row# " || SalNumberToStrX( nRow+1, 0 ) )
.head 7 -  Set bOk = FALSE
.head 6 -  Set strFieldForSQL = ''
.head 6 +  If nIndexArr > 0
.head 7 +  If strArr301[ nIndexArr ]
.head 8 -  Set strFieldForSQL = "'" || strArr301[ nIndexArr ] || "'"
.head 7 +  Else If bUpdIfNull
.head 8 -  Set strFieldForSQL = 'NULL'
.head 6 +  Else If nIndexArr < 0
.head 7 +  If P301.ls[ -nIndexArr ]
.head 8 -  Set strFieldForSQL = ":P301.ls[ " || SalNumberToStrX( -nIndexArr, 0 ) || " ]"
.head 6 +  If bOk  and  strFieldForSQL
.head 7 -  Set nFields = nFields + 1
.head 7 +  If bInsert
.head 8 +  If nFields = 1
.head 9 -  Set strInsertCol = strInsertCol || '( '
.head 9 -  Set strInsertFld = strInsertFld || '( '
.head 8 +  Else
.head 9 -  Set strInsertCol = strInsertCol || ', '
.head 9 -  Set strInsertFld = strInsertFld || ', '
.head 8 -  Set strInsertCol = strInsertCol || strColName
.head 8 -  Set strInsertFld = strInsertFld || strFieldForSQL
.head 7 +  Else
.head 8 +  If nFields = 1
.head 9 -  Set strUpdateFld = strUpdateFld || ' set '
.head 8 +  Else
.head 9 -  Set strUpdateFld = strUpdateFld || ', '
.head 8 -  Set strUpdateFld = strUpdateFld || strColName || ' = ' || strFieldForSQL
.head 6 -  Set nRow = nRow + 1
.head 5 +  If nFields > 0
.head 6 +  If bInsert
.head 7 -  Set longRes = strSqlStatement || strInsertCol || ' ) values ' || strInsertFld || ' )'
.head 6 +  Else
.head 7 -  Set longRes = strSqlStatement || strUpdateFld || ' ' || strSqlWhere
.head 5 -  Return bOk
.head 3 -  !
.head 3 +  Function: LogError
.head 4 -  Description: Opens file (name of file stores in strFileName) if it has not opened yet.
Writes message (stored in strPutMessage) into file.
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  String: strPutMessage
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 5 -  Number: nPos
.head 5 -  Number: nIndex
.head 5 -  String: sTemp
.head 4 +  Actions
.head 5 -  Set strPutMessage = ReplaceIndexes( strPutMessage )
.head 5 -  !
.head 5 -  Set strPutMessage = "Msg.Nr.=" || StrX(nMsgNr) || ", File Name: " || dfFileName || ", " || "Msg.Nr. in File: " || dfMsgNr || ", " ||
  "Section: " || dfSection || ", " || "Segment: " || dfSegment || ", " || "Field: " || dfField ||
  sLightCarriageReturn || "  " || strPutMessage
.head 5 +  If mlError
.head 6 -  Set mlError = mlError || sLightCarriageReturn || strPutMessage
.head 5 +  Else
.head 6 -  Set mlError = strPutMessage
.head 5 +  If not s301_ProtocolName
.head 6 -  Return TRUE
.head 5 +  ! AS 06.07.2004
.head 6 +  ! If Not bP301_ProtocolOpened
.head 7 -  Set bP301_ProtocolOpened = SalFileOpen( fhProtocol, s301_ProtocolName, OF_Create | OF_Append )
.head 7 +  If Not bP301_ProtocolOpened
.head 8 -  Return FALSE
.head 6 -  ! Set bOk = SalFilePutStr( fhProtocol, strPutMessage )
.head 6 +  ! If Not bOk
.head 7 -  Call SalFileClose( fhProtocol )
.head 5 -  Set bOk = f301_Protocol_WriteMsg( strPutMessage )
.head 5 -  Return bOk
.head 3 +  Function: Reformat
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Receive String: strW
.head 5 -  String: strFmt
.head 5 -  String: strType
.head 5 -  String: strInputFormat
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: str1900
.head 5 -  Number: nOffs
.head 4 +  Actions
.head 5 +  If strInputFormat = 'EDI' and SalStrTrimX( strW ) = ''
.head 6 -  Set strW = ''
.head 5 +  If not strW
.head 6 -  Return TRUE
.head 5 +  If strType = 'N'
.head 6 +  If strFmt and strInputFormat = 'EDI'
.head 7 -  Set nOffs = SalStrScan( strFmt, '.' )
.head 7 +  If nOffs != -1
.head 8 -  Set nOffs = SalStrLength( strFmt ) - nOffs - 1
.head 8 -  Set strW = SalNumberToStrX( SalStrToNumber( strW ) / SalNumberPower( 10, nOffs ), nOffs )
.head 6 +  If Not SalStrIsValidNumber( strW )
.head 7 +  !
.head 8 -  ! 248=Falsche Nummer.
.head 8 -  ! 244=Segment:
.head 8 -  ! 245=Fld.order:
.head 8 -  ! Call LogError( GetMessage( 248 ) || ' ' || GetMessage( 244 ) || ' ' || s301_SegmentName || ' ' || GetMessage( 245 ) || SalNumberToStrX( n301_Index, 0 ) )
.head 7 -  Call LogError( GetMessageAndNumber( 20032 ) )
.head 7 -  Return FALSE
.head 6 -  Set nOffs = SalStrScan( strW, ',' )
.head 6 +  If nOffs >= 0
.head 7 -  Set strW = SalStrReplaceX( strW, nOffs, 1, '.' )
.head 5 +  If strFmt = 'JJJJMMTT'
.head 6 +  If SalStrToNumber( (SalStrMidX( strW, 4, 2 ) ) ) <= 0
  or  SalStrToNumber( (SalStrMidX( strW, 4, 2 ) ) ) > 12
  or  SalStrToNumber( (SalStrMidX( strW, 6, 2 ) ) ) <= 0
  or  SalStrToNumber( (SalStrMidX( strW, 6, 2 ) ) ) > 31
.head 7 -  Call LogError( GetMessageAndNumber( 20021 ) )
.head 7 -  Return FALSE
.head 6 -  Set strW = SalStrMidX( strW, 0, 4 ) || '-' || SalStrMidX( strW, 4, 2 ) || '-' || SalStrMidX( strW, 6, 2 )
.head 5 +  Else If strFmt = 'TTMMJJJJ'
.head 6 -  Set strW = SalStrMidX( strW, 4, 4 ) || '-' || SalStrMidX( strW, 2, 2 ) || '-' || SalStrMidX( strW, 0, 2 )
.head 5 +  Else If strFmt = 'TTMMJJ'
.head 6 +  If SalStrToNumber( SalStrMidX( strW, 4, 2 ) ) < 90
.head 7 -  Set str1900 = '20'
.head 6 +  Else
.head 7 -  Set str1900 = '19'
.head 6 -  Set strW = str1900 || SalStrMidX( strW, 4, 2 ) || '-' || SalStrMidX( strW, 2, 2 ) || '-' || SalStrMidX( strW, 0, 2 )
.head 5 +  Else If strFmt = 'JJMMTT'
.head 6 +  If SalStrToNumber( SalStrLeftX( strW, 2 ) ) < 90
.head 7 -  Set str1900 = '20'
.head 6 +  Else
.head 7 -  Set str1900 = '19'
.head 6 -  Set strW = str1900 || SalStrLeftX( strW, 2 ) || '-' || SalStrMidX( strW, 2, 2 ) || '-' || SalStrRightX( strW, 2 )
.head 5 +  Else If strFmt = 'MMJJ'
.head 6 +  If SalStrToNumber( SalStrMidX( strW, 2, 2 ) ) < 90
.head 7 -  Set str1900 = '20'
.head 6 +  Else
.head 7 -  Set str1900 = '19'
.head 6 -  Set strW = str1900 || SalStrMidX( strW, 2, 2 ) || '-' || SalStrMidX( strW, 0, 2 ) || '-01'
.head 5 +  Else If strFmt = 'JJMM'
.head 6 +  If SalStrToNumber( SalStrMidX( strW, 0, 2 ) ) < 90
.head 7 -  Set str1900 = '20'
.head 6 +  Else
.head 7 -  Set str1900 = '19'
.head 6 +  If SalStrToNumber( (SalStrMidX( strW, 2, 2 ) ) ) <= 0
  or  SalStrToNumber( (SalStrMidX( strW, 2, 2 ) ) ) > 12
.head 7 -  Call LogError( GetMessageAndNumber( 20020 ) )
.head 7 -  Return FALSE
.head 6 -  Set strW = str1900 || SalStrMidX( strW, 0, 2 ) || '-' || SalStrMidX( strW, 2, 2 ) || '-01'
.head 5 +  Else If strFmt = 'HHMM'
.head 6 +  If SalStrToNumber( (SalStrMidX( strW, 0, 2 ) ) ) < 0
  or  SalStrToNumber( (SalStrMidX( strW, 0, 2 ) ) ) > 23
  or  SalStrToNumber( (SalStrMidX( strW, 2, 2 ) ) ) < 0
  or  SalStrToNumber( (SalStrMidX( strW, 2, 2 ) ) ) > 59
.head 7 -  Call LogError( GetMessageAndNumber( 20036 ) )
.head 7 -  Return FALSE
.head 6 -  Set strW = SalStrLeftX( strW, 2 ) || ':' || SalStrRightX( strW, 2 )
.head 5 +  Else If strFmt and strType != 'N'
.head 6 -  ! 249=Unbekanntes Format.
.head 6 -  ! 244=Segment:
.head 6 -  ! 245=Fld.order:
.head 6 -  Call LogError( GetMessage( 249 ) || ' ' || GetMessage( 244 ) || ' ' || s301_SegmentName || ' ' || GetMessage( 245 ) || SalNumberToStrX( n301_Index, 0 ) )
.head 6 -  Return FALSE
.head 5 -  Return TRUE
.head 3 +  Function: GetChar
.head 4 -  Description: Read next logical Char from message file or message table.
( handles ?* combinations and control codes )
Returns Char.
Sets result code: ( see P301_* constants )
	P301_OK		0 - Character was read successfuly
	P301_EOF	0 - End of file
	P301_EOField	1 - End of field
	P301_EOSegm	2 - End of segment
.head 4 +  Returns
.head 5 -  String:
.head 4 +  Parameters
.head 5 -  Boolean: bFromFile
.head 5 -  Receive Number: nResult
.head 5 -  Number: nNotLogResult
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  Return GetCharX( bFromFile, nResult, nNotLogResult, TRUE, FALSE )
.head 3 +  Function: GetCharX
.head 4 -  Description: Extended version of old GetChar function
.head 4 +  Returns
.head 5 -  String:
.head 4 +  Parameters
.head 5 -  Boolean: bFromFile
.head 5 -  Receive Number: nResult
.head 5 -  Number: nNotLogResult
.head 5 -  Boolean: bConvertSpecials
.head 5 -  Boolean: bCRLFAsEOSegm
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Number: nChar
.head 5 -  Number: nCharPrev
.head 5 -  String: sChar
.head 5 -  String: sCharPrev
.head 4 +  Actions
.head 5 -  Set nResult = P301_OK
.head 5 -  !
.head 5 -  Set nCharPrev = 0
.head 5 -  Set sCharPrev = ''
.head 5 +  Loop
.head 6 -  ! !	char reading
.head 6 +  If bFromFile
.head 7 -  Set nChar = SalFileGetChar( fhP301 )
.head 6 +  Else
.head 7 +  If sMessage
.head 8 -  Set nChar = SalStrLop( sMessage )
.head 7 +  Else
.head 8 -  Set nChar = -1
.head 6 -  Set sChar = SalNumberToChar( nChar )
.head 6 -  !
.head 6 +  If nChar = -1
.head 7 -  Set nResult = P301_EOF
.head 7 -  Break
.head 6 +  If nChar < 32
.head 7 -  ! Set nCharPrev = 0
.head 7 -  ! Set sCharPrev = ''
.head 7 +  If bCRLFAsEOSegm
.head 8 +  If nChar = 10
.head 9 +  If nCharPrev = 13
.head 10 -  Set nResult = P301_EOSegm
.head 10 -  Break
.head 9 +  Else
.head 10 -  Set nCharPrev = nChar
.head 10 -  Set sCharPrev = sChar
.head 8 +  Else If nChar = 13
.head 9 +  If nCharPrev = 10
.head 10 -  Set nResult = P301_EOSegm
.head 10 -  Break
.head 9 +  Else
.head 10 -  Set nCharPrev = nChar
.head 10 -  Set sCharPrev = sChar
.head 6 +  Else If bConvertSpecials
.head 7 +  If sChar = "'"
.head 8 -  Set nResult = P301_EOSegm
.head 8 -  Break
.head 7 +  Else If sCharPrev = "?"  and ( sChar = "?"  or  sChar = ":"  or  sChar = "+"  or  sChar = ","  or  sChar = "'" )
.head 8 -  Set nResult = P301_OK
.head 8 -  Break
.head 7 +  Else If sChar = "?"
.head 8 -  Set nCharPrev = nChar
.head 8 -  Set sCharPrev = sChar
.head 7 +  Else If sChar = ":"  or  sChar = "+"
.head 8 -  Set nResult = P301_EOField
.head 8 -  Break
.head 6 +  Else
.head 7 -  Set nResult = P301_OK
.head 7 -  Break
.head 5 -  !
.head 5 -  Return sChar
.head 3 +  Function: GetWord
.head 4 -  Description: Read next Word from message file or message table.
Returns Word.
Sets result code: ( see P301_* constants )
	P301_EOF	0 - End of file
	P301_EOField	1 - End of field
	P301_EOSegm	2 - End of segment
*	P301_BadLen	-1 - Required, Fixed field but wrong Length
*	P301_Empty	-2 - Required but field is empty
*	P301_BadWord	-3 - Field does not match with MustBe
	P301_BadFormat	-4 - Incorrect Format
	P301_BadMust	-5 - field is K but sMustBe is not matching
.head 4 +  Returns
.head 5 -  String:
.head 4 +  Parameters
.head 5 -  Boolean: bFromFile
.head 5 -  String: sAtr
.head 5 -  String: sType
.head 5 -  Number: nLen
.head 5 -  String: sVar
.head 5 -  String: sFormat
.head 5 -  String: sMustBe
.head 5 -  Receive Number: nResult
.head 5 -  Number: nNotLogResult
.head 5 -  String: sInputFormat
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sWord
.head 5 -  String: sChar
.head 5 -  Number: nCurLen
.head 5 -  Boolean: bOk
.head 4 +  Actions
.head 5 -  Set bOk = TRUE
.head 5 +  If sInputFormat = 'EDI'
.head 6 -  Set nCurLen = 0
.head 6 +  Loop
.head 7 +  If not bOk or nCurLen = nLen
.head 8 -  Break
.head 7 -  Set sChar = GetCharX( bFromFile, nResult, nNotLogResult, FALSE, TRUE )
.head 7 +  If nResult != P301_OK
.head 8 -  Break
.head 7 -  Set nCurLen = nCurLen + 1
.head 7 -  Set sWord = sWord || sChar
.head 5 +  Else
.head 6 +  Loop
.head 7 +  If not bOk
.head 8 -  Break
.head 7 -  Set sChar = GetChar( bFromFile, nResult, nNotLogResult )
.head 7 +  If nResult != P301_OK
.head 8 -  Break
.head 7 -  Set sWord = sWord || sChar
.head 5 -  Set dfField = sWord
.head 5 +  ! !	1. Required, Fixed and wrong length
.head 6 +  ! If sAtr = 'M'  and  ( sVar = 'F' Or sVar = 'N' )  and  SalStrLength( sWord ) != nLen
.head 7 -  ! 246=Erforderliches Feld hat die falsche Länge.
.head 7 -  ! 244=Segment:
.head 7 -  ! 245=Fld.order:
.head 7 -  Set nResult = P301_BadLen
.head 7 +  If not ( nNotLogResult & nResult )
.head 8 -  Call LogError( GetMessage( 246 ) || ' ' || GetMessage( 244 ) || ' ' || s301_SegmentName || ' ' || GetMessage( 245 ) || SalNumberToStrX( n301_Index, 0 ) )
.head 5 -  ! !	Required, Fixed and wrong length
.head 5 +  If bOk and sAtr = 'M' and sVar = 'F' and nLen and SalStrLength( sWord ) != nLen
.head 6 -  Set bOk = FALSE 
.head 6 -  Set nResult = P301_BadLen
.head 6 -  Call LogError( GetMessageAndNumber( 20033 ) )
.head 5 -  ! !	wrong length
.head 5 +  If bOk  and  nLen  and  SalStrLength( sWord ) > nLen
.head 6 -  Set bOk = FALSE 
.head 6 -  Set nResult = P301_BadLen
.head 6 -  Call LogError( GetMessageAndNumber( 20034 ) )
.head 5 -  ! ! Reformat
.head 5 +  If sVar = 'V'
.head 6 -  Set sWord = SalStrTrimX( sWord )
.head 5 +  If bOk  and  Not Reformat( sWord, sFormat, SalStrUpperX( sType ), sInputFormat )
.head 6 -  Set bOk = FALSE 
.head 6 -  Set nResult = P301_BadFormat
.head 5 +  ! !	Required and null length
.head 6 -  ! 243=Erforderliches Feld ist leer.
.head 6 -  ! 244=Segment:
.head 6 -  ! 245=Fld.order:
.head 6 +  ! If not ( nNotLogResult & nResult )
.head 7 -  Call LogError( GetMessage( 243 ) || ' ' || GetMessage( 244 ) || ' ' || s301_SegmentName || ' ' || GetMessage( 245 ) || SalNumberToStrX( n301_Index, 0 ) )
.head 5 +  If bOk  and  sAtr = 'M'  and  not sWord
.head 6 -  Set bOk = FALSE 
.head 6 -  Set nResult = P301_Empty
.head 6 -  Call LogError( GetMessageAndNumber( 20001 ) )
.head 5 -  ! !	2. Does not match MustBe
.head 5 +  If bOk and sAtr = 'M' and sMustBe and sWord != sMustBe
.head 6 -  ! 247=Feld stimmt nicht mit Muster überein.
.head 6 -  ! 244=Segment:
.head 6 -  ! 245=Fld.order:
.head 6 -  Set bOk = FALSE 
.head 6 -  Set nResult = P301_BadWord
.head 6 +  If not ( nNotLogResult & nResult )
.head 7 -  Call LogError( GetMessage( 247 ) || ' ' || GetMessage( 244 ) || ' ' || s301_SegmentName || ' ' || GetMessage( 245 ) || SalNumberToStrX( n301_Index, 0 ) )
.head 5 +  If bOk and nResult = P301_OK
.head 6 -  ! !	Not required and sMustBe has another value
.head 6 +  If sAtr = 'K' and sMustBe and sWord != sMustBe
.head 7 -  Set nResult = P301_BadMust
.head 5 -  !
.head 5 -  Return sWord
.head 3 +  Function: GetSegm
.head 4 -  Description: Read current Segm to end from message file or message table.
Returns String.
Sets result code: ( see P301_* constants )
	P301_EOF	0 - End of file
	P301_EOSegm	2 - End of segment
	P301_BadLen	-1 - Required, Fixed field but wrong Length
	P301_Empty	-2 - Required but field is empty
	P301_BadWord	-3 - Field does not match with MustBe
	P301_BadFormat	-4 - Incorrect Format
.head 4 +  Returns
.head 5 -  String:
.head 4 +  Parameters
.head 5 -  Boolean: bFromFile
.head 5 -  Receive Number: nResult
.head 5 -  Number: nNotLogResult
.head 5 -  String: sFormat
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sWord
.head 5 -  String: sChar
.head 5 -  Boolean: bConvertSpecials
.head 5 -  Boolean: bCRLFAsEOSegm
.head 4 +  Actions
.head 5 +  If sFormat = 'EDI'
.head 6 -  Set bConvertSpecials = FALSE
.head 6 -  Set bCRLFAsEOSegm = TRUE
.head 5 +  Else
.head 6 -  Set bConvertSpecials = TRUE
.head 6 -  Set bCRLFAsEOSegm = FALSE
.head 5 +  Loop
.head 6 -  Set sChar = GetCharX( bFromFile, nResult, nNotLogResult, bConvertSpecials, bCRLFAsEOSegm )
.head 6 +  If nResult != P301_OK  and  nResult != P301_EOField
.head 7 -  Break
.head 6 -  Set sWord = sWord || sChar
.head 5 -  Return sWord
.head 3 -  !
.head 3 +  Function: GetFileList
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  String: sDirName
.head 5 -  String: sFileMask
.head 5 -  Receive String: sFiles[*]
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Number: nNumFiles
.head 5 -  Number: nCurrFile
.head 4 +  Actions
.head 5 -  Set nNumFiles = VisDosEnumFiles( sDirName || sFileMask, 0, sFiles )
.head 5 -  Set nCurrFile = 0
.head 5 +  While nCurrFile < nNumFiles
.head 6 -  Set sFiles[ nCurrFile ] = sDirName || sFiles[ nCurrFile ]
.head 6 -  Set nCurrFile = nCurrFile + 1
.head 5 -  Return nNumFiles
.head 3 +  Function: ConvertFHLMessages
.head 4 -  Description: Check files: only KOUB.dat, ZAAO.dat, ANFM.dat, ZAHL.dat, FEHL.dat are possible, throw out others
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Receive String: sFiles[*]
.head 5 -  Receive Number: nResCount
.head 5 -  String: sFEHLDir
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sResult[*]
.head 5 -  String: sCurrFile
.head 5 -  Number: nI
.head 5 -  Number: nNum
.head 5 -  File Handle: fhFEHL
.head 5 -  File Handle: fhIn
.head 5 -  String: sLine
.head 5 -  String: sMsg
.head 5 -  String: sSegm
.head 5 -  String: sType
.head 5 -  String: sFall
.head 5 -  String: sFKT
.head 5 -  String: sFEHLFile
.head 5 -  Boolean: bOk
.head 5 -  String: sFileP301
.head 5 -  Number: nMsgWritten
.head 4 +  Actions
.head 5 +  If not SalArrayGetUpperBound( sFiles, 1, nNum )
.head 6 -  Return FALSE
.head 5 +  If nNum >= 0
.head 6 -  Set nResCount = 0
.head 6 -  Set nMsgWritten = 0
.head 6 -  Set sFileP301 = strFileP301
.head 6 -  Set sFEHLFile = sFEHLDir || 'FEHL.DAT'
.head 6 +  If not SalFileOpen( fhFEHL, sFEHLFile, OF_Append )
.head 7 +  If not SalFileOpen( fhFEHL, sFEHLFile, OF_Write | OF_Create )
.head 8 -  Call f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 8 -  Call f301_Protocol_WriteMsg( '. ' || GetMessageX( 1318, 'Cannot open file') || ': ' || sFEHLFile )
.head 8 -  Return FALSE
.head 6 -  Set nI = 0
.head 6 +  While nI <= nNum
.head 7 -  Set sCurrFile = GalStrExtractFileName( SalStrUpperX( sFiles[ nI ] ) )
.head 7 -  Set strFileP301 = sFiles[ nI ]
.head 7 +  If sCurrFile = 'AUFN.DAT'
or	sCurrFile = 'ENTL.DAT'
or	sCurrFile = 'RECH.DAT'
or	sCurrFile = 'MBEG.DAT'
or	sCurrFile = 'VERL.DAT'
or	sCurrFile = 'ZGUT.DAT'
.head 8 -  Call f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 8 -  Call f301_Protocol_WriteMsg( '. Converting input file: ' || sFiles[ nI ] )
.head 8 -  Set sType = SalStrLeftX( sCurrFile, 4 )
.head 8 +  If VisFileOpen( fhIn, sFiles[ nI ], OF_Read ) != VTERR_Ok
.head 9 -  Call f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 9 -  Call f301_Protocol_WriteMsg( '. ' || GetMessageX( 1318, 'Cannot open file') || ': ' || sFiles[ nI ] )
.head 8 +  Else
.head 9 -  Set sMsg = ''
.head 9 -  Set sFKT = ''
.head 9 -  Set sFall = ''
.head 9 -  Set bOk = TRUE
.head 9 +  While bOk and VisFileReadString( fhIn, sLine ) = VTERR_Ok
.head 10 -  Set sSegm = SalStrLeftX( sLine, 3 )
.head 10 +  If sSegm = 'FKT'
.head 11 -  Set sFKT = SalStrLeftX( sLine, 7 ) || SalStrMidX( sLine, 16, 9 ) || SalStrMidX( sLine, 7, 9 ) || sLightCarriageReturn
.head 10 +  Else If sSegm = 'FHL'
.head 11 +  If sFKT
.head 12 -  Set sLine = VisStrRightTrim( sLine )
.head 12 +  If SalStrLength( sLine ) < 138
.head 13 -  Set sLine = SalStrLeftX( sLine || SalStrRepeatX( ' ', 138 ), 138 )
.head 12 +  If SalStrLength( sLine ) < 157 ! sLine doesn't contain message type info
.head 13 +  If SalStrLength( sLine ) = 138 ! doesn't contain Fall info
.head 14 -  Set sLine = sLine || SalStrLeftX( sFall || SalStrRepeatX( ' ', 15 ), 15 )
.head 13 -  Set sLine = sLine || sType
.head 12 -  Set sMsg = sFKT || sLine || sLightCarriageReturn
.head 12 -  Set bOk = SalFileWrite( fhFEHL, sMsg, SalStrLength( sMsg ) )
.head 12 -  Set nMsgWritten = nMsgWritten + 1
.head 12 -  Call f301_Protocol_WriteMsg( SalStrRepeatX( '. ', 25 ) )
.head 12 -  Call f301_Protocol_WriteMsg( '. Error message received:
' || sMsg )
.head 12 -  Set sFall = ''
.head 10 +  Else If sSegm = 'INV'
.head 11 +  If sFKT
.head 12 -  Set sFall = SalStrMidX( sLine, 24, 15 )
.head 9 -  Call VisFileClose( fhIn )
.head 9 -  Call MoveFileToResultDir( TRUE, 'EDI' )
.head 7 +  Else
.head 8 -  Set sResult[ nResCount ] = sFiles[ nI ]
.head 8 -  Set nResCount = nResCount + 1
.head 7 -  Set nI = nI + 1
.head 6 -  Call SalFileClose( fhFEHL )
.head 6 +  If VisArrayFindString( sResult, sFEHLFile ) < 0
.head 7 +  If nMsgWritten > 0
.head 8 -  Set sResult[ nResCount ] = sFEHLFile
.head 8 -  Set nResCount = nResCount + 1
.head 7 +  Else
.head 8 -  Call SalFileOpen( fhFEHL, sFEHLFile, OF_Delete )
.head 6 -  Set strFileP301 = sFileP301
.head 6 -  Call VisArrayCopy( sResult, sFiles, DT_String )
.head 5 -  Return TRUE
.head 3 -  !
.head 3 -  ! Version check and upgrade
.head 3 +  Function: CheckAndUpgrade
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bExists
.head 5 -  Number: nCount
.head 4 +  Actions
.head 5 -  ! v.1.02- Hide NAD data exclude NAME1 and NAME3 for par.301 rows (don't touch EDI format!)
.head 5 +  If Not SqlExists( "
select	SECTION, count(*)
from	W301_DESCRIPTION
where	SEGMENT = 'NAD'
   and	ATR = 'K'
   and	not @upper(@nullvalue(HIDDEN, 'N')) = 'J'
   and	RES_FORMAT <> 'EDI'
group by	SECTION ", bExists )
.head 6 -  Return FALSE
.head 5 +  If bExists
.head 6 +  If Not SqlImmediate( "
update	W301_DESCRIPTION
set	HIDDEN = 'j'
where	SEGMENT = 'NAD'
   and	ATR = 'K'
   and	RES_FORMAT <> 'EDI' ")
.head 7 -  Call SqlImmediate( 'rollback' )
.head 7 -  Return FALSE
.head 6 -  Call SqlImmediate( 'commit' )
.head 5 -  ! v.3.0.5 Set DM as a default currency if none
.head 5 -  ! v.3.1.2 - MR commented
.head 5 +  ! If Not SqlExists( "
select	CURR_KEY
from	CURRENCY
where	STANDARD = 'J'
", bExists )
.head 6 -  Return FALSE
.head 5 +  ! If Not bExists
.head 6 +  If Not SqlImmediate( "
update	CURRENCY
set	STANDARD = 'J'
where	CURR_KEY = 'DM'
")
.head 7 -  Call SqlImmediate( 'rollback' )
.head 7 -  Return FALSE
.head 6 -  Call SqlImmediate( 'commit' )
.head 5 -  Return TRUE
.head 3 +  Function: DelOldErrMsg
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 4 +  Actions
.head 5 +  If IDYES != SalMessageBox( GetMessageX( 1000015, "All erroneous import messages will be deleted! Proceed?" ),
 '§301', MB_YesNo | MB_IconAsterisk )
.head 6 -  Return 0
.head 5 -  Call SalWaitCursor( TRUE )
.head 5 -  Set bOk = SqlImmediate("
delete from R301_INPUT
where	ERR_NR < 0
")
.head 5 +  If bOk and SqlImmediate( ' commit ' )
.head 6 -  Call SalMessageBox( 'Fertig', '§301', 0 )
.head 5 +  Else
.head 6 -  Call StatusText( 'Rollback...' )
.head 6 -  Call SqlImmediate( ' rollback ' )
.head 6 -  Call SalMessageBox( 'Fehler', '§301', 0 )
.head 5 -  Call SalWaitCursor( FALSE )
.head 5 -  Return bOk
.head 3 +  Function: CheckEDIalogFiles
.head 4 -  Description: Check files: only KOUB.dat, ZAAO.dat, ANFM.dat, ZAHL.dat, FEHL.dat are possible, throw out others
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  Receive String: sFiles[*]
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sResult[*]
.head 5 -  String: sCurrFile
.head 5 -  Number: nI
.head 5 -  Number: nResCount
.head 5 -  Number: nNum
.head 4 +  Actions
.head 5 +  If not SalArrayGetUpperBound( sFiles, 1, nNum )
.head 6 -  Return -1
.head 5 -  Set nResCount = 0
.head 5 +  If nNum >= 0
.head 6 -  Set nI = 0
.head 6 +  While nI <= nNum
.head 7 -  Set sCurrFile = GalStrExtractFileName( SalStrUpperX( sFiles[ nI ] ) )
.head 7 -  ! If sCurrFile = 'KOUB.DAT'
or	sCurrFile = 'ZAHL.DAT'
or	sCurrFile = 'ZAAO.DAT'
or	sCurrFile = 'ANFM.DAT'
or	sCurrFile = 'FEHL.DAT'
or	sCurrFile = 'AUFN.DAT'
or	sCurrFile = 'ENTL.DAT'
or	sCurrFile = 'RECH.DAT'
or	sCurrFile = 'MBEG.DAT'
or	sCurrFile = 'VERL.DAT'
or	sCurrFile = 'ZGUT.DAT'
.head 7 +  If sCurrFile = 'KOUB.DAT'
or	sCurrFile = 'ZAHL.DAT'
or	sCurrFile = 'ZAAO.DAT'
or	sCurrFile = 'ANFM.DAT'
or	sCurrFile = 'FEHL.DAT'
.head 8 -  Set sResult[ nResCount ] = sFiles[ nI ]
.head 8 -  Set nResCount = nResCount + 1
.head 7 -  Set nI = nI + 1
.head 6 -  Call VisArrayCopy( sResult, sFiles, DT_String )
.head 5 -  Return nResCount
.head 3 +  Function: CheckAndConfirmUpdate
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Receive Boolean: bDoUpdate
.head 5 -  String: sFallInfo
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 5 -  Boolean: bResCode
.head 5 -  Boolean: bExists
.head 5 -  String: sUpdTable
.head 5 -  String: sTmplMid
.head 5 -  String: sChanged
.head 5 -  String: sChStart
.head 5 -  !
.head 5 -  Number: nChanged
.head 5 -  Number: nChStart
.head 5 -  Number: nRow
.head 5 -  Number: nFldRow
.head 5 -  Number: nDlgResult
.head 4 +  Actions
.head 5 -  Set nRow = 0
.head 5 -  Set bOk = TRUE
.head 5 -  Set sChanged = ''
.head 5 -  Set nChanged = 0
.head 5 +  While bOk  and  nRow < h301_Update.nResultSetCount
.head 6 -  Set lstrSQL = ''
.head 6 +  If bOk and Not h301_Update.FetchRow( nRow, bResCode, FALSE )
.head 7 -  ! 240=SQL Fetch Error:
.head 7 -  Set bOk = FALSE
.head 7 -  Call LogError( GetMessage( 240 ) || " SELECT ...  FROM 301_UPDATE (T/F) ! Row# " || SalNumberToStrX( nRow+1, 0 ) )
.head 6 +  If bOk and SalStrLength( lstrSQL ) = 0
.head 7 +  If SalStrUpperX( SalStrLeftX( strSqlStatement, 6 ) ) = 'INSERT'
.head 8 -  ! we don't have to check anything
.head 8 -  Set bDoUpdate = TRUE
.head 8 -  Return bOk
.head 7 +  Else If SalStrUpperX( SalStrLeftX( strSqlStatement, 6 ) ) = 'UPDATE'
.head 8 -  Set sUpdTable = SalStrTrimX( SalStrRightX( strSqlStatement, SalStrLength( strSqlStatement ) - 7 ) )
.head 8 -  Set sTmplMid = " from " || sUpdTable || ' ' || strSqlWhere || ' and '
.head 7 +  Else
.head 8 -  ! 250=Sql statement in 301_UPDATE ist weder UPDATE noch INSERT:
.head 8 -  Call LogError( GetMessage( 250 ) || ' ' || strSqlStatement  )
.head 8 -  Set bOk = FALSE
.head 8 -  Set bDoUpdate = FALSE
.head 7 -  !
.head 7 +  If bOk  and  Not  h301_Update_Fld.Execute( ) 
.head 8 -  ! 227=SQL Execute error:
.head 8 -  Call LogError( GetMessage( 227 ) || " SELECT ... FROM 301_UPDATE_FLD ! " )
.head 8 -  Set bOk = FALSE
.head 7 -  Set nFldRow = 0
.head 7 -  Set nChStart = nChanged
.head 7 -  Set sChStart = sChanged
.head 7 -  Set sChanged = sChanged || 'Table: ' || sUpdTable || sLightCarriageReturn
.head 7 +  While bOk  and  nFldRow < h301_Update_Fld.nResultSetCount
.head 8 +  If bOk  and  Not h301_Update_Fld.FetchRow( nFldRow, bResCode, FALSE )
.head 9 -  ! 240=SQL Fetch Error:
.head 9 -  Call LogError( GetMessage( 240 ) || " SELECT ...  FROM 301_UPDATE_FLD  ! Row# " || SalNumberToStrX( nRow+1, 0 ) )
.head 9 -  Set bOk = FALSE
.head 8 +  If nIndexArr > 0 and (strArr301[ nIndexArr ] or bUpdIfNull)
.head 9 -  Set lstrSQL = "select " || strColName || sTmplMid || strColName || " || ' ' <> :strArr301[" || StrX( nIndexArr ) || "] || ' ' into :frmPar301.sCurrFieldValue"
.head 9 -  Set bOk = DoImmediateSingle( lstrSQL, bExists )
.head 9 +  If bOk
.head 10 +  If bExists
.head 11 -  Set sChanged = sChanged || strColName || ': old value = ' || sCurrFieldValue || '; new value = ' || strArr301[ nIndexArr ] || sLightCarriageReturn
.head 11 -  Set nChanged = nChanged + 1
.head 8 -  Set nFldRow = nFldRow + 1
.head 7 +  If nChStart = nChanged ! Nothing was added
.head 8 -  Set sChanged = sChStart
.head 6 -  Set nRow = nRow + 1
.head 5 +  If bOk and nChanged > 0
.head 6 -  Call SalWaitCursor( FALSE )
.head 6 -  Set sChanged = GetMessageX( 1000018, "The following fields are to change. Proceed with update?" ) || sLightCarriageReturn || sFallInfo || sLightCarriageReturn || sChanged
.head 6 -  Set nDlgResult = SalModalDialog( dlgMLYesNoCancel, hWndForm, "§301", sChanged )
.head 6 -  Call SalWaitCursor( TRUE )
.head 6 +  If nDlgResult = IDCANCEL
.head 7 -  Set bExit = TRUE
.head 7 -  Set bDoUpdate = FALSE
.head 6 +  Else
.head 7 -  Set bDoUpdate = VisNumberChoose( nDlgResult = IDYES, TRUE, FALSE )
.head 5 +  Else
.head 6 -  Set bDoUpdate = FALSE
.head 5 -  Return bOk
.head 3 +  Function: ReplaceIndexes
.head 4 -  Description: Replaces indexes quoted with ~~ with strArr301 values
.head 4 +  Returns
.head 5 -  String:
.head 4 +  Parameters
.head 5 -  String: strMsg
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Number: nPos
.head 5 -  Number: nIndex
.head 5 -  String: sTemp
.head 4 +  Actions
.head 5 -  ! change ~index~ to strArr301[index] in strMsg
.head 5 -  Set sTemp = ''
.head 5 +  Loop
.head 6 -  Set nPos = SalStrScan( strMsg, '~%~' )
.head 6 +  If nPos < 0
.head 7 +  If sTemp
.head 8 -  Set strMsg = sTemp || strMsg
.head 7 -  Break
.head 6 -  Set sTemp = sTemp || SalStrLeftX( strMsg, nPos )
.head 6 -  Set strMsg = SalStrRightX( strMsg, SalStrLength( strMsg ) - nPos - 1 )
.head 6 -  Set nPos = SalStrScan( strMsg, '~' )
.head 6 -  Set nIndex = SalStrToNumber( SalStrLeftX( strMsg, nPos ) )
.head 6 -  Set sTemp = sTemp || strArr301[nIndex]
.head 6 -  Set strMsg = SalStrRightX( strMsg, SalStrLength( strMsg ) - nPos - 1 )
.head 5 -  !
.head 5 -  Return strMsg
.head 3 +  Function: SetButtonState
.head 4 -  Description:
.head 4 -  Returns
.head 4 +  Parameters
.head 5 -  Boolean: bState
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 +  If not bState
.head 6 -  Call pbStart.Disable(  )
.head 6 -  Call pbRefresh.Disable(  )
.head 6 -  Call pbProtocol.Disable(  )
.head 6 -  Call pbWriteMsgs.Disable(  )
.head 6 -  Call pbDelErrMsg.Disable(  )
.head 6 -  Call pbSendFallEvents.Disable( )
.head 6 -  Call pbViewErr.Disable( )
.head 6 -  Call pbCancel.Enable(  )
.head 5 +  Else
.head 6 -  Call pbCancel.Disable(  )
.head 6 -  Call pbViewErr.Enable( )
.head 6 -  Call pbSendFallEvents.Enable( )
.head 6 -  Call pbDelErrMsg.Enable(  )
.head 6 -  Call pbWriteMsgs.Enable(  )
.head 6 -  Call pbStart.Enable(  )
.head 6 -  Call pbRefresh.Enable(  )
.head 6 -  Call pbProtocol.Enable(  )
.head 2 -  Window Parameters
.head 2 +  Window Variables
.head 3 -  ! _______Variables for EVENT
.head 3 -  ! String: sEvent_Event_Date
.head 3 -  Number: nEvent_Event_Nr
.head 3 -  String: sEvent_Event_Type
.head 3 -  String: sEvent_Key_9
.head 3 -  String: sEvent_Reason
.head 3 -  String: sEvent_RO_Key
.head 3 -  Number: nEvent_Fall_Key
.head 3 -  String: sEvent_Kstr_Key
.head 3 -  Number: nEvent_Bew_Nr
.head 3 -  Number: nEvent_Rech_Nr
.head 3 -  Number: nEvent_KueVerl_Nr
.head 3 -  Number: nEvent_KK_IK
.head 3 -  String: sEvent_Read
.head 3 -  Number: nStornENTL_Nr
.head 3 -  ! _______
.head 3 -  Number: nMessageNr
.head 3 -  Number: nMessageNrEDI
.head 3 -  Number: nSegmentNr301
.head 3 -  Number: nSegmentNrEDI
.head 3 -  Number: nSegmentRowBegin
.head 3 -  Number: nStornMessageNr
.head 3 -  Number: nStornMessageNrEDI
.head 3 -  ! _______Variables for §301
.head 3 -  String: s301_sectionTitle
.head 3 -  String: sFailedInputDir
.head 3 -  String: sSuccessfulInputDir
.head 3 -  ! _______Fehler message (correspondent for s301_SQL_Required)
.head 3 -  String: s301_FehlerMsg
.head 3 -  ! _______Variable for storing Check(Retrieve) SQL Statement
.head 3 -  Long String: s301_SQL_Local
.head 3 -  ! _____ INTO variables  for  301_DESCRIPTION
.head 3 -  Number: n301_Index
.head 3 -  String: s301_Section
.head 3 -  String: s301_SegmentName
.head 3 -  String: s301_Atr
.head 3 -  String: s301_Typ
.head 3 -  Number: n301_Len
.head 3 -  String: s301_Variable
.head 3 -  String: s301_Hidden
.head 3 -  String: s301_MustBe
.head 3 -  String: s301_Delimiter
.head 3 -  String: s301_Format
.head 3 -  Number: n301_Wiederholbar
.head 3 -  String: s301_ResFormat
.head 3 -  ! ! flag to repeat segment not in next line, but in same line without segment header:
.head 3 -  Boolean: b301_InlineSegment
.head 3 -  ! copy to be kept during next fetches: 
.head 3 -  ! Boolean: bInlineSegment
.head 3 -  Boolean: bInlineSegment_301
.head 3 -  Boolean: bInlineSegment_EDI
.head 3 -  ! Rows to skip when writing inline segments
.head 3 -  Number: nRowsToSkip
.head 3 -  ! flag for inline segment termination:
.head 3 -  Boolean: bNotLast
.head 3 -  Boolean: bEmptySegm
.head 3 -  ! _______
.head 3 -  String: s301_SegmentAtr
.head 3 -  Number: nRepeat
.head 3 -  Number: nRepeat301
.head 3 -  Number: nRepeatEDI
.head 3 -  Boolean: bIs301Segment
.head 3 -  Boolean: bIsEDISegment
.head 3 -  Number: nSegmentMaxRepeat
.head 3 -  Number: nRepeatCount
.head 3 -  String: strCurrentSegment
.head 3 -  Number: nIndexOfArr301[*]
.head 3 -  Number: nNumOfIndexes
.head 3 -  String: sArrOfDelimiters[*]
.head 3 -  String: sArrOfHides[*]
.head 3 -  Number: nArrOfLengthes[*]
.head 3 -  String: sArrOfFormats[*]
.head 3 -  String: sArrOfTypes[*]
.head 3 -  String: sArrOfResFormats[*]
.head 3 -  ! 
!
! _____ §301 SQL handlers
.head 3 -  FunctionalVar: h301_Description
.head 4 -  Class: clsSqlHandleSelect
.head 3 -  FunctionalVar: h301_SQL
.head 4 -  Class: clsSqlHandleSelect
.head 3 -  FunctionalVar: h301_SQL_Local
.head 4 -  Class: clsSqlHandleSelect
.head 3 -  String: s301_SQL_Local_Note
.head 3 -  String: s301_SQL_ResFormat
.head 3 -  ! _______
.head 3 -  ! Boolean: bP301_ProtocolOpened
.head 3 -  ! File Handle: fhProtocol
.head 3 -  ! s301_SegmentContents will store contents of §301 for current SEGMENT
.head 3 -  Long String: s301_SegmentContents
.head 3 -  Long String: sEDI_SegmentContents
.head 3 -  Long String: s301_MessageContents
.head 3 -  Long String: sEDI_MessageContents
.head 3 -  ! _______
.head 3 -  Boolean: bYield
.head 3 -  Boolean: bExit
.head 3 -  Number: nMsgCreated
.head 3 -  ! _______
.head 3 -  Window Handle: hwndMakeFile301
.head 3 -  Window Handle: hWndErrView
.head 3 -  !
.head 3 -  !
.head 3 -  ! ------------------------- Variables for Writing File Part ----------------------------
.head 3 -  !
.head 3 -  String: sRO_Key
.head 3 -  String: sRO_Bez
.head 3 -  String: sRO_KK_IK
.head 3 -  ! _______
.head 3 -  String: sMessageType
.head 3 -  String: sSegmentNr
.head 3 -  ! _______
.head 3 -  String: s301_FileName
.head 3 -  String: s301_FileNr
.head 3 -  Long String: sOut301_Contents
.head 3 -  !
.head 3 -  String: sVersStr
.head 3 -  !
.head 3 -  ! ------------------------- Variables for Reading Part ----------------------------
.head 3 -  !
.head 3 -  ! !	Reading Input from Message table
.head 3 -  Sql Handle: hSqlMessage
.head 3 -  Number: nFetch
.head 3 -  Long String: sMessage
.head 3 -  String: sFileName
.head 3 -  Number: nMsgNr
.head 3 -  String: sFileNr
.head 3 -  String: sMsg_Nr_inFile
.head 3 -  String: sCurrFieldValue
.head 3 -  ! __ SQL Handls for §301
.head 3 -  FunctionalVar: h301_Descript
.head 4 -  Class: clsSqlHandleSelect
.head 3 -  FunctionalVar: h301_Check
.head 4 -  Class: clsSqlHandleSelect
.head 3 -  FunctionalVar: h301_Update
.head 4 -  Class: clsSqlHandleSelect
.head 3 -  FunctionalVar: h301_Update_Fld
.head 4 -  Class: clsSqlHandleSelect
.head 3 -  ! _____ INTO variables  for  301_CHECK
.head 3 -  Long String: lstrSQL
.head 3 -  String: strFehler301
.head 3 -  Boolean: bWarn
.head 3 -  ! _____ INTO variables  for  301_DESKRIPTION
.head 3 -  Number: nRepeatNum
.head 3 -  ! _____ INTO variables  for  301_UPDATE
.head 3 -  Number: nTableId
.head 3 -  String: strSqlStatement
.head 3 -  String: strSqlWhere
.head 3 -  String: strErrMsg
.head 3 -  String: strSuccMsg
.head 3 -  ! _____ INTO variables  for  301_UPDATE_FLD
.head 3 -  String: strColName
.head 3 -  Number: nIndexArr
.head 3 -  Boolean: bUpdIfNull
.head 3 -  ! __ for INPUT file
.head 3 -  File Handle: fhP301
.head 3 -  String: strFileP301
.head 3 -  Boolean: bP301_InputOpened
.head 3 -  ! ! logging
.head 3 -  String: sLog_FallNr
.head 3 -  String: sLog_FullName
.head 3 -  String: sLog_KOUBFrom
.head 3 -  String: sLog_KOUBTill
.head 3 -  String: sLog_KK_IK
.head 3 -  !
.head 3 -  String: sFileNrs
.head 3 -  String: sFallKeys
.head 3 -  Number: nSatzformat
.head 3 -  !
.head 3 -  Window Handle: hWnd301Input
.head 2 +  Message Actions
.head 3 +  On SAM_CreateComplete
.head 4 -  Call VisWaitCursor( TRUE )
.head 4 -  Call Options301_ReadFromINI(  )
.head 4 -  Set nHelpContext_ID = 132
.head 4 -  Call CheckAndUpgrade(  )
.head 4 -  Set nSatzformat = ReadVersion( VERSION_301Format )
.head 4 +  If nSatzformat != 0
.head 5 -  ! using sVersStr as temporary
.head 5 -  Call SalGetWindowText( hWndForm, sVersStr, 256 )
.head 5 -  Set sVersStr = sVersStr || ' (§301 Satzformat: ' || SalNumberToStrX( nSatzformat, 0 ) || ')'
.head 5 -  Call SalSetWindowText( hWndForm, sVersStr )
.head 4 -  Call GalGetProfileString( '§301', 'VersionString', ":01:000:00", sVersStr, ATLANTA_INI )
.head 4 -  Call VisWaitCursor( FALSE )
.head 4 -  Return SalSendClassMessage( SAM_CreateComplete, wParam, lParam )
.head 3 +  On AM_Ok
.head 4 -  Call Start_301( n301_ActionStatus, FALSE, FALSE )
.head 3 +  On AM_Cancel
.head 4 +  If SalMessageBox( GetMessage( 213 ),  GetMessage( 212 ) || ' (213)', MB_YesNo | MB_IconStop ) = IDYES
.head 5 -  ! 212=Benutzerabbruch
! 213=Wollen Sie das Programm abbrechen ?
.head 5 -  ! 225= User break !
.head 5 -  Call f301_Protocol_WriteMsg( GetMessage( 225 ) )
.head 5 -  Set frmPar301.bExit = TRUE
.head 3 +  On AM_Options
.head 4 -  Call Options301_Edit(  )
.head 3 +  On AM_Protocol
.head 4 -  Call SalLoadApp( s301_ProtocolEditor, s301_ProtocolName )
.head 3 +  On AM_Refresh
.head 4 -  Set sFileNrs = ''
.head 4 +  If b301_EDICompatible
.head 5 +  If GetMarkedListSet_Str( "
select distinct '''' || FILE_NUMBER || '''', FILE_NAME
from W301_MESSAGE
where FILE_NAME is not NULL
order by 1, 2",
'Nummer', '', 'Datei', 30000, sFileNrs
)
and sFileNrs
.head 6 -  Call Start_301( n301_ActionStatus, FALSE, TRUE )
.head 4 +  Else
.head 5 +  If GetMarkedListSet_Str( "
select distinct '''' || msg.FILE_NUMBER || ':' || msg.RO_KEY || '''', FILE_NAME || ' -> ' || RO_BEZ
from W301_MESSAGE msg, RECEIVING_OFFICE ro
where FILE_NAME is not NULL
  and msg.RO_KEY = ro.RO_KEY
order by 1, 2",
'Datai', '', 'Datei -> Annahmestelle', 30000, sFileNrs ) and sFileNrs
.head 6 -  Call Start_301( n301_ActionStatus, FALSE, TRUE )
.head 3 +  On AM_Export
.head 4 -  Call VisWaitCursor( TRUE )
.head 4 -  Call SetButtonState( FALSE )
.head 4 -  Call f301_Protocol_Open(  )
.head 4 -  !
.head 4 -  Call Out301_Start( FALSE, FALSE )
.head 4 -  !
.head 4 -  Call f301_Protocol_Close(  )
.head 4 -  Call SetButtonState( TRUE )
.head 4 -  Call VisWaitCursor( FALSE )
.head 4 -  Call SalStatusSetText( hWndForm, GetMessage( 202 ) )
.head 3 +  On AM_GetFallData
.head 4 -  Call SetButtonState( FALSE )
.head 4 -  !
.head 4 -  ! AS09.09.04: dt301_AE_Start is a Var. in DynaLib, so, "frmPar301."-part is removed
.head 4 +  If GetMarkedListSet_Str( "
select	distinct f.fall_key, f.name1 || ' ' || f.name3	
from	bewegung b, fall f, event e
where	f.einricht_id = :nEinrichtId
   and	f.geloescht = 'N'
   and	f.status = 'A'
   and	b.einricht_id = f.einricht_id
   and	b.fall_key = f.fall_key
   and	b.geloescht = 'N'
   and	b.BEW_ZEIT <= @now
   and	b.ba_key = 'AE'
   and	f.fallart_key <> 'AM'
   and	f.fall_key = e.fall_key
   and	f.einricht_id = e.einricht_id
" || VisStrChoose( dt301_AE_Start = DATETIME_Null, '', '   and f.AE_DATUM >= :dt301_AE_Start'),
'Fall', 'Fall', 'Name', 30000, sFallKeys
)
and sFallKeys
.head 5 -  !
.head 5 +  ! AS 06.07.2004
.head 6 -  ! Set bExit = FALSE
.head 6 -  ! Call f301_Protocol_Open( TRUE )
.head 6 -  ! Call InitDataFields( 0 )
.head 6 -  ! Call SalListClear( lbStatus301 )
.head 6 -  ! Set mlError = ''
.head 6 -  !
.head 6 -  ! Make OUT messages
.head 6 -  ! Call Msg301_Start( TRUE )
.head 6 -  ! Make OUT files
.head 6 -  ! Call Out301_Start( TRUE )
.head 6 -  !
.head 6 -  ! Call f301_Protocol_Close(  )
.head 5 -  Call Start_301( P301_OUTPUT, TRUE, FALSE )
.head 4 -  !
.head 4 -  Call SetButtonState( TRUE )
.head 4 -  Call SalStatusSetText( hWndForm, GetMessage( 202 ) )
.head 3 +  On AM_Delete
.head 4 -  Call VisWaitCursor( TRUE )
.head 4 -  Call SetButtonState( FALSE )
.head 4 -  !
.head 4 -  Call DelOldErrMsg(  )
.head 4 -  !
.head 4 -  Call SetButtonState( TRUE )
.head 4 -  Call VisWaitCursor( FALSE )
.head 4 -  Call SalStatusSetText( hWndForm, GetMessage( 202 ) )
.head 3 +  On AM_Zoom
.head 4 -  ! Call OpenWindow( 'tbl301ErrView', hWndErrView )
.head 4 -  Call Fall301_ErrView_Open( hWndForm )
.head 3 +  On AM_Control
.head 4 -  Call StartSeparateEXE( '301event.exe' )
.head 1 +  Dialog Box: dlgAbout301
.head 2 -  Class: clsSimpleDialogBox
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Über '§301'
.head 2 -  Accessories Enabled? Class Default
.head 2 -  Visible? Class Default
.head 2 -  Display Settings
.head 3 -  Display Style? Class Default
.head 3 -  Visible at Design time? No
.head 3 -  Type of Dialog: Modal
.head 3 -  Allow Dock to Parent? No
.head 3 -  Docking Orientation: All
.head 3 -  Window Location and Size
.head 4 -  Left: 3.263"
.head 4 -  Top: 1.99"
.head 4 -  Width:  3.813"
.head 4 -  Width Editable? Class Default
.head 4 -  Height: 1.344"
.head 4 -  Height Editable? Class Default
.head 3 -  Absolute Screen Location? Class Default
.head 3 -  Font Name: Class Default
.head 3 -  Font Size: Class Default
.head 3 -  Font Enhancement: Class Default
.head 3 -  Text Color: Class Default
.head 3 -  Background Color: Class Default
.head 3 -  Resizable? No
.head 3 -  Vertical Scroll? Yes
.head 3 -  Horizontal Scroll? Yes
.head 2 -  Description:
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Class Default
.head 4 -  Location? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Size: Class Default
.head 4 -  Size Editable? Class Default
.head 4 -  Docking Toolbar? Class Default
.head 4 -  Toolbar Docking Orientation: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Resizable? Class Default
.head 3 -  Contents
.head 2 +  Contents
.head 3 +  Picture: pic1
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.213"
.head 5 -  Top: 0.177"
.head 5 -  Width:  0.65"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.49"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Editable? No
.head 4 -  File Name: 301.ICO
.head 4 -  Storage: Internal
.head 4 -  Picture Transparent Color: None
.head 4 -  Fit: Scale
.head 4 -  Scaling
.head 5 -  Width:  100
.head 5 -  Height:  100
.head 4 -  Corners: Square
.head 4 -  Border Style: Raised-Shadow
.head 4 -  Border Thickness: 2
.head 4 -  Tile To Parent? No
.head 4 -  Border Color: Default
.head 4 -  Background Color: Gray
.head 4 -  Message Actions
.head 3 -  Background Text: Version:
.head 4 -  Resource Id: 37067
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundText
.head 4 -  Window Location and Size
.head 5 -  Left: 1.088"
.head 5 -  Top: 0.083"
.head 5 -  Width:  1.238"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfVersionNr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 2.525"
.head 6 -  Top: 0.052"
.head 6 -  Width:  1.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.229"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On GM_Create
.head 6 -  Set MyValue = s301_VERSION
.head 3 -  Background Text: Datum:
.head 4 -  Resource Id: 37068
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundText
.head 4 -  Window Location and Size
.head 5 -  Left: 1.088"
.head 5 -  Top: 0.344"
.head 5 -  Width:  1.238"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfVersionDate
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 2.525"
.head 6 -  Top: 0.313"
.head 6 -  Width:  1.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.229"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On GM_Create
.head 6 -  Set MyValue = s301_DATE
.head 3 -  Background Text: §301 Satzformat:
.head 4 -  Resource Id: 9663
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundText
.head 4 -  Window Location and Size
.head 5 -  Left: 1.088"
.head 5 -  Top: 0.604"
.head 5 -  Width:  1.238"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: df301Satzformat
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 2.525"
.head 6 -  Top: 0.573"
.head 6 -  Width:  1.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.229"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On GM_Create
.head 6 -  Set MyValue = ReadVersion( VERSION_301Format )
.head 6 +  If MyValue = 0
.head 7 -  Set MyValue = NUMBER_Null
.head 3 +  Pushbutton: pbOk
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsPushbuttonOk
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.225"
.head 5 -  Top: 0.896"
.head 5 -  Width:  1.213"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Standard
.head 4 -  Message Actions
.head 2 -  Functions
.head 2 -  Window Parameters
.head 2 -  Window Variables
.head 2 +  Message Actions
.head 3 +  On AM_Ok
.head 4 -  Call SalEndDialog( hWndForm, 0 )
.head 1 +  Table Window: tbl301_Input
.head 2 -  Class: clsTableBrowse
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: 301 Input Data
.head 2 -  Icon File:
.head 2 -  Accessories Enabled? Class Default
.head 2 -  Visible? Class Default
.head 2 -  Display Settings
.head 3 -  Visible at Design time? Yes
.head 3 -  Automatically Created at Runtime? Class Default
.head 3 -  Initial State: Maximized
.head 3 -  Maximizable? Class Default
.head 3 -  Minimizable? Class Default
.head 3 -  System Menu? Class Default
.head 3 -  Resizable? Class Default
.head 3 -  Window Location and Size
.head 4 -  Left: Default
.head 4 -  Top: Default
.head 4 -  Width:  12.317"
.head 4 -  Width Editable? Class Default
.head 4 -  Height: Class Default
.head 4 -  Height Editable? Class Default
.head 3 -  Font Name: Class Default
.head 3 -  Font Size: Class Default
.head 3 -  Font Enhancement: Class Default
.head 3 -  Text Color: Class Default
.head 3 -  Background Color: Class Default
.head 3 -  View: Class Default
.head 3 -  Allow Row Sizing? Class Default
.head 3 -  Lines Per Row: Class Default
.head 3 -  Allow Child Docking? No
.head 3 -  Docking Orientation: All
.head 2 -  Memory Settings
.head 3 -  Maximum Rows in Memory: Class Default
.head 3 -  Discardable? Class Default
.head 2 -  Description:
.head 2 -  Named Menus
.head 2 -  Menu
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Class Default
.head 4 -  Location? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Size: Class Default
.head 4 -  Size Editable? Class Default
.head 4 -  Docking Toolbar? Class Default
.head 4 -  Toolbar Docking Orientation: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Resizable? Class Default
.head 3 +  Contents
.head 4 +  Pushbutton: pbExit
.head 5 -  Class Child Ref Key: 21
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsTableBrowse
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 4 +  Pushbutton: pbRefresh
.head 5 -  Class Child Ref Key: 20
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsTableBrowse
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 4 +  Pushbutton: pbFirst
.head 5 -  Class Child Ref Key: 16
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsTableBrowse
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 4 +  Pushbutton: pbPrev
.head 5 -  Class Child Ref Key: 17
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsTableBrowse
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 4 +  Pushbutton: pbNext
.head 5 -  Class Child Ref Key: 18
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsTableBrowse
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 4 +  Pushbutton: pbLast
.head 5 -  Class Child Ref Key: 19
.head 5 -  Class ChildKey: 0
.head 5 -  Class: clsTableBrowse
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 2 +  Contents
.head 3 +  Column: colMsgNr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Msg.Nr.
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Number
.head 4 -  Justify: Class Default
.head 4 -  Width:  0.767"
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colMsgDate
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Date
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Date/Time
.head 4 -  Justify: Class Default
.head 4 -  Width:  1.067"
.head 4 -  Width Editable? Class Default
.head 4 -  Format: dd.MM.yyyy
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colMsgFormat
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Format
(301 / EDI)
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Class Default
.head 4 -  Justify: Class Default
.head 4 -  Width:  Class Default
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colMsgType
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Type
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Class Default
.head 4 -  Justify: Class Default
.head 4 -  Width:  0.867"
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colFileName
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: File Name
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Class Default
.head 4 -  Justify: Class Default
.head 4 -  Width:  3.3"
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colFileNr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: File Nr.
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Number
.head 4 -  Justify: Class Default
.head 4 -  Width:  0.717"
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colMsgNrInFile
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Msg.Nr.
in File
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Number
.head 4 -  Justify: Class Default
.head 4 -  Width:  0.767"
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colNumOfSegm
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Num. of
Segments
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Number
.head 4 -  Justify: Class Default
.head 4 -  Width:  0.95"
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colRO_Key
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Rec.
Office
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Class Default
.head 4 -  Justify: Class Default
.head 4 -  Width:  Class Default
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colKstr_Key
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Kstr.
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Class Default
.head 4 -  Justify: Class Default
.head 4 -  Width:  2.3"
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colFall_Key
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Fall Nr.
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Number
.head 4 -  Justify: Class Default
.head 4 -  Width:  Class Default
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colRech_Nr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Rech.Nr.
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Number
.head 4 -  Justify: Class Default
.head 4 -  Width:  Class Default
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colKueVerlNr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: KUE Verl. Nr.
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Class Default
.head 4 -  Justify: Class Default
.head 4 -  Width:  Class Default
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colErrNr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Err.Nr.
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Number
.head 4 -  Justify: Class Default
.head 4 -  Width:  0.783"
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colKey9
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumnReadOnly
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Key9
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Data Type: Class Default
.head 4 -  Justify: Class Default
.head 4 -  Width:  Class Default
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 3 +  Column: colMessage
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsColumn
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Message
.head 4 -  Visible? No
.head 4 -  Editable? Class Default
.head 4 -  Maximum Data Length: 3000
.head 4 -  Data Type: Long String
.head 4 -  Justify: Class Default
.head 4 -  Width:  Class Default
.head 4 -  Width Editable? Class Default
.head 4 -  Format: Class Default
.head 4 -  Country: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  Cell Options
.head 5 -  Cell Type? Class Default
.head 5 -  Multiline Cell? Class Default
.head 5 -  Cell DropDownList
.head 6 -  Sorted? Class Default
.head 6 -  Vertical Scroll? Class Default
.head 6 -  Auto Drop Down? Class Default
.head 6 -  Allow Text Editing? Class Default
.head 5 -  Cell CheckBox
.head 6 -  Check Value:
.head 6 -  Uncheck Value:
.head 6 -  Ignore Case? Class Default
.head 4 -  List Values
.head 4 -  Message Actions
.head 2 -  Functions
.head 2 -  Window Parameters
.head 2 +  Window Variables
.head 3 -  Long String: lsMsg
.head 2 +  Message Actions
.head 3 +  On SAM_Create
.head 4 -  Call Initialize( "
select	MESSAGE_NR, MESSAGE_DATE, MSG_FMT_TYPE, MESSAGE_TYPE, 
	FILE_NAME, FILE_NUMBER, MESSAGE_NR_IN_FILE, NUMBER_OF_SEGM,
	RO_KEY, KSTR_KEY, FALL_KEY, RECHNUNG_NR, KUE_VERL_NR, 
	ERR_NR, KEY9, MESSAGE_TEXT
from	R301_INPUT
order by	1
into	:tbl301_Input.colMsgNr, :tbl301_Input.colMsgDate, :tbl301_Input.colMsgFormat, :tbl301_Input.colMsgType, 
	:tbl301_Input.colFileName, :tbl301_Input.colFileNr, :tbl301_Input.colMsgNrInFile, :tbl301_Input.colNumOfSegm,
	:tbl301_Input.colRO_Key, :tbl301_Input.colKstr_Key, :tbl301_Input.colFall_Key, :tbl301_Input.colRech_Nr, :tbl301_Input.colKueVerlNr,
	:tbl301_Input.colErrNr, :tbl301_Input.colKey9, :tbl301_Input.colMessage " )
.head 4 -  Call SalCenterWindow( hWndForm )
.head 3 +  On SAM_DoubleClick
.head 4 -  Set lsMsg = colMessage
.head 4 -  Call GalDlgMLLong( "301 Input Message Text", lsMsg )
.head 1 +  ! Dialog Box: dlgFileTest
.winattr
.head 2 -  Class:
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Files
.head 2 -  Accessories Enabled? No
.head 2 -  Visible? Yes
.head 2 -  Display Settings
.head 3 -  Display Style? Default
.head 3 -  Visible at Design time? No
.head 3 -  Type of Dialog: Modal
.head 3 -  Allow Dock to Parent? No
.head 3 -  Docking Orientation: All
.head 3 -  Window Location and Size
.head 4 -  Left: 1.9"
.head 4 -  Top: 1.875"
.head 4 -  Width:  4.975"
.head 4 -  Width Editable? Yes
.head 4 -  Height: 2.458"
.head 4 -  Height Editable? Yes
.head 3 -  Absolute Screen Location? Yes
.head 3 -  Font Name: Default
.head 3 -  Font Size: Default
.head 3 -  Font Enhancement: Default
.head 3 -  Text Color: Default
.head 3 -  Background Color: Default
.head 3 -  Resizable? No
.head 3 -  Vertical Scroll? Yes
.head 3 -  Horizontal Scroll? Yes
.end
.head 2 -  Description: 
.head 2 +  Tool Bar 
.winattr
.head 3 -  Display Settings
.head 4 -  Display Style? Default
.head 4 -  Location? Top
.head 4 -  Visible? Yes
.head 4 -  Size: Default
.head 4 -  Size Editable? Yes
.head 4 -  Docking Toolbar? No
.head 4 -  Toolbar Docking Orientation: Top | Bottom
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Resizable? No
.end
.head 3 -  Contents 
.head 2 +  Contents 
.head 3 -  Background Text: Directory:
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.163"
.head 5 -  Top: 0.156"
.head 5 -  Width:  0.825"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 +  Data Field: dfDirectory
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: String
.head 5 -  Editable? Yes
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.15"
.head 6 -  Top: 0.115"
.head 6 -  Width:  3.513"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 5 -  Input Mask: Unformatted
.end
.head 4 +  Message Actions 
.head 5 +  On SAM_Create
.head 6 -  Call SalGetProfileString( '§301', 'InputFilesDir', '', dfDirectory, ATLANTA_INI )
.head 3 -  Background Text: File list:
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.163"
.head 5 -  Top: 0.427"
.head 5 -  Width:  0.825"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 -  Background Text: Number of files:
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.2"
.head 5 -  Top: 1.802"
.head 5 -  Width:  1.413"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 +  List Box: lbFiles
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.15"
.head 5 -  Top: 0.427"
.head 5 -  Width:  3.513"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.188"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Multiple selection? No
.head 4 -  Sorted? Yes
.head 4 -  Vertical Scroll? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Horizontal Scroll? No
.end
.head 4 -  List Initialization 
.head 4 -  Message Actions 
.head 3 +  Pushbutton: pbGet
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Get List
.head 4 -  Window Location and Size
.head 5 -  Left: 3.463"
.head 5 -  Top: 1.74"
.head 5 -  Width:  1.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.292"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: (none)
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: None
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.end
.head 4 +  Message Actions 
.head 5 +  On SAM_Click
.head 6 -  Set dfNumFiles = GetFileList( dfDirectory )
.head 3 +  Data Field: dfNumFiles
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDataField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Yes
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.675"
.head 6 -  Top: 1.76"
.head 6 -  Width:  0.963"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 5 -  Input Mask: Unformatted
.end
.head 4 -  Message Actions 
.head 2 +  Functions 
.head 3 +  Function: GetFileList
.head 4 -  Description: 
.head 4 +  Returns 
.head 5 -  Number: 
.head 4 +  Parameters 
.head 5 -  String: sDirName
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  Number: nNumFiles
.head 5 -  String: sFiles[*]
.head 4 +  Actions 
.head 5 +  If SalStrRightX( sDirName, 1 ) != '\\'
.head 6 -  Set sDirName =sDirName || '\\'
.head 5 -  Set sDirName =sDirName || '*.*'
.head 5 -  Set nNumFiles = VisDosEnumFiles( sDirName, 0, sFiles )
.head 5 +  If nNumFiles > 0
.head 6 -  Call VisListArrayPopulate (lbFiles, sFiles)
.head 5 -  Return nNumFiles
.head 2 -  Window Parameters 
.head 2 -  Window Variables 
.head 2 -  Message Actions 
.head 1 +  Dialog Box: dlgMLYesNoCancel
.head 2 -  Class: clsSimpleDialogBox
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Multiline message
.head 2 -  Accessories Enabled? Class Default
.head 2 -  Visible? Class Default
.head 2 -  Display Settings
.head 3 -  Display Style? Class Default
.head 3 -  Visible at Design time? Yes
.head 3 -  Type of Dialog: Class Default
.head 3 -  Allow Dock to Parent? No
.head 3 -  Docking Orientation: All
.head 3 -  Window Location and Size
.head 4 -  Left: Default
.head 4 -  Top: Default
.head 4 -  Width:  5.475"
.head 4 -  Width Editable? Class Default
.head 4 -  Height: 2.948"
.head 4 -  Height Editable? Class Default
.head 3 -  Absolute Screen Location? Class Default
.head 3 -  Font Name: Class Default
.head 3 -  Font Size: Class Default
.head 3 -  Font Enhancement: Class Default
.head 3 -  Text Color: Class Default
.head 3 -  Background Color: Class Default
.head 3 -  Resizable? No
.head 3 -  Vertical Scroll? Yes
.head 3 -  Horizontal Scroll? Yes
.head 2 -  Description:
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Class Default
.head 4 -  Location? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Size: Class Default
.head 4 -  Size Editable? Class Default
.head 4 -  Docking Toolbar? Class Default
.head 4 -  Toolbar Docking Orientation: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Resizable? Class Default
.head 3 -  Contents
.head 2 +  Contents
.head 3 +  Pushbutton: pbYes
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ja
.head 4 -  Window Location and Size
.head 5 -  Left: 2.0"
.head 5 -  Top: 2.552"
.head 5 -  Width:  1.025"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Call SalPostMsg( hWndForm, AM_Ok, 0, IDYES )
.head 3 +  Pushbutton: pbNo
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Nein
.head 4 -  Window Location and Size
.head 5 -  Left: 3.15"
.head 5 -  Top: 2.552"
.head 5 -  Width:  1.025"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Call SalPostMsg( hWndForm, AM_Ok, 0, IDNO )
.head 3 +  Pushbutton: pbCancel
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Abbrechen
.head 4 -  Window Location and Size
.head 5 -  Left: 4.325"
.head 5 -  Top: 2.552"
.head 5 -  Width:  1.025"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Call SalPostMsg( hWndForm, AM_Ok, 0, IDCANCEL )
.head 3 +  Multiline Field: mlComment
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  String Type: String
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Border? Yes
.head 5 -  Word Wrap? No
.head 5 -  Vertical Scroll? Yes
.head 5 -  Window Location and Size
.head 6 -  Left: 0.025"
.head 6 -  Top: 0.031"
.head 6 -  Width:  5.325"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 2.438"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 4 -  Message Actions
.head 2 -  Functions
.head 2 +  Window Parameters
.head 3 -  String: sCaption
.head 3 -  String: sComment
.head 2 -  Window Variables
.head 2 +  Message Actions
.head 3 +  On SAM_Create
.head 4 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 4 -  Call SalSetWindowText(hWndForm,sCaption)
.head 4 -  Set mlComment = sComment
.head 3 +  On AM_Ok
.head 4 -  Call SalEndDialog( hWndForm, lParam )
.head 1 +  ! cls301ErrView: tbl301ErrView
.head 2 -  Description: 
.head 2 -  Named Menus 
.head 2 -  Menu 
.head 2 +  Tool Bar 
.head 3 +  Contents 
.head 4 +  Pushbutton: pbShowFall
.head 5 +  Message Actions 
.head 6 +  On SAM_Create
.head 7 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 7 -  Set sHint =  GetMessageXX( 2912, 'Fall zeigen', sGhsMSG_Hint_FileName )
.head 4 +  Pushbutton: pbExit
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbRefresh
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbUpdate
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbInsert
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbUndo
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbDelete
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbPrint
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbFirst
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbPrev
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbNext
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbLast
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbDelFixed
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbMarkAllCorrect
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbUnmarkAllCorrect
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbSort
.head 5 -  Message Actions 
.head 4 +  Pushbutton: pbFilter
.head 5 -  Message Actions 
.head 2 +  Contents 
.head 3 +  Column: colErr_Nr
.head 4 -  List Values 
.head 4 -  Message Actions 
.head 3 +  Column: colReceived
.head 4 -  List Values 
.head 4 -  Message Actions 
.head 3 +  Column: colErr_Fixed
.head 4 -  List Values 
.head 4 -  Message Actions 
.head 3 +  Column: colFall_Key
.head 4 -  List Values 
.head 4 -  Message Actions 
.head 3 +  Column: colSection
.head 4 -  List Values 
.head 4 -  Message Actions 
.head 3 +  Column: colSegment
.head 4 -  List Values 
.head 4 -  Message Actions 
.head 3 +  Column: colSegment_Pos
.head 4 -  List Values 
.head 4 -  Message Actions 
.head 3 +  Column: colField_Pos
.head 4 -  List Values 
.head 4 -  Message Actions 
.head 3 +  Column: colErr_Code
.head 4 -  List Values 
.head 4 -  Message Actions 
.head 3 +  Column: colErr_Text
.head 4 -  List Values 
.head 4 -  Message Actions 
.head 3 +  Column: colUNB_Filename
.head 4 -  List Values 
.head 4 -  Message Actions 
.head 3 +  Column: colUNB_Date
.head 4 -  List Values 
.head 4 -  Message Actions 
.head 3 +  Column: colUNH_Msg_Num
.head 4 -  List Values 
.head 4 -  Message Actions 
.head 3 +  Column: colUNB_File_Numb
.head 4 -  List Values 
.head 4 -  Message Actions 
.head 2 -  Functions 
.head 2 -  Window Parameters 
.head 2 -  Window Variables 
.head 2 +  Message Actions 
.head 3 +  On SAM_CreateComplete
.head 4 -  Call SalSendClassMessage( SAM_CreateComplete, wParam, lParam )
.head 4 +  If not VisWinIsWindow( hWndStar2000 )
.head 5 -  Call pbShowFall.Disable( )
.head 3 +  On AM_Zoom
.head 4 +  If colFall_Key and VisWinIsWindow( hWndStar2000 )
.head 5 -  Call SalPostMsg( hWndStar2000, AM_OpenFall, 0, SalStrToNumber( colFall_Key ) )
.head 3 +  On SAM_DoubleClick
.head 4 -  Call SalSendMsg( hWndForm, AM_Zoom, 0, 0 )
