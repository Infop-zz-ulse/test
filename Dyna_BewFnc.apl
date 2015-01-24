.head 0 +  Application Description: GHS application module

Dyna_BewFnc.APL

Functions to operate BEWEGUNG
(Including functions which substitute BEW triggers - see clsBewegungActions)

11.09.2003 AS
15.09.2003 AS: Insert without INFO; update with separate INFO updating
18.09.2003 AS: CheckRS4Fall_OnBewChange() is moved to here
22.09.2003 AD: added IR
23.09.2003 AS: Fixed bug in After_UpdPrevBewZeitBis() /it wrongly updated BEW_ZEIT_BIS on delete/
26.09.2003 AH: added TOD_DATUM check/set on BEW_GRUND1.TOD (DB 6.10)
29.09.03 AH changed Before/AfterUpdate to get bImportantChange as parameter
30.09.2003 AS: added CanOpenVorgang()
23.10.2003 AH: check HealthStatus only If FallStatus = 'A'
04.10.03 AH added Bewegung_DoUpdateX ( bForceCheck parameter is added )
12.12.03 AH added Bew_IsDauerPossible()
20.02.2004 AS:  AS 20.02.2004: changed "ODRDER BY" in clsBewegungActions.GetPrevBew()
02.03.2004 AS: added calls of VisWaitCursor()
10.03.2004 AS: added Bew_FindOverlappingWithBettLock() which is used in Bew_IsBewActionPossible()
		Bew_GetFall_InPlaceOnDate(), BettLock_GetLock_InPlaceOnDate()
11.03.2004 AS: messages are being taken from GHS.MSG;
		fixed the bug when new BEW_ZEIT < already existing.
16.03.2004 AS: Bewegung_DoInsertPlan(), Bewegung_DoInsertPlanX()
23.03.2004 AS: added processing depending on VIS_KAT_KEY
24.03.2004 AS: implemented PlanBew_GetFirstDate()
29.03.2004 AS: corrected GetPrevBew(  )
19.05.2004 AS: added CanOpenVorgangX() + GetKstr4Fall()
01.06.2004 AS: using bUnqNameInGrp in CheckUnqNameInGrp(); using sBAList_1stPossible4Fall to get/set AE_Datum ( __Calculate_AE(), After_UpdFall())
02.06.2004 AS: "dt_BewZeit_New <= dt_BewZeit_PrevBew"  instead of "dt_BewZeit_New < dt_BewZeit_PrevBew"
23.06.2004 AH added OnEvent call for BA and Birth
29.06.2004 AS: bugfixing with deleting of a bewegung
15.10.2004 AH: PlanBew insert - bett_lock's Bis is set
27.05.2005 TO: clsBewegungActions.CheckLitterBefore ( )
05.05.2006 AD: get rid of sGHSSchema reference; using sCurrentName instead of sGHSSchema
06.09.2006 AD: changed clsBewegungActions::After_UpdFall( )
06.10.2006 AD: changed CanOpenVorgangX( )
.data CLASSPROPSSIZE
0000: 5300
.enddata
.data CLASSPROPS
0000: 5761746368566172 730007006E426577 4E7200004442475F 504C41594241434B
0020: 5F47554944001000 C4CA672618AB7E4D A8861BF2321FA7FC 0057617463685661
0040: 72734C656E000400 0700000000000000 000000
.enddata
.head 1 -  Outline Version - 4.0.35
.head 1 +  Design-time Settings
.data VIEWINFO
0000: 6F00000003000000 FFFF01000D004347 5458566965775374 6174650400010000
0020: 00000000004F0100 002C000000020000 0003000000FFFFFF FFFFFFFFFFFCFFFF
0040: FFE9FFFFFF000000 0000000000360300 00A6010000010000 0000000000010000
0060: 000F4170706C6963 6174696F6E497465 6D0400000007436C 617373657312636C
0080: 734265776567756E 67416374696F6E73 0946756E6374696F 6E731B446F496E73
00A0: 657274506C616E57 6974686F75744368 65636B7358320000 0180020001000000
00C0: 0000000000000000 2C00000000000000 01000000FFFFFFFF FFFFFFFFFCFFFFFF
00E0: E9FFFFFF16000000 1600000086020000 DE01000000000000 0000000003000000
0100: 0F4170706C696361 74696F6E4974656D 07436C6173736573 12636C7342657765
0120: 67756E6741637469 6F6E7300000000
.enddata
.data DT_MAKERUNDLG
0000: 020000000018453A 5C47485333325C44 796E615F42657746 6E632E6578651845
0020: 3A5C47485333325C 44796E615F426577 466E632E646C6C18 453A5C4748533332
0040: 5C44796E615F4265 77466E632E617063 000001010118453A 5C47485333325C44
0060: 796E615F42657746 6E632E72756E1845 3A5C47485333325C 44796E615F426577
0080: 466E632E646C6C18 453A5C4748533332 5C44796E615F4265 77466E632E617063
00A0: 00000101010F4479 6E615F426577466E 632E6170640F4479 6E615F426577466E
00C0: 632E646C6C0F4479 6E615F426577466E 632E617063000001 010118453A5C4748
00E0: 5333325C44796E61 5F426577466E632E 61706C18453A5C47 485333325C44796E
0100: 615F426577466E63 2E646C6C18453A5C 47485333325C4479 6E615F426577466E
0120: 632E617063000001 0101
.enddata
.head 2 -  Outline Window State: Maximized
.head 2 +  Outline Window Location and Size
.data VIEWINFO
0000: 6600020003001B00 0000000000000000 0000003298190500 1D00FFFF4D61696E
0020: 0029000100040000 00000000001027E6 1300008600FFFF49 6E7465726E616C20
0040: 46756E6374696F6E 7300
.enddata
.data VIEWSIZE
0000: 4A00
.enddata
.head 3 -  Left: -0.013"
.head 3 -  Top: 0.0"
.head 3 -  Width:  8.013"
.head 3 -  Height: 4.969"
.head 2 +  Options Box Location
.data VIEWINFO
0000: E4184006B80B2A00
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
.head 3 -  Left: 0.575"
.head 3 -  Top: 0.094"
.head 3 -  Width:  5.063"
.head 3 -  Height: 2.719"
.head 2 +  Tool Palette Location
.head 3 -  Visible? No
.head 3 -  Left: 7.95"
.head 3 -  Top: 2.323"
.head 2 -  Fully Qualified External References? Yes
.head 2 -  Reject Multiple Window Instances? No
.head 2 -  Enable Runtime Checks Of External References? Yes
.head 2 -  Use Release 4.0 Scope Rules? No
.head 2 -  Edit Fields Read Only On Disable? No
.head 1 +  Libraries
.head 2 -  Dynalib: Dyna_Vars_INI.apd
.head 2 -  Dynalib: Dyna_Vars_Gnrl.apd
.head 2 -  Dynalib: Dyna_Vars_Tmp.apd
.head 2 -  Dynalib: Dyna_Vars_GHS.apd
.head 2 -  Dynalib: Dyna_MultiDB.apd
.head 2 -  Dynalib: Dyna_Config.apd
.head 2 -  Dynalib: Dyna_Misc.apd
.head 2 -  Dynalib: Dyna_Profile.apd
.head 2 -  Dynalib: Dyna_BewPlan.apd
.head 2 -  Dynalib: Dyna_HelthStatFnc.apd
.head 2 -  Dynalib: Dyna_RelShipFnc.apd
.head 2 -  Dynalib: Dyna_VersionFnc.APD
.head 2 -  Dynalib: dyna_file_n_str.apd
.head 2 -  Dynalib: dyna_OnEvent.apd
.head 2 -  Dynalib: dyna_notif.apd
.head 2 -  ! !!!!! File Include: age_fnc.apl
.head 2 -  ! ------------------------------------------------
.head 2 -  File Include: VTSTR.APL
.head 2 -  File Include: VTMISC.APL
.head 2 -  File Include: CONST_User.apl
.head 2 -  File Include: InternalRouter.apl
.head 2 -  File Include: Culling.apl
.head 2 -  ! ------------------------------------------------
.head 2 -  File Include: BarCode_Func.apl
.head 2 -  ! File Include: ClientSetup.apl
.head 2 -  Dynalib: Dyna_InitFnc.apd
.head 2 -  Dynalib: Dyna_userinit.apd
.head 2 -  Dynalib: smartlabel.apd
.head 2 -  File Include: bewplan_structs.apl
.head 2 -  Dynalib: Dyna_BewPlanModify.apd
.head 2 -  File Include: mtbl_cut.apl
.head 2 -  Dynalib: dyna_routine.apd
.head 2 -  Dynalib: excelexport.apd
.head 2 -  File Include: cls_sortfilterdlg.apl
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
.head 3 -  Number: ###000;'($'###000')'
.head 3 -  Date/Time: hh:mm:ss AMPM
.head 3 -  Date/Time: dd.MM.yy
.head 3 -  Date/Time: dd.MM.yyyy
.head 3 -  Date/Time: dd-MMM-yyyy
.head 3 -  Date/Time: MMM d, yyyy
.head 3 -  Date/Time: MMM d, yyyy hh:mm AMPM
.head 3 -  Date/Time: MMMM d, yyyy hh:mm AMPM
.head 3 -  Number: #000
.head 3 -  Number: #000
.head 3 -  Date/Time: dd.MM.yyyy hhhh:mm:ss
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
.head 3 -  Enumerations
.head 2 +  Resources
.head 2 +  Variables
.head 2 +  Internal Functions
.head 3 +  Function: Bewegung_DoInsert	! __Exported
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  String: sSchema
.head 5 -  Number: nEID
.head 5 -  Number: nFallKey
.head 5 -  Number: nBew_Nr
.head 5 -  Date/Time: dtBewZeit
.head 5 -  String: sBA_Key
.head 5 -  String: sBG1_Key
.head 5 -  String: sBG2_Key
.head 5 -  String: sAbtKey
.head 5 -  String: sStatKey
.head 5 -  String: sGruppeKey
.head 5 -  String: sBettKey
.head 5 -  String: sTelefon
.head 5 -  String: sTV
.head 5 -  ! Long String: lsInfo
.head 5 -  String: sBegruendung
.head 5 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  FunctionalVar: oBewegung
.head 6 -  Class: clsBewegungActions
.head 5 -  Sql Handle: hSqlCadavers
.head 5 -  Number: nFetch
.head 5 -  Number: nRet
.head 5 -  Number: nCullingID
.head 5 -  String: sType
.head 5 -  String: sCadavers
.head 5 -  String: sReason1
.head 5 -  String: sReason2
.head 5 -  String: sReas_Cull
.head 5 -  String: sMeth_Cull
.head 5 -  Boolean: bOk
.head 5 -  String: sRfid
.head 5 -  Number: nTemp
.head 4 +  Actions
.head 5 -  Return oBewegung.DoInsert(
	sSchema, nEID, nFallKey, nBew_Nr, dtBewZeit,
	sBA_Key, sBG1_Key, sBG2_Key,
	sAbtKey, sStatKey, sGruppeKey, sBettKey,
	sTelefon, sTV, sBegruendung, nAnswerMode )
.head 5 +  ! If sBewPref[0] !=sStatKey or sBewPref[1] !=sGruppeKey
.head 6 +  If not GalConnect(hSqlCadavers)
.head 7 -  Return 0
.head 6 -  Set sCadavers= "  select ct.action, c.reason1, c.reason2, c.reason_culling, c.method_culling
		from cadavers c, cadavers_types ct
		where  c.rack='"||sStatKey||"'
		and c.cage='"||sGruppeKey||"'
		and c.type=ct.ID
		into :sType, :sReason1, :sReason2 , :sReas_Cull, :sMeth_Cull"
.head 6 -  Set bOk = SqlPrepareAndExecute( hSqlCadavers, sCadavers )
.head 6 +  While bOk and SqlFetchNext( hSqlCadavers, nFetch )
.head 7 -  Break 
.head 6 -  Call SqlDisconnect( hSqlCadavers )
.head 5 +  ! Else
.head 6 -  Set sType=sBewPref[2]
.head 6 -  Set sRfid=sBewPref[3]
.head 6 -  Set sReason1=sBewPref[4]
.head 6 -  Set sReason2=sBewPref[5]
.head 6 -  Set sReas_Cull=sBewPref[6]
.head 6 -  Set sMeth_Cull=sBewPref[7]
.head 6 -  Set nTemp = SalStrToNumber( sBewPref[8] )
.head 5 +  ! If sType
.head 6 +  If SalStrLength(sBA_Key)>2
.head 7 -  Return 0
.head 6 -  Set sBA_Key = sBA_Key||'C'
.head 6 -  Set nRet=oBewegung.DoInsert(
	sSchema, nEID, nFallKey, nBew_Nr, dtBewZeit,
	sBA_Key, sBG1_Key, sBG2_Key,
	sAbtKey, sStatKey, sGruppeKey, sBettKey,
	sTelefon, sTV, sBegruendung, nAnswerMode )
.head 6 -  Set sBG1_Key = sReason1
.head 6 -  Set sBG2_Key = sReason2
.head 6 +  If sType="DISCHARG"
.head 7 -  Set nCullingID = CullingCheckExistance(  nEID, nFallKey)
.head 7 +  If nCullingID=0 or nCullingID=NUMBER_Null
.head 8 -  Set nCullingID = CullingCreate( dtBewZeit, sReas_Cull, sMeth_Cull )
.head 8 -  Call CullingAddCase(  nCullingID, dtBewZeit,nEID, nFallKey)
.head 7 -  Set nBew_Nr=nRet+1
.head 7 -  Set oBewegung.bInitialized= FALSE
.head 7 -  Set sBA_Key ="EE"
.head 7 -  Set dtBewZeit=dtBewZeit + 1/86400
.head 7 -  Call oBewegung.DoInsert(
	sSchema, nEID, nFallKey, 0, dtBewZeit,
	sBA_Key, sBG1_Key, sBG2_Key,
	sAbtKey, sStatKey, sGruppeKey, sBettKey,
	sTelefon, sTV, sBegruendung, nAnswerMode )
.head 6 +  Else If sType= "CULLING"
.head 7 -  Set nCullingID = CullingCheckExistance(  nEID, nFallKey)
.head 7 +  If nCullingID=0 or nCullingID=NUMBER_Null
.head 8 -  Set nCullingID = CullingCreate( dtBewZeit, sReas_Cull, sMeth_Cull )
.head 8 -  Call CullingAddCase(  nCullingID, dtBewZeit,nEID, nFallKey)
.head 5 +  ! Else
.head 6 +  If SalStrLength(sBA_Key)=2
.head 7 +  If (sBewPref[0] !=sStatKey or sBewPref[1] !=sGruppeKey) and bWithHolder
.head 8 +  If not GalConnect(hSqlCadavers)
.head 9 -  Return 0
.head 8 -  Set sCadavers= "
select  RFID, TEMP_CAGE
from  GRUPPE
where   	EINRICHT_ID=:nEinrichtId	
	and STAT_KEY = '"||sStatKey||"'
	and	GRUPPE_KEY = '"||sGruppeKey||"'

into :sRfid, :nTemp
"
.head 8 -  Set bOk = SqlPrepareAndExecute( hSqlCadavers, sCadavers )
.head 8 +  While bOk and SqlFetchNext( hSqlCadavers, nFetch )
.head 9 -  Break 
.head 8 -  Call SqlDisconnect( hSqlCadavers )
.head 8 +  If sRfid='' and nTemp != 1
.head 9 -  Call SalMessageBox('Target cage is not registered!', 'Warning',0)
.head 9 -  Set sBewPref[0]=STRING_Null
.head 9 -  Set sBewPref[1]=STRING_Null
.head 9 -  Set sBewPref[2]=STRING_Null
.head 9 -  Set sBewPref[3]=STRING_Null
.head 9 -  Set sBewPref[4]=STRING_Null
.head 9 -  Set sBewPref[5]=STRING_Null
.head 9 -  Set sBewPref[6]=STRING_Null
.head 9 -  Set sBewPref[7]=STRING_Null
.head 9 -  Set sBewPref[8]=STRING_Null
.head 9 -  Return 0
.head 7 +  Else 
.head 8 +  If sRfid='' and bWithHolder and nTemp != 1
.head 9 -  Set sBewPref[0]=STRING_Null
.head 9 -  Set sBewPref[1]=STRING_Null
.head 9 -  Set sBewPref[2]=STRING_Null
.head 9 -  Set sBewPref[3]=STRING_Null
.head 9 -  Set sBewPref[4]=STRING_Null
.head 9 -  Set sBewPref[5]=STRING_Null
.head 9 -  Set sBewPref[6]=STRING_Null
.head 9 -  Set sBewPref[7]=STRING_Null
.head 9 -  Set sBewPref[8]=STRING_Null
.head 9 -  Return 0
.head 6 -  Set nRet=oBewegung.DoInsert(
	sSchema, nEID, nFallKey, nBew_Nr, dtBewZeit,
	sBA_Key, sBG1_Key, sBG2_Key,
	sAbtKey, sStatKey, sGruppeKey, sBettKey,
	sTelefon, sTV, sBegruendung, nAnswerMode )
.head 5 -  ! Set sBewPref[0]=sStatKey
.head 5 -  ! Set sBewPref[1]=sGruppeKey
.head 5 -  ! Set sBewPref[2]=sType
.head 5 -  ! Set sBewPref[3]=sRfid
.head 5 -  ! Set sBewPref[4]=sReason1
.head 5 -  ! Set sBewPref[5]=sReason2
.head 5 -  ! Set sBewPref[6]=sReas_Cull
.head 5 -  ! Set sBewPref[7]=sMeth_Cull
.head 5 -  ! Set sBewPref[8]=SalNumberToStrX( nTemp, 0 )
.head 5 -  ! Return nRet
.head 3 +  Function: Bewegung_DoInsert_ForSession ! __Exported
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  Session Handle: hSession
.head 5 -  String: sSchema
.head 5 -  Number: nEID
.head 5 -  Number: nFallKey
.head 5 -  Number: nBew_Nr
.head 5 -  Date/Time: dtBewZeit
.head 5 -  String: sBA_Key
.head 5 -  String: sBG1_Key
.head 5 -  String: sBG2_Key
.head 5 -  String: sAbtKey
.head 5 -  String: sStatKey
.head 5 -  String: sGruppeKey
.head 5 -  String: sBettKey
.head 5 -  String: sTelefon
.head 5 -  String: sTV
.head 5 -  ! Long String: lsInfo
.head 5 -  String: sBegruendung
.head 5 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  FunctionalVar: oBewegung
.head 6 -  Class: clsBewegungActions
.head 5 -  Sql Handle: hSqlCadavers
.head 5 -  Number: nFetch
.head 5 -  Number: nRet
.head 5 -  Number: nCullingID
.head 5 -  String: sType
.head 5 -  String: sCadavers
.head 5 -  String: sReason1
.head 5 -  String: sReason2
.head 5 -  String: sReas_Cull
.head 5 -  String: sMeth_Cull
.head 5 -  Boolean: bOk
.head 5 -  String: sRfid
.head 5 -  Number: nTemp
.head 5 -  Number: nReturn
.head 4 +  Actions
.head 5 -  Call oBewegung.SetSession(hSession)
.head 5 -  Set nReturn = oBewegung.DoInsert(
	sSchema, nEID, nFallKey, nBew_Nr, dtBewZeit,
	sBA_Key, sBG1_Key, sBG2_Key,
	sAbtKey, sStatKey, sGruppeKey, sBettKey,
	sTelefon, sTV, sBegruendung, nAnswerMode )
.head 5 -  Call oBewegung.SetSession(hWndNULL)
.head 5 -  Return nReturn
.head 3 +  Function: Bewegung_DoInsertPlan	! __Exported
.head 4 -  Description: Inserts new BEWEGUNG_PLAN record
whith nessesary checks before and after insert
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  String: sSchema
.head 5 -  Number: nEID
.head 5 -  Number: nFallKey
.head 5 -  Number: nBew_Nr
.head 5 -  Date/Time: dtBewZeit
.head 5 -  String: sBA_Key
.head 5 -  String: sBG1_Key
.head 5 -  String: sBG2_Key
.head 5 -  String: sAbtKey
.head 5 -  String: sStatKey
.head 5 -  String: sGruppeKey
.head 5 -  String: sBettKey
.head 5 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  FunctionalVar: oBewegung
.head 6 -  Class: clsBewegungActions
.head 4 +  Actions
.head 5 -  Return oBewegung.DoInsertPlan(  
	sSchema, nEID, nFallKey, nBew_Nr, dtBewZeit, 
	sBA_Key, sBG1_Key, sBG2_Key, 
	sAbtKey, sStatKey, sGruppeKey, sBettKey,
	nAnswerMode )
.head 3 +  Function: Bewegung_DoInsertPlanX2	! __Exported
.head 4 -  Description: Inserts new BEWEGUNG_PLAN record
whith nessesary checks before and after insert, with logging to LT tables and without Commit
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  String: sSchema
.head 5 -  Number: nEID
.head 5 -  Number: nFallKey
.head 5 -  Number: nBew_Nr
.head 5 -  Date/Time: dtBewZeit
.head 5 -  String: sBA_Key
.head 5 -  String: sBG1_Key
.head 5 -  String: sBG2_Key
.head 5 -  String: sAbtKey
.head 5 -  String: sStatKey
.head 5 -  String: sGruppeKey
.head 5 -  String: sBettKey
.head 5 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 5 -  Sql Handle: hSql
.head 5 -  Number: nLT
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  FunctionalVar: oBewegung
.head 6 -  Class: clsBewegungActions
.head 4 +  Actions
.head 5 -  Return oBewegung.DoInsertPlanX2(  
	sSchema, nEID, nFallKey, nBew_Nr, dtBewZeit, 
	sBA_Key, sBG1_Key, sBG2_Key, 
	sAbtKey, sStatKey, sGruppeKey, sBettKey,
	nAnswerMode, hSql, nLT )
.head 3 +  Function: Bewegung_DoInsertPlanX	! __Exported
.head 4 -  Description: Inserts new BEWEGUNG_PLAN record
WITHOUT ANY check before or after insert
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  String: sSchema
.head 5 -  Number: nEID
.head 5 -  Number: nFallKey
.head 5 -  Number: nBew_Nr
.head 5 -  Date/Time: dtBewZeit
.head 5 -  String: sBA_Key
.head 5 -  String: sBG1_Key
.head 5 -  String: sBG2_Key
.head 5 -  String: sAbtKey
.head 5 -  String: sStatKey
.head 5 -  String: sGruppeKey
.head 5 -  String: sBettKey
.head 5 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  FunctionalVar: oBewegung
.head 6 -  Class: clsBewegungActions
.head 4 +  Actions
.head 5 -  Return oBewegung.DoInsertPlanWithoutChecks(  
	sSchema, nEID, nFallKey, nBew_Nr, dtBewZeit, 
	sBA_Key, sBG1_Key, sBG2_Key, 
	sAbtKey, sStatKey, sGruppeKey, sBettKey,
	nAnswerMode )
.head 3 +  Function: Bewegung_DoDelete	! __Exported
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  String: sSchema
.head 5 -  Number: nEID
.head 5 -  Number: nFallKey
.head 5 -  Number: nBew_Nr
.head 5 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  FunctionalVar: oBewegung
.head 6 -  Class: clsBewegungActions
.head 4 +  Actions
.head 5 -  Call SalMessageBox("Sorry, movement deleting disabled now", "Error", 0)
.head 5 -  Return FALSE
.head 5 -  Return oBewegung.DoDelete( sSchema, nEID, nFallKey, nBew_Nr, nAnswerMode )
.head 3 +  Function: Bewegung_DoUpdate	! __Exported
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  String: sSchema
.head 5 -  Number: nEID
.head 5 -  Number: nFallKey
.head 5 -  Number: nBew_Nr
.head 5 -  Date/Time: dtBewZeit
.head 5 -  String: sBA_Key
.head 5 -  String: sBG1_Key
.head 5 -  String: sBG2_Key
.head 5 -  String: sAbtKey
.head 5 -  String: sStatKey
.head 5 -  String: sGruppeKey
.head 5 -  String: sBettKey
.head 5 -  String: sTelefon
.head 5 -  Boolean: bUpg_Tel
.head 5 -  String: sTV
.head 5 -  Boolean: bUpg_TV
.head 5 -  Long String: lsInfo
.head 5 -  Boolean: bUpg_Info
.head 5 -  String: sBegruendung
.head 5 -  Boolean: bUpg_Begr
.head 5 -  ! String: sGeloescht
.head 5 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  FunctionalVar: oBewegung
.head 6 -  Class: clsBewegungActions
.head 4 +  Actions
.head 5 -  Call SalMessageBox("Sorry, movement editing disabled now", "Error", 0)
.head 5 -  Return FALSE
.head 5 -  Return oBewegung.DoUpdate( 
	sSchema, nEID, nFallKey, nBew_Nr, dtBewZeit, 
	sBA_Key, sBG1_Key, sBG2_Key,
	sAbtKey, sStatKey, sGruppeKey, sBettKey, 
	sTelefon, bUpg_Tel, sTV, bUpg_TV, 
	lsInfo, bUpg_Info, sBegruendung, bUpg_Begr, nAnswerMode, FALSE )
.head 3 +  Function: Bewegung_DoUpdateX	! __Exported
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  String: sSchema
.head 5 -  Number: nEID
.head 5 -  Number: nFallKey
.head 5 -  Number: nBew_Nr
.head 5 -  Date/Time: dtBewZeit
.head 5 -  String: sBA_Key
.head 5 -  String: sBG1_Key
.head 5 -  String: sBG2_Key
.head 5 -  String: sAbtKey
.head 5 -  String: sStatKey
.head 5 -  String: sGruppeKey
.head 5 -  String: sBettKey
.head 5 -  String: sTelefon
.head 5 -  Boolean: bUpg_Tel
.head 5 -  String: sTV
.head 5 -  Boolean: bUpg_TV
.head 5 -  Long String: lsInfo
.head 5 -  Boolean: bUpg_Info
.head 5 -  String: sBegruendung
.head 5 -  Boolean: bUpg_Begr
.head 5 -  ! String: sGeloescht
.head 5 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 5 -  Boolean: bForceCheck
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  FunctionalVar: oBewegung
.head 6 -  Class: clsBewegungActions
.head 4 +  Actions
.head 5 -  Call SalMessageBox("Sorry, movement editing disabled now", "Error", 0)
.head 5 -  Return FALSE
.head 5 -  Return oBewegung.DoUpdate( 
	sSchema, nEID, nFallKey, nBew_Nr, dtBewZeit, 
	sBA_Key, sBG1_Key, sBG2_Key,
	sAbtKey, sStatKey, sGruppeKey, sBettKey, 
	sTelefon, bUpg_Tel, sTV, bUpg_TV, 
	lsInfo, bUpg_Info, sBegruendung, bUpg_Begr, nAnswerMode, bForceCheck )
.head 3 -  !
.head 3 +  Function: Bew_GetFall_InPlaceOnDate		! __Exported
.head 4 -  Description: Finds and returns any existing (the first one from a result set) FALL_KEY
which occupies the specified bed at the specified time.
srpAbtKey, srpStatKey, srpGrpKey, srpBettKey could be empty;
they are receive parameters to return founded place.
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  Date/Time: dtpGetOnDate
.head 5 -  Receive String: srpAbtKey
.head 5 -  Receive String: srpStatKey
.head 5 -  Receive String: srpGrpKey
.head 5 -  Receive String: srpBettKey
.head 5 -  Receive Number: nrpLE_Id
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bIsRealBew
.head 5 -  Date/Time: dtBewZeit
.head 5 -  Number: nFall_Key_onBed
.head 5 -  Number: nBew_Lock_Nr
.head 4 +  Actions
.head 5 -  Set nBew_Lock_Nr = Bew_GetFall_InPlaceOnDateX( 
		TRUE, dtpGetOnDate, srpAbtKey, srpStatKey, srpGrpKey, srpBettKey, 
		nrpLE_Id, nFall_Key_onBed, bIsRealBew, dtBewZeit )
.head 5 +  If Not nBew_Lock_Nr
.head 6 -  Set nFall_Key_onBed = 0
.head 5 -  Return nFall_Key_onBed
.head 3 +  Function: Bew_GetFall_InPlaceOnDateX	! __Exported
.head 4 -  Description: Returns BEWEGUNG.BEW_NR  or BETT_LOCKS.LOCK_ID
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  Boolean: bRealOnly
.head 5 -  Date/Time: dtpGetOnDate
.head 5 -  Receive String: srpAbtKey
.head 5 -  Receive String: srpStatKey
.head 5 -  Receive String: srpGrpKey
.head 5 -  Receive String: srpBettKey
.head 5 -  Receive Number: nrpLE_Id
.head 5 -  Receive Number: nrpFall_Key_onBed
.head 5 -  Receive Number: nrpTypeOfResult	! -1 - LOCK; 0 - PLAN; 1 - BEW
.head 5 -  Receive Date/Time: dtrpBewZeit
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 5 -  Sql Handle: hSql
.head 5 -  String: sSql
.head 5 -  Number: nFetch
.head 5 -  Number: nLock_Id
.head 5 -  Number: nBewNr
.head 5 -  Number: nBewPlanNr
.head 5 -  String: sBA_Key_Plan
.head 5 -  Number: nFall_Key_onBed_Beweg
.head 5 -  Number: nFall_Key_onBed_BedLock
.head 5 -  Date/Time: dtBewZeit
.head 5 -  Date/Time: dtBewZeitBis
.head 5 -  Date/Time: dtBewZeit_Plan
.head 5 -  String: sBL_AbtKey
.head 5 -  String: sBL_StatKey
.head 5 -  String: sBL_GrpKey
.head 5 -  String: sBL_BettKey
.head 5 -  Boolean: bFound
.head 5 -  Number: nResultNr
.head 5 -  Boolean: bWithLog
.head 4 +  Actions
.head 5 +  If srpGrpKey And Not srpStatKey
.head 6 -  Return 0
.head 5 +  If srpBettKey And ( Not srpStatKey Or Not srpGrpKey )
.head 6 -  Return 0
.head 5 +  If Not GalConnect( hSql )
.head 6 -  Return 0
.head 5 +  !
.head 6 -  ! "
select	@substring( '{' || @string( f.FALL_KEY, 0 ) || '} ' || f.NAME1 || ', ' || l.SV_NR || ', ' || f.NAME3 || ', ' || gs.GESCHL_ABR || ', ' ||
	@datetochar(f.GEB_DATUM, 'DD.MM.YYYY') || ', ' || a.TELEFAX || ', ' || l.PHENOTYPE || ',  ' || l.GENOTYPE, 0, 254 ),
	l.GESCHL, b.ABT_KEY, '  {' || @string( f.FALL_KEY, 0 ) || '} ', l.TOD_DATUM, l.INFO
from	BEWEGUNG b, FALL f, LE l, GESCHLECHT gs, ADRESSE a
where	f.EINRICHT_ID = :nEinrichtId
and	f.GELOESCHT = 'N'
and	f.STATUS = 'A'
and	b.EINRICHT_ID = :nEinrichtId
and	b.FALL_KEY = f.FALL_KEY
and 	b.BETT_KEY= '" || sBettKey || "'
and	b.GRUPPE_KEY = '" || sGrpKey || "'
and	b.STAT_KEY = '" || sStatKey || "'
and	b.GELOESCHT = 'N'
and	b.BA_KEY in ( 'AE', 'VE', 'UE', 'RE' )
and	b.BEW_ZEIT <= :dtKHK_RefreshTime
and	@nullvalue( b.BEW_ZEIT_BIS, @datevalue('2222-12-31') ) > :dtKHK_RefreshTime
and	l.LE_ID = f.LE_ID
and	a.ADRESSE_ID = l.ADRESSE_ID
and         gs.GESCHL_KEY = l.GESCHL
order by b.bew_zeit desc
into	:s[1], :s[2], :s[3], :s[4], :dt[1], :s[5]
"
.head 5 +  !
.head 6 -  ! Set sSql = "
select	f.FALL_KEY, f.LE_ID, b.ABT_KEY, b.STAT_KEY, b.GRUPPE_KEY, b.BETT_KEY
into	:nFall_Key_onBed, :nrpLE_Id, :srpAbtKey, :srpStatKey, :srpGrpKey, :srpBettKey
from	BEWEGUNG b
where	b.EINRICHT_ID = " || StrX( nEinrichtId ) || "
   and	b.GELOESCHT = 'N'
   and	b.BA_KEY in ( 'AE', 'VE', 'UE', 'RE' )
   and	b.BEW_ZEIT <= :dtpGetOnDate
   and	( b.BEW_ZEIT_BIS is null
	or
	b.BEW_ZEIT_BIS > :dtpGetOnDate ) "
.head 6 -  ! Set sSql = sSql || "
   and	b.FALL_KEY in (
		select	f.FALL_KEY
		from	FALL f
		where	f.EINRICHT_ID = " || StrX( nEinrichtId ) || "
		     and	f.GELOESCHT = 'N'
		     and	f.STATUS = 'A'
		)  "
.head 5 -  Set bWithLog = FALSE
.head 5 +  If bWithLog
.head 6 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "Started. bRealOnly=" || StrX(bRealOnly) )
.head 6 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "srpAbtKey=" || srpAbtKey )
.head 6 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "srpStatKey=" || srpStatKey )
.head 6 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "srpGrpKey=" || srpGrpKey )
.head 6 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "srpBettKey=" || srpBettKey )
.head 5 -  Set nResultNr = 0
.head 5 -  Set nBewNr = Bew_GetBew_InPlaceOnDate( 
		hSql, dtpGetOnDate, 
		srpAbtKey, srpStatKey, srpGrpKey, srpBettKey, 
		nrpLE_Id, nFall_Key_onBed_Beweg, dtBewZeit, dtBewZeitBis )
.head 5 +  If bWithLog
.head 6 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "nBewNr=" || StrX(nBewNr) )
.head 6 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "nFall_Key_onBed_Beweg=" || StrX(nFall_Key_onBed_Beweg) )
.head 6 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "dtBewZeit=" || SalFmtFormatDateTime( dtBewZeit, 'dd.MM.yyyy hhhh:mm:ss' ) )
.head 6 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "dtBewZeitBis=" || SalFmtFormatDateTime( dtBewZeitBis, 'dd.MM.yyyy hhhh:mm:ss' ) )
.head 5 +  If bRealOnly
.head 6 +  If nFall_Key_onBed_Beweg
.head 7 -  Set nrpFall_Key_onBed = nFall_Key_onBed_Beweg
.head 7 -  Set dtrpBewZeit = dtBewZeit
.head 7 -  Set nrpTypeOfResult = 1
.head 7 -  Set nResultNr = nBewNr
.head 6 +  Else
.head 7 +  If bWithLog
.head 8 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "Search for the Pure BETT_LOCK..." )
.head 7 -  Set nLock_Id = BLock_GetPureLock_InPlaceOnDate( hSql, dtpGetOnDate, srpStatKey, srpGrpKey, srpBettKey, dtBewZeit, dtBewZeitBis )
.head 7 +  If nLock_Id
.head 8 -  Set nrpFall_Key_onBed = 0
.head 8 -  Set nrpLE_Id = 0
.head 8 -  Set dtrpBewZeit = dtBewZeit
.head 8 -  Set nrpTypeOfResult = -1
.head 8 -  Set nResultNr = nLock_Id
.head 8 +  If bWithLog
.head 9 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "nLock_Id=" || StrX(nLock_Id) )
.head 9 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "dtBewZeit=" || SalFmtFormatDateTime( dtBewZeit, 'dd.MM.yyyy hhhh:mm:ss' ) )
.head 7 +  Else
.head 8 +  If bWithLog
.head 9 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "BETT_LOCK was not found" )
.head 8 -  Set nrpFall_Key_onBed = 0
.head 8 -  Set nrpLE_Id = 0
.head 8 -  Set nResultNr = 0
.head 6 -  Set bFound = TRUE
.head 5 +  Else
.head 6 +  If nFall_Key_onBed_Beweg
.head 7 +  If dtBewZeitBis
.head 8 -  ! Next Bewegung exists, so, we should not search for PLAN
.head 8 -  Set nrpFall_Key_onBed = nFall_Key_onBed_Beweg
.head 8 -  Set dtrpBewZeit = dtBewZeit
.head 8 -  Set nrpTypeOfResult = 1
.head 8 -  Set nResultNr = nBewNr
.head 8 -  Set bFound = TRUE
.head 8 +  If bWithLog
.head 9 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "dtBewZeitBis exists, so, the rerurn is BEWEGUNG" )
.head 7 +  Else
.head 8 +  If bWithLog
.head 9 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "Search for the BEW_PLAN for the FALL..." )
.head 8 -  ! Check whethere this fall will still be there or it is going to be moved
.head 8 -  Set nBewPlanNr = BewPlan_GetBew_4FallOnDate( 
		hSql, dtpGetOnDate, nFall_Key_onBed_Beweg, dtBewZeit_Plan, sBA_Key_Plan )
.head 8 +  If nBewPlanNr
.head 9 -  ! that means ths FALL is planning to be closed or moved to another place
.head 9 -  Set nFall_Key_onBed_Beweg = 0
.head 9 -  Set nrpLE_Id = 0
.head 9 -  Set nBewNr = 0
.head 9 +  If bWithLog
.head 10 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "nBewPlanNr exists, so, BEWEGUNG could not be returned as result." )
.head 8 +  Else
.head 9 -  Set nrpFall_Key_onBed = nFall_Key_onBed_Beweg
.head 9 -  Set dtrpBewZeit = dtBewZeit
.head 9 -  Set nrpTypeOfResult = 1
.head 9 -  Set nResultNr = nBewNr
.head 9 -  Set bFound = TRUE
.head 9 +  If bWithLog
.head 10 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "nBewPlanNr does not exists, so, the rerurn is BEWEGUNG" )
.head 6 -  !
.head 6 +  If Not bFound
.head 7 +  If bWithLog
.head 8 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "Search for the BEW_PLAN/BETT_LOCK for the pace..." )
.head 7 -  Set nLock_Id = BLock_GetLock_InPlaceOnDate( hSql, dtpGetOnDate, srpAbtKey, srpStatKey, srpGrpKey, srpBettKey, nFall_Key_onBed_BedLock, nBewPlanNr, dtBewZeit_Plan )
.head 7 +  If nLock_Id
.head 8 +  If bWithLog
.head 9 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "nLock_Id=" || StrX(nLock_Id) )
.head 9 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "nFall_Key_onBed_BedLock=" || StrX(nFall_Key_onBed_BedLock) )
.head 9 -  Call Log( 'Bew_GetFall_InPlaceOnDateX.txt', "dtBewZeit_Plan=" || SalFmtFormatDateTime( dtBewZeit_Plan, 'dd.MM.yyyy hhhh:mm:ss' ) )
.head 8 +  If nFall_Key_onBed_BedLock
.head 9 -  Set bOk = SqlPrepareAndExecute( hSql, "
select	LE_ID
into	:nrpLE_Id
from	FALL
where	EINRICHT_ID = " || StrX( nEinrichtId ) || "
   and	FALL_KEY = " || StrX( nFall_Key_onBed_BedLock ) || " " )
.head 9 -  Set bOk = bOk And SqlFetchNext( hSql, nFetch )
.head 8 -  Set nrpFall_Key_onBed = nFall_Key_onBed_BedLock
.head 8 -  Set dtrpBewZeit = dtBewZeit_Plan
.head 8 +  If nBewPlanNr
.head 9 -  Set nResultNr = nBewPlanNr
.head 9 -  Set nrpTypeOfResult = 0
.head 8 +  Else
.head 9 -  Set nResultNr = nLock_Id
.head 9 -  Set nrpTypeOfResult = -1
.head 8 -  Set bFound = TRUE
.head 5 -  !
.head 5 -  Call SqlDisconnect( hSql )
.head 5 -  Return nResultNr
.head 3 +  Function: BewPlan_GetEE			! __Exported
.head 4 -  Description: Returns BewNr of the 'EE' record
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  Number: nEID_Parm
.head 5 -  Number: nFallKey_Parm
.head 5 -  Sql Handle: hSqlParm
.head 5 -  Receive Date/Time: dtPlanEE_Parm
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Sql Handle: hSql
.head 5 -  Boolean: bOk
.head 5 -  Number: nFetch
.head 5 -  Number: nBewPlanNr
.head 4 +  Actions
.head 5 +  If hSqlParm
.head 6 -  Set hSql = hSqlParm
.head 5 +  Else
.head 6 +  If Not GalConnect( hSql )
.head 7 -  Return 0
.head 5 -  Set bOk = SqlPrepareAndExecute( hSql, "
select	bew_nr, bew_zeit
from	BEWEGUNG_PLAN 
where	einricht_id = " || StrX( nEID_Parm ) || "
   and 	fall_key = " || StrX( nFallKey_Parm ) || "
   and 	ba_key = 'EE'
into	:nBewPlanNr, :dtPlanEE_Parm " )
.head 5 -  Set bOk = bOk And SqlFetchNext( hSql, nFetch )
.head 5 +  If Not hSqlParm
.head 6 -  Call SqlDisconnect( hSql )
.head 5 -  !
.head 5 +  If Not bOk
.head 6 -  Set nBewPlanNr = 0
.head 6 -  Set dtPlanEE_Parm = DATETIME_Null
.head 5 -  Return nBewPlanNr
.head 3 +  Function: BettLock_GetLock_InPlaceOnDate	! __Exported
.head 4 -  Description: Finds and returns any existing (the first one from a result set) BETT_LOCK.LOCK_ID
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  Date/Time: dtpGetOnDate
.head 5 -  Receive String: srpAbtKey
.head 5 -  Receive String: srpStatKey
.head 5 -  Receive String: srpGrpKey
.head 5 -  Receive String: srpBettKey
.head 5 -  Receive Number: nrpFall_Key_onBed
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 5 -  Sql Handle: hSql
.head 5 -  Number: nLock_Id
.head 5 -  Date/Time: dtBewZeit
.head 5 -  Number: nBewPlanNr
.head 4 +  Actions
.head 5 +  If srpGrpKey And Not srpStatKey
.head 6 -  Return 0
.head 5 +  If srpBettKey And ( Not srpStatKey Or Not srpGrpKey )
.head 6 -  Return 0
.head 5 +  If Not GalConnect( hSql )
.head 6 -  Return 0
.head 5 -  Set nLock_Id = BLock_GetLock_InPlaceOnDate( hSql, dtpGetOnDate, srpAbtKey, srpStatKey, srpGrpKey, srpBettKey, nrpFall_Key_onBed, nBewPlanNr, dtBewZeit )
.head 5 -  Call SqlDisconnect( hSql )
.head 5 -  Return nLock_Id
.head 3 -  !
.head 3 +  Function: Bew_GetBew_InPlaceOnDate
.head 4 -  Description: Returns BEW_NR
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  Sql Handle: hSql
.head 5 -  Date/Time: dtpGetOnDate
.head 5 -  Receive String: srpAbtKey
.head 5 -  Receive String: srpStatKey
.head 5 -  Receive String: srpGrpKey
.head 5 -  Receive String: srpBettKey
.head 5 -  Receive Number: nrpLE_Id
.head 5 -  Receive Number: nrpFallKey_onBed_Bew
.head 5 -  Receive Date/Time: dtrpBewZeit
.head 5 -  Receive Date/Time: dtrpBewZeitBis
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 5 -  String: sSql
.head 5 -  Number: nFetch
.head 5 -  Number: nBewNr
.head 4 +  Actions
.head 5 -  Set sSql = "
select	f.FALL_KEY, f.LE_ID, 
	b.BEW_NR, b.BEW_ZEIT, b.BEW_ZEIT_BIS,
	b.ABT_KEY, b.STAT_KEY, b.GRUPPE_KEY, b.BETT_KEY
into	:nrpFallKey_onBed_Bew, :nrpLE_Id,
	:nBewNr, :dtrpBewZeit, :dtrpBewZeitBis,
	:srpAbtKey, :srpStatKey, :srpGrpKey, :srpBettKey
from	FALL f , BEWEGUNG b
where (	f.EINRICHT_ID = " || StrX( nEinrichtId ) || " 
   and	f.GELOESCHT = 'N'
   and	f.STATUS = 'A' )
   and (	b.EINRICHT_ID = f.EINRICHT_ID 
   and	b.FALL_KEY = f.FALL_KEY and b.bew_nr=f.last_bew_nr)
   and	b.GELOESCHT = 'N'
   and	b.BA_KEY in ( 'AE', 'VE', 'UE', 'RE' )
   and	b.BEW_ZEIT <= :dtpGetOnDate
   and	( b.BEW_ZEIT_BIS is null
	or
	b.BEW_ZEIT_BIS > :dtpGetOnDate ) "
.head 5 +  If srpAbtKey
.head 6 -  Set sSql = sSql || "
   and	b.ABT_KEY = '" || srpAbtKey || "' "
.head 5 +  If srpStatKey
.head 6 -  Set sSql = sSql || "
   and 	b.STAT_KEY = '" || srpStatKey || "' "
.head 5 +  If srpGrpKey
.head 6 -  Set sSql = sSql || "
   and 	b.GRUPPE_KEY = '" || srpGrpKey || "'  "
.head 5 +  If srpBettKey
.head 6 -  Set sSql = sSql || "
   and 	b.BETT_KEY = '" || srpBettKey || "'  "
.head 5 -  Set sSql = sSql || "
order by	b.BEW_ZEIT "
.head 5 -  Set bOk = TRUE
.head 5 -  ! Set bOk = bOk And SqlPrepareAndExecute(hSql, "lock table xlock")
.head 5 -  ! Set bOk =bOk And  SqlPrepareAndExecute(hSql, "lock table fall")
.head 5 -  ! Set bOk =bOk And  SqlPrepareAndExecute(hSql, "lock table bewegung")
.head 5 -  Set sSql = Gal_IR( sSql, MDB_GetServerTypeX( hSql ) )
.head 5 -  Set bOk =bOk And  SqlPrepareAndExecute( hSql, sSql )
.head 5 -  Set bOk = bOk And SqlFetchNext( hSql, nFetch )
.head 5 +  If Not bOk
.head 6 -  Set nrpFallKey_onBed_Bew = 0
.head 6 -  Set nBewNr = 0
.head 6 -  Call SqlPrepareAndExecute( hSql, "rollback" )
.head 5 +  Else
.head 6 -  ! Call SqlCommit(hSql)
.head 5 -  !
.head 5 -  Return nBewNr
.head 3 +  ! Function: Bew_GetBew_InPlaceOnDateX
.head 4 -  Description: Returns BEW_NR
.head 4 +  Returns 
.head 5 -  Number: 
.head 4 +  Parameters 
.head 5 -  Sql Handle: hSql
.head 5 -  Date/Time: dtpGetOnDate
.head 5 -  Receive String: srpAbtKey
.head 5 -  Receive String: srpStatKey
.head 5 -  Receive String: srpGrpKey
.head 5 -  Receive String: srpBettKey
.head 5 -  : parmMovementCollection
.head 5 -  Boolean: bGetAll
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  Boolean: bOk
.head 5 -  String: sSql
.head 5 -  Number: nFetch
.head 5 -  Number: nrpFallKey_onBed_Bew
.head 5 -  Number: nrpLE_Id
.head 5 -  Number: nBewNr
.head 5 -  Date/Time: dtrpBewZeit
.head 5 -  Date/Time: dtrpBewZeitBis
.head 4 +  Actions 
.head 5 -  Set sSql = "
select	f.FALL_KEY, f.LE_ID, 
	b.BEW_NR, b.BEW_ZEIT, b.BEW_ZEIT_BIS,
	b.ABT_KEY, b.STAT_KEY, b.GRUPPE_KEY, b.BETT_KEY
into	:nrpFallKey_onBed_Bew, :nrpLE_Id,
	:nBewNr, :dtrpBewZeit, :dtrpBewZeitBis,
	:srpAbtKey, :srpStatKey, :srpGrpKey, :srpBettKey
from	FALL f , BEWEGUNG b
where (	f.EINRICHT_ID = " || StrX( nEinrichtId ) || "
   and	f.GELOESCHT = 'N'
   and	f.STATUS = 'A' )
   and (	b.EINRICHT_ID = " || StrX( nEinrichtId ) || "
   and	b.FALL_KEY = f.FALL_KEY )
   and	b.GELOESCHT = 'N'
   and	b.BA_KEY in ( 'AE', 'VE', 'UE', 'RE' )
   and	b.BEW_ZEIT <= :dtpGetOnDate
   and	( b.BEW_ZEIT_BIS is null
	or
	b.BEW_ZEIT_BIS > :dtpGetOnDate ) "
.head 5 +  If srpAbtKey
.head 6 -  Set sSql = sSql || "
   and	b.ABT_KEY = '" || srpAbtKey || "' "
.head 5 +  If srpStatKey
.head 6 -  Set sSql = sSql || "
   and 	b.STAT_KEY = '" || srpStatKey || "' "
.head 5 +  If srpGrpKey
.head 6 -  Set sSql = sSql || "
   and 	b.GRUPPE_KEY = '" || srpGrpKey || "'  "
.head 5 +  If srpBettKey
.head 6 -  Set sSql = sSql || "
   and 	b.BETT_KEY = '" || srpBettKey || "'  "
.head 5 -  Set sSql = sSql || "
order by	b.BEW_ZEIT "
.head 5 -  Set sSql = Gal_IR( sSql, MDB_GetServerTypeX( hSql ) )
.head 5 -  Set bOk = SqlPrepareAndExecute( hSql, sSql )
.head 5 -  Set bOk = bOk And SqlFetchNext( hSql, nFetch )
.head 5 +  If Not bOk
.head 6 -  Set nrpFallKey_onBed_Bew = 0
.head 6 -  Set nBewNr = 0
.head 5 -  !
.head 5 -  Return nBewNr
.head 3 +  Function: BLock_GetLock_InPlaceOnDate
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  Sql Handle: hSql
.head 5 -  Date/Time: dtpGetOnDate
.head 5 -  Receive String: srpAbtKey
.head 5 -  Receive String: srpStatKey
.head 5 -  Receive String: srpGrpKey
.head 5 -  Receive String: srpBettKey
.head 5 -  Receive Number: nrpFallKey_onBed_Plan
.head 5 -  Receive Number: nrpBewPlanNr
.head 5 -  Receive Date/Time: dtrpBewZeit
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 5 -  String: sSql
.head 5 -  Number: nFetch
.head 5 -  Number: nLock_Id
.head 4 +  Actions
.head 5 -  Set sSql = "
select	b.LOCK_ID, b.STAT_KEY, b.GRUPPE_KEY, b.BETT_KEY,
	b.PLANBEW_FALL, b.PLANBEW_BEW, b.VON, bp.ABT_KEY
into	:nLock_Id, :srpStatKey, :srpGrpKey, :srpBettKey,
	:nrpFallKey_onBed_Plan, :nrpBewPlanNr, :dtrpBewZeit, :srpAbtKey
from	bett_locks b , BEWEGUNG_PLAN bp
where	b.EINRICHT_ID = " || StrX( nEinrichtId ) || "
   and	b.VON <= :dtpGetOnDate
   and	( b.BIS is null or b.BIS > :dtpGetOnDate )
   and	b.PLANBEW_EINR = bp.EINRICHT_ID (+)
   and	b.PLANBEW_FALL = bp.FALL_KEY (+)
   and	b.PLANBEW_BEW = bp.BEW_NR (+) "
.head 5 +  If srpStatKey
.head 6 -  Set sSql = sSql || "
   and	b.STAT_KEY = '" || srpStatKey || "' "
.head 5 +  If srpGrpKey
.head 6 -  Set sSql = sSql || "
   and 	b.GRUPPE_KEY = '" || srpGrpKey || "'  "
.head 5 +  If srpBettKey
.head 6 -  Set sSql = sSql || "
   and 	b.BETT_KEY = '" || srpBettKey || "'  "
.head 5 -  Set sSql = sSql || "
order by	b.VON desc "
.head 5 -  Set bOk = SqlPrepareAndExecute( hSql, Gal_IR( sSql, MDB_GetServerTypeX( hSql ) ) )
.head 5 -  Set bOk = bOk And SqlFetchNext( hSql, nFetch )
.head 5 +  If Not bOk
.head 6 -  Set nLock_Id = 0
.head 5 -  Return nLock_Id
.head 3 +  Function: BLock_GetPureLock_InPlaceOnDate
.head 4 -  Description: Returns LOCK_ID
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  Sql Handle: hSql
.head 5 -  Date/Time: dtpGetOnDate
.head 5 -  Receive String: srpStatKey
.head 5 -  Receive String: srpGrpKey
.head 5 -  Receive String: srpBettKey
.head 5 -  Receive Date/Time: dtrpBewZeit
.head 5 -  Receive Date/Time: dtrpBewZeitBis
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 5 -  String: sSql
.head 5 -  Number: nFetch
.head 5 -  Number: nLock_Id
.head 4 +  Actions
.head 5 -  Set sSql = "
select	b.LOCK_ID, b.STAT_KEY, b.GRUPPE_KEY, b.BETT_KEY,
	b.VON, b.BIS
into	:nLock_Id, :srpStatKey, :srpGrpKey, :srpBettKey,
	:dtrpBewZeit, :dtrpBewZeitBis
from	bett_locks b
where	b.EINRICHT_ID = " || StrX( nEinrichtId ) || "
   and	b.VON <= :dtpGetOnDate
   and	( b.BIS is null or b.BIS > :dtpGetOnDate )
   and	b.PLANBEW_BEW is null "
.head 5 +  If srpStatKey
.head 6 -  Set sSql = sSql || "
   and	b.STAT_KEY = '" || srpStatKey || "' "
.head 5 +  If srpGrpKey
.head 6 -  Set sSql = sSql || "
   and 	b.GRUPPE_KEY = '" || srpGrpKey || "'  "
.head 5 +  If srpBettKey
.head 6 -  Set sSql = sSql || "
   and 	b.BETT_KEY = '" || srpBettKey || "'  "
.head 5 -  Set sSql = sSql || "
order by	b.VON desc "
.head 5 -  Set bOk = SqlPrepareAndExecute( hSql, Gal_IR( sSql, MDB_GetServerTypeX( hSql ) ) )
.head 5 -  Set bOk = bOk And SqlFetchNext( hSql, nFetch )
.head 5 +  If Not bOk
.head 6 -  Set nLock_Id = 0
.head 5 -  Return nLock_Id
.head 3 +  Function: BewPlan_GetBew_4FallOnDate
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  Sql Handle: hSql
.head 5 -  Date/Time: dtpGetOnDate
.head 5 -  Number: npFall_Key_onBed
.head 5 -  Receive Date/Time: dtrpBewZeit
.head 5 -  Receive String: srpBA_Key
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 5 -  String: sSql
.head 5 -  Number: nFetch
.head 5 -  Number: nBewPlanNr
.head 4 +  Actions
.head 5 -  Set sSql = Gal_IR( "
select	BEW_NR, BEW_ZEIT, BA_KEY
into	:nBewPlanNr, :dtrpBewZeit, :srpBA_Key
from	BEWEGUNG_PLAN
where	EINRICHT_ID = " || StrX( nEinrichtId ) || "
   and	BEW_ZEIT <= :dtpGetOnDate
   and	FALL_KEY = " || StrX( npFall_Key_onBed ) || "
order by	BEW_ZEIT desc, BEW_NR desc ", MDB_GetServerTypeX( hSql ) ) 
.head 5 -  Set bOk = SqlPrepareAndExecute( hSql, sSql)
.head 5 -  Set bOk = bOk And SqlFetchNext( hSql, nFetch )
.head 5 +  If Not bOk
.head 6 -  Set nBewPlanNr = 0
.head 5 -  Return nBewPlanNr
.head 3 +  Function: BewPlan_GetPlace_4FallOnDate
.head 4 -  Description: Returns LOCK_ID
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  Sql Handle: hSql
.head 5 -  Date/Time: dtpGetOnDate
.head 5 -  Receive String: srpAbtKey
.head 5 -  Receive String: srpStatKey
.head 5 -  Receive String: srpGrpKey
.head 5 -  Receive String: srpBettKey
.head 5 -  Number: npFall_Key_onBed
.head 5 -  Receive Date/Time: dtrpBewZeit
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 5 -  String: sSql
.head 5 -  Number: nFetch
.head 5 -  Number: nLock_Id
.head 5 -  String: sBA_Key
.head 4 +  Actions
.head 5 -  Set sSql = Gal_IR( "
select	b.LOCK_ID, bp.BEW_ZEIT, bpBA_KEY, 
	bp.ABT_KEY, b.STAT_KEY, b.GRUPPE_KEY, b.BETT_KEY
into	:nLock_Id, :dtrpBewZeit, :sBA_Key,
	:srpAbtKey, :srpStatKey, :srpGrpKey, :srpBettKey
from	bett_locks b , BEWEGUNG_PLAN bp
where	b.EINRICHT_ID = " || StrX( nEinrichtId ) || "
   and	bp.BEW_ZEIT <= :dtpGetOnDate
   and	( b.BIS is null or b.BIS > :dtpGetOnDate )
   and	b.PLANBEW_EINR = " || StrX( nEinrichtId ) || "
   and	b.PLANBEW_FALL = " || StrX( npFall_Key_onBed ) || "
   and	b.PLANBEW_EINR = bp.EINRICHT_ID
   and	b.PLANBEW_FALL = bp.FALL_KEY
   and	b.PLANBEW_BEW = bp.BEW_NR
order by	bp.BEW_ZEIT desc ", MDB_GetServerTypeX( hSql ) ) 
.head 5 -  Set bOk = SqlPrepareAndExecute( hSql, sSql)
.head 5 -  Set bOk = bOk And SqlFetchNext( hSql, nFetch )
.head 5 +  If bOk
.head 6 +  If sBA_Key = 'EE'
.head 7 -  Set nLock_Id = 0
.head 5 +  Else
.head 6 -  Set nLock_Id = 0
.head 5 -  Return nLock_Id
.head 3 -  !
.head 3 +  Function: Bew_IsBewActionPossible	! __Exported
.head 4 -  Description: Analogue of ChangeBewProc SP/trigger
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Number: nEID2Check
.head 5 -  Number: nFallKey2Check
.head 5 -  String: sFallStatus2Check
.head 5 -  String: sBaKey2Check
.head 5 -  Date/Time: dtBewZeit2Check
.head 5 -  Date/Time: dtBewZeitBis2Check
.head 5 -  String: sStatKey2Check
.head 5 -  String: sGruppeKey2Check
.head 5 -  String: sBettKey2Check
.head 5 -  Sql Handle: hSql_Parm
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sErrInfo_Text
.head 4 +  Actions
.head 5 -  Set sErrInfo_Text = Bew_FindOverlappingWithBew( 
	nEID2Check, nFallKey2Check, sFallStatus2Check,
	sBaKey2Check, dtBewZeit2Check, dtBewZeitBis2Check,
	sStatKey2Check, sGruppeKey2Check, sBettKey2Check, hSql_Parm )
.head 5 +  If Not sErrInfo_Text
.head 6 -  Set sErrInfo_Text = Bew_FindOverlappingWithBettLock( 
	nEID2Check, nFallKey2Check, sFallStatus2Check,
	sBaKey2Check, dtBewZeit2Check, dtBewZeitBis2Check,
	sStatKey2Check, sGruppeKey2Check, sBettKey2Check, hSql_Parm )
.head 5 +  If sErrInfo_Text
.head 6 -  Call SalMessageBox( sErrInfo_Text, 
	GetMessageFromSection( "DYNA_BEWFNC", 5, "Overlapping/Error" ), MB_IconExclamation )
.head 6 -  Return FALSE
.head 5 -  Return TRUE
.head 3 +  Function: Bew_FindOverlappingWithBew	! __Exported
.head 4 -  Description: Analogue of ChangeBewProc SP/trigger - looking for an overlapping for specified parameters
Returns ErrorMsg String (if it is empty - no overlapping found)
.head 4 +  Returns
.head 5 -  String:
.head 4 +  Parameters
.head 5 -  Number: nEID2Check
.head 5 -  Number: nFallKey2Check
.head 5 -  String: sFallStatus2Check
.head 5 -  String: sBaKey2Check
.head 5 -  Date/Time: dtBewZeit2Check
.head 5 -  Date/Time: dtBewZeitBis2Check
.head 5 -  String: sStatKey2Check
.head 5 -  String: sGruppeKey2Check
.head 5 -  String: sBettKey2Check
.head 5 -  Sql Handle: hSql_Parm
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 5 -  Boolean: bOverlapFound
.head 5 -  Number: nErrorNr
.head 5 -  Number: nFetch
.head 5 -  !
.head 5 -  Sql Handle: hSql
.head 5 -  String: sSql2FindOverlapping
.head 5 -  !
.head 5 -  Number: nEID_Overlap
.head 5 -  Number: nFall_Key_Overlap
.head 5 -  String: sBA_Key_Overlap
.head 5 -  Date/Time: dtVon_Overlap
.head 5 -  Date/Time: dtBis_Overlap
.head 5 -  Date/Time: dtPlanBewZeit
.head 5 -  Date/Time: dtAE_Datum_Overlap
.head 5 -  Date/Time: dtAE_Time_Overlap
.head 5 -  Number: nDauer_Overlap
.head 5 -  !
.head 5 -  String: sErrInfo_Text
.head 4 +  Actions
.head 5 +  If Not ((sBaKey2Check = 'AE') Or (sBaKey2Check = 'UE') Or (sBaKey2Check = 'VE') Or (sBaKey2Check = 'RE'))
.head 6 -  Return ''
.head 5 +  If (sStatKey2Check = '') or (sGruppeKey2Check = '') or (sBettKey2Check = '') 
.head 6 -  Return ''
.head 5 -  !
.head 5 -  Call VisWaitCursor( TRUE )
.head 5 -  Set sSql2FindOverlapping = " 
select	b.einricht_id, b.fall_key, b.ba_key, 
	b.bew_zeit, b.bew_zeit_bis, 
	f.ae_datum, f.ae_time, f.dauer
from	bewegung b, fall f  
where	f.geloescht = 'N' 
   and	b.einricht_id = f.einricht_id 
   and	b.fall_key = f.fall_key 
   and	b.stat_key = '" || sStatKey2Check || "'
   and	b.gruppe_key = '" || sGruppeKey2Check || "'
   and	b.bett_key = '" || sBettKey2Check || "'
   and	b.geloescht = 'N' 
   and	b.ba_key in ('AE', 'UE', 'VE', 'RE') 
   and	b.bew_zeit <= :dtBewZeitBis2Check
   and	( b.bew_zeit_bis is null or b.bew_zeit_bis > :dtBewZeit2Check )
"
.head 5 +  If b1Bed4AllEinricht
.head 6 -  Set sSql2FindOverlapping = sSql2FindOverlapping || "
   and	not b.fall_key = " || StrX( nFallKey2Check )
.head 5 +  Else
.head 6 -  Set sSql2FindOverlapping = sSql2FindOverlapping || "
   and	not ( b.einricht_id = " || StrX( nEID2Check ) || " and b.fall_key = " || StrX( nFallKey2Check ) || " ) 
   and	f.einricht_id = " || StrX( nEID2Check ) || " "
.head 5 -  Set sSql2FindOverlapping = sSql2FindOverlapping || " 
into	:nEID_Overlap, :nFall_Key_Overlap, :sBA_Key_Overlap, 
	:dtVon_Overlap, :dtBis_Overlap,
	:dtAE_Datum_Overlap, :dtAE_Time_Overlap, :nDauer_Overlap
"
.head 5 -  !
.head 5 +  If hSql_Parm
.head 6 -  Set hSql = hSql_Parm
.head 5 +  Else
.head 6 +  If Not GalConnect( hSql )
.head 7 -  Return 'GalConnect failed !'
.head 5 -  Set bOk = SqlPrepareAndExecute( hSql, sSql2FindOverlapping )
.head 5 -  Set bOverlapFound = FALSE
.head 5 +  While Not bOverlapFound And bOk And SqlFetchNext( hSql, nFetch )
.head 6 +  If dtBis_Overlap
.head 7 -  Set bOverlapFound = TRUE
.head 6 +  Else
.head 7 +  If sFallStatus2Check ='V' 
.head 8 +  If nDauer_Overlap
.head 9 -  Set dtBis_Overlap = __Calculate_AE( sBA_Key_Overlap, dtVon_Overlap, dtAE_Time_Overlap, dtAE_Time_Overlap ) + nDauer_Overlap
.head 8 +  Else
.head 9 -  Set dtBis_Overlap = SalDateCurrent(  )
.head 7 +  Else
.head 8 -  Set dtPlanBewZeit = PlanBew_GetFirstDate( nEID_Overlap, nFall_Key_Overlap )
.head 8 +  If dtPlanBewZeit
.head 9 -  Set dtBis_Overlap = dtPlanBewZeit
.head 8 +  Else
.head 9 +  Select Case nBewBis_Method
.head 10 +  Case BEWBISNull_UseDauer		! 0
.head 11 +  If nDauer_Overlap
.head 12 -  Set dtBis_Overlap = __Calculate_AE( sBA_Key_Overlap, dtVon_Overlap, dtAE_Time_Overlap, dtAE_Time_Overlap ) + nDauer_Overlap
.head 11 +  Else
.head 12 -  Set bOverlapFound = TRUE
.head 11 -  Break
.head 10 +  Case BEWBISNull_Endless		! 1
.head 11 -  Set bOverlapFound = TRUE
.head 11 -  Break
.head 7 -  !
.head 7 +  If dtBis_Overlap > dtBewZeit2Check
.head 8 -  Set bOverlapFound = TRUE
.head 5 +  If Not bOk Or nFetch > FETCH_EOF
.head 6 -  Set bOk = FALSE
.head 6 -  Set sErrInfo_Text = 'Sql Error happened !'
.head 5 +  If Not hSql_Parm
.head 6 -  Call SqlDisconnect( hSql )
.head 5 -  !
.head 5 -  Call VisWaitCursor( FALSE )
.head 5 +  If bOk And bOverlapFound
.head 6 -  Set bOk = FALSE
.head 6 -  Set sErrInfo_Text = StrIf( bBreedingIsON, 'Place: ', 'Bett: ' ) || sStatKey2Check || '.' || sGruppeKey2Check || '.' || sBettKey2Check || '

'
.head 6 +  If b1Bed4AllEinricht
.head 7 -  Set sErrInfo_Text = sErrInfo_Text  || 'Einricht.: ' || SalNumberToStrX( nEID2Check, 0 ) || ' - '
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || 'Fall: ' || SalNumberToStrX( nFallKey2Check, 0 )
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || ' - Bew_Art: '  || sBaKey2Check
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || ' - Von: ' || SalFmtFormatDateTime( dtBewZeit2Check, 'dd.MM.yyyy hhhh:mm:ss' )
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || ' - Bis: ' || SalFmtFormatDateTime( dtBewZeitBis2Check, 'dd.MM.yyyy hhhh:mm:ss' ) 
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || '
und
'
.head 6 +  If b1Bed4AllEinricht
.head 7 -  Set sErrInfo_Text = sErrInfo_Text  || 'Einricht.: ' || SalNumberToStrX( nEID_Overlap, 0 ) || ' - '
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || 'Fall: ' || SalNumberToStrX( nFall_Key_Overlap, 0 )
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || ' - Bew_Art: '  || sBA_Key_Overlap
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || '  Von: ' || SalFmtFormatDateTime( dtVon_Overlap, 'dd.MM.yyyy hhhh:mm:ss' )
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || '  Bis: ' || SalFmtFormatDateTime( dtBis_Overlap, 'dd.MM.yyyy hhhh:mm:ss' ) 
.head 5 -  !
.head 5 -  Return sErrInfo_Text
.head 3 +  Function: Bew_FindOverlappingWithBettLock	! __Exported
.head 4 -  Description: Analogue of ChangeBewProc SP/trigger - looking for an overlapping for specified parameters
Returns ErrorMsg String (if it is empty - no overlapping found)
.head 4 +  Returns
.head 5 -  String:
.head 4 +  Parameters
.head 5 -  Number: nEID2Check
.head 5 -  Number: nFallKey2Check
.head 5 -  String: sFallStatus2Check
.head 5 -  String: sBaKey2Check
.head 5 -  Date/Time: dtBewZeit2Check
.head 5 -  Date/Time: dtBewZeitBis2Check
.head 5 -  String: sStatKey2Check
.head 5 -  String: sGruppeKey2Check
.head 5 -  String: sBettKey2Check
.head 5 -  Sql Handle: hSql_Parm
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 5 -  Boolean: bOverlapFound
.head 5 -  Number: nErrorNr
.head 5 -  Number: nFetch
.head 5 -  !
.head 5 -  Sql Handle: hSql
.head 5 -  String: sSql2FindOverlapping
.head 5 -  !
.head 5 -  Number: nEID_Overlap
.head 5 -  String: sBL_Art_Overlap
.head 5 -  String: sInfo_Overlap
.head 5 -  Date/Time: dtVon_Overlap
.head 5 -  Date/Time: dtBis_Overlap
.head 5 -  !
.head 5 -  Sql Handle: hSqlBewPl
.head 5 -  Number: nFetch2
.head 5 -  String: sSql2GetBewPl
.head 5 -  Number: nEID_BewPlan
.head 5 -  Number: nFall_Key_BewPlan
.head 5 -  Number: nBewNr_BewPlan
.head 5 -  String: sBA_Key_BewPlan
.head 5 -  String: sAbt_Key_BewPlan
.head 5 -  String: sEnteredBy_BewPlan
.head 5 -  String: sModifiedBy_BewPlan
.head 5 -  String: sBlockedBy_BewPlan
.head 5 -  !
.head 5 -  String: sErrInfo_Text
.head 4 +  Actions
.head 5 +  If Not ((sBaKey2Check = 'AE') Or (sBaKey2Check = 'UE') Or (sBaKey2Check = 'VE') Or (sBaKey2Check = 'RE'))
.head 6 -  Return ''
.head 5 +  If (sStatKey2Check = '') or (sGruppeKey2Check = '') or (sBettKey2Check = '') 
.head 6 -  Return ''
.head 5 -  !
.head 5 +  If hSql_Parm
.head 6 -  Set hSql = hSql_Parm
.head 5 +  Else
.head 6 +  If Not GalConnect( hSql )
.head 7 -  Return 'GalConnect failed !'
.head 5 +  If Not GalConnect( hSqlBewPl )
.head 6 -  Call SqlDisconnect( hSql )
.head 6 -  Return 'GalConnect failed !'
.head 5 -  !
.head 5 -  Call VisWaitCursor( TRUE )
.head 5 +  If TRUE	! build sSql2FindOverlapping
.head 6 -  Set sSql2FindOverlapping = " 
select	EINRICHT_ID, BL_ART, 
	VON, BIS, INFO, 
	PLANBEW_EINR, PLANBEW_FALL, PLANBEW_BEW
into	:nEID_Overlap, :sBL_Art_Overlap, 
	:dtVon_Overlap, :dtBis_Overlap, :sInfo_Overlap, 
	:nEID_BewPlan, :nFall_Key_BewPlan, :nBewNr_BewPlan
from	bett_locks
where	stat_key = '" || sStatKey2Check || "'
   and	gruppe_key = '" || sGruppeKey2Check || "'
   and	bett_key = '" || sBettKey2Check || "'
   and	von <= :dtBewZeitBis2Check
   and	( bis is null or bis > :dtBewZeit2Check )
   and Not (
	PLANBEW_EINR = " || StrX( nEID2Check ) || "
         and	PLANBEW_FALL = " || StrX( nFallKey2Check ) || "
	)
"
.head 6 +  If Not b1Bed4AllEinricht
.head 7 -  Set sSql2FindOverlapping = sSql2FindOverlapping || "
   and	einricht_id = " || StrX( nEID2Check )
.head 6 -  Set sSql2FindOverlapping = sSql2FindOverlapping || "
order by	 VON "
.head 5 -  !
.head 5 -  Set bOk = SqlPrepareAndExecute( hSql, sSql2FindOverlapping )
.head 5 -  Set bOk = bOk and SqlPrepare(hSqlBewPl, " 
		select	ba_key, abt_key, entered_by, modified_by, blocked_by
		into	:sBL_Art_Overlap, :sAbt_Key_BewPlan,
			:sEnteredBy_BewPlan, :sModifiedBy_BewPlan, :sBlockedBy_BewPlan
		from	BEWEGUNG_PLAN
		where	einricht_id =  :nEID_BewPlan 
		    and	fall_key = :nFall_Key_BewPlan 
		    and	bew_nr = :nBewNr_BewPlan 
")
.head 5 -  Set bOverlapFound = FALSE
.head 5 +  While Not bOverlapFound And bOk And SqlFetchNext( hSql, nFetch )
.head 6 -  Set bOverlapFound = TRUE
.head 6 +  If nEID_BewPlan And nFall_Key_BewPlan And nBewNr_BewPlan
.head 7 -  ! Set bOk = SqlPrepareAndExecute( hSqlBewPl, " 
select	ba_key, abt_key, 
	entered_by, modified_by, blocked_by
into	:sBL_Art_Overlap, :sAbt_Key_BewPlan,
	:sEnteredBy_BewPlan, :sModifiedBy_BewPlan, :sBlockedBy_BewPlan
from	BEWEGUNG_PLAN
where	einricht_id = " || StrX( nEID_BewPlan ) || "
   and	fall_key = " || StrX( nFall_Key_BewPlan ) || "
   and	bew_nr = " || StrX( nBewNr_BewPlan ) || "
")
.head 7 -  Set bOk = bOk and SqlExecute( hSqlBewPl )
.head 7 -  Set bOk = bOk And SqlFetchNext( hSqlBewPl, nFetch2 )
.head 5 +  If Not bOk Or nFetch > FETCH_EOF
.head 6 -  Set bOk = FALSE
.head 6 -  Set sErrInfo_Text = 'Sql Error happened !'
.head 5 +  If Not hSql_Parm
.head 6 -  Call SqlDisconnect( hSql )
.head 5 -  Call SqlDisconnect( hSqlBewPl )
.head 5 -  !
.head 5 -  Call VisWaitCursor( FALSE )
.head 5 +  If bOk And bOverlapFound
.head 6 -  Set bOk = FALSE
.head 6 -  Set sErrInfo_Text = StrIf( bBreedingIsON, 'Place: ', 'Bett: ' ) || sStatKey2Check || '.' || sGruppeKey2Check || '.' || sBettKey2Check || '

'
.head 6 +  If b1Bed4AllEinricht
.head 7 -  Set sErrInfo_Text = sErrInfo_Text  || 'Einricht.: ' || SalNumberToStrX( nEID2Check, 0 ) || ' - '
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || 'Fall: ' || SalNumberToStrX( nFallKey2Check, 0 )
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || ' Bew.Art: '  || sBaKey2Check
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || ' Von: ' || SalFmtFormatDateTime( dtBewZeit2Check, 'dd.MM.yyyy hhhh:mm:ss' )
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || ' Bis: ' || SalFmtFormatDateTime( dtBewZeitBis2Check, 'dd.MM.yyyy hhhh:mm:ss' ) 
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || '
und BETT_LOCK
'
.head 6 +  If b1Bed4AllEinricht
.head 7 -  Set sErrInfo_Text = sErrInfo_Text  || 'Einricht.: ' || SalNumberToStrX( nEID_Overlap, 0 ) || ' - '
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || ' Art: '  || sBL_Art_Overlap
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || ' Von: ' || SalFmtFormatDateTime( dtVon_Overlap, 'dd.MM.yyyy hhhh:mm:ss' )
.head 6 -  Set sErrInfo_Text = sErrInfo_Text  || ' Bis: ' || SalFmtFormatDateTime( dtBis_Overlap, 'dd.MM.yyyy hhhh:mm:ss' ) 
.head 6 +  If sInfo_Overlap
.head 7 -  Set sErrInfo_Text = sErrInfo_Text  || '
Info: '  || sInfo_Overlap
.head 6 +  If nFall_Key_BewPlan
.head 7 -  Set sErrInfo_Text = sErrInfo_Text  || '
Plan Fall: ' || StrX( nFall_Key_BewPlan )
.head 6 +  If sEnteredBy_BewPlan
.head 7 -  Set sErrInfo_Text = sErrInfo_Text  || '
Entered by: ' || sEnteredBy_BewPlan
.head 6 +  If sModifiedBy_BewPlan
.head 7 -  Set sErrInfo_Text = sErrInfo_Text  || '
Modified by: ' || sModifiedBy_BewPlan
.head 6 +  If sBlockedBy_BewPlan
.head 7 -  Set sErrInfo_Text = sErrInfo_Text  || '
Blocked by: ' || sBlockedBy_BewPlan
.head 5 -  !
.head 5 -  Return sErrInfo_Text
.head 3 +  Function: Bew_IsDauerPossible	! __Exported
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Number: nEID2Check
.head 5 -  Number: nFallKey2Check
.head 5 -  String: sFallStatus2Check
.head 5 -  Date/Time: dtDauerEnd2Check
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sBaKey2Check
.head 5 -  Date/Time: dtBewZeit2Check
.head 5 -  String: sStatKey2Check
.head 5 -  String: sGruppeKey2Check
.head 5 -  String: sBettKey2Check
.head 5 -  Sql Handle: hSql
.head 5 -  Number: nFetch
.head 5 -  Boolean: bOk
.head 4 +  Actions
.head 5 +  If Not bUseBettDispo
.head 6 -  Return TRUE ! any Dauer is allowed
.head 5 +  If sFallStatus2Check = 'A' and nBewBis_Method = BEWBISNull_Endless
.head 6 -  Return TRUE ! dauer is not used in Bett ocupation calculating
.head 5 +  If GalConnect( hSql )
.head 6 -  Set bOk = SqlPrepareAndExecute( hSql, "
select BA_KEY, BEW_ZEIT, STAT_KEY, GRUPPE_KEY, BETT_KEY
from	bewegung b
where	b.EINRICHT_ID = :nEID2Check
  and	b.FALL_KEY = :nFallKey2Check
  and	b.GELOESCHT = 'N'
  and	BEW_ZEIT_BIS is NULL
order by BEW_ZEIT desc
into	:sBaKey2Check, :dtBewZeit2Check, :sStatKey2Check, :sGruppeKey2Check, :sBettKey2Check
" )
.head 6 -  Set bOk = bOk and SqlFetchNext( hSql, nFetch )
.head 6 -  Call SqlDisconnect( hSql )
.head 6 +  If bOk
.head 7 -  Return Bew_IsBewActionPossible( nEID2Check, nFallKey2Check, sFallStatus2Check, sBaKey2Check,
dtBewZeit2Check, dtDauerEnd2Check, sStatKey2Check, sGruppeKey2Check, sBettKey2Check, hWndNULL )
.head 3 +  Function: CanOpenVorgang		! __Exported
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Number: nEId_Parm
.head 5 -  Number: nFall_Key_Parm
.head 5 -  String: sBewArt_Planned
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sErrorText
.head 4 +  Actions
.head 5 -  Return CanOpenVorgangX( nEId_Parm, nFall_Key_Parm, sBewArt_Planned, sErrorText )
.head 3 +  Function: CanOpenVorgangX		! __Exported
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Number: nEId_Parm
.head 5 -  Number: nFall_Key_Parm
.head 5 -  String: sBewArt_Planned
.head 5 -  Receive String: sErrorText
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: strBaNext
.head 5 -  Sql Handle: hSql
.head 5 -  Boolean: bOk
.head 5 -  Number: nFetch
.head 5 -  String: sAbt_Key_Current
.head 5 -  String: sStat_Key_Current
.head 5 -  String: sFallStatus
.head 5 -  Date/Time: dtEE_Datum
.head 5 -  Boolean: bUserViewsUsed
.head 4 +  Actions
.head 5 +  If Not sBewArt_Planned
.head 6 -  Return FALSE
.head 5 -  Set sErrorText = ''
.head 5 -  Set bOk = GalConnect( hSql )
.head 5 +  If bOk	! Get STATUS + EE_DATUM
.head 6 -  Set bOk = SqlPrepareAndExecute( hSql, "
select	STATUS, EE_DATUM
into	:sFallStatus, :dtEE_Datum
from	FALL
where	Einricht_ID = " || StrX( nEId_Parm ) || "
   and	Fall_Key = " || StrX( nFall_Key_Parm ) || "
 " )
.head 6 -  Set bOk = bOk And SqlFetchNext( hSql, nFetch )
.head 6 +  If Not bOk 
.head 7 -  Set sErrorText = 'SQL Error'
.head 5 +  If bOk	! Get last BEW data
.head 6 -  Set bOk = SqlPrepareAndExecute( hSql, Gal_IntRouter( "
select	b.ABT_KEY, b.STAT_KEY, ba.BA_Next
into	:sAbt_Key_Current, :sStat_Key_Current, :strBaNext
from	Bewegung b, Bew_Art ba
where	b.Einricht_ID = " || StrX( nEId_Parm ) || "
   and	b.Fall_Key = " || StrX( nFall_Key_Parm ) || "
   and	b.Geloescht = 'N'
   and	ba.Einricht_ID = b.Einricht_ID
   and	ba.BA_Key = b.BA_Key
order by	b.BEW_ZEIT desc " ) )
.head 6 -  Set bOk = bOk And SqlFetchNext( hSql, nFetch )
.head 6 +  If Not bOk
.head 7 +  If nFetch = FETCH_EOF
.head 8 -  Set sErrorText = "There is no any BEWEGUNG for the Fall "
.head 7 +  Else
.head 8 -  Set sErrorText = 'SQL Error'
.head 5 -  Call SqlDisconnect( hSql )
.head 5 -  !
.head 5 +  If bOk ! check "Status" and "EE Datum"
.head 6 +  If ( sBewArt_Planned = 'UE' )
or ( sBewArt_Planned = 'VE' )
or ( sBewArt_Planned = 'RE' )
or ( sBewArt_Planned = 'IE' )
or ( sBewArt_Planned = 'EE' )
or ( sBewArt_Planned = 'VL' )
.head 7 +  If Not ( sFallStatus = 'A' )
.head 8 -  Set sErrorText = 'Status of the Fall has to be A'
.head 8 -  Set bOk = FALSE
.head 7 +  If dtEE_Datum
.head 8 -  ! Call SalMessageBox( 'Fall is elready dismissed', 'Stop Verlängerung', MB_IconStop )
.head 8 -  Set sErrorText = 'Fall is elready dismissed'
.head 8 -  Set bOk = FALSE
.head 5 +  If bOk ! Check BA_NEXT
.head 6 +  If Not ( sBewArt_Planned = 'VL' )
.head 7 -  Set bOk = (SalStrScan( strBaNext, sBewArt_Planned ) > -1)
.head 5 -  !
.head 5 +  If Not UserRights_IsSet( bUserViewsUsed )
.head 6 -  Return FALSE
.head 5 +  If Not bUserViewsUsed
.head 6 +  If bOk		! Check available ABTEILUNG
.head 7 +  If sAbt_Key_Current And sUsers_AbtSet_Quated != '*'
.head 8 -  Set bOk = (SalStrScan( sUsers_AbtSet_Quated, "'" || sAbt_Key_Current || "'" ) > -1)
.head 8 +  If Not bOk
.head 9 -  Call SalMessageBox( sAbt_Key_Current || "
" || GetMessageFromSection( "DYNA_BEWFNC", 7, "The patient is in the ABT which is restricted for You !" ), 
GetMessageFromSection( "DYNA_BEWFNC", 6, "Restriction" ), MB_IconExclamation )
.head 6 +  If bOk		! Check available STATION
.head 7 +  If sStat_Key_Current And sUsers_StatSet_Quated != '*'
.head 8 -  Set bOk = (SalStrScan( sUsers_StatSet_Quated, "'" || sStat_Key_Current || "'" ) > -1)
.head 8 +  If Not bOk
.head 9 -  Call SalMessageBox( sStat_Key_Current || "
" || GetMessageFromSection( "DYNA_BEWFNC", 8, "The patient is in the STAT which is restricted for You !" ), 
GetMessageFromSection( "DYNA_BEWFNC", 6, "Restriction" ), MB_IconExclamation )
.head 5 -  Return bOk
.head 3 +  Function: __Calculate_AE
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Date/Time:
.head 4 +  Parameters
.head 5 -  String: sBA_Key_Parm
.head 5 -  Date/Time: dtBewZeit_Parm
.head 5 -  Date/Time: dtAE_Datum_Parm
.head 5 -  Date/Time: dtAE_Time_Parm
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Date/Time: dtAE
.head 4 +  Actions
.head 5 +  ! AS 01.06.2004
.head 6 +  ! If sBA_Key_Parm = 'AE' Or sBA_Key_Parm = 'AM' 
.head 7 -  Set dtAE = dtBewZeit_Parm
.head 5 +  If SalStrScan( sBAList_1stPossible4Fall, sBA_Key_Parm || ' ' ) >= 0
.head 6 -  Set dtAE = dtBewZeit_Parm
.head 5 +  Else
.head 6 +  If dtAE_Datum_Parm = DATETIME_Null
.head 7 -  ! If BA is not 'AE' then 'AE' should exist before and correspondently FALL.AE_DATUM should exist
.head 7 -  Set dtAE = DATETIME_Null
.head 6 +  If dtAE_Time_Parm = DATETIME_Null
.head 7 -  Set dtAE = dtAE_Datum_Parm
.head 6 +  Else
.head 7 -  Set dtAE = SalDateConstruct( 
		SalDateYear( dtAE_Datum_Parm ), SalDateMonth( dtAE_Datum_Parm ), SalDateDay( dtAE_Datum_Parm ), 
		SalDateHour( dtAE_Time_Parm ), SalDateMinute( dtAE_Time_Parm ), SalDateSecond( dtAE_Time_Parm ) )
.head 5 -  Return dtAE
.head 3 +  Function: GetKstr4Fall		! __Exported
.head 4 -  Description: The function tries to find HAUPT KSTR.
If it does not exist then it tries to get any other KSTR.
The function returns TRUE if no Sql Error happened (even if KSTR does not exist).
KSTR_KEY is being returned in "Receive String: sKstr_Key_Parm"
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Number: nEId_Parm
.head 5 -  Number: nFall_Key_Parm
.head 5 -  Receive String: sKstr_Key_Parm
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 5 -  String: sKstr_Key_Loc
.head 5 -  Sql Handle: hSql
.head 5 -  Number: nFetch
.head 4 +  Actions
.head 5 +  If Not GalConnect( hSql )
.head 6 -  Return FALSE
.head 5 -  !
.head 5 -  ! Try to find HAUPT KSTR
.head 5 -  Set bOk = SqlPrepareAndExecute( hSql, "
select	KSTR_KEY
into	:sKstr_Key_Loc
from	Kue
where	Fall_Key = " || StrX( nFall_Key_Parm ) || "
   and	Einricht_ID = " || StrX( nEId_Parm ) || "
   and	HAUPT_KSTR = 'J' " )
.head 5 +  If bOk
.head 6 -  Set sKstr_Key_Loc = ''
.head 6 -  Set bOk = SqlFetchNext( hSql, nFetch )
.head 6 +  If Not bOk And nFetch = FETCH_EOF
.head 7 -  Set bOk =TRUE
.head 5 -  !
.head 5 -  ! Try to find any other KSTR
.head 5 +  If bOk And Not sKstr_Key_Loc
.head 6 -  Set bOk = SqlPrepareAndExecute( hSql, "
select	KSTR_KEY
into	:sKstr_Key_Loc
from	Kue
where	Fall_Key = " || StrX( nFall_Key_Parm ) || "
   and	Einricht_ID = " || StrX( nEId_Parm ) || " " )
.head 6 +  If bOk
.head 7 -  Set sKstr_Key_Loc = ''
.head 7 -  Set bOk = SqlFetchNext( hSql, nFetch )
.head 7 +  If Not bOk And nFetch = FETCH_EOF
.head 8 -  Set bOk =TRUE
.head 5 -  Call SqlDisconnect( hSql )
.head 5 -  !
.head 5 -  Set sKstr_Key_Parm = sKstr_Key_Loc
.head 5 -  Return bOk
.head 3 -  !
.head 3 +  Function: RS_PlanCheckAndCloseFall_InRS	! DUMMY! Has to be replased by real!
.head 4 -  Description: Returns Amount of Closed FALLS. Returns -1 if Error
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  Number: nFallKey_Parm
.head 5 -  Number: nBewNr_Parm
.head 5 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=-1
.head 5 -  Boolean: bSet_bRS_WithoutCommit_Before
.head 5 -  Boolean: bSet_bRS_WithoutCommit_After
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Number: nResult
.head 4 +  Actions
.head 5 -  Set bRS_WithoutCommit = bSet_bRS_WithoutCommit_Before
.head 5 -  Set nResult = 0
.head 5 -  Set bRS_WithoutCommit = bSet_bRS_WithoutCommit_After
.head 5 -  Return nResult
.head 3 +  Function: RS_PlanCheckAndAddFall_ToRS	! DUMMY! Has to be replased by real!
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Number:
.head 4 +  Parameters
.head 5 -  Number: nFallKey_Parm
.head 5 -  Number: nBewNr_Parm
.head 5 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=-1
.head 5 -  Boolean: bSet_bRS_WithoutCommit_Before
.head 5 -  Boolean: bSet_bRS_WithoutCommit_After
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Number: nResult
.head 4 +  Actions
.head 5 -  Set bRS_WithoutCommit = bSet_bRS_WithoutCommit_Before
.head 5 -  Set nResult = 0
.head 5 -  Set bRS_WithoutCommit = bSet_bRS_WithoutCommit_After
.head 5 -  Return nResult
.head 3 -  !
.head 3 +  ! Function: POC_Unregister			! __Exported
.head 4 -  Description: 
.head 4 +  Returns 
.head 5 -  Boolean: 
.head 4 +  Parameters 
.head 5 -  Number: nIDCage
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  Sql Handle: hSql
.head 5 -  Boolean: bRet
.head 5 -  Boolean: bFull
.head 4 +  Actions 
.head 5 -  ! check cage is empty
.head 5 -  Set bRet = TRUE
.head 5 -  Call SqlExists("select * from sysadm.fall
  where last_cage_id=:nIDCage
  and geloescht='N'
  and @nullvalue(ee_datum,@now+365)>@now", bFull)
.head 5 +  If not bFull
.head 6 -  Set bRet = GalConnect(hSql)
.head 6 +  If bRet
.head 7 -  Set bRet = bRet and SqlPrepareAndExecute(hSql, "Update sysadm.GRUPPE
		set RFID='',
		      RF_ABT_KEY=''
		where id=:nIDCage")
.head 7 +  If bRet
.head 8 -  Call SqlCommit(hSql )
.head 8 -  Call T_SetPortPOC(nIDCage, NUMBER_Null )
.head 8 -  Call T_SetPrintOnCage( nIDCage,0 )
.head 7 +  Else 
.head 8 -  Call SqlPrepareAndExecute(hSql, "rollback")
.head 7 -  Call SqlDisconnect(hSql)
.head 5 -  Return bRet
.head 3 +  Function: POC_Unreg			! __Exported
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Number: nIDCage
.head 5 -  Boolean: bClearCard
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Sql Handle: hSql
.head 5 -  Number: nFetch
.head 5 -  Boolean: bRet
.head 5 -  Boolean: bFull
.head 5 -  Number: nUniqNR
.head 4 +  Actions
.head 5 -  ! check cage is empty
.head 5 -  Set bRet = TRUE
.head 5 -  Call SqlExists("select * from sysadm.fall
  where last_cage_id=:nIDCage
  and geloescht='N'
  and @nullvalue(ee_datum,@now+365)>@now", bFull)
.head 5 +  If not bFull
.head 6 -  Set bRet = GalConnect(hSql)
.head 6 +  If bRet
.head 7 +  If bClearCard
.head 8 -  Call ClearLabel( nIDCage,TRUE )
.head 7 -  Set bRet = bRet and SqlPrepareAndExecute(hSql, "Update sysadm.GRUPPE
		set RFID='',
		      RF_ABT_KEY=''
		where id=:nIDCage")
.head 7 +  If bRet
.head 8 -  Set bRet = bRet and SqlPrepareAndExecute(hSql, "select min(uniq_nr)-1 from gruppe
		 into :nUniqNR")
.head 8 -  Set bRet = bRet and SqlFetchNext( hSql, nFetch )
.head 8 -  Set bRet = bRet and SqlPrepareAndExecute(hSql, "update gruppe set uniq_nr = :nUniqNR
		where id=:nIDCage ")
.head 8 -  Call SqlCommit(hSql )
.head 8 -  Call T_SetPortPOC(nIDCage, NUMBER_Null )
.head 8 -  Call T_SetPrintOnCage( nIDCage,0 )
.head 7 +  Else
.head 8 -  Call SqlPrepareAndExecute(hSql, "rollback")
.head 7 -  Call SqlDisconnect(hSql)
.head 5 -  Return bRet
.head 3 +  Function: DeleteMovement	! __Exported
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Session Handle: hSession
.head 5 -  Number: nCase
.head 5 -  Number: nBewNr
.head 5 -  Number: nCagesAffected[*]
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Sql Handle: hSql
.head 5 -  Number: nFetch
.head 5 -  Boolean: bRes
.head 5 -  String: sErr
.head 5 -  Boolean: bLockAcquired
.head 5 -  !
.head 5 -  Boolean: bOwnSession
.head 5 -  !
.head 5 -  String: sBA_Key
.head 5 -  Date/Time: dtMovement
.head 5 -  Number: nScrID
.head 5 -  String: sAbtKey
.head 5 -  Number: nRackID
.head 5 -  String: sStatKey
.head 5 -  Number: nCageID
.head 5 -  String: sGruppeKey
.head 5 -  Number: nPosID
.head 5 -  String: sBettKey
.head 5 -  Number: nUniqNr
.head 5 -  Number: nScrUniqNr
.head 5 -  Number: nOldCageID
.head 5 -  Number: nOldScrID
.head 5 -  Number: nOldBewNr
.head 5 -  ! values which cause problems
.head 5 -  Number: nBadBewNr
.head 5 -  Number: nBadCase
.head 5 -  FunctionalVar: oBewAct
.head 6 -  Class: clsBewegungActions
.head 5 -  Number: nRelID
.head 4 +  Actions
.head 5 -  Set bRes = FALSE
.head 5 +  If hSession = hWndNULL
.head 6 -  Call SqlCreateSession(hSession, "")
.head 6 -  Set bOwnSession = TRUE
.head 5 +  If SqlCreateStatement(hSession, hSql)
.head 6 -  ! check if movement not last
.head 6 +  If SqlPrepareAndExecute(hSql, "select bew_nr from sysadm.bewegung where fall_key = :nCase and bew_nr > :nBewNr and @NULLVALUE(geloescht, 'N') = 'N' into :nBadBewNr")
.head 7 +  If SqlFetchNext(hSql, nFetch)
.head 8 -  Set sErr = "Only LAST movement can be deleted!"
.head 7 +  Else
.head 8 -  ! load deleted movement data
.head 8 -  Call SqlPrepareAndExecute(hSql, "select ba_key, bew_zeit, scr_id, cage_id from sysadm.bewegung where fall_key = :nCase and bew_nr = :nBewNr into :sBA_Key, :dtMovement, :nOldScrID, :nOldCageID")
.head 8 +  If SqlFetchNext(hSql, nFetch)
.head 9 -  ! AE movement cannot be deleted
.head 9 +  If sBA_Key = "AE"
.head 10 -  Set sErr = "AE movement cannot be deleted!"
.head 9 +  Else
.head 10 -  ! load previous movement information
.head 10 -  Call SqlPrepareAndExecute(hSql, "select  
bew_nr, ba_key,
scr_id, abt_key,
rack_id, stat_key,
cage_id, gruppe_key,
pos_id, bett_key
from sysadm.bewegung where fall_key = :nCase and bew_nr < :nBewNr and @nullvalue(geloescht, 'N')  = 'N'
order by bew_nr desc
into 
:nOldBewNr, :sBA_Key,
:nScrID, :sAbtKey,
:nRackID, :sStatKey,
:nCageID, :sGruppeKey,
:nPosID, :sBettKey")
.head 10 +  If NOT SqlFetchNext(hSql, nFetch)
.head 11 -  Set sErr = "Cannot retrieve previous movement information!"
.head 10 +  Else
.head 11 -  ! check if target place was not used after deleted movement
.head 11 +  If SqlPrepareAndExecute(hSql, "select 
 fall_key, bew_nr 
from bewegung 
where 
 pos_id = :nPosID 
 and bew_zeit > :dtMovement 
 and fall_key != :nCase
into
 :nBadCase, :nBadBewNr")
.head 12 +  If SqlFetchNext(hSql, nFetch)
.head 13 -  Set sErr = "Cannot delete selected movement, other animal occupied previous location!
(AnimalID: "||SalNumberToStrX(nBadCase, 0)||", Movement "||SalNumberToStrX(nBadBewNr, 0)||")"
.head 12 +  Else
.head 13 -  ! Perform actions (!)
.head 13 -  Set oBewAct.hSession = hSession
.head 13 -  Set oBewAct.h_Sql = hSql
.head 13 -  Set oBewAct.oTargetCage.nCageID = nCageID
.head 13 -  Set oBewAct.oTargetCage.hSql = hSql
.head 13 -  Set bRes = oBewAct.oTargetCage.Load(  )
.head 13 -  Set oBewAct.oSourceCage.nCageID = nOldCageID
.head 13 -  Set oBewAct.oSourceCage.hSql = hSql
.head 13 -  Set bRes = bRes and oBewAct.oSourceCage.Load(  )
.head 13 +  Loop
.head 14 +  When SqlError
.head 15 -  ! Call SqlExtractArgs ( wParam, lParam, hSqlError, nSqlError, nErrorPos )
.head 15 +  ! If nSqlError < 0
.head 16 -  Set nSqlError = - nSqlError
.head 15 -  ! Set nrpSqlErrorNr = nSqlError
.head 15 -  Call SqlPrepareAndExecute(hSql, "rollback")
.head 15 -  Set bLockAcquired = FALSE
.head 15 -  Return FALSE
.head 14 -  Set bLockAcquired = TRUE
.head 14 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(hSql, "lock table bewegung")
.head 14 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(hSql, "lock table fall")
.head 14 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(hSql, "lock table xlock")
.head 14 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(hSql, "lock table gruppe")
.head 14 +  If NOT (oBewAct.oTargetCage.nFallsInCage ) or (oBewAct.oSourceCage.nFallsInCage = 1)
.head 15 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(hSql, "lock table gruppe")
.head 15 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(hSql, "lock table abteilung")
.head 14 +  If bLockAcquired
.head 15 -  Break
.head 13 +  If NOT (oBewAct.oTargetCage.nFallsInCage )
.head 14 -  Set bRes = bRes and oBewAct.GetNewCageNr(  )
.head 13 -  Set bRes = bRes and SqlPrepareAndExecute(hSql, "update bewegung set geloescht = 'J' where fall_key = :nCase and bew_nr = :nBewNr")
.head 13 -  Set bRes = bRes and SqlPrepareAndExecute(hSql, "update bewegung set bew_zeit_bis = null where fall_key = :nCase and bew_nr = :nOldBewNr") 
.head 13 -  Set bRes = bRes and SqlPrepareAndExecute(hSql, "update fall set 
last_ba_key = :sBA_Key,
last_bew_nr = :nOldBewNr,
last_abt_key = :sAbtKey,
last_stat_key = :sStatKey,
last_gruppe_key = :sGruppeKey,
last_bett_key = :sBettKey,
last_cage_nr = :oBewAct.oTargetCage.nUniqNr,
last_scr_id = :nScrID,
last_cage_id = :nCageID,
pos_id = :nPosID
where fall_key = :nCase")
.head 13 +  If bRes and oBewAct.oSourceCage.nFallsInCage <= 1
.head 14 -  ! Set bRes = bRes and oBewAct.POC_Unregister(  )
.head 14 -  ! Set bRes = bRes and oBewAct.cle
.head 14 -  Set bRes = bRes And oBewAct.ClearServicesOnEmptyCage(  )
.head 14 +  If oBewAct.oSourceCage.sRFID
.head 15 -  Set bRes = bRes and  oBewAct.POC_Unregister(oBewAct.oSourceCage.nCageID)
.head 14 -  Set bRes = bRes and oBewAct.UpdateEmptySrcCage()
.head 13 +  If bOwnSession
.head 14 +  If bRes
.head 15 -  Call SqlPrepareAndExecute(hSql, "commit")
.head 14 +  Else
.head 15 -  Call SqlPrepareAndExecute(hSql, "rollback")
.head 13 -  Set oBewAct.hSession = hWndNULL
.head 13 -  Set oBewAct.h_Sql = hWndNULL
.head 13 -  Set oBewAct = OBJ_Null
.head 13 -  Set nFetch = 0
.head 13 +  If NOT SalArrayIsEmpty(nCagesAffected)
.head 14 -  Call SalArrayGetUpperBound(nCagesAffected, 1, nFetch)
.head 14 -  Set nFetch = nFetch + 1
.head 13 -  Set nCagesAffected[nFetch] = nOldScrID
.head 13 -  Set nFetch = nFetch + 1
.head 13 -  Set nCagesAffected[nFetch] = nOldCageID
.head 13 +  If (nOldCageID != nCageID) or (nOldScrID != nScrID)
.head 14 -  Set nFetch = nFetch + 1
.head 14 -  Set nCagesAffected[nFetch] = nScrID
.head 14 -  Set nFetch = nFetch + 1
.head 14 -  Set nCagesAffected[nFetch] = nCageID
.head 13 -  ! Set oBewAct.oSourceCage.hSql = 0
.head 13 -  ! Set oBewAct.oTargetCage.hSql = 0
.head 8 +  Else
.head 9 -  Set sErr = "Cannot retrieve movement information!"
.head 6 -  Call SqlDisconnect(hSql)
.head 5 +  If bOwnSession
.head 6 -  Call SqlFreeSession(hSession)
.head 5 +  If sErr
.head 6 -  Call SalMessageBox(sErr, "", 0)
.head 5 -  Return bRes
.head 2 +  Named Menus
.head 2 +  Class Definitions
.data RESOURCE 0 0 1 1352606904
0000: 6107000022050000 0000000000000000 0200001300FFFF01 00160000436C6173
0020: 73566172004F7574 6C696E6552006567 496E666F21003C00 001263006C734265
0040: 77656775006E6741 6374696F6E00735E 0000000300001E00 1900000200017803
0060: 0500000600FE0073 0000600001000000 1983000400000080 037803060000003D
0080: FE00011B001D0000 AC00040003610700 0000FECF00018600 01801D0008000100
00A0: 0019636C0147656E 6572616C00546162 6C6542726F007773 654D61726B408000
00C0: 000002000000A719 0000B40178060021 8A0B73000001DA00 0019AC000400036D
00E0: 07008ACF00010600 01803600000C0002 0011636C01436869 6C645461774D5EA2
0100: 0000030000B71900 8401780A00000031 A80B730001DA0000 192C000400037861
0120: 0B000000A8CF0001 36001D00194B0001 780DD8000000A8A3 0001000001018032
0140: 0000000342000010 636C44006C675265 706F727440576F72 64400000F6020096
0160: 1900017830680000 001A0C4473000001 00009B1900192500 01786900EC00001A
0180: D100010000980180 1D000421000B636C 426180736963576E 6440D90002005B04
01A0: 0003DA7805001060 0E73000001006D00 04009619000178B6 0600604700010000
01C0: 4301806800008405 00000C636C005371 6C48616E646CC065 9A00000005DE0019
01E0: D20001780586002C 0F73006800010000 19B3000400B60306 003D2C0001DB001D
0200: 2C00190001786D07 002C8F0001002600 360000194B000178 08D80000002CA300
0220: 010000C14F000000 1912000178090000 F6002C6800010000 0188801900000600
0240: D0000F636C470F46 69656C8064220000 000100DE0019D200 017807C600B60F73
0260: 6800010000018880 04000007001C0012 4461743861466950 72406F7065722200
0280: 00F4010000160400 0278033606001610 6473000001006301 801D00240800000C
02A0: 4446805F4D757461 7469894000000200 1E00880000620007 7803018000E41706
02C0: 1173006400010000 04B3001900B40178 080039061100011A 000001801D230009
02E0: 00000A0063436F6D 626F4865906C7040 000002BD0004B500 03050D009A137300
0300: D100010000660400 1900290178060000 7B9A003401000001 8040290000000A00
0320: 001005634461619A 00D1000500005B04 0003DB050018C413 730001006D000400
0340: D6040003B60600C4 670001009B080004 B5000307ED00C4D9 000100600C000000
0360: 04006D0308007BC4 0036010010005800 00190001DA780A00 1EC40001008D0001
0380: 800411000B00000B 630053637265656E 4461132200000100 BD0004B50003068D
03A0: 00DC1373D9000100 98018004000C0100 09635261636B7C44 6100F4010000D604
03C0: 00033700E8136673 0001006301800400 240D0000094361F0 67654461D1000100
03E0: 005B040003DF0098 F4137300018D0001 800401000E000000 0A63804D44494F70
0400: 7469892200000100 DE00049200027819 00DE00736C000100 010C8004000F0000
0420: 6000066346696446 22000100006F0400 AD070601404418B4 1473000032010000
0440: 0180607D00000010 00080D635264696F 4C00697374426F78 9A00D90005005B19
0460: 0001CE7800001064 1673000001006D00 19009619000178B6 0700644700010000
0480: 9332000019A50001 7808ED0064D10001 0000604B00000019 0069017809007B64
04A0: 0034010000640058 0000190001DA780A 001C64160001008D 0001801901001100
04C0: 00000C6300475549 5365747469206E67 73220000017A0000 194B000178085B00
04E0: 4473A20000010000 3101803600121000 00000B476C6F2062 616C5661735EA300
0500: 030000B70400BE02 00314A18730001DA 0000042C00190001 786D07004A8F0001
0520: 0036001D00194B00 01780BDB004AA300 01000001
.enddata
.head 3 +  Functional Class: clsBewegungActions
.head 4 -  Description:
.head 4 -  Derived From
.head 4 +  Class Variables
.head 5 -  Number: nInstances
.head 5 -  Session Handle: hSession
.head 5 -  Sql Handle: h_Sql
.head 4 +  Instance Variables
.head 5 -  String: s_Action
.head 5 -  Number: n_AnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 5 -  Boolean: bPlanningMode
.head 5 -  Boolean: bInitialized
.head 5 -  Boolean: bDead
.head 5 -  Boolean: bPreserveSession
.head 5 -  !
.head 5 -  String: s_Schema
.head 5 -  Number: n_EID
.head 5 -  Number: n_FallKey
.head 5 -  Number: n_BewNr
.head 5 -  String: s_BA_New
.head 5 -  Boolean: b_BA_SH
.head 5 -  Date/Time: dt_BewZeit_New
.head 5 -  String: s_AbtKey_New
.head 5 -  String: s_StatKey_New
.head 5 -  String: s_GruppeKey_New
.head 5 -  String: s_BettKey_New
.head 5 -  String: s_Geloescht_New
.head 5 -  String: s_BG1_New
.head 5 -  !
.head 5 -  String: s_BA_Old
.head 5 -  Date/Time: dt_BewZeit_Old
.head 5 -  String: s_AbtKey_Old
.head 5 -  String: s_StatKey_Old
.head 5 -  String: s_GruppeKey_Old
.head 5 -  String: s_BettKey_Old
.head 5 -  String: s_Geloescht_Old
.head 5 -  String: s_AltAbtKey_Old
.head 5 -  String: s_BG1_Key_Old
.head 5 -  String: s_BG2_Key_Old
.head 5 -  !
.head 5 -  String: s_EventCode
.head 5 -  Number: n_BewNr_PrevBew
.head 5 -  String: s_BA_PervBew
.head 5 -  Boolean: bPervPlanBew_Exists
.head 5 -  Date/Time: dt_BewZeit_PrevBew
.head 5 -  Date/Time: dt_BewZeitBis_PrevBew
.head 5 -  String: s_AbtKey_PervBew
.head 5 -  String: s_StatKey_PervBew
.head 5 -  String: s_GruppeKey_PervBew
.head 5 -  String: s_BettKey_PervBew
.head 5 -  Number: n_CageID_PervBew
.head 5 -  !
.head 5 -  Number: n_BewNr_Last
.head 5 -  String: s_BA_Last
.head 5 -  String: s_AbtKey_Last
.head 5 -  String: s_StatKey_Last
.head 5 -  String: s_BettKey_Last
.head 5 -  String: s_GruppeKey_Last
.head 5 -  Number: n_BenutzerId_Last
.head 5 -  !
.head 5 -  Number: n_CageNr
.head 5 -  Number: n_CageNr_New
.head 5 -  Number: n_ScreenCageNr_New
.head 5 -  Number: n_CageNr_PrevBew
.head 5 -  Number: n_CageNr_Old
.head 5 -  Number: n_CageNr_Last
.head 5 -  !
.head 5 -  !
.head 5 -  Boolean: bFallDataAreFetched
.head 5 -  String: s_n_EID
.head 5 -  String: s_n_FallKey
.head 5 -  String: s_FallStatus
.head 5 -  String: s_Name1
.head 5 -  String: s_Sex
.head 5 -  String: s_VisKatKey
.head 5 -  String: s_IsPatient
.head 5 -  Number: n_Dauer
.head 5 -  Date/Time: dt_AE
.head 5 -  Date/Time: dt_AE_Datum
.head 5 -  Date/Time: dt_AE_Time
.head 5 -  Date/Time: dt_EE
.head 5 -  Date/Time: dt_EE_Datum
.head 5 -  Date/Time: dt_EE_Time
.head 5 -  Date/Time: dt_BewZeitBis_Plan
.head 5 -  !
.head 5 -  Date/Time: dt_Future
.head 5 -  Boolean: bCreateNewScreenCageNr
.head 5 -  Boolean: bCreateNewCageNr
.head 5 -  ! *** Lee
.head 5 -  String: sErrMessage
.head 5 -  Number: nIDLe
.head 5 -  Number: nIDScreen
.head 5 -  Number: nIDRack
.head 5 -  Number: nIDCage
.head 5 -  Number: nIDPos
.head 5 -  Boolean: bNeedToModify_LitterStay
.head 5 -  Boolean: bNeedToModify_LitterRemove
.head 5 -  Boolean: bNeedToModify_LitterDead
.head 5 -  Number: nRelShip_ID_Parm
.head 5 -  Number: nParents [*]
.head 5 -  Number: nUnweanedLitterID
.head 5 -  Boolean: bTargetIsCadaver
.head 5 -  FunctionalVar: oPrevMovement
.head 6 -  Class: cBewegungData
.head 5 -  FunctionalVar: oLastMovement
.head 6 -  Class: cBewegungData
.head 5 -  !
.head 5 -  Boolean: bAddInRS
.head 5 -  Boolean: bCloseRS
.head 5 -  !
.head 5 -  FunctionalVar: oFall
.head 6 -  Class: cBewFallData
.head 5 -  FunctionalVar: oTargetCage
.head 6 -  Class: cBewCageData
.head 5 -  FunctionalVar: oSourceCage
.head 6 -  Class: cBewCageData
.head 5 -  Number: nNewColonyNr
.head 5 -  !
.head 5 -  String: sMsgFromPlan
.head 5 -  FunctionalVar: oPBChanges
.head 6 -  Class: cBewPlanChanges
.head 4 +  Functions
.head 5 +  Function: Init
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  String: sAction_Parm
.head 7 -  String: sSchema_Parm
.head 7 -  Number: nEID_Parm
.head 7 -  Number: nFallKey_Parm
.head 7 -  Number: nBewNr_Parm
.head 7 -  String: sBA_Parm
.head 7 -  Date/Time: dtBewZeit_Parm
.head 7 -  String: sAbtKey_Parm
.head 7 -  String: sStatKey_Parm
.head 7 -  String: sGruppeKey_Parm
.head 7 -  String: sBettKey_Parm
.head 7 -  String: sBG1_Parm
.head 7 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 7 -  Boolean: bpPlanningMode
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  String: sStatusText
.head 7 -  Number: nCheckDBVersion
.head 7 -  Number: nFetch
.head 6 +  Actions
.head 7 +  ! If bInitialized
.head 8 -  Return TRUE
.head 7 +  ! If bpPlanningMode
.head 8 -  Set nCheckDBVersion = 6.25
.head 7 -  ! Else
.head 7 -  ! Set nCheckDBVersion = 6.76
.head 7 +  ! If Not CheckDBVersion( nCheckDBVersion )
.head 8 -  Return FALSE
.head 7 +  ! If Not sSchema_Parm
.head 8 -  Call SalMessageBox( "clsBewegungActions.Init(  ): Undefined Schemaname ", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Return FALSE
.head 7 -  !
.head 7 -  ! Call SalStatusGetText( hWndForm, sStatusText, 250 )
.head 7 -  Set sMsgFromPlan = ""
.head 7 -  Set sErrMessage = ""
.head 7 -  ! clean up flags
.head 7 -  Set bNeedToModify_LitterStay = FALSE
.head 7 -  Set bNeedToModify_LitterRemove = FALSE
.head 7 -  Set bNeedToModify_LitterDead = FALSE
.head 7 -  Set bCreateNewCageNr = FALSE
.head 7 -  Set bCreateNewScreenCageNr = FALSE
.head 7 -  Set nUnweanedLitterID = 0
.head 7 -  Set nRelShip_ID_Parm = 0
.head 7 -  !
.head 7 -  Call SalStatusSetText( hWndForm, 'Bewegung: Init...' )
.head 7 -  !
.head 7 -  Set s_Schema = sSchema_Parm
.head 7 -  Set n_AnswerMode = nAnswerMode
.head 7 -  Set bPlanningMode = bpPlanningMode
.head 7 -  Set nInstances = nInstances + 1
.head 7 -  ! Call SalSetWindowText(hWndForm, SalNumberToStrX(nInstances, 0))
.head 7 -  !
.head 7 -  Set s_Action = sAction_Parm
.head 7 +  If s_Action = 'INS'
.head 8 -  Set s_Geloescht_New = 'N'
.head 7 +  Else If s_Action = 'UPD'
.head 8 -  Set s_Geloescht_New = 'N'
.head 7 +  Else If s_Action = 'DEL'
.head 8 -  Set s_Geloescht_New = 'J'
.head 7 +  Else
.head 8 -  Call SalMessageBox( "clsBewegungActions.Init(  ): Unknown Action='" || s_Action ||"' ", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  ! Set sErrMessage = "clsBewegungActions.Init(  ): Unknown Action='" || s_Action ||"' "
.head 8 -  Return FALSE
.head 7 -  !
.head 7 -  Set n_EID = nEID_Parm
.head 7 -  Set n_FallKey = nFallKey_Parm
.head 7 -  Set n_BewNr = nBewNr_Parm
.head 7 -  Set s_BA_New = sBA_Parm
.head 7 +  If dtBewZeit_Parm > SalDateCurrent()
.head 8 -  ! Call SalMessageBox("Movement date in future! Change to now.", "Warning", MB_Ok + MB_IconExclamation)
.head 8 -  ! Set sErrMessage = "Movement date in future! Change to now."
.head 8 -  Set dt_BewZeit_New = SalDateCurrent()
.head 7 +  Else
.head 8 -  Set dt_BewZeit_New = dtBewZeit_Parm
.head 7 +  If NOT hSession
.head 8 +  If NOT SqlCreateSession(hSession, "")
.head 9 -  Return FALSE
.head 7 +  If NOT h_Sql
.head 8 +  If NOT SqlCreateStatement( hSession, h_Sql )
.head 9 -  Return FALSE
.head 8 -  Call SqlSetIsolationLevel(h_Sql, "RL")
.head 8 +  ! Loop
.head 9 +  When SqlError 
.head 10 -  Return FALSE
.head 9 +  If SqlPrepareAndExecute(h_Sql, "lock table xlock")
.head 10 -  Break 
.head 7 -  Call SqlPrepareAndExecute(h_Sql, "select SYSDATETIME from sysadm.sysuserauth where name = USER into :dt_BewZeit_New")
.head 7 -  Call SqlFetchNext(h_Sql, nFetch)
.head 7 -  ! ***** Lee
.head 7 -  ! Set bOk = SqlPrepareAndExecute(h_Sql, "lock table xlock")
.head 7 -  Set bOk = TRUE
.head 7 +  If sAbtKey_Parm != s_AbtKey_New
.head 8 -  Set bOk = bOk and SqlPrepareAndExecute(h_Sql, "select id from abteilung where abt_key = :sAbtKey_Parm into :nIDScreen")
.head 8 -  Set bOk = bOk and SqlFetchNext(h_Sql, nFetch)
.head 7 -  Set s_AbtKey_New = sAbtKey_Parm
.head 7 +  If (s_StatKey_New != sStatKey_Parm) or (s_GruppeKey_New != sGruppeKey_Parm) or (s_BettKey_New != sBettKey_Parm)
.head 8 -  Set bOk = bOk and SqlPrepareAndExecute(h_Sql, "select
 rack_id, cage_id, id
from bett 
where 
  einricht_id = :nEinrichtId and stat_key = :sStatKey_Parm and gruppe_key = :sGruppeKey_Parm and bett_key = :sBettKey_Parm
into :nIDRack, :nIDCage, :nIDPos")
.head 8 -  Set bOk = bOk and SqlFetchNext(h_Sql, nFetch)
.head 8 +  If NOT bOk
.head 9 -  Set bOk = SqlPrepareAndExecute(h_Sql, "select
 b.rack_id, b.cage_id, b.id, b.bett_key
from 
 bett b
 left join fall f on f.pos_id = b.id and f.ee_datum is null and f.einricht_id = b.einricht_id and f.last_cage_id = b.cage_id
where 
  b.einricht_id = :nEinrichtId and b.stat_key = :sStatKey_Parm and b.gruppe_key = :sGruppeKey_Parm and f.fall_key is null  
into :nIDRack, :nIDCage, :nIDPos, :sBettKey_Parm")
.head 9 -  Set bOk = bOk and SqlFetchNext(h_Sql, nFetch)
.head 7 -  Set oFall.nFallKey = n_FallKey
.head 7 -  Set oFall.hSql = h_Sql
.head 7 -  Call SalStatusSetText( hWndForm, "Load fall..." )
.head 7 +  If bOk and oFall.Load(  )
.head 8 +  If oFall.nLastCage
.head 9 -  Set oSourceCage.nCageID = oFall.nLastCage
.head 9 -  Set oSourceCage.hSql = h_Sql
.head 9 -  Call SalStatusSetText( hWndForm, "Load src cage..." )
.head 9 +  If NOT oSourceCage.Load(  )
.head 10 -  Set bOk = FALSE
.head 10 -  Call SalMessageBox("source not loaded", "", 0)
.head 8 +  Else
.head 9 -  Set oSourceCage.nCageID = 0
.head 8 -  Set oTargetCage.nCageID = nIDCage
.head 8 -  Set oTargetCage.hSql = h_Sql
.head 8 -  Call SalStatusSetText( hWndForm, "Load target cage..." )
.head 8 -  Set bOk = bOk and oTargetCage.Load(  )
.head 8 +  If NOT bOk
.head 9 -  Call SalMessageBox("target not loaded", "", 0)
.head 7 +  Else
.head 8 -  Call SalMessageBox("fall not loaded", "", 0)
.head 7 -  Set s_StatKey_New = sStatKey_Parm
.head 7 -  Set s_GruppeKey_New = sGruppeKey_Parm
.head 7 -  Set s_BettKey_New = sBettKey_Parm
.head 7 -  Set s_BG1_New = sBG1_Parm
.head 7 -  ! ******* !!!!!!! next block commented in order to try new way
.head 7 -  !
.head 7 -  ! Set n_BewNr_PrevBew = 0
.head 7 -  ! Set s_AbtKey_PervBew = ''
.head 7 -  !
.head 7 -  ! Set s_n_EID = SalNumberToStrX( n_EID, 0 ) 
.head 7 -  ! Set s_n_FallKey = SalNumberToStrX( n_FallKey, 0 ) 
.head 7 -  !
.head 7 -  ! Set dt_Future = SalDateConstruct( 2222, 12, 31, 23, 59, 59 )
.head 7 -  ! Set bOk = bOk and GetPrevBew(  )
.head 7 -  ! Call GetNewCageNr(  )
.head 7 +  ! If bOk And n_BewNr_PrevBew And ( s_Action = 'INS' Or s_Action = 'UPD' )
.head 8 -  ! AS 02.06.2004: "dt_BewZeit_New <= dt_BewZeit_PrevBew"  instead of "dt_BewZeit_New < dt_BewZeit_PrevBew"
.head 8 +  If dt_BewZeit_New <= dt_BewZeit_PrevBew
.head 9 -  ! Call SalMessageBox( GetMessageFromSection( "DYNA_BEWFNC", 1, 
"You are trying to Insert/Update a movement with START date 
which is earlier then existing movement(s) for the case !" ), 
GetMessageX( 203, 'Error' ), MB_IconExclamation )
.head 9 -  Set sErrMessage = GetMessageFromSection( "DYNA_BEWFNC", 1, 
"You are trying to Insert/Update a movement with START date 
which is earlier then existing movement(s) for the case !" )
.head 9 -  Set bOk = FALSE
.head 7 +  ! If bOk And ( s_Action = 'UPD' Or s_Action = 'DEL' )
.head 8 -  Set bOk = bOk And GetOldBewData(  )
.head 8 +  If s_Action = 'DEL'
.head 9 -  Set s_BA_New = s_BA_Old
.head 9 -  Set dt_BewZeit_New = dt_BewZeit_Old
.head 9 -  Set s_AbtKey_New = s_AbtKey_Old
.head 9 -  Set s_StatKey_New = s_StatKey_Old
.head 9 -  Set s_GruppeKey_New = s_GruppeKey_Old
.head 9 -  Set s_BettKey_New = s_BettKey_Old
.head 7 -  !
.head 7 -  ! Set nIDLe=0
.head 7 -  ! Set bDead= FALSE
.head 7 +  ! If bOk and SqlPrepareAndExecute( h_Sql, "
select 
 f.Le_id, @if(@ISNA(l.tod_datum), 0, 1)
From 
 Fall f 
 inner join le l on l.le_id = f.le_id
where 
  f.Fall_key = :n_FallKey
into :nIDLe, :bDead") 
.head 8 -  Set bOk = bOk and SqlFetchNext( h_Sql, nFetch )
.head 7 +  ! If Not GalConnect( hSql )
.head 8 -  Return FALSE
.head 7 -  ! Call SqlDisconnect(hSql)
.head 7 -  Call SalStatusSetText( hWndForm, "Initialized..." )
.head 7 -  Set bInitialized = bOk
.head 7 -  Return bOk
.head 5 +  Function: Finish
.head 6 -  Description:
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 +  If (NOT bPreserveSession) and h_Sql
.head 8 +  If sErrMessage
.head 9 -  Call SqlPrepareAndExecute(h_Sql, "rollback")
.head 9 +  If sErrMessage != "Canceled by user"
.head 10 -  Call SalMessageBox(sErrMessage, "Error", 0)
.head 8 +  Else
.head 9 -  Call SqlPrepareAndExecute(h_Sql, "commit")
.head 7 +  Else
.head 8 +  If sErrMessage
.head 9 -  Call SqlPrepareAndExecute(h_Sql, "rollback")
.head 9 +  If sErrMessage != "Canceled by user"
.head 10 -  Call SalMessageBox(sErrMessage, "Error", 0)
.head 8 +  Else
.head 9 -  Call SqlPrepareAndExecute(h_Sql, "commit")
.head 5 +  Function: GetFallData
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Number: nFetch
.head 7 -  Number: nBewPlanNrEE
.head 7 -  Date/Time: dtPlanEE
.head 6 +  Actions
.head 7 +  ! Select Case nBewBis_Method
.head 8 +  Case BEWBISNull_UseDauer
.head 9 -  Break 
.head 8 +  Case BEWBISNull_Endless
.head 9 -  Break 
.head 8 +  Default 
.head 9 -  Call SalMessageBox( GetMessageFromSection( "DYNA_BEWFNC", 2, "Unknown BewBis_Method.
Go to Stammdaten EINRICHTUNG and specify correct BewBis_Method." ), GetMessageX( 203, 'Error' ), MB_IconExclamation )
.head 9 -  Return FALSE
.head 7 -  !
.head 7 -  Set bOk = SqlPrepareAndExecute( h_Sql, " 
select	f.NAME1, f.GESCHL, 
	f.status, f.Dauer, 
	f.AE_Datum, f.AE_time, 
	f.EE_Datum, f.EE_Time, 
	f.VIS_KAT_KEY, vk.PATIENT
from	fall f, VIS_KAT vk
where	einricht_id = " || s_n_EID || "
   and	fall_key = " || s_n_FallKey || "
   and	vk.VIS_KAT_KEY = f.VIS_KAT_KEY
into	:s_Name1, :s_Sex,
	:s_FallStatus, :n_Dauer, 
	:dt_AE_Datum, :dt_AE_Time, 
	:dt_EE_Datum, :dt_EE_Time, 
	:s_VisKatKey, :s_IsPatient " )
.head 7 +  If Not bOk 
.head 8 -  ! Call SalMessageBox( "clsBewegungActions.GetFallData(  ):

SQL Error !    GetFallData() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Set sErrMessage = "clsBewegungActions.GetFallData(  ):

SQL Error !    GetFallData() failed !"
.head 8 -  Return FALSE
.head 7 -  Set bOk = bOk And SqlFetchNext( h_Sql, nFetch )
.head 7 +  If Not bOk
.head 8 -  ! Call SalMessageBox( "clsBewegungActions.GetFallData(  ):

No records were fetched for the specified FALL !    GetFallData() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Set sErrMessage = "clsBewegungActions.GetFallData(  ):

No records were fetched for the specified FALL !    GetFallData() failed !"
.head 8 -  Return FALSE
.head 7 -  !
.head 7 -  ! ! Get AE datetime
.head 7 -  Set dt_AE = __Calculate_AE( s_BA_New, dt_BewZeit_New, dt_AE_Datum, dt_AE_Time )
.head 7 +  If Not dt_AE
.head 8 -  ! Call SalMessageBox( "clsBewegungActions.GetFallData(  ):

AE-date does not exists !    GetFallData() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Set sErrMessage = "clsBewegungActions.GetFallData(  ):

AE-date does not exists !    GetFallData() failed !"
.head 8 -  Return FALSE
.head 7 -  !
.head 7 +  ! If Not n_Dauer
.head 8 -  Set n_Dauer = 2000
.head 7 -  !
.head 7 -  ! ! Get Plan END datetime
.head 7 -  ! *** temporary disabled ***
.head 7 +  ! If s_FallStatus = 'A' And nBewBis_Method = BEWBISNull_Endless And Not bPlanningMode
.head 8 -  Set dt_BewZeitBis_Plan = dt_Future
.head 7 +  ! Else
.head 8 -  Set nBewPlanNrEE = BewPlan_GetEE( n_EID, n_FallKey, h_Sql, dtPlanEE )
.head 8 +  If nBewPlanNrEE
.head 9 -  Set dt_BewZeitBis_Plan = dtPlanEE
.head 8 +  Else 
.head 9 +  If s_Action = 'DEL'
.head 10 -  ! Check where 'EE' is going to be deleted
.head 10 -  Set bOk = SqlPrepareAndExecute( h_Sql, "
select	bew_nr
from	"|| s_Schema || ".bewegung 
where	einricht_id = " || s_n_EID || "
   and	fall_key = " || s_n_FallKey || "
   and 	geloescht = 'N'
   and	ba_key = 'EE'
   and	bew_nr >= " || StrX( n_BewNr ) )
.head 10 -  Set bOk = bOk And SqlFetchNext( h_Sql, nFetch )
.head 10 +  If bOk
.head 11 -  ! EE is going to be deleted
.head 11 -  Set dt_EE_Datum = DATETIME_Null
.head 11 -  Set dt_EE_Time = DATETIME_Null
.head 10 +  Else 
.head 11 +  If nFetch = FETCH_EOF
.head 12 -  Set bOk = TRUE
.head 9 -  !
.head 9 +  If dt_EE_Datum = DATETIME_Null
.head 10 -  Set dt_BewZeitBis_Plan = dt_AE + n_Dauer
.head 9 +  Else 
.head 10 +  If dt_EE_Time = DATETIME_Null
.head 11 -  Set dt_BewZeitBis_Plan = dt_EE_Datum
.head 10 +  Else 
.head 11 -  Set dt_BewZeitBis_Plan = SalDateConstruct( 
		SalDateYear( dt_EE_Datum ), SalDateMonth( dt_EE_Datum ), SalDateDay( dt_EE_Datum ), 
		SalDateHour( dt_EE_Time ), SalDateMinute( dt_EE_Time ), SalDateSecond( dt_EE_Time ) )
.head 7 -  ! *** temporary disabled ***
.head 7 -  !
.head 7 -  Set bFallDataAreFetched = TRUE
.head 7 -  Return TRUE
.head 5 +  Function: GetOldBewData
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Number: nFetch
.head 7 -  Boolean: bOk
.head 6 +  Actions
.head 7 +  If Not n_BewNr
.head 8 -  Return FALSE
.head 7 -  Set bOk = SqlPrepareAndExecute( h_Sql, "
select	ba_key, geloescht, bew_zeit,
	abt_key, stat_key, 
	gruppe_key, bett_key,
	alt_abt_key,
	BG1_Key, BG2_Key, Cage_Nr
into	:s_BA_Old, :s_Geloescht_Old, :dt_BewZeit_Old,
	:s_AbtKey_Old, :s_StatKey_Old, 
	:s_GruppeKey_Old, :s_BettKey_Old,
	:s_AltAbtKey_Old,
	:s_BG1_Key_Old, :s_BG2_Key_Old, :n_CageNr_Old
from	bewegung 
where	einricht_id = :n_EID
   and 	Fall_key = :n_FallKey
   and 	Bew_Nr = :n_BewNr " )
.head 7 -  Set bOk = bOk And SqlFetchNext( h_Sql, nFetch )
.head 7 +  If bOk
.head 8 +  If ( s_Action = 'UPD' ) And ( s_BA_Old != s_BA_New )
.head 9 -  Call SalMessageBox( GetMessageFromSection( "DYNA_BEWFNC", 3, "It is prohibited to change the type of movement !" ), 
	GetMessageX( 203, 'Error' ), MB_IconExclamation )
.head 9 -  Set bOk = FALSE
.head 7 -  Return bOk
.head 5 +  Function: GetPrevBew
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Number: nFetch
.head 7 -  Boolean: bOk
.head 7 -  String: sSqlGetPrevBew
.head 6 +  Actions
.head 7 +  If bPlanningMode
.head 8 -  ! As the first we are searing for the last existing BEW_PLAN
.head 8 -  ! Set sSqlGetPrevBew = "
select	b.bew_nr, b.ba_key, 
	b.bew_zeit, 
	b.abt_key, bl.stat_key, 
	bl.gruppe_key, bl.bett_key
into	:n_BewNr_PrevBew, :s_BA_PervBew, 
	:dt_BewZeit_PrevBew, 
	:s_AbtKey_PervBew, :s_StatKey_PervBew, 
	:s_GruppeKey_PervBew, :s_BettKey_PervBew
from	bewegung_plan b, BETT_LOCKS bl
where	b.einricht_id = " || StrX( n_EID ) || "
   and 	b.Fall_key = " || StrX( n_FallKey ) || "
   and	bl.einricht_id = " || StrX( n_EID ) || "
   and	bl.PLANBEW_EINR = b.einricht_id
   and	bl.PLANBEW_FALL = b.Fall_key
   and	bl.PLANBEW_BEW = b.bew_nr" 
.head 8 -  Set sSqlGetPrevBew = "
select	b.bew_nr, b.ba_key, 
	b.bew_zeit, 
	b.abt_key, bl.stat_key, 
	bl.gruppe_key, bl.bett_key
into	:n_BewNr_PrevBew, :s_BA_PervBew, 
	:dt_BewZeit_PrevBew, 
	:s_AbtKey_PervBew, :s_StatKey_PervBew, 
	:s_GruppeKey_PervBew, :s_BettKey_PervBew
from	bewegung_plan b, BETT_LOCKS bl
where	b.einricht_id = " || StrX( n_EID ) || "
   and 	b.Fall_key = " || StrX( n_FallKey ) || "
   and	bl.einricht_id = " || StrX( n_EID ) || "
   and	bl.PLANBEW_EINR = b.einricht_id
   and	bl.PLANBEW_FALL = b.Fall_key
   and	bl.PLANBEW_BEW = b.bew_nr" 
.head 8 +  If n_BewNr
.head 9 -  Set sSqlGetPrevBew = sSqlGetPrevBew || "
   and 	Bew_Nr < " || StrX( n_BewNr ) 
.head 8 +  ! AS 20.02.2004: changed "ODRDER BY"
.head 9 -  ! Set sSqlGetPrevBew = sSqlGetPrevBew || "
order by	bew_zeit desc " 
.head 8 -  Set sSqlGetPrevBew = sSqlGetPrevBew || "
order by	bew_nr desc " 
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSqlGetPrevBew )
.head 8 -  Set bOk = bOk And SqlFetchNext( h_Sql, nFetch )
.head 8 +  If bOk
.head 9 -  Set bOk = SqlPrepareAndExecute( h_Sql, "
select	bl.stat_key, bl.gruppe_key, bl.bett_key
into	:s_StatKey_PervBew, :s_GruppeKey_PervBew, :s_BettKey_PervBew
from	BETT_LOCKS bl
where	bl.einricht_id = " || StrX( n_EID ) || "
   and	bl.PLANBEW_EINR = " || StrX( n_EID ) || "
   and	bl.PLANBEW_FALL = " || StrX( n_FallKey ) || "
   and	bl.PLANBEW_BEW = " || StrX( n_BewNr_PrevBew ) || " " )
.head 9 -  Set bOk = bOk And SqlFetchNext( h_Sql, nFetch )
.head 9 -  Set bPervPlanBew_Exists = TRUE
.head 9 -  Return TRUE
.head 7 -  !
.head 7 -  ! We get the last BEWEGUNG (even for PlanningMode, if BEW_PLAN does not exist for the FALL yet)
.head 7 -  Set sSqlGetPrevBew = "
select	bew_nr, ba_key, 
	bew_zeit, bew_zeit_bis,
	abt_key, stat_key, 
	gruppe_key, bett_key, cage_nr, Cage_ID
into	:n_BewNr_PrevBew, :s_BA_PervBew, 
	:dt_BewZeit_PrevBew, :dt_BewZeitBis_PrevBew,
	:s_AbtKey_PervBew, :s_StatKey_PervBew, 
	:s_GruppeKey_PervBew, :s_BettKey_PervBew, :n_CageNr_PrevBew, :n_CageID_PervBew
from	bewegung 
where	einricht_id = " || StrX( n_EID ) || "
   and 	Fall_key = " || StrX( n_FallKey ) || "
   and 	Geloescht = 'N' " 
.head 7 +  If n_BewNr
.head 8 -  Set sSqlGetPrevBew = sSqlGetPrevBew || "
   and 	Bew_Nr < " || StrX( n_BewNr ) 
.head 7 +  ! AS 20.02.2004: changed "ODRDER BY"
.head 8 -  ! Set sSqlGetPrevBew = sSqlGetPrevBew || "
order by	bew_zeit desc " 
.head 7 -  Set sSqlGetPrevBew = sSqlGetPrevBew || "
order by	bew_nr desc " 
.head 7 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSqlGetPrevBew )
.head 7 -  Set bOk = bOk And SqlFetchNext( h_Sql, nFetch )
.head 7 +  If Not bOk
.head 8 -  Set n_BewNr_PrevBew = 0
.head 8 +  If nFetch = FETCH_EOF
.head 9 -  Set bOk = TRUE
.head 7 -  ! Call SalMessageBox( "n_BewNr_PrevBew=" || StrX( n_BewNr_PrevBew ), "GetPrevBew()", 0 )
.head 7 -  Return bOk
.head 5 +  Function: GetLastBewData
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Number: nFetch
.head 6 +  Actions
.head 7 +  If s_Action = 'DEL'
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, "
select	bew_nr, ba_key, ABT_KEY, STAT_KEY, BENUTZER_ID, cage_nr, bett_key, gruppe_key
from	bewegung 
where	einricht_id = :n_EID
   and 	fall_key = :n_FallKey
   and 	geloescht = 'N'
order by	bew_nr desc
into	:n_BewNr_Last, :s_BA_Last, :s_AbtKey_Last, :s_StatKey_Last, :n_BenutzerId_Last, :n_CageNr_Last, :s_BettKey_Last, :s_GruppeKey_Last
" )
.head 8 -  Set bOk = bOk And SqlFetchNext( h_Sql, nFetch )
.head 8 +  If Not bOk And nFetch = FETCH_EOF
.head 9 -  ! such situation should not happen, but if it happens...
.head 9 -  Set n_BewNr_Last = NUMBER_Null
.head 9 -  Set s_BA_Last = ''
.head 9 -  Set s_AbtKey_Last = ''
.head 9 -  Set s_StatKey_Last = ''
.head 9 -  Set s_GruppeKey_Last = ''
.head 9 -  Set s_BettKey_Last = ''
.head 9 -  Set n_BenutzerId_Last = NUMBER_Null
.head 9 -  Set bOk = TRUE
.head 7 +  Else
.head 8 -  Set n_BewNr_Last = n_BewNr
.head 8 -  Set s_BA_Last = s_BA_New
.head 8 -  Set s_AbtKey_Last = s_AbtKey_New
.head 8 -  Set s_StatKey_Last = s_StatKey_New
.head 8 -  Set s_GruppeKey_Last = s_GruppeKey_New
.head 8 -  Set s_BettKey_Last = s_BettKey_New
.head 8 -  Set n_BenutzerId_Last = nUserId
.head 8 -  Set n_CageNr_Last=n_CageNr_New
.head 8 -  Set bOk = TRUE
.head 7 -  Return bOk
.head 5 +  Function: GetNewCageNr
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  String: sSQL
.head 7 -  Number: nFetch
.head 7 -  String: sOldObject
.head 6 +  Actions
.head 7 +  ! If not s_GruppeKey_New or not s_StatKey_New
.head 8 -  Set n_CageNr_New=NUMBER_Null
.head 8 -  Return TRUE
.head 7 -  ! Set n_CageNr_New=0
.head 7 -  ! Set n_ScreenCageNr_New =0
.head 7 -  ! Set sSQL = "select distinct @NULLVALUE(g.UNIQ_NR,0) , g.SCREEN_CAGE_NR
from	
 GRUPPE g
 inner join fall f on f.last_cage_id = g.id and f.geloescht = 'N' and f.ee_datum is null
where	
 g.id = :nIDCage
into  	:n_CageNr_New, :n_ScreenCageNr_New"
.head 7 -  ! Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 7 +  ! If NOT (SqlFetchNext( h_Sql, nFetch ) or b_BA_SH or (s_BA_New = "EE"))
.head 8 -  Set bCreateNewCageNr = TRUE
.head 8 -  Set bCreateNewScreenCageNr = TRUE
.head 7 +  ! Else
.head 8 +  If s_BA_New = "VE"
.head 9 -  Set bCreateNewScreenCageNr = TRUE
.head 7 +  If oTargetCage.sCadaverType
.head 8 -  Return TRUE
.head 7 +  If NOT oTargetCage.nFallsInCage
.head 8 -  ! Set bOk = bOk and SqlPrepareAndExecute(h_Sql, "lock table gruppe")
.head 8 -  ! Call SalMessageBox(SalNumberToStrX(oTargetCage.nUniqNr,0), "U",0)
.head 8 +  If oTargetCage.nUniqNr<1
.head 9 -  Set oTargetCage.nUniqNr = SalStrToNumber( GetNewKeyX(hSession, "GRUPPE", "UNIQ_NR" ) )
.head 8 +  If oTargetCage.nUniqNr
.head 9 -  Set sOldObject = code2from5Interleaved( oTargetCage.nUniqNr )
.head 9 -  Set bCreateNewScreenCageNr = TRUE
.head 9 -  Set sSQL = "uniq_nr = :oTargetCage.nUniqNr, gruppe_bar = :sOldObject"
.head 8 +  Else
.head 9 -  Set bOk = FALSE
.head 7 +  Else
.head 8 +  If s_BA_New = "VE"
.head 9 -  Set bCreateNewScreenCageNr = TRUE
.head 7 +  If bOk and bCreateNewScreenCageNr
.head 8 -  ! Set bOk = bOk and SqlPrepareAndExecute(h_Sql, "lock table abteilung")
.head 8 -  Set bOk = GetNewScreenCageNR()
.head 8 +  If bOk 
.head 9 +  If sSQL
.head 10 -  Set sSQL = sSQL || ", "
.head 9 -  Set sSQL = sSQL || "screen_cage_nr = :oTargetCage.nScrUniqNr"
.head 7 +  If sSQL
.head 8 -  Set bOk = SqlPrepareAndExecute(h_Sql, "update gruppe set "||sSQL||" where id = :oTargetCage.nCageID")
.head 7 -  Return bOk
.head 7 -  !
.head 7 +  ! If bCreateNewCageNr or bCreateNewScreenCageNr
.head 8 -  Set bOk = bOk and SqlPrepareAndExecute(h_Sql, "lock table gruppe")
.head 8 +  If bCreateNewCageNr
.head 9 -  Set n_CageNr_New = SalStrToNumber( GetNewKeyX(hSession, "GRUPPE", "UNIQ_NR" ) )
.head 9 +  If NOT n_CageNr_New
.head 10 -  Set bOk = FALSE
.head 9 +  Else 
.head 10 -  Set sOldObject = code2from5Interleaved( n_CageNr_New )
.head 10 -  Set sSQL = "uniq_nr = :n_CageNr_New, gruppe_bar = :sOldObject"
.head 8 +  If bOk and bCreateNewScreenCageNr
.head 9 -  Set bOk = bOk and SqlPrepareAndExecute(h_Sql, "lock table abteilung")
.head 9 -  Set bOk = GetNewScreenCageNR()
.head 9 +  If bOk 
.head 10 +  If sSQL
.head 11 -  Set sSQL = sSQL || ", "
.head 10 -  Set sSQL = sSQL || "screen_cage_nr = :n_ScreenCageNr_New"
.head 8 +  If sSQL
.head 9 -  Set bOk = SqlPrepareAndExecute(h_Sql, "update gruppe set "||sSQL||" where id = :nIDCage")
.head 7 -  ! Return bOk
.head 5 -  !
.head 5 +  Function: CheckUnqNameInGrp
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  ! Boolean: bOk
.head 7 -  Boolean: bExist
.head 7 -  ! String: sBewZeitBis4SQL
.head 7 -  ! String: sSQL_CheckDuplication
.head 7 -  Number: nFetch
.head 7 -  ! Date/Time: dtCheckOnDate_Von
.head 7 -  ! Date/Time: dtCheckOnDate_Bis
.head 7 -  Boolean: bEarTagDefaultZero
.head 6 +  Actions
.head 7 -  Set bEarTagDefaultZero = GalGetProfileBooleanX("Settings", "SetAllEarTagsDefaultZero", FALSE,  sUserINIFileName )
.head 7 +  If Not bUnqNameInGrp
.head 8 -  Return TRUE
.head 7 +  If s_BA_New = "EE"
.head 8 -  Return TRUE
.head 7 +  If NOT oTargetCage.nFallsInCage
.head 8 -  Return TRUE
.head 7 -  Set nFetch = 0
.head 7 -  Set bExist = FALSE
.head 7 +  While nFetch < oTargetCage.nFallsInCage
.head 8 +  If not bEarTagDefaultZero and (oTargetCage.oFalls[nFetch].sEarTag = oFall.sEarTag) and (oTargetCage.oFalls[nFetch].sSex = oFall.sSex)
.head 9 -  Set bExist = TRUE
.head 9 -  Break
.head 8 -  Set nFetch = nFetch + 1
.head 7 -  Set bExist = bExist and (IDYES != SalMessageBox( "Name duplication in Gruppe is prohibited !
   Do you still want to insert the animals?",
	"Warning", MB_YesNo ))
.head 7 -  Return NOT bExist
.head 7 -  !
.head 7 +  ! If (s_StatKey_New = '') Or (s_GruppeKey_New = '')
.head 8 -  Return TRUE
.head 7 +  ! If Not ((s_BA_New = 'AE') Or (s_BA_New = 'UE') Or (s_BA_New = 'VE') Or (s_BA_New = 'RE'))
.head 8 -  Return TRUE
.head 7 +  ! If s_Action = 'DEL'
.head 8 -  Return TRUE
.head 7 +  ! Else If s_Action = 'UPD'
.head 8 +  If ( s_StatKey_New = s_StatKey_Old ) And ( s_GruppeKey_New = s_GruppeKey_Old ) And ( s_BettKey_New = s_BettKey_Old )
.head 9 -  Return TRUE
.head 7 +  ! If Not (s_IsPatient = 'J')
.head 8 -  Return TRUE
.head 7 -  !
.head 7 -  ! Set dtCheckOnDate_Von = dt_BewZeit_New
.head 7 +  ! Select Case nBewBis_Method
.head 8 +  Case BEWBISNull_UseDauer		! 0
.head 9 -  Set dtCheckOnDate_Bis = dt_BewZeitBis_Plan
.head 9 -  Break 
.head 8 +  Case BEWBISNull_Endless		! 1
.head 9 -  Set dtCheckOnDate_Bis = dt_Future
.head 9 -  Break 
.head 8 +  Default 
.head 9 -  Set dtCheckOnDate_Bis = dt_Future
.head 9 -  Break 
.head 7 -  !
.head 7 -  ! Set sSQL_CheckDuplication = "
select	b2.FALL_KEY
from	sysadm.FALL f2, sysadm.BEWEGUNG b2
where	f2.EINRICHT_ID = " || StrX( n_EID ) || "
  and	not (f2.FALL_KEY = " || StrX( n_FallKey ) || ")
  and	f2.NAME1 = '" || s_Name1 || "'
  and	f2.GESCHL = '" || s_Sex || "'
  and	f2.GELOESCHT = 'N'
  and	b2.EINRICHT_ID = " || StrX( n_EID ) || "
  and	b2.FALL_KEY = f2.FALL_KEY
  and	b2.GELOESCHT = 'N'
  and	b2.BA_KEY in ( 'AE', 'UE', 'VE', 'RE' )
  and	b2.STAT_KEY = '" || s_StatKey_New || "'
  and	b2.GRUPPE_KEY = '" || s_GruppeKey_New || "'
  and	b2.BEW_ZEIT < :dtCheckOnDate_Bis
  and	( b2.BEW_ZEIT_BIS is null or b2.BEW_ZEIT_BIS > :dtCheckOnDate_Von ) 
 "
.head 7 -  !
.head 7 -  ! Call VisWaitCursor( TRUE )
.head 7 -  ! Set bOk = SqlPrepareAndExecute( h_Sql, sSQL_CheckDuplication )
.head 7 -  ! Set bExist = bOk And SqlFetchNext( h_Sql, nFetch )
.head 7 +  ! If nFetch > FETCH_EOF
.head 8 -  Set bOk = FALSE
.head 7 -  !
.head 7 -  ! Call VisWaitCursor( FALSE )
.head 7 +  ! If bOk And bExist
.head 8 -  Call SalMessageBox( GetMessageFromSection( "DYNA_BEWFNC", 4, "Name duplication in Gruppe is prohibited !" ), 
	GetMessageX( 201, 'Warning' ), MB_IconExclamation )
.head 8 -  Set bContinueEditAfterError = TRUE
.head 8 -  Return FALSE
.head 7 +  ! If bOk And bExist
.head 8 -  Call SqlPrepareAndExecute(h_Sql, "rollback")
.head 8 +  If IDYES = SalMessageBox( GetMessageFromSection( "DYNA_BEWFNC", 4, "Name duplication in Gruppe is prohibited !" ) || "
   Do you still want to insert the animals?",
	GetMessageX( 201, 'Warning' ), MB_YesNo )
.head 9 -  Call SqlPrepareAndExecute(h_Sql, "lock table xlock")
.head 9 -  Return TRUE
.head 8 +  Else 
.head 9 -  Set bContinueEditAfterError = TRUE
.head 9 -  Set bOk = FALSE
.head 7 +  ! If NOT bOk
.head 8 -  Set sErrMessage = "clsBewegungActions.BeforeInsert(  ): CheckUnqNameInGrp() failed !"
.head 7 -  ! Return bOk
.head 5 +  ! Function: CheckUnqNameInGrp !***** old one
.head 6 -  Description: 
.head 6 +  Returns 
.head 7 -  Boolean: 
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  Boolean: bOk
.head 7 -  Boolean: bExist
.head 7 -  ! String: sBewZeitBis4SQL
.head 7 -  String: sSQL_CheckDuplication
.head 7 -  Number: nFetch
.head 7 -  Date/Time: dtCheckOnDate_Von
.head 7 -  Date/Time: dtCheckOnDate_Bis
.head 6 +  Actions 
.head 7 +  ! AS 01.06.2004
.head 8 +  ! If Not GalConfig_GetBool( 'Settings', 'UniqueNameInGruppe', FALSE, cfgDB | cfgSYSTEM )
.head 9 -  Return TRUE
.head 7 +  If Not bUnqNameInGrp
.head 8 -  Return TRUE
.head 7 +  If (s_StatKey_New = '') Or (s_GruppeKey_New = '')
.head 8 -  Return TRUE
.head 7 +  If Not ((s_BA_New = 'AE') Or (s_BA_New = 'UE') Or (s_BA_New = 'VE') Or (s_BA_New = 'RE'))
.head 8 -  Return TRUE
.head 7 +  If s_Action = 'DEL'
.head 8 -  Return TRUE
.head 7 +  Else If s_Action = 'UPD'
.head 8 +  If ( s_StatKey_New = s_StatKey_Old ) And ( s_GruppeKey_New = s_GruppeKey_Old ) And ( s_BettKey_New = s_BettKey_Old )
.head 9 -  Return TRUE
.head 7 +  If Not (s_IsPatient = 'J')
.head 8 -  Return TRUE
.head 7 -  !
.head 7 -  Set dtCheckOnDate_Von = dt_BewZeit_New
.head 7 +  ! Select Case nBewBis_Method
.head 8 +  Case BEWBISNull_UseDauer		! 0
.head 9 -  Set dtCheckOnDate_Bis = dt_BewZeitBis_Plan
.head 9 -  Break 
.head 8 +  Case BEWBISNull_Endless		! 1
.head 9 -  Set dtCheckOnDate_Bis = dt_Future
.head 9 -  Break 
.head 8 +  Default 
.head 9 -  Set dtCheckOnDate_Bis = dt_Future
.head 9 -  Break 
.head 7 -  !
.head 7 -  Set sSQL_CheckDuplication = "
select	b2.FALL_KEY
from	sysadm.FALL f2, sysadm.BEWEGUNG b2
where	f2.EINRICHT_ID = " || StrX( n_EID ) || "
  and	not (f2.FALL_KEY = " || StrX( n_FallKey ) || ")
  and	f2.NAME1 = '" || s_Name1 || "'
  and	f2.GESCHL = '" || s_Sex || "'
  and	f2.GELOESCHT = 'N'
  and	b2.EINRICHT_ID = " || StrX( n_EID ) || "
  and	b2.FALL_KEY = f2.FALL_KEY
  and	b2.GELOESCHT = 'N'
  and	b2.BA_KEY in ( 'AE', 'UE', 'VE', 'RE' )
  and	b2.STAT_KEY = '" || s_StatKey_New || "'
  and	b2.GRUPPE_KEY = '" || s_GruppeKey_New || "'
  and	b2.BEW_ZEIT < :dtCheckOnDate_Bis
  and	( b2.BEW_ZEIT_BIS is null or b2.BEW_ZEIT_BIS > :dtCheckOnDate_Von ) 
 "
.head 7 -  !
.head 7 -  Call VisWaitCursor( TRUE )
.head 7 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL_CheckDuplication )
.head 7 -  Set bExist = bOk And SqlFetchNext( h_Sql, nFetch )
.head 7 +  If nFetch > FETCH_EOF
.head 8 -  Set bOk = FALSE
.head 7 -  !
.head 7 -  Call VisWaitCursor( FALSE )
.head 7 +  ! If bOk And bExist
.head 8 -  Call SalMessageBox( GetMessageFromSection( "DYNA_BEWFNC", 4, "Name duplication in Gruppe is prohibited !" ), 
	GetMessageX( 201, 'Warning' ), MB_IconExclamation )
.head 8 -  Set bContinueEditAfterError = TRUE
.head 8 -  Return FALSE
.head 7 +  ! If bOk And bExist
.head 8 -  Call SqlPrepareAndExecute(h_Sql, "rollback")
.head 8 +  If IDYES = SalMessageBox( GetMessageFromSection( "DYNA_BEWFNC", 4, "Name duplication in Gruppe is prohibited !" ) || "
   Do you still want to insert the animals?",
	GetMessageX( 201, 'Warning' ), MB_YesNo )
.head 9 -  Call SqlPrepareAndExecute(h_Sql, "lock table xlock")
.head 9 -  Return TRUE
.head 8 +  Else 
.head 9 -  Set bContinueEditAfterError = TRUE
.head 9 -  Set bOk = FALSE
.head 7 +  If NOT bOk
.head 8 -  Set sErrMessage = "clsBewegungActions.BeforeInsert(  ): CheckUnqNameInGrp() failed !"
.head 7 -  Return bOk
.head 5 +  Function: CheckPlanBewBefore
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 +  If Not (s_IsPatient = 'J')
.head 8 -  Return TRUE
.head 7 -  Return BeforeBew_CheckPlanBew( s_BA_New, n_FallKey, dt_BewZeit_New, 
			s_AbtKey_New, s_StatKey_New, s_GruppeKey_New, s_BettKey_New, h_Sql )
.head 5 +  Function: CheckLitterBefore
.head 6 -  Description: The function should do:
if Sex='M' return TRUE;
if Sex='W' then
 - find unweend Litter for the mother,
 - find all other existing mothers in the correspondent Family RS (of the Litter)
 - if the only one mother exists then return TRUE, other wise conlinue
 - ask "This mother has a litter. Shall the litter stay connected with this moving mother ? Yes/No"
 -- if Yes - remove all other mothers from the FalilyRS
 -- if No - remove the current mother from the FalilyRS
if error happened - return FALSE
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Number: nCount
.head 7 -  Number: nFetch
.head 7 -  Number: nParentsCount
.head 7 -  String: sParentSex
.head 7 -  Sql Handle: hSql
.head 6 +  Actions
.head 7 +  If s_BA_New = 'EE'
.head 8 -  Return TRUE
.head 7 -  Set bOk = TRUE
.head 7 +  If s_Sex = 'W'
.head 8 -  Set nUnweanedLitterID = RS_GetUnweanedLitter4Mother_OnHandle ( h_Sql, n_FallKey )
.head 8 +  If nUnweanedLitterID 
.head 9 -  Set nRelShip_ID_Parm = RS_GetFamilyRSByLitterID_OnHandle ( h_Sql, nUnweanedLitterID )
.head 9 +  If nRelShip_ID_Parm
.head 10 +  If RS_GetAllParents_4FamilyRS_OnHandle ( h_Sql, nRelShip_ID_Parm,'W', nParents ) > 1
.head 11 -  Call SqlPrepareAndExecute(h_Sql, "rollback")
.head 11 +  If IDYES = SalMessageBox( GetMessageX (11061, 'This mother has a litter. Shall the litter stay connected with this moving mother ?'), 'Moving...', MB_IconQuestion | MB_YesNo )
.head 12 -  Set bNeedToModify_LitterStay = TRUE
.head 11 +  Else
.head 12 -  Set bNeedToModify_LitterRemove = TRUE
.head 7 -  Return bOk
.head 5 +  Function: CheckLitter4Fall
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Boolean: bDelete
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Number: nFetch
.head 6 +  Actions
.head 7 +  If nUnweanedLitterID and nRelShip_ID_Parm and s_Sex = "W"
.head 8 -  Set bOk = SqlPrepareAndExecute (h_Sql, "
	select 	b.fall_Key
	from 	sysadm.Relship_fall r, sysadm.Bewegung b
	where 	r.Relship_id = :nRelShip_ID_Parm
	and 	r.FallRolle_key= 'PARENT'
	and 	r.Einricht_id=:nEinrichtId
	and 	r.Fall_Key= b.fall_Key
	and	b.Fall_Key != :n_FallKey
                and          b.einricht_id=r.einricht_id
	and 	b.BA_KEY in ( 'AE', 'VE', 'UE', 'RE' )
	and 	b.Bew_Zeit <= :dt_BewZeit_New
	and 	(b.Bew_zeit_bis > :dt_BewZeit_New or Bew_zeit_bis is Null)
	and	b.Geloescht='N'
	into 	:nFall_Key")
.head 8 -  Call SqlFetchNext( h_Sql, nFetch )
.head 8 +  If n_FallKey !=NUMBER_Null and n_FallKey != 0
.head 9 -  Return TRUE
.head 8 +  If bDelete
.head 9 -  Call DeleteUnWeanIfParentDead(nUnweanedLitterID)
.head 8 +  Else
.head 9 -  ! Call SqlPrepareAndExecute(h_Sql, "rollback")
.head 9 -  Set nFetch = SalMessageBox( 'There are UnweanLitters in cage. If Yes Unwean will be delete with Mother', 'Moving...', MB_IconQuestion | MB_YesNo )
.head 9 -  ! Call SqlPrepareAndExecute(h_Sql, "lock table xlock")
.head 9 +  If nFetch = IDYES
.head 10 -  Set bNeedToModify_LitterDead = TRUE
.head 9 +  Else
.head 10 -  Return FALSE
.head 7 -  Return TRUE
.head 5 +  Function: DeleteUnWeanIfParentDead
.head 6 -  Description:
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Number: nUnweanedLitterID
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Number: nFetch
.head 6 +  Actions
.head 7 +  If nUnweanedLitterID>0
.head 8 -  Set bOk = SqlPrepareAndExecute (h_Sql, "Delete  from litter_child lc
				where lc.fall_key is null
             				and @NULLVALUE(lc.dead,0)='0' 
				and exists(	select ref.FALL_KEY
						from sysadm.relship_fall ref, sysadm.Litter lit 
						where lit.PLACE_RELSHIP_ID=ref.RELSHIP_ID 
						and lit.Litter_Id=lc.Litter_id 
						and ref.fall_Key=:n_FallKey)
  	   			and not exists(
	select bew.Fall_key from ssadm.bewegung bew, sysadm.litter l, sysadm.relationship r
   	where lc.litter_id=l.litter_id
    	and l.PLACE_RELSHIP_ID=r.RELSHIP_ID
         	and r.RS_GRUPPE_KEY=bew.GRUPPE_KEY 
     	and r.RS_STAT_KEY=bew.STAT_KEY 
      	and bew.BA_KEY in ( 'AE', 'VE', 'UE', 'RE' )
       	and bew.bew_zeit <= @NOW
            	and  (bew.bew_zeit_bis>@NOW or bew.bew_zeit_bis is null )
                and exists( 	select rf.FALL_KEY 
			from relship_fall rf 
			where r.RELSHIP_ID=rf.RELSHIP_ID 
			and rf.fall_Key=bew.FALL_KEy ))
	")
.head 5 +  Function: CheckRS4Fall_OnBewChange 
.head 6 -  Description: Returns FALSE if Error happened
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bSet_bRS_WithoutCommit_Before
.head 7 -  Boolean: bSet_bRS_WithoutCommit_After
.head 7 -  Number: nRet
.head 6 +  Actions
.head 7 +  If Not bBreedingIsON
.head 8 -  Return TRUE
.head 7 +  ! If s_FallStatus != 'A'
.head 8 -  ! Nothing to do. The fall has to be with 'Aufnahme' status
.head 8 -  Return TRUE
.head 7 +  ! If Not (s_IsPatient = 'J')
.head 8 -  Return TRUE
.head 7 -  !
.head 7 -  !
.head 7 -  ! Return TRUE
.head 7 +  If (s_BA_New = 'EE' Or s_BA_New = 'UE' Or s_BA_New = 'VE' Or s_BA_New = 'IE') And oFall.nLastBewNr
.head 8 -  Set bAddInRS = FALSE
.head 8 -  Set bCloseRS = TRUE
.head 8 -  Set bSet_bRS_WithoutCommit_Before = TRUE
.head 8 -  Set bSet_bRS_WithoutCommit_After = FALSE
.head 8 +  If RS_IsRolingMating_ForSession(hSession, n_FallKey, oTargetCage.nCageID)
.head 9 +  If s_BA_New = 'EE'
.head 10 -  ! Call SalMessageBox("1","",0)
.head 10 +  ! If RS_CheckAndCloseFall_InRS_ForSession(hSession,  n_FallKey, n_BewNr, n_AnswerMode, bSet_bRS_WithoutCommit_Before, bSet_bRS_WithoutCommit_After ) < 0
.head 11 -  Call SalMessageBox("1-1","",0)
.head 11 -  Return FALSE
.head 10 -  Set nRet = RS_CheckFall_InRS_ForSession(hSession,n_FallKey,oFall.sSex, oSourceCage.sRack ,oSourceCage.sCage ,oSourceCage.nCageID, oFall.dtLastBew, dt_BewZeit_New,oFall.sPrevBA,n_AnswerMode )
.head 10 +  If nRet = - 1
.head 11 -  Set bCloseRS = FALSE
.head 11 -  Return FALSE
.head 10 +  Else If nRet = 0
.head 11 -  Set bCloseRS = FALSE
.head 10 +  ! If RS_CheckFall_InRS_ForSession(hSession,n_FallKey,s_Sex, s_StatKey_New,s_GruppeKey_New,nIDCage,dt_BewZeit_New,DATETIME_Null,s_BA_New,n_AnswerMode ) < 1
.head 11 -  Call SalMessageBox("1-1","",0)
.head 11 -  Return FALSE
.head 9 +  Else
.head 10 +  ! If RS_CheckAndCloseFall_InRS_ForSession(hSession,  n_FallKey, n_BewNr_PrevBew, n_AnswerMode, bSet_bRS_WithoutCommit_Before, bSet_bRS_WithoutCommit_After ) < 0
.head 11 -  Return FALSE
.head 10 -  Set nRet = RS_CheckFall_InRS_ForSession(hSession,n_FallKey,oFall.sSex, oSourceCage.sRack ,oSourceCage.sCage ,oSourceCage.nCageID, oFall.dtLastBew, dt_BewZeit_New,oFall.sPrevBA,n_AnswerMode )
.head 10 +  If nRet  =  -1
.head 11 -  ! Call SalMessageBox("1-3","",0)
.head 11 -  Set bCloseRS = FALSE
.head 11 -  Return FALSE
.head 10 +  Else If nRet = 0
.head 11 -  Set bCloseRS = FALSE
.head 11 -  ! Call SalMessageBox("1-4","",0)
.head 8 +  Else
.head 9 +  ! If RS_CheckAndCloseFall_InRS_ForSession(hSession,  n_FallKey, n_BewNr_PrevBew, n_AnswerMode, bSet_bRS_WithoutCommit_Before, bSet_bRS_WithoutCommit_After ) < 0
.head 10 -  Return FALSE
.head 9 -  Set nRet = RS_CheckFall_InRS_ForSession(hSession,n_FallKey,oFall.sSex, oSourceCage.sRack ,oSourceCage.sCage ,oSourceCage.nCageID, oFall.dtLastBew, dt_BewZeit_New,oFall.sPrevBA,n_AnswerMode )
.head 9 +  If nRet = -1
.head 10 -  Set bCloseRS = FALSE
.head 10 -  Return FALSE
.head 9 +  Else If nRet = 0
.head 10 -  Set bCloseRS = FALSE
.head 7 -  !
.head 7 +  If Not bDead
.head 8 +  If s_BA_New = 'AE' Or s_BA_New = 'UE' Or s_BA_New = 'VE' Or s_BA_New = 'RE'
.head 9 -  Set bSet_bRS_WithoutCommit_Before = TRUE
.head 9 -  Set bSet_bRS_WithoutCommit_After = FALSE
.head 9 +  ! If RS_CheckAndAddFall_ToRS_ForSession(hSession, n_FallKey, n_BewNr, n_AnswerMode, bSet_bRS_WithoutCommit_Before, bSet_bRS_WithoutCommit_After ) < 0
.head 10 -  Return FALSE
.head 9 +  ! If RS_CheckFall_ToRS_ForSession(hSession, n_FallKey, s_StatKey_New,s_GruppeKey_New,nIDCage, dt_BewZeit_New, dt_BewZeit_New, s_BA_New, s_BA_New,n_AnswerMode  ) < 0
.head 10 -  Set bAddInRS = TRUE
.head 10 -  Return FALSE
.head 9 -  Set nRet = RS_CheckForAddFall_ForSession( hSession, n_FallKey, oFall.nLastBewNr + 1, oTargetCage.sRack,oTargetCage.sCage,oTargetCage.nCageID, dt_BewZeit_New, DATETIME_Null , s_BA_New, oFall.sSex,n_AnswerMode )
.head 9 +  If nRet < 0
.head 10 -  Set bAddInRS = FALSE
.head 10 +  If nRet = -2
.head 11 -  Set sErrMessage = "Canceled by user"
.head 10 -  Return FALSE
.head 9 +  Else
.head 10 -  Set bAddInRS = TRUE
.head 7 -  Return TRUE
.head 7 -  ! Set bOk = bOk And RS_CheckFall_InRS_ForSession(hSession,n_FallKey,s_StatKey_New,s_GruppeKey_New,nIDCage,dt_BewZeit_New,dt_BewZeit_New,s_BA_New,0 )
.head 5 +  ! Function: CheckRS4Fall_OnBewChange ! ***** old one
.head 6 -  Description: Returns FALSE if Error happened
.head 6 +  Returns 
.head 7 -  Boolean: 
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  Boolean: bSet_bRS_WithoutCommit_Before
.head 7 -  Boolean: bSet_bRS_WithoutCommit_After
.head 7 -  Number: nRet
.head 6 +  Actions 
.head 7 +  If Not bBreedingIsON
.head 8 -  Return TRUE
.head 7 +  If s_FallStatus != 'A'
.head 8 -  ! Nothing to do. The fall has to be with 'Aufnahme' status
.head 8 -  Return TRUE
.head 7 +  If Not (s_IsPatient = 'J')
.head 8 -  Return TRUE
.head 7 -  !
.head 7 -  !
.head 7 +  If (s_BA_New = 'EE' Or s_BA_New = 'UE' Or s_BA_New = 'VE' Or s_BA_New = 'IE') And n_BewNr_PrevBew
.head 8 -  Set bAddInRS = FALSE
.head 8 -  Set bCloseRS = TRUE
.head 8 -  Set bSet_bRS_WithoutCommit_Before = TRUE
.head 8 -  Set bSet_bRS_WithoutCommit_After = FALSE
.head 8 +  If RS_IsRolingMating_ForSession(hSession, n_FallKey)
.head 9 +  If s_BA_New = 'EE'
.head 10 -  ! Call SalMessageBox("1","",0)
.head 10 +  ! If RS_CheckAndCloseFall_InRS_ForSession(hSession,  n_FallKey, n_BewNr, n_AnswerMode, bSet_bRS_WithoutCommit_Before, bSet_bRS_WithoutCommit_After ) < 0
.head 11 -  Call SalMessageBox("1-1","",0)
.head 11 -  Return FALSE
.head 10 -  Set nRet = RS_CheckFall_InRS_ForSession(hSession,n_FallKey,s_Sex, s_StatKey_PervBew ,s_GruppeKey_PervBew ,n_CageID_PervBew,dt_BewZeit_PrevBew, dt_BewZeitBis_PrevBew,s_BA_PervBew,n_AnswerMode )
.head 10 +  If nRet = - 1
.head 11 -  Set bCloseRS = FALSE
.head 11 -  Return FALSE
.head 10 +  Else If nRet = 0
.head 11 -  Set bCloseRS = FALSE
.head 10 +  ! If RS_CheckFall_InRS_ForSession(hSession,n_FallKey,s_Sex, s_StatKey_New,s_GruppeKey_New,nIDCage,dt_BewZeit_New,DATETIME_Null,s_BA_New,n_AnswerMode ) < 1
.head 11 -  Call SalMessageBox("1-1","",0)
.head 11 -  Return FALSE
.head 9 +  Else 
.head 10 +  ! If RS_CheckAndCloseFall_InRS_ForSession(hSession,  n_FallKey, n_BewNr_PrevBew, n_AnswerMode, bSet_bRS_WithoutCommit_Before, bSet_bRS_WithoutCommit_After ) < 0
.head 11 -  Return FALSE
.head 10 -  Set nRet = RS_CheckFall_InRS_ForSession(hSession,n_FallKey,s_Sex, s_StatKey_PervBew ,s_GruppeKey_PervBew ,n_CageID_PervBew,dt_BewZeit_PrevBew, dt_BewZeitBis_PrevBew,s_BA_PervBew,n_AnswerMode )
.head 10 +  If nRet  =  -1
.head 11 -  ! Call SalMessageBox("1-3","",0)
.head 11 -  Set bCloseRS = FALSE
.head 11 -  Return FALSE
.head 10 +  Else If nRet = 0
.head 11 -  Set bCloseRS = FALSE
.head 8 +  Else 
.head 9 +  ! If RS_CheckAndCloseFall_InRS_ForSession(hSession,  n_FallKey, n_BewNr_PrevBew, n_AnswerMode, bSet_bRS_WithoutCommit_Before, bSet_bRS_WithoutCommit_After ) < 0
.head 10 -  Return FALSE
.head 9 -  Set nRet = RS_CheckFall_InRS_ForSession(hSession,n_FallKey,s_Sex, s_StatKey_PervBew ,s_GruppeKey_PervBew ,n_CageID_PervBew,dt_BewZeit_PrevBew, dt_BewZeit_New,s_BA_PervBew,n_AnswerMode )
.head 9 +  If nRet = -1
.head 10 -  ! Call SalMessageBox("1-4","",0)
.head 10 -  Set bCloseRS = FALSE
.head 10 -  Return FALSE
.head 9 +  Else If nRet = 0
.head 10 -  Set bCloseRS = FALSE
.head 7 -  !
.head 7 +  If Not bDead
.head 8 +  If s_BA_New = 'AE' Or s_BA_New = 'UE' Or s_BA_New = 'VE' Or s_BA_New = 'RE'
.head 9 -  Set bSet_bRS_WithoutCommit_Before = TRUE
.head 9 -  Set bSet_bRS_WithoutCommit_After = FALSE
.head 9 +  ! If RS_CheckAndAddFall_ToRS_ForSession(hSession, n_FallKey, n_BewNr, n_AnswerMode, bSet_bRS_WithoutCommit_Before, bSet_bRS_WithoutCommit_After ) < 0
.head 10 -  Return FALSE
.head 9 +  ! If RS_CheckFall_ToRS_ForSession(hSession, n_FallKey, s_StatKey_New,s_GruppeKey_New,nIDCage, dt_BewZeit_New, dt_BewZeit_New, s_BA_New, s_BA_New,n_AnswerMode  ) < 0
.head 10 -  Set bAddInRS = TRUE
.head 10 -  Return FALSE
.head 9 +  If RS_CheckForAddFall_ForSession( hSession, n_FallKey, n_BewNr, s_StatKey_New,s_GruppeKey_New,nIDCage, dt_BewZeit_New, DATETIME_Null , s_BA_New, s_Sex,n_AnswerMode ) < 0
.head 10 -  Set bAddInRS = FALSE
.head 10 -  Return FALSE
.head 9 +  Else 
.head 10 -  Set bAddInRS = TRUE
.head 7 -  Return TRUE
.head 7 -  ! Set bOk = bOk And RS_CheckFall_InRS_ForSession(hSession,n_FallKey,s_StatKey_New,s_GruppeKey_New,nIDCage,dt_BewZeit_New,dt_BewZeit_New,s_BA_New,0 )
.head 5 +  Function: CheckRS4Fall_OnBewPlanChange
.head 6 -  Description: Returns FALSE if Error happened
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bSet_bRS_WithoutCommit_Before
.head 7 -  Boolean: bSet_bRS_WithoutCommit_After
.head 6 +  Actions
.head 7 +  If Not bBreedingIsON
.head 8 -  Return TRUE
.head 7 +  If s_FallStatus != 'A'
.head 8 -  ! Nothing to do. The fall has to be with 'Aufnahme' status
.head 8 -  Return TRUE
.head 7 +  If Not (s_IsPatient = 'J')
.head 8 -  Return TRUE
.head 7 -  !
.head 7 -  !
.head 7 +  If (s_BA_New = 'EE' Or s_BA_New = 'UE' Or s_BA_New = 'VE' Or s_BA_New = 'IE') And n_BewNr_PrevBew
.head 8 -  Set bSet_bRS_WithoutCommit_Before = TRUE
.head 8 -  Set bSet_bRS_WithoutCommit_After = FALSE
.head 8 +  If RS_PlanCheckAndCloseFall_InRS( n_FallKey, n_BewNr_PrevBew, n_AnswerMode, bSet_bRS_WithoutCommit_Before, bSet_bRS_WithoutCommit_After ) < 0
.head 9 -  Return FALSE
.head 7 -  !
.head 7 +  If Not bDead
.head 8 +  If s_BA_New = 'AE' Or s_BA_New = 'UE' Or s_BA_New = 'VE' Or s_BA_New = 'RE'
.head 9 -  Set bSet_bRS_WithoutCommit_Before = TRUE
.head 9 -  Set bSet_bRS_WithoutCommit_After = FALSE
.head 9 +  If RS_PlanCheckAndAddFall_ToRS( n_FallKey, n_BewNr, n_AnswerMode, bSet_bRS_WithoutCommit_Before, bSet_bRS_WithoutCommit_After ) < 0
.head 10 -  Return FALSE
.head 7 -  Return TRUE
.head 5 -  !
.head 5 +  Function: After_InsPublishedEvent
.head 6 -  Description: Analogue of ADDEVENTBEWP SP/trigger
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  String: sSearchConditions
.head 7 -  String: sSQL
.head 7 -  Boolean: bOk
.head 6 +  Actions
.head 7 +  ! AD@18.07.2006: s_Schema is not SYSADM anyway, therefore use another condition. sCurrentName means select from view
.head 8 +  If s_Schema != sGHSSchema
.head 9 -  Return TRUE
.head 7 +  If s_Schema != sCurrentName
.head 8 -  Return TRUE
.head 7 +  If Not (s_EventCode = 'INS' Or s_EventCode = 'UPD' Or s_EventCode = 'DEL')
.head 8 -  Return TRUE
.head 7 -  !
.head 7 +  If Not GalConfig_GetBool( 'Settings', 'LogToPublishedEvents', FALSE, cfgDB | cfgSYSTEM )
.head 8 -  Return TRUE
.head 7 -  !
.head 7 -  Set sSearchConditions = "where EINRICHT_ID = " || StrX( n_EID ) || " and FALL_KEY = " || StrX( n_FallKey ) || " and BEW_NR = " || StrX( n_BewNr )
.head 7 -  Set sSQL = "
insert into	PUBLISHED_EVENTS (
	EVENT_TIME, TABLE_NAME, EVENT_CODE, SEARCH_CONDITION ) 
values (	:dt_BewZeit_New, 'BEWEGUNG', :s_EventCode, :sSearch_condition) "
.head 7 -  !
.head 7 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 7 -  Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 7 -  !
.head 7 -  Return bOk
.head 5 +  Function: After_UpdPrevBewZeitBis
.head 6 -  Description: Analogue of BewZeitP02 SP/trigger
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Date/Time: dtBewZeitBis_PrevBew
.head 7 -  Boolean: bOk
.head 6 +  Actions
.head 7 +  If Not oFall.nLastBewNr
.head 8 -  Return TRUE
.head 7 -  !
.head 7 +  ! If ( s_Action = 'UPD' ) And ( dt_BewZeit_New = dt_BewZeit_Old )
.head 8 -  Return TRUE
.head 7 -  !
.head 7 +  ! If s_Geloescht_New = 'J' Or s_Action = 'DEL'
.head 8 -  Set dtBewZeitBis_PrevBew = DATETIME_Null 
.head 7 +  ! Else
.head 8 -  Set dtBewZeitBis_PrevBew = dt_BewZeit_New-0.0000001 
.head 7 -  Set bOk = SqlPrepareAndExecute( h_Sql, "
update	bewegung 
set	bew_zeit_bis = :dt_BewZeit_New
where	einricht_id = :n_EID
   and 	Fall_key = :oFall.nFallKey
   and 	Bew_Nr = :oFall.nLastBewNr " )
.head 7 -  Return bOk
.head 5 +  Function: After_UpdAltAbtKey
.head 6 -  Description: Analogue of BewAltAbtP SP/trigger
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 6 +  Actions
.head 7 +  If s_Geloescht_New = 'J' 
.head 8 -  ! If we delete Bewegung we should not update it's alt_abt_key
.head 8 -  Return TRUE
.head 7 -  !
.head 7 +  If Not n_BewNr_PrevBew
.head 8 -  ! If prev. bewegung does not exist then nothing to update
.head 8 -  Return TRUE
.head 7 -  !
.head 7 +  If ( s_Action = 'UPD' ) And ( s_AltAbtKey_Old = s_AbtKey_PervBew )
.head 8 -  Return TRUE
.head 7 -  !
.head 7 -  Set bOk = SqlPrepareAndExecute( h_Sql, "
update	bewegung 
set	alt_abt_key = :s_AbtKey_PervBew 
where	einricht_id = :n_EID
   and 	Fall_key = :n_FallKey
   and 	Bew_Nr = :n_BewNr " )
.head 7 -  Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 7 -  Return bOk
.head 5 +  Function: After_UpdFall
.head 6 -  Description: Analogue of BewZeitP SP/trigger
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Boolean: bUpdateFall_AE_EE
.head 7 -  Boolean: bUpdateFall_LastBew
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  String: sSQL
.head 7 -  String: sSQL_Set
.head 7 -  Boolean: bOk
.head 7 -  Date/Time: dtVon
.head 6 +  Actions
.head 7 -  ! Set bOk = TRUE
.head 7 +  If s_BA_New = "AE"
.head 8 -  Set sSQL_Set = "ae_datum = :dt_BewZeit_New, ae_time = :dt_BewZeit_New"
.head 7 +  Else If s_BA_New = "EE"
.head 8 -  Set sSQL_Set = "ee_datum = :dt_BewZeit_New, ee_time = :dt_BewZeit_New"
.head 7 +  If sSQL_Set
.head 8 -  Set sSQL_Set = sSQL_Set || ", "
.head 7 -  Set sSQL_Set = "update	fall 
	set	
	"|| sSQL_Set || "
	LAST_BEW_NR = :oFall.nLastBewNr,
	LAST_BA_KEY = :s_BA_New,
	LAST_BENUTZER_ID = :nUserId,
	LAST_ABT_KEY = :s_AbtKey_New,
	LAST_STAT_KEY = :s_StatKey_New,
	LAST_GRUPPE_KEY = :s_GruppeKey_New,
	LAST_BETT_KEY = :s_BettKey_New,
	LAST_SCR_ID = :nIDScreen,
	LAST_CAGE_ID = :nIDCage,
	LAST_CAGE_NR = :oTargetCage.nUniqNr,
	POS_ID = :nIDPos
where	
	einricht_id = :n_EID 
  	and Fall_key = :oFall.nFallKey"
.head 7 -  Return SqlPrepareAndExecute( h_Sql, sSQL_Set )
.head 7 -  ! Set bOk = SqlPrepareAndExecute(h_Sql, "lock table fall")
.head 7 +  ! If ( s_Action = 'UPD' ) And ( dt_BewZeit_New = dt_BewZeit_Old )
.head 8 -  Set bUpdateFall_AE_EE = FALSE
.head 7 -  !
.head 7 +  ! If bUpdateFall_AE_EE
.head 8 +  If s_Geloescht_New = 'J' 
.head 9 -  Set dtVon = DATETIME_Null 
.head 8 +  Else 
.head 9 -  Set dtVon = dt_BewZeit_New
.head 8 -  ! AS 01.06.2004
.head 8 +  If SalStrScan( sBAList_1stPossible4Fall, s_BA_New || ' ' ) >= 0	 !OLD: (s_BA_New = 'AE' Or s_BA_New = 'AM')
.head 9 +  If sSQL_Set
.head 10 -  Set sSQL_Set = sSQL_Set || ", "
.head 9 -  Set sSQL_Set = "
	ae_datum = @datevalue ( :dtVon ), 
	ae_time = @timevalue ( :dtVon ),
	vis_kat_datum = :dtVon "
.head 8 +  If s_BA_New = 'EE' Or s_BA_New = 'AM' 
.head 9 +  If sSQL_Set
.head 10 -  Set sSQL_Set = sSQL_Set || ", "
.head 9 -  Set sSQL_Set = sSQL_Set || "
	ee_datum = @datevalue ( :dtVon ), 
	ee_time = @timevalue ( :dtVon )"
.head 7 +  ! If bUpdateFall_LastBew
.head 8 -  ! Set bOk = GetLastBewData(  )
.head 8 +  If sSQL_Set
.head 9 -  Set sSQL_Set = sSQL_Set || ", "
.head 8 -  Set sSQL_Set = sSQL_Set || "
	LAST_BEW_NR = :n_BewNr,
	LAST_BA_KEY = :s_BA_New,
	LAST_BENUTZER_ID = :nUserId
"
.head 8 +  If s_AbtKey_New And s_StatKey_New And s_BettKey_New and s_GruppeKey_New
.head 9 +  If n_CageNr_New
.head 10 -  Set sSQL_Set = sSQL_Set || ", LAST_CAGE_NR = :n_CageNr_New "
.head 9 -  Set sSQL_Set = sSQL_Set || ", "
.head 9 -  Set sSQL_Set = sSQL_Set || "
	LAST_ABT_KEY = :s_AbtKey_New,
	LAST_STAT_KEY = :s_StatKey_New,
	LAST_GRUPPE_KEY = :s_GruppeKey_New,
	LAST_BETT_KEY = :s_BettKey_New,
	LAST_SCR_ID = :nIDScreen,
	LAST_CAGE_ID = :nIDCage,
	POS_ID = :nIDPos
"
.head 7 +  ! If bOk And sSQL_Set
.head 8 -  ! AD@22.09.03: added IR
.head 8 -  Set sSQL = "
update	fall 
set	" || sSQL_Set || "
where	einricht_id = :n_EID 
  and	Fall_key = :n_FallKey "
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 7 -  !
.head 7 -  ! Return bOk
.head 5 +  ! Function: After_UpdCage
.head 6 -  Description: 
.head 6 +  Returns 
.head 7 -  Boolean: 
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  String: sSQL
.head 7 -  String: sGruppe_Bar
.head 7 -  String: sSQL_Set
.head 7 -  Boolean: bOk
.head 7 -  Boolean: bExist
.head 7 -  Date/Time: dtVon
.head 7 -  Number: nFetch
.head 7 -  String: sSetUpdate
.head 7 -  Boolean: bUpdate
.head 6 +  Actions 
.head 7 -  Set bOk = TRUE
.head 7 +  ! If n_CageNr_PrevBew
.head 8 -  Set sSQL="select FALL_KEY 
	from FALL 
	where LAST_CAGE_NR=:n_CageNr_PrevBew "
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 8 -  Set bExist = bOk And SqlFetchNext( h_Sql, nFetch )
.head 8 +  If nFetch = FETCH_EOF
.head 9 -  Set sSQL="update GRUPPE 
	Set UNIQ_NR = 0
	where UNIQ_NR = :n_CageNr_PrevBew "
.head 9 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 7 -  Set bUpdate = FALSE
.head 7 -  Set sSetUpdate = ""
.head 7 +  If n_CageNr_New and s_GruppeKey_New and s_StatKey_New
.head 8 -  Set sSQL="select Uniq_Nr
	from GRUPPE
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || "
	and uniq_nr=:n_CageNr_New	"
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 8 -  Set bExist = bOk And SqlFetchNext( h_Sql, nFetch )
.head 8 +  If nFetch = FETCH_EOF
.head 9 -  Set sGruppe_Bar = code2from5Interleaved( n_CageNr_New )
.head 9 -  Set sSetUpdate = "Set UNIQ_NR = :n_CageNr_New,
	      GRUPPE_BAR = :sGruppe_Bar"
.head 9 -  Set bUpdate = TRUE
.head 7 +  If n_ScreenCageNr_New and s_GruppeKey_New and s_StatKey_New
.head 8 -  Set sSQL="select SCREEN_CAGE_NR
	from GRUPPE
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || "
	and SCREEN_CAGE_NR=:n_ScreenCageNr_New	"
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 8 -  Set bExist = bOk And SqlFetchNext( h_Sql, nFetch )
.head 8 +  If nFetch = FETCH_EOF
.head 9 +  If sSetUpdate
.head 10 -  Set sSetUpdate = sSetUpdate || ",
			   SCREEN_CAGE_NR = :n_ScreenCageNr_New "
.head 9 +  Else 
.head 10 -  Set sSetUpdate = "Set  SCREEN_CAGE_NR = :n_ScreenCageNr_New "
.head 9 -  Set bUpdate = TRUE
.head 8 +  ! If nFetch = FETCH_EOF
.head 9 -  Set sGruppe_Bar = code2from5Interleaved( n_CageNr_New )
.head 9 -  Set sSQL="update GRUPPE 
	Set    SCREEN_CAGE_NR = :n_ScreenCageNr_New
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || " "
.head 9 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 9 -  Set sSQL="update CAGE
	Set    SCREEN_CAGE_NR = :n_ScreenCageNr_New
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || " "
.head 9 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 9 -  Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 7 +  If bUpdate
.head 8 -  Set sSQL="update GRUPPE 
	" || sSetUpdate || "
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || " "
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 8 -  ! Set sSQL="update CAGE
	" || sSetUpdate || "
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || " "
.head 8 -  ! Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 8 -  Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 7 +  ! If nFetch = FETCH_EOF
.head 8 -  Set sGruppe_Bar = code2from5Interleaved( n_CageNr_New )
.head 8 -  Set sSQL="update GRUPPE 
	Set UNIQ_NR = :n_CageNr_New,
	      GRUPPE_BAR = :sGruppe_Bar
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || " "
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 8 -  Set sSQL="update CAGE
	Set UNIQ_NR = :n_CageNr_New,
	      GRUPPE_BAR = :sGruppe_Bar
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || " "
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 8 -  Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 7 -  Return bOk
.head 5 +  Function: After_UpdCage
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  String: sSQL
.head 7 -  String: sGruppe_Bar
.head 7 -  String: sSQL_Set
.head 7 -  Boolean: bOk
.head 7 -  Boolean: bExist
.head 7 -  Date/Time: dtVon
.head 7 -  Number: nFetch
.head 7 -  String: sSetUpdate
.head 7 -  Boolean: bUpdate
.head 6 +  Actions
.head 7 -  Set bOk = TRUE
.head 7 -  ! Call SalMessageBox(SalNumberToStrX(n_CageNr_New,0), "uniqnr", 0)
.head 7 -  ! Call SalMessageBox(SalNumberToStrX(n_ScreenCageNr_New,0), "screen uniqnr", 0)
.head 7 +  ! If n_CageNr_PrevBew
.head 8 -  Set sSQL="select FALL_KEY 
	from FALL 
	where LAST_CAGE_NR=:n_CageNr_PrevBew "
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 8 -  Set bExist = bOk And SqlFetchNext( h_Sql, nFetch )
.head 8 +  If nFetch = FETCH_EOF
.head 9 -  Set sSQL="update GRUPPE 
	Set UNIQ_NR = 0
	where UNIQ_NR = :n_CageNr_PrevBew "
.head 9 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 7 -  Set bUpdate = FALSE
.head 7 -  Set sSetUpdate = ""
.head 7 +  If n_CageNr_New and s_GruppeKey_New and s_StatKey_New
.head 8 -  Set sSQL="select Uniq_Nr
	from GRUPPE
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || "
	and uniq_nr=:n_CageNr_New	"
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 8 -  Set bExist = bOk And SqlFetchNext( h_Sql, nFetch )
.head 8 +  If nFetch = FETCH_EOF
.head 9 -  Set sGruppe_Bar = code2from5Interleaved( n_CageNr_New )
.head 9 -  Set sSetUpdate = "Set UNIQ_NR = :n_CageNr_New,
	      GRUPPE_BAR = :sGruppe_Bar"
.head 9 -  Set bUpdate = TRUE
.head 7 +  If n_ScreenCageNr_New and s_GruppeKey_New and s_StatKey_New
.head 8 -  Set sSQL="select SCREEN_CAGE_NR
	from GRUPPE
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || "
	and SCREEN_CAGE_NR=:n_ScreenCageNr_New	"
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 8 -  Set bExist = bOk And SqlFetchNext( h_Sql, nFetch )
.head 8 +  If nFetch = FETCH_EOF
.head 9 +  If sSetUpdate
.head 10 -  Set sSetUpdate = sSetUpdate || ",
			   SCREEN_CAGE_NR = :n_ScreenCageNr_New "
.head 9 +  Else
.head 10 -  Set sSetUpdate = "Set  SCREEN_CAGE_NR = :n_ScreenCageNr_New "
.head 9 -  Set bUpdate = TRUE
.head 8 +  ! If nFetch = FETCH_EOF
.head 9 -  Set sGruppe_Bar = code2from5Interleaved( n_CageNr_New )
.head 9 -  Set sSQL="update GRUPPE 
	Set    SCREEN_CAGE_NR = :n_ScreenCageNr_New
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || " "
.head 9 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 9 -  Set sSQL="update CAGE
	Set    SCREEN_CAGE_NR = :n_ScreenCageNr_New
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || " "
.head 9 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 9 -  Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 7 +  If bUpdate
.head 8 -  Set sSQL="update GRUPPE 
	" || sSetUpdate || "
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || " "
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 8 -  ! Set sSQL="update CAGE
	" || sSetUpdate || "
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || " "
.head 8 -  ! Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 8 -  Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 7 +  ! If nFetch = FETCH_EOF
.head 8 -  Set sGruppe_Bar = code2from5Interleaved( n_CageNr_New )
.head 8 -  Set sSQL="update GRUPPE 
	Set UNIQ_NR = :n_CageNr_New,
	      GRUPPE_BAR = :sGruppe_Bar
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || " "
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 8 -  Set sSQL="update CAGE
	Set UNIQ_NR = :n_CageNr_New,
	      GRUPPE_BAR = :sGruppe_Bar
	where GRUPPE_KEY=:s_GruppeKey_New 
	and STAT_KEY=:s_StatKey_New
	and EINRICHT_ID = " || StrX( n_EID ) || " "
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, sSQL )
.head 8 -  Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 7 -  Return bOk
.head 5 -  !
.head 5 +  Function: AfterAE_UpdVisKatKey
.head 6 -  Description:
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: AfterEE_FinishExperiment
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Number: nDB_Version
.head 6 +  Actions
.head 7 +  If Not dt_BewZeit_New
.head 8 -  Return TRUE
.head 7 +  If s_BA_New != 'EE'
.head 8 -  Return TRUE
.head 7 +  If Not bBreedingIsON
.head 8 -  Return TRUE
.head 7 -  Set bOk = TRUE
.head 7 -  !
.head 7 -  ! Call VisWaitCursor( TRUE )
.head 7 -  ! Set bOk = SqlPrepareAndExecute(h_Sql, "lock table FALL_EXPERIMENT")
and SqlPrepareAndExecute(h_Sql, "lock table ZUS_ADRESSE")
.head 7 -  Set bOk = bOk And SqlPrepareAndExecute( h_Sql, "
delete 
from	FALL_EXPERIMENT
where	FALL_KEY = :n_FallKey
  and	START_DATE > :dt_BewZeit_New " )
.head 7 -  ! Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 7 -  Set bOk = bOk And SqlPrepareAndExecute( h_Sql, "
update	FALL_EXPERIMENT
set	END_DATE = :dt_BewZeit_New
where	FALL_KEY = :n_FallKey
  and	( END_DATE is NULL or END_DATE > :dt_BewZeit_New ) " )
.head 7 -  Set bOk = bOk And SqlPrepareAndExecute( h_Sql, "
update	ZUS_ADRESSE
set	BIS = :dt_BewZeit_New
where	EINRICHT_ID = :n_EID
  and	FALL_KEY = :n_FallKey
  and	ROLLE_KEY = 'EXPERI'
  and	BIS is NULL
" )
.head 7 +  ! If nDB_Version >= 6.04
.head 8 -  ! AD@20.07.2006 sGHSSchema is not used anymore while a normal user is connected. sCurrentName is used
.head 8 +  If s_Schema = sCurrentName
.head 9 -  Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 7 +  ! Else If nDB_Version >= 5.27
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( h_Sql, "
update	ZUS_ADRESSE
set	BIS = :dt_BewZeit_New
where	EINRICHT_ID = :n_EID
  and	FALL_KEY = :n_FallKey
  and	ROLLE_KEY = 'EXPERI'
  and	BIS is NULL
" )
.head 8 -  Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 7 -  ! Call VisWaitCursor( FALSE )
.head 7 -  Return bOk
.head 5 +  Function: AfterEE_DelFromGroup
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 6 +  Actions
.head 7 +  If s_BA_New != 'EE'
.head 8 -  Return TRUE
.head 7 -  !
.head 7 -  Set bOk = TRUE
.head 7 +  If ReadDBVersion(  ) >= 5.26
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, "
delete from FALL_GROUP_MEMBER
where	EINRICHT_ID = :n_EID
  and	FALL_KEY = :n_FallKey " )
.head 7 -  Return bOk
.head 5 +  Function: AfterEE_DelServiceFall
.head 6 -  Description:
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  String: sLstKey
.head 7 -  Sql Handle: hSqlLst
.head 7 -  Number: nFetch
.head 6 +  Actions
.head 7 +  Return SqlPrepareAndExecute (h_Sql, "update
 lst_erf lerf
set
 lerf.storniert='Y', lerf.LST_ERF_BIS= :dt_BewZeit_New
where 
 lerf.fall_key = :oFall.nFallKey
 and lerf.done = 0
 and lerf.storniert = 'N'
 and lerf.lst_key in (select lst_key from leistung where lst_key = lerf.lst_key and tarif_key = lerf.tarif_key and DEL_NOTDONE_ON_EE = 1)")
.head 8 -  ! Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 7 -  ! Set bOk = SqlPrepareAndExecute (h_Sql, "
		update lst_erf l 
		set l.storniert='Y'
		where l.Fall_key=:n_FallKey
		and l.done=0 
		and l.storniert='N'
	")
.head 7 +  ! If bOk
.head 8 -  Return TRUE
.head 7 +  ! If not SqlCreateStatement(hSession, hSqlLst )
.head 8 -  Return FALSE
.head 7 -  ! Set bOk = SqlPrepareAndExecute( hSqlLst, "select  LST_KEY
from lst_erf
where EINRICHT_ID=:nEinrichtId
and FALL_KEY = '"||SalNumberToStrX( n_FallKey, 0 )||"'
and done=0
and exists  (select LST_KEY
		from leistung
		 where DEL_NOTDONE_ON_EE = 1)
into  :sLstKey")
.head 7 +  ! While bOk and SqlFetchNext( hSqlLst, nFetch )
.head 8 +  Set bOk = SqlPrepareAndExecute (h_Sql, "
		update lst_erf l 
		set l.storniert='Y'
		where l.EINRICHT_ID=:nEinrichtId and l.Fall_key=:n_FallKey
		and l.done=0 
		and l.storniert='N'
		and  LST_KEY= '"||sLstKey||"'
	")
.head 9 -  ! Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 8 -  ! Call SqlImmediate("commit")
.head 8 +  ! If hWndWorklist and VisWinIsWindow(hWndWorklist)
.head 9 -  Call SalSendMsg( hWndWorklist, AM_Refresh, wParam, lParam )
.head 7 -  ! Call SqlDisconnect( hSqlLst )
.head 7 -  ! Return TRUE
.head 5 +  Function: Check_TodDatum
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Number: nFetch
.head 7 -  Number: nLE_ID
.head 7 -  Boolean: bOk
.head 6 +  Actions
.head 7 +  If s_BA_New != "EE"
.head 8 -  Return TRUE
.head 7 +  If not SqlPrepareAndExecute( h_Sql, "
select TOD from BEW_GRUND1 where BG1_KEY = :s_BG1_New and TOD = 1
" )
.head 8 -  Return FALSE
.head 7 +  If not SqlFetchNext( h_Sql, nFetch )
.head 8 -  Return FALSE
.head 7 +  ! If not SqlPrepareAndExecute( h_Sql, "
select LE_ID from FALL where EINRICHT_ID = :n_EID and FALL_KEY = :n_FallKey
into :nLE_ID
" )
.head 8 -  Return FALSE
.head 7 +  ! If not SqlFetchNext( h_Sql, nFetch )
.head 8 -  Return FALSE
.head 7 -  Set bOk =  SqlPrepareAndExecute( h_Sql, "
update LE set TOD_DATUM = :dt_BewZeit_New
where LE_ID = :nIDLe and TOD_DATUM is NULL
" )
.head 7 -  ! Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 7 -  Return bOk
.head 5 +  Function: AfterIns_OnEvent
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Date/Time: dtBirth
.head 7 -  Number: nFetch
.head 6 +  Actions
.head 7 +  If oFall.nLastBewNr = 1
.head 8 +  If not SqlPrepareAndExecute( h_Sql, "
select GEB_DATUM from FALL where EINRICHT_ID = :n_EID and FALL_KEY = :n_FallKey
into :dtBirth
" )
.head 9 -  Return FALSE
.head 8 +  If not SqlFetchNext( h_Sql, nFetch )
.head 9 -  Return FALSE
.head 8 +  If not OnEvent_ForSession(hSession,  'BIRTH', dtBirth, n_EID, n_FallKey )
.head 9 -  Return FALSE
.head 7 -  Return OnEvent_ForSession(hSession, s_BA_New, dt_BewZeit_New, n_EID, n_FallKey )
.head 5 -  !
.head 5 +  Function: IsBewActionPossible
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Number: nIndex
.head 6 +  Actions
.head 7 +  If Not bUseBettDispo
.head 8 -  Return TRUE
.head 7 -  Set bOk = TRUE
.head 7 +  If oTargetCage.nFallsInCage and ((s_BA_New = "UE") or (s_BA_New = "VE"))
.head 8 -  Set nIndex = 0
.head 8 +  While nIndex < oTargetCage.nFallsInCage
.head 9 +  If oTargetCage.oFalls[nIndex].nLastBett = nIDPos
.head 10 -  Call SalMessageBox("Target place "||s_BettKey_New||" occupied by animal with Nr: "||SalNumberToStrX(oTargetCage.oFalls[nIndex].nFallKey, 0), "Overlapping Error!", 0)
.head 10 -  Set bOk = FALSE
.head 10 -  Break
.head 9 -  Set nIndex = nIndex + 1
.head 7 -  Return bOk
.head 7 +  ! If ( s_Action = 'INS' Or s_Action = 'UPD' )
.head 8 -  Set bOk = bOk And Bew_IsBewActionPossible(
	n_EID, n_FallKey, s_FallStatus, s_BA_New, 
	dt_BewZeit_New, dt_BewZeitBis_Plan, 
	s_StatKey_New, s_GruppeKey_New, s_BettKey_New, h_Sql )
.head 7 +  ! If n_BewNr_PrevBew > 0
.head 8 +  If s_Action = 'DEL' 
.head 9 +  ! AS 29.06.2004: corrected
.head 10 -  ! Set dtBewZeitBis_PrevBew_New = DATETIME_Null
.head 9 -  Set dtBewZeitBis_PrevBew_New = dt_BewZeitBis_Plan
.head 8 +  Else 
.head 9 -  Set dtBewZeitBis_PrevBew_New = dt_BewZeit_New
.head 8 -  Set bOk = bOk And Bew_IsBewActionPossible(
	n_EID, n_FallKey, s_FallStatus, s_BA_PervBew, 
	dt_BewZeit_PrevBew, dtBewZeitBis_PrevBew_New, 
	s_StatKey_PervBew, s_GruppeKey_PervBew, s_BettKey_PervBew, h_Sql )
.head 7 -  ! Return bOk
.head 5 +  ! Function: IsBewActionPossible ! ***** old one
.head 6 -  Description: 
.head 6 +  Returns 
.head 7 -  Boolean: 
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  Boolean: bOk
.head 7 -  Date/Time: dtBewZeitBis_PrevBew_New
.head 6 +  Actions 
.head 7 +  If Not bUseBettDispo
.head 8 -  Return TRUE
.head 7 -  Set bOk = TRUE
.head 7 +  If ( s_Action = 'INS' Or s_Action = 'UPD' )
.head 8 -  Set bOk = bOk And Bew_IsBewActionPossible(
	n_EID, n_FallKey, s_FallStatus, s_BA_New, 
	dt_BewZeit_New, dt_BewZeitBis_Plan, 
	s_StatKey_New, s_GruppeKey_New, s_BettKey_New, h_Sql )
.head 7 +  If n_BewNr_PrevBew > 0
.head 8 +  If s_Action = 'DEL' 
.head 9 +  ! AS 29.06.2004: corrected
.head 10 -  ! Set dtBewZeitBis_PrevBew_New = DATETIME_Null
.head 9 -  Set dtBewZeitBis_PrevBew_New = dt_BewZeitBis_Plan
.head 8 +  Else 
.head 9 -  Set dtBewZeitBis_PrevBew_New = dt_BewZeit_New
.head 8 -  Set bOk = bOk And Bew_IsBewActionPossible(
	n_EID, n_FallKey, s_FallStatus, s_BA_PervBew, 
	dt_BewZeit_PrevBew, dtBewZeitBis_PrevBew_New, 
	s_StatKey_PervBew, s_GruppeKey_PervBew, s_BettKey_PervBew, h_Sql )
.head 7 -  Return bOk
.head 5 -  !
.head 5 +  Function: DoInsert
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Number:
.head 6 +  Parameters
.head 7 -  String: sSchema
.head 7 -  Number: nEID
.head 7 -  Number: nFallKey
.head 7 -  Number: nBew_Nr
.head 7 -  Date/Time: dtBewZeit
.head 7 -  String: sBA_Key
.head 7 -  String: sBG1_Key
.head 7 -  String: sBG2_Key
.head 7 -  String: sAbtKey
.head 7 -  String: sStatKey
.head 7 -  String: sGruppeKey
.head 7 -  String: sBettKey
.head 7 -  String: sTelefon
.head 7 -  String: sTV
.head 7 -  ! Long String: lsInfo
.head 7 -  String: sBegruendung
.head 7 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Number: nFetch
.head 7 -  Number: nBewNrNew
.head 7 -  String: sStatusText
.head 7 -  String: sConcatString
.head 7 -  Boolean: bLockAcquired
.head 7 -  FunctionalVar: oCullingData
.head 8 -  Class: cCullingData
.head 7 -  ! String: sBA_Key_SH
.head 6 +  Actions
.head 7 +  If SalStrLength(sBA_Key)>2
.head 8 -  Set b_BA_SH = TRUE
.head 8 -  Set sBA_Key = SalStrLeftX(sBA_Key, 2)
.head 7 -  Set bOk = Init( 'INS', sSchema, nEID, nFallKey, nBew_Nr, sBA_Key, dtBewZeit, sAbtKey, sStatKey, sGruppeKey, sBettKey, sBG1_Key, nAnswerMode, FALSE )
.head 7 -  ! ! Get new BEW_NR
.head 7 +  If Not bOk
.head 8 -  Call SalMessageBox("Init fails", "", 0)
.head 7 +  ! If Not n_BewNr
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, Gal_IR( "
select	@nullvalue( MAX(Bew_Nr ), 0 ) + 1
from	Bewegung
where	Einricht_ID = " || StrX( n_EID ) || "
 and	Fall_Key = " || StrX( n_FallKey ) || "
into	:n_BewNr ", MDB_GetServerTypeX( h_Sql ) ) )
.head 8 -  Set bOk = bOk And SqlFetchNext( h_Sql, nFetch )
.head 7 -  !
.head 7 -  Set bOk = bOk And BeforeInsert(  )
.head 7 -  Set bOk = bOk And  LockSysadmAction("Check before insert ")
.head 7 +  If bOk	! Do Insert
.head 8 -  Call SalStatusGetText( hWndForm, sStatusText, 250 )
.head 8 -  ! Set bOk = SqlPrepareAndExecute(h_Sql, "lock table xlock")
.head 8 -  ! Set bOk = SqlPrepareAndExecute(h_Sql, "lock table fall")
.head 8 -  ! Set bOk = SqlPrepareAndExecute(h_Sql, "lock table bewegung")
.head 8 -  ! Set bOk = SqlPrepareAndExecute(h_Sql, "lock table lst_erf")
.head 8 -  Call SalStatusSetText( hWndForm, "Do insert..." )
.head 8 -  Call VisWaitCursor( TRUE )
.head 8 -  Call SqlSetLockTimeout ( h_Sql, 0 )
.head 8 +  Loop
.head 9 +  When SqlError
.head 10 -  ! Call SqlExtractArgs ( wParam, lParam, hSqlError, nSqlError, nErrorPos )
.head 10 +  ! If nSqlError < 0
.head 11 -  Set nSqlError = - nSqlError
.head 10 -  ! Set nrpSqlErrorNr = nSqlError
.head 10 -  Call SqlPrepareAndExecute(h_Sql, "rollback")
.head 10 -  Set bLockAcquired = FALSE
.head 10 -  Return FALSE
.head 9 -  Set bLockAcquired = TRUE
.head 9 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(h_Sql, "lock table bewegung")
.head 9 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(h_Sql, "lock table fall")
.head 9 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(h_Sql, "lock table lst_erf")
.head 9 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(h_Sql, "lock table xlock")
.head 9 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(h_Sql, "lock table fall_experiment")
.head 9 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(h_Sql, "lock table zus_adresse")
.head 9 +  If nNewColonyNr != -1
.head 10 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(h_Sql, "lock table colony")
.head 9 +  If NOT oTargetCage.nFallsInCage
.head 10 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(h_Sql, "lock table gruppe")
.head 9 +  If NOT oTargetCage.nFallsInCage or (s_BA_New = "VE")
.head 10 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(h_Sql, "lock table abteilung")
.head 9 +  If NOT SalArrayIsEmpty(oPBChanges.oChanges)
.head 10 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(h_Sql, "lock table BEWEGUNG_PLAN")
.head 10 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(h_Sql, "lock table bett_locks")
.head 9 +  If bLockAcquired
.head 10 -  Break
.head 8 -  Call SqlSetLockTimeout ( h_Sql, 300 )
.head 8 -  ! Set bOk = SqlPrepareAndExecute(h_Sql, "lock table fall")
.head 8 -  ! Set bOk = SqlPrepareAndExecute(h_Sql, "lock table bewegung")
.head 8 -  ! Set bOk = SqlPrepareAndExecute(h_Sql, "lock table lst_erf")
.head 8 -  Call GetNewCageNr()
.head 8 -  ! Get new UniqNr for a cage
.head 8 -  ! Insert new BEWEGUNG
.head 8 -  ! ***** Lee
.head 8 -  ! Set bOk = bOk and SqlPrepareAndExecute(h_Sql, "lock table lst_erf") and SqlPrepareAndExecute(h_Sql, "lock table bewegung")
.head 8 -  Set bOk = bOk And After_UpdPrevBewZeitBis(  )
.head 8 -  Set oFall.nLastBewNr = oFall.nMaxBewNr + 1
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( h_Sql, "
insert into	Bewegung
             (	Einricht_ID, Fall_Key, Bew_Nr,
	Bew_Zeit, BA_Key, BG1_Key, BG2_Key,
	Abt_Key, Stat_Key, Gruppe_Key, Bett_Key,
	Telefon, TV, Med_Begruendung,
	Benutzer_ID, Geloescht, Aktiv, Modified, cage_nr, SCREEN_CAGE_NR, 
	scr_id, rack_id, cage_id, pos_id
              )
values   (	:n_EID, :n_FallKey, :oFall.nLastBewNr,
	:dt_BewZeit_New, :s_BA_New, :sBG1_Key, :sBG2_Key,
	:s_AbtKey_New, :s_StatKey_New, :s_GruppeKey_New, :s_BettKey_New,
	:sTelefon, :sTV, :sBegruendung,
	:nUserId, 'N', 'J', :dt_BewZeit_New, :oTargetCage.nUniqNr, :oTargetCage.nScrUniqNr,
	:nIDScreen, :nIDRack, :nIDCage, :nIDPos
              ) " )
.head 8 -  Set bOk = bOk And  LockSysadmAction("Insert bewegung done " || SalNumberToStrX( n_FallKey, 0 )  || " bew nr " || SalNumberToStrX( oFall.nLastBewNr, 0 )  )
.head 8 +  If nNewColonyNr != -1
.head 9 -  Set bOk = bOk And SqlPrepareAndExecute( h_Sql, "insert into colony(SCR_ID,RACK_ID,STRAIN_ID,COLONY) values(:nIDScreen, :nIDRack, :oFall.nStrainID ,:nNewColonyNr) ")
.head 8 +  If oTargetCage.sCadaverType and (s_BA_New != "EE")
.head 9 -  Call AfterInsert()
.head 9 -  Set bOk = bOk And  LockSysadmAction("Cadaver check")
.head 9 -  Call RS_AfterCulling( hSession )
.head 9 -  Set oCullingData.dtCulling = dt_BewZeit_New
.head 9 -  Set oCullingData.nAnimals[0] = oFall.nFallKey
.head 9 -  Set oCullingData.sCullingMethod = oTargetCage.sCadaverCullingMethod
.head 9 -  Set oCullingData.sCullingReason = oTargetCage.sCadaverCullingReason
.head 9 -  Set oCullingData.sDischargeReason1 = oTargetCage.sCadaverReason1
.head 9 -  Set oCullingData.sDischargeReason2 = oTargetCage.sCadaverReason2
.head 9 -  Set oFall.nCullingID = DoCulling_ForSession(hSession, n_EID, oCullingData)
.head 9 +  If oTargetCage.sCadaverType = "DISCHARG"
.head 10 -  Call After_UpdPrevBewZeitBis()
.head 10 -  Set s_BA_New = "EE"
.head 10 -  Set oFall.nLastBewNr = oFall.nLastBewNr + 1
.head 10 -  Set bOk = bOk And SqlPrepareAndExecute( h_Sql, "
insert into	Bewegung
             (	Einricht_ID, Fall_Key, Bew_Nr,
	Bew_Zeit, BA_Key, BG1_Key, BG2_Key,
	Abt_Key, Stat_Key, Gruppe_Key, Bett_Key,
	Telefon, TV, Med_Begruendung,
	Benutzer_ID, Geloescht, Aktiv, Modified, cage_nr, SCREEN_CAGE_NR, 
	scr_id, rack_id, cage_id, pos_id
              )
values   (	:n_EID, :n_FallKey, :oFall.nLastBewNr,
	:dt_BewZeit_New, :s_BA_New, :oTargetCage.sCadaverReason1, :oTargetCage.sCadaverReason2,
	:s_AbtKey_New, :s_StatKey_New, :s_GruppeKey_New, :s_BettKey_New,
	:sTelefon, :sTV, :sBegruendung,
	:nUserId, 'N', 'J', :dt_BewZeit_New, :oTargetCage.nUniqNr, :oTargetCage.nScrUniqNr,
	:nIDScreen, :nIDRack, :nIDCage, :nIDPos
              ) " )
.head 8 +  If (s_BA_New = "UE") or (s_BA_New = "VE")
.head 9 -  Set bOk = bOk and SqlPrepareAndExecute(h_Sql, "update lst_erf set stat_key = :oTargetCage.sRack, gruppe_key = :oTargetCage.sCage, cage_id = :oTargetCage.nCageID where done = 0 and storniert = 'N' and fall_key = :n_FallKey")
.head 8 -  ! Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 8 -  ! 15.09.2003 AS excluded INFO from the SQL because it is LONG and has to be managed separatly (for Sybase compatibility)
.head 8 -  Call VisWaitCursor( FALSE )
.head 8 -  Call SalStatusSetText( hWndForm, sStatusText )
.head 7 -  Set bOk = bOk And AfterInsert(  )
.head 7 -  Set bOk = bOk And  LockSysadmAction("After insert check")
.head 7 +  If NOT bOk
.head 8 +  If sErrMessage = "" or sErrMessage = STRING_Null
.head 9 -  Set sErrMessage = "ERROR"
.head 8 -  Set oFall.nLastBewNr = 0
.head 7 -  !
.head 7 +  ! If bOk
.head 8 -  Call SqlPrepareAndExecute( h_Sql, "Commit" )
.head 7 +  ! If bOk
.head 8 -  Set nBewNr_New = n_BewNr
.head 8 -  Set sConcatString = sAbtKey || ";" || sStatKey || ";" || sGruppeKey || ";" || sBettKey
.head 8 -  ! Call Notifications_SendBroadcast( nNotification_MovementAffected, sConcatString )
.head 7 -  ! Call SalStatusSetText( hWndForm, "Finish" )
.head 7 -  Call Finish(  )
.head 7 +  If sMsgFromPlan
.head 8 -  Call SalMessageBox(sMsgFromPlan, "Warning", 0)
.head 7 +  If not b_BA_SH  and bOk
.head 8 -  ! Set bOk = bOk And CheckRS4Fall_OnBewChange(  )
.head 8 +  If bCloseRS
.head 9 -  Set bOk = bOk And RS_Close_Fall_InRS_ForSession(hSession)
.head 8 +  If Not bOk
.head 9 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): RS_Close_Fall_InRS_ForSession() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 +  If bAddInRS 
.head 9 -  Call SalStatusSetText( hWndForm, "Modify relations" )
.head 9 -  Set bOk = bOk And _RS_AddFall_ToRS_ForSession(hSession)
.head 8 +  If Not bOk
.head 9 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): _RS_AddFall_ToRS_ForSession() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 7 -  Call SalStatusSetText( hWndForm, "Bewegung: done" )
.head 7 -  Return oFall.nLastBewNr
.head 5 +  Function: BeforeInsert
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  String: sStatusText
.head 7 -  Boolean: bShowErrMsg
.head 7 -  Number: nFall_Cull[1]
.head 7 -  Number: nFtch
.head 6 +  Actions
.head 7 -  Set bShowErrMsg = TRUE
.head 7 -  !
.head 7 +  ! If Not bFallDataAreFetched
.head 8 +  If Not GetFallData(  )
.head 9 -  Return FALSE
.head 7 -  !
.head 7 -  Set bOk = TRUE
.head 7 -  Call SalStatusGetText( hWndForm, sStatusText, 250 )
.head 7 -  Call SalStatusSetText( hWndForm, 'Check before insert ...' )
.head 7 +  If bWithHolder and oTargetCage.sRFID = "" and not b_BA_SH and not oTargetCage.sCadaverType
.head 8 -  Set sErrMessage = "Target cage is not registered!"
.head 8 -  Set bOk = FALSE
.head 8 -  Set bShowErrMsg = FALSE
.head 7 +  If (not b_BA_SH) and (not oTargetCage.sCadaverType)
.head 8 -  Set bOk = bOk And CheckUnqNameInGrp(  )
.head 8 +  ! If Not bOk And bShowErrMsg
.head 9 -  ! Call SalMessageBox( "clsBewegungActions.BeforeInsert(  ): CheckUnqNameInGrp() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 9 -  Set bShowErrMsg = FALSE
.head 7 -  Set bOk = bOk And ((not oTargetCage.sCadaverType) or IsBewActionPossible(  ))
.head 7 +  If Not bOk And bShowErrMsg
.head 8 -  ! Call SalMessageBox( "clsBewegungActions.BeforeInsert(  ): IsBewActionPossible() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Set sErrMessage = "clsBewegungActions.BeforeInsert(  ): IsBewActionPossible() failed !"
.head 8 -  Set bShowErrMsg = FALSE
.head 7 +  If not b_BA_SH and (not oTargetCage.sCadaverType)
.head 8 -  Set bOk = bOk And CheckPlanBewBefore(  )
.head 8 -  Set bOk = bOk And AfterBewCheck_PlanBew_Prepare( n_FallKey, s_BA_New, dt_BewZeit_New, s_AbtKey_New, h_Sql, oPBChanges )
.head 8 +  ! If Not bOk And bShowErrMsg
.head 9 -  Call SalMessageBox( "clsBewegungActions.BeforeInsert(  ): CheckPlanBewBefore() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 9 -  Set bShowErrMsg = FALSE
.head 8 -  ! Set bOk = bOk And CheckLitterBefore(  )
.head 8 +  ! If Not bOk And bShowErrMsg
.head 9 -  ! Call SalMessageBox( "clsBewegungActions.BeforeInsert(  ): CheckLitterBefore() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 9 -  Set sErrMessage = "clsBewegungActions.BeforeInsert(  ): CheckLitterBefore() failed !"
.head 8 -  ! Set bOk = bOk And CheckLitter4Fall( FALSE )
.head 8 +  ! If Not bOk And bShowErrMsg
.head 9 -  ! Call SalMessageBox( "clsBewegungActions.BeforeInsert(  ): CheckLitter4Fall() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 9 -  Set sErrMessage = "clsBewegungActions.BeforeInsert(  ): CheckLitter4Fall() failed !"
.head 8 +  If not b_BA_SH 
.head 9 -  Set bOk = bOk and CheckRS4Fall_OnBewChange()
.head 7 +  If oTargetCage.sCadaverType
.head 8 -  Set nFall_Cull[0] = oFall.nFallKey
.head 8 -  Call RS_BeforeCulling(hSession,  nFall_Cull, dt_BewZeit_New)
.head 8 -  Set nNewColonyNr = -100
.head 7 +  Else
.head 8 -  Set bOk = bOk and SqlPrepareAndExecute(h_Sql , "select colony from colony c 
where c.strain_id=:oFall.nStrainID and c.scr_id=:nIDScreen and c.rack_id = :nIDRack into :nNewColonyNr " )
.head 8 +  If bOk
.head 9 -  Set nNewColonyNr = NUMBER_Null
.head 9 -  Call SqlFetchNext( h_Sql, nFtch  )
.head 7 +  If nNewColonyNr = NUMBER_Null
.head 8 +  If SalModalDialog( dlgSelectColony, hWndForm, hSession,oFall.nStrainID, nIDScreen, nIDRack, nNewColonyNr ) = IDCANCEL
.head 9 -  Set bOk = FALSE
.head 7 +  Else
.head 8 -  Set nNewColonyNr = -1
.head 7 -  Call SalStatusSetText( hWndForm, sStatusText )
.head 7 -  Return bOk
.head 5 +  ! Function: BeforeInsert
.head 6 -  Description: 
.head 6 +  Returns 
.head 7 -  Boolean: 
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  Boolean: bOk
.head 7 -  String: sStatusText
.head 7 -  Boolean: bShowErrMsg
.head 6 +  Actions 
.head 7 -  Set bShowErrMsg = TRUE
.head 7 -  !
.head 7 +  If Not bFallDataAreFetched
.head 8 +  If Not GetFallData(  )
.head 9 -  Return FALSE
.head 7 -  !
.head 7 -  Set bOk = TRUE
.head 7 -  Call SalStatusGetText( hWndForm, sStatusText, 250 )
.head 7 -  Call SalStatusSetText( hWndForm, sStatusText || ' - Check before insert ...' )
.head 7 +  If not b_BA_SH 
.head 8 -  Set bOk = bOk And CheckUnqNameInGrp(  )
.head 8 +  ! If Not bOk And bShowErrMsg
.head 9 -  ! Call SalMessageBox( "clsBewegungActions.BeforeInsert(  ): CheckUnqNameInGrp() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 9 -  Set bShowErrMsg = FALSE
.head 7 -  Set bOk = bOk And IsBewActionPossible(  )
.head 7 +  If Not bOk And bShowErrMsg
.head 8 -  ! Call SalMessageBox( "clsBewegungActions.BeforeInsert(  ): IsBewActionPossible() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Set sErrMessage = "clsBewegungActions.BeforeInsert(  ): IsBewActionPossible() failed !"
.head 8 -  Set bShowErrMsg = FALSE
.head 7 +  If not b_BA_SH 
.head 8 -  ! Set bOk = bOk And CheckPlanBewBefore(  )
.head 8 -  ! Set bOk = bOk And AfterBewCheck_PlanBew( n_FallKey, s_BA_New, dt_BewZeit_New, s_AbtKey_New, h_Sql )
.head 8 +  ! If Not bOk And bShowErrMsg
.head 9 -  Call SalMessageBox( "clsBewegungActions.BeforeInsert(  ): CheckPlanBewBefore() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 9 -  Set bShowErrMsg = FALSE
.head 8 -  ! Set bOk = bOk And CheckLitterBefore(  )
.head 8 +  ! If Not bOk And bShowErrMsg
.head 9 -  ! Call SalMessageBox( "clsBewegungActions.BeforeInsert(  ): CheckLitterBefore() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 9 -  Set sErrMessage = "clsBewegungActions.BeforeInsert(  ): CheckLitterBefore() failed !"
.head 8 -  ! Set bOk = bOk And CheckLitter4Fall( FALSE )
.head 8 +  ! If Not bOk And bShowErrMsg
.head 9 -  ! Call SalMessageBox( "clsBewegungActions.BeforeInsert(  ): CheckLitter4Fall() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 9 -  Set sErrMessage = "clsBewegungActions.BeforeInsert(  ): CheckLitter4Fall() failed !"
.head 8 +  If not b_BA_SH 
.head 9 -  Set bOk = bOk and CheckRS4Fall_OnBewChange()
.head 7 -  Call SalStatusSetText( hWndForm, sStatusText )
.head 7 -  Return bOk
.head 5 +  Function: AfterInsert
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bShowErrMsg
.head 7 -  Boolean: bOk
.head 7 -  Boolean: bUpdateFall_AE_EE
.head 7 -  Boolean: bUpdateFall_LastBew
.head 7 -  String: sStatusText
.head 6 +  Actions
.head 7 -  Set bOk = TRUE
.head 7 -  ! Set bShowErrMsg = TRUE
.head 7 -  ! Call SalStatusGetText( hWndForm, sStatusText, 250 )
.head 7 -  Call SalStatusSetText( hWndForm, 'Update correlated data after insert ...' )
.head 7 -  Set bUpdateFall_AE_EE = TRUE
.head 7 -  Set bUpdateFall_LastBew = TRUE
.head 7 -  !
.head 7 -  Call VisWaitCursor( TRUE )
.head 7 -  ! After Insert (Standart)
.head 7 -  ! Set bOk = bOk And After_UpdPrevBewZeitBis(  )
.head 7 +  ! If Not bOk
.head 8 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): After_UpdPrevBewZeitBis() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Set bShowErrMsg = FALSE
.head 7 -  ! Set bOk = bOk And After_UpdAltAbtKey(  )
.head 7 +  ! If Not bOk And bShowErrMsg
.head 8 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): After_UpdAltAbtKey() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Set bShowErrMsg = FALSE
.head 7 -  Set bOk = bOk And After_UpdFall( bUpdateFall_AE_EE, bUpdateFall_LastBew )
.head 7 +  If Not bOk
.head 8 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): After_UpdFall() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Set bShowErrMsg = FALSE
.head 7 -  ! Call After_UpdAbteilung(  )
.head 7 -  ! Call After_UpdCage(  )            !VARAN
.head 7 +  ! If Not bOk And bShowErrMsg
.head 8 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): After_UpdCage() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Set bShowErrMsg = FALSE
.head 7 -  ! Set bOk = bOk And After_InsPublishedEvent(  )
.head 7 +  ! If Not bOk And bShowErrMsg
.head 8 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): After_InsPublishedEvent() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Set bShowErrMsg = FALSE
.head 7 -  Call VisWaitCursor( FALSE )
.head 7 -  ! Set bOk = bOk and Check_TodDatum()
.head 7 +  If Not bOk
.head 8 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): Check_TodDatum() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Set bShowErrMsg = FALSE
.head 7 -  Set bOk = bOk and AfterIns_OnEvent()
.head 7 +  If NOT SalArrayIsEmpty(oPBChanges.oChanges)
.head 8 -  Set bOk = ApplyPBChanges()
.head 7 +  If Not bOk
.head 8 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): AfterIns_OnEvent() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Set bShowErrMsg = FALSE
.head 7 +  If s_BA_New = "EE"
.head 8 -  Set bOk = bOk And AfterEE_DelServiceFall( )
.head 8 -  Set bOk = bOk And ClearPlanMovement_AfterCulling_ForSession(hSession, nEinrichtId , n_FallKey, sMsgFromPlan)
.head 8 -  Set bOk = bOk And AfterEE_FinishExperiment(  )
.head 7 +  If Not bOk
.head 8 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): AfterEE_DelServiceFall() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Set bShowErrMsg = FALSE
.head 7 +  ! If (not b_BA_SH) And bNeedToModify_LitterDead
.head 8 -  Set bOk = bOk And CheckLitter4Fall( TRUE )
.head 8 +  If Not bOk
.head 9 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): DeleteUnWeanIfParentDead() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 9 -  Set bShowErrMsg = FALSE
.head 7 +  ! If Not bOk 
.head 8 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): AfterEE_FinishExperiment() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 8 -  Set bShowErrMsg = FALSE
.head 7 +  ! If not b_BA_SH 
.head 8 -  ! Set bOk = bOk And CheckRS4Fall_OnBewChange(  )
.head 8 +  If bAddInRS 
.head 9 -  Set bOk = bOk And _RS_AddFall_ToRS_ForSession(hSession)
.head 8 +  If Not bOk
.head 9 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): _RS_AddFall_ToRS_ForSession() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 9 -  Set bShowErrMsg = FALSE
.head 7 -  !
.head 7 -  ! After Insert (Extra)
.head 7 -  ! AD@20.07.2006 sGHSSchema is not used anymore while a normal user is connected. sCurrentName is used
.head 7 +  ! If s_BA_New = "EE"
.head 8 -  Set bOk = bOk And ClearPlanMovement_AfterCulling( nEinrichtId , n_FallKey )
.head 7 +  ! If s_Schema = sCurrentName
.head 8 +  ! If not b_BA_SH 
.head 9 -  Set bOk = bOk And AfterBewCheck_PlanBew( n_FallKey, s_BA_New, dt_BewZeit_New, s_AbtKey_New, h_Sql )
.head 9 +  If Not bOk And bShowErrMsg
.head 10 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): AfterBewCheck_PlanBew() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 10 -  Set bShowErrMsg = FALSE
.head 8 +  If bBreedingIsON
.head 9 +  If s_FallStatus = 'A' and  not b_BA_SH 
.head 10 +  If s_BA_New != 'EE'
.head 11 -  Set bOk = bOk And HelStat_Check4Bew( s_StatKey_New, s_GruppeKey_New, n_FallKey, dt_BewZeit_New )
.head 11 +  If Not bOk And bShowErrMsg
.head 12 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): HelStat_Check4Bew() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 12 -  Set bShowErrMsg = FALSE
.head 7 +  If (not b_BA_SH ) and (oSourceCage.nCageID) and (oSourceCage.nFallsInCage <= 1)
.head 8 -  Set bOk = bOk And ClearServicesOnEmptyCage(  )
.head 8 +  If oSourceCage.sRFID or oSourceCage.sBarCode
.head 9 -  Set bOk = bOk and  POC_Unregister(oSourceCage.nCageID)
.head 8 -  Set bOk = UpdateEmptySrcCage()
.head 7 +  If (oTargetCage.nCageID)  and oTargetCage.bNeedClearRFID and (oTargetCage.sRFID or oTargetCage.sBarCode)
.head 8 -  Set bOk = bOk and  POC_Unregister(oTargetCage.nCageID)
.head 7 -  Return bOk
.head 5 +  Function: POC_Unregister
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Number: _nCageID
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bRet
.head 6 +  Actions
.head 7 +  ! If _nCageID = oSourceCage.nCageID
.head 8 +  If nModeSL=1
.head 9 -  Call ClearLabelbyRFID( oSourceCage.sRFID, TRUE )
.head 8 -  Else If ModeSL=2
.head 7 +  ! Else If _nCageID = oTargetCage.nCageID
.head 8 -  Call ClearLabelbyRFID( oTargetCage.sRFID, TRUE )
.head 7 -  Call ClearLabelSession(hSession,_nCageID,TRUE)
.head 7 -  ! Call ClearLabel(_nCageID,TRUE )
.head 7 -  Set bRet = SqlPrepareAndExecute(h_Sql, "Update sysadm.GRUPPE
		set RFID='',
		      RF_ABT_KEY=''
		where id=:_nCageID")
.head 7 +  If bRet
.head 8 -  Call T_SetPortPOC(_nCageID, NUMBER_Null )
.head 8 +  If _nCageID = oSourceCage.nCageID
.head 9 -  Call T_SetPrintOnCage( _nCageID,0 )
.head 7 -  ! Call ClearLabelbyRFID( oSourceCage.sRFID )
.head 7 -  ! Set bRet = SqlPrepareAndExecute(h_Sql, "Update sysadm.GRUPPE
		set RFID='',
		      RF_ABT_KEY=''
		where id=:oSourceCage.nCageID")
.head 7 +  ! If bRet
.head 8 -  Call T_SetPortPOC(nIDCage, NUMBER_Null )
.head 8 -  Call T_SetPrintOnCage( nIDCage,0 )
.head 7 -  Return bRet
.head 5 -  !
.head 5 +  Function: DoInsertPlan
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Number:
.head 6 +  Parameters
.head 7 -  String: sSchema
.head 7 -  Number: nEID
.head 7 -  Number: nFallKey
.head 7 -  Number: nBew_Nr
.head 7 -  Date/Time: dtBewZeit
.head 7 -  String: sBA_Key
.head 7 -  String: sBG1_Key
.head 7 -  String: sBG2_Key
.head 7 -  String: sAbtKey
.head 7 -  String: sStatKey
.head 7 -  String: sGruppeKey
.head 7 -  String: sBettKey
.head 7 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Number: nFetch
.head 7 -  Number: nBewNr_New
.head 7 -  String: sStatusText
.head 7 -  String: sConcatString
.head 6 +  Actions
.head 7 -  Set bOk = Init( 'INS', sSchema, nEID, nFallKey, nBew_Nr, sBA_Key, dtBewZeit, sAbtKey, sStatKey, sGruppeKey, sBettKey, sBG1_Key, nAnswerMode, TRUE )
.head 7 +  If Not bOk
.head 8 -  Return 0
.head 7 -  !
.head 7 -  Set bOk = bOk And BeforeInsertPlan(  )
.head 7 +  If bOk	! Do Insert
.head 8 -  Set nBewNr_New = DoInsertPlanWithoutChecks( sSchema, nEID, nFallKey, nBew_Nr, dtBewZeit, sBA_Key, sBG1_Key, sBG2_Key, sAbtKey, sStatKey, sGruppeKey, sBettKey, nAnswerMode )
.head 7 -  Set bOk = bOk And AfterInsertPlan(  )
.head 7 -  !
.head 7 -  Call Finish(  )
.head 7 +  ! If bOk
.head 8 -  Set nBewNr_New = n_BewNr
.head 8 -  Set sConcatString = sAbtKey || ";" || sStatKey || ";" || sGruppeKey || ";" || sBettKey
.head 8 -  Call Notifications_SendBroadcast( nNotification_MovementAffected, sConcatString )
.head 7 -  Call SalStatusSetText( hWndForm, sStatusText )
.head 7 -  Return nBewNr_New
.head 5 +  Function: DoInsertPlanX2
.head 6 -  Description: performs DoInsertPlan within given SQL handle without Commit, to use as part of one big transaction. Also writes logs to LT tables.
.head 6 +  Returns
.head 7 -  Number:
.head 6 +  Parameters
.head 7 -  String: sSchema
.head 7 -  Number: nEID
.head 7 -  Number: nFallKey
.head 7 -  Number: nBew_Nr
.head 7 -  Date/Time: dtBewZeit
.head 7 -  String: sBA_Key
.head 7 -  String: sBG1_Key
.head 7 -  String: sBG2_Key
.head 7 -  String: sAbtKey
.head 7 -  String: sStatKey
.head 7 -  String: sGruppeKey
.head 7 -  String: sBettKey
.head 7 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 7 -  Sql Handle: hSql
.head 7 -  Number: nLT
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Number: nFetch
.head 7 -  Number: nBewNr_New
.head 7 -  String: sStatusText
.head 7 -  String: sConcatString
.head 6 +  Actions
.head 7 -  Set bOk = Init( 'INS', sSchema, nEID, nFallKey, nBew_Nr, sBA_Key, dtBewZeit, sAbtKey, sStatKey, sGruppeKey, sBettKey, sBG1_Key, nAnswerMode, TRUE )
.head 7 +  If Not bOk
.head 8 -  Return 0
.head 7 -  !
.head 7 -  Set bOk = bOk And BeforeInsertPlan(  )
.head 7 +  If bOk	! Do Insert
.head 8 -  Set nBewNr_New = DoInsertPlanWithoutChecksX2( sSchema, nEID, nFallKey, nBew_Nr, dtBewZeit, sBA_Key, sBG1_Key, sBG2_Key, sAbtKey, sStatKey, sGruppeKey, sBettKey, nAnswerMode, hSql, nLT )
.head 7 -  Set bOk = bOk And AfterInsertPlan(  )
.head 7 -  !
.head 7 -  Call Finish(  )
.head 7 +  ! If bOk
.head 8 -  Set nBewNr_New = n_BewNr
.head 8 -  Set sConcatString = sAbtKey || ";" || sStatKey || ";" || sGruppeKey || ";" || sBettKey
.head 8 -  Call Notifications_SendBroadcast( nNotification_MovementAffected, sConcatString )
.head 7 -  Call SalStatusSetText( hWndForm, sStatusText )
.head 7 -  Return nBewNr_New
.head 5 +  Function: DoInsertPlanWithoutChecks
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Number:
.head 6 +  Parameters
.head 7 -  String: sSchema
.head 7 -  Number: nEID
.head 7 -  Number: nFallKey
.head 7 -  Number: nBew_Nr
.head 7 -  Date/Time: dtBewZeit
.head 7 -  String: sBA_Key
.head 7 -  String: sBG1_Key
.head 7 -  String: sBG2_Key
.head 7 -  String: sAbtKey
.head 7 -  String: sStatKey
.head 7 -  String: sGruppeKey
.head 7 -  String: sBettKey
.head 7 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Number: nFetch
.head 7 -  Number: nBewNr_New
.head 7 -  Number: nLock_ID
.head 7 -  String: sStatusText
.head 7 -  Date/Time: dtBis
.head 7 -  String: sConcatString
.head 7 -  Boolean: bLockAcquired
.head 6 +  Actions
.head 7 -  Set bOk = bInitialized or Init( 'INS', sSchema, nEID, nFallKey, nBew_Nr, sBA_Key, dtBewZeit, sAbtKey, sStatKey, sGruppeKey, sBettKey, sBG1_Key, nAnswerMode, TRUE )
.head 7 +  If Not bOk
.head 8 -  Return 0
.head 7 -  !
.head 7 -  Call SalStatusGetText( hWndForm, sStatusText, 250 )
.head 7 -  Call SalStatusSetText( hWndForm, sStatusText || ' - Do insert PLAN...' )
.head 7 -  Call VisWaitCursor( TRUE )
.head 7 +  If bOk And sStatKey And sGruppeKey And sBettKey 
.head 8 +  Loop
.head 9 +  When SqlError
.head 10 -  ! Call SqlExtractArgs ( wParam, lParam, hSqlError, nSqlError, nErrorPos )
.head 10 +  ! If nSqlError < 0
.head 11 -  Set nSqlError = - nSqlError
.head 10 -  ! Set nrpSqlErrorNr = nSqlError
.head 10 -  Call SqlPrepareAndExecute(h_Sql, "rollback")
.head 10 -  Set bLockAcquired = FALSE
.head 10 -  Return FALSE
.head 9 -  Set bLockAcquired = TRUE
.head 9 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(h_Sql, "lock table xlock")
.head 9 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(h_Sql, "lock table bewegung_plan")
.head 9 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(h_Sql, "lock table bett_locks")
.head 9 +  If bLockAcquired
.head 10 -  Break
.head 8 -  ! ! Get new Plan-BEW_NR
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, "
select	@nullvalue( max( BEW_NR ), 1000 ) + 1
from	BEWEGUNG_PLAN
where	Fall_Key = :n_FallKey
into	:oFall.nLastBewNr " ) 
.head 8 -  Set bOk = bOk And SqlFetchNext( h_Sql, nFetch )
.head 8 +  If bOk
.head 9 -  Set nBewNr_New = oFall.nLastBewNr
.head 8 -  ! !
.head 8 -  ! ! Insert new BEWEGUNG_PLAN
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( h_Sql, "
insert into	BEWEGUNG_PLAN
             (	EINRICHT_ID, FALL_KEY, BEW_NR,
	BEW_ZEIT, BA_KEY, BG1_Key, BG2_Key, 
	ABT_KEY,
	ENTERED, ENTERED_BY
              )
values   (	:n_EID, :n_FallKey, :oFall.nLastBewNr,
	:dt_BewZeit_New, :s_BA_New, :sBG1_Key, :sBG2_Key,
	:s_AbtKey_New, 
	:dt_BewZeit_New, USER
              ) " )
.head 8 -  ! ! Insert new BETT_LOCKS
.head 8 -  Set bOk = bOk and SqlPrepareAndExecute( h_Sql, "
select	@nullvalue( max( LOCK_ID ), 0 ) + 1
from	BETT_LOCKS
into	:nLock_ID " )
.head 8 -  Set bOk = bOk And SqlFetchNext( h_Sql, nFetch )
.head 8 -  !
.head 8 -  ! select min VON >= :dt_BewZeit_New for this FALL
.head 8 -  Set bOk = bOk and SqlPrepareAndExecute( h_Sql, Gal_IR( "
select	min( VON )
from	BETT_LOCKS
where	PLANBEW_EINR = :n_EID
  and	PLANBEW_FALL = :n_FallKey
  and	VON > :dt_BewZeit_New
into	:dtBis ", MDB_GetServerTypeX( h_Sql ) ) )
.head 8 -  Set bOk = bOk And SqlFetchNext( h_Sql, nFetch )
.head 8 -  !
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( h_Sql, "
insert into	BETT_LOCKS
             (	LOCK_ID, VON, BIS, BL_ART, 
	EINRICHT_ID, Stat_Key, Gruppe_Key, Bett_Key,
	PLANBEW_EINR, PLANBEW_FALL, PLANBEW_BEW,
	INFO, pos_id
              )
values   (	:nLock_ID, :dt_BewZeit_New, :dtBis, :s_BA_New, 
	:n_EID , :oTargetCage.sRack, :oTargetCage.sCage, :s_BettKey_New, 
	:n_EID, :n_FallKey, :oFall.nLastBewNr,
	'BewPlan', :nIDPos ) " )
.head 8 -  ! update locks set Bis = :dt_BewZeit_New where ( Bis is null or Bis > :dt_BewZeit_New ) and Von < :dt_BewZeit_New
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( h_Sql, "
update	BETT_LOCKS
set	BIS = :dt_BewZeit_New
where	PLANBEW_EINR = :n_EID
  and	PLANBEW_FALL = :n_FallKey
  and	VON <= :dt_BewZeit_New
  and	( BIS is NULL or BIS > :dt_BewZeit_New )
  and	LOCK_ID != :nLock_ID
" )
.head 7 +  ! If bOk And sStatKey And sGruppeKey And sBettKey And Not (s_BA_New = 'EE')
.head 8 -  Set bOk = bOk and SqlPrepareAndExecute( h_Sql, Gal_IR( "
select	@nullvalue( max( LOCK_ID ), 0 ) + 1
from	BETT_LOCKS
into	:nLock_ID ", MDB_GetServerTypeX( h_Sql ) ) )
.head 8 -  Set bOk = bOk And SqlFetchNext( h_Sql, nFetch )
.head 8 -  !
.head 8 -  ! select min VON >= :dt_BewZeit_New for this FALL
.head 8 -  Set bOk = bOk and SqlPrepareAndExecute( h_Sql, Gal_IR( "
select	min( VON )
from	BETT_LOCKS
where	PLANBEW_EINR = :n_EID
  and	PLANBEW_FALL = :n_FallKey
  and	VON > :dt_BewZeit_New
into	:dtBis ", MDB_GetServerTypeX( h_Sql ) ) )
.head 8 -  Set bOk = bOk And SqlFetchNext( h_Sql, nFetch )
.head 8 -  !
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( h_Sql, "
insert into	BETT_LOCKS
             (	LOCK_ID, VON, BIS, BL_ART, 
	EINRICHT_ID, Stat_Key, Gruppe_Key, Bett_Key,
	PLANBEW_EINR, PLANBEW_FALL, PLANBEW_BEW,
	INFO
              )
values   (	" || StrX( nLock_ID ) || ", :dt_BewZeit_New, :dtBis, '" || s_BA_New || "', 
	" || StrX( n_EID ) || ", '" || sStatKey || "', '" || sGruppeKey || "', '" || sBettKey || "',
	" || StrX( n_EID ) || ", " || StrX( n_FallKey ) || ", " || StrX( n_BewNr ) || ",
	'BewPlan' ) " )
.head 8 -  ! update locks set Bis = :dt_BewZeit_New where ( Bis is null or Bis > :dt_BewZeit_New ) and Von < :dt_BewZeit_New
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( h_Sql, "
update	BETT_LOCKS
set	BIS = :dt_BewZeit_New
where	PLANBEW_EINR = :n_EID
  and	PLANBEW_FALL = :n_FallKey
  and	VON <= :dt_BewZeit_New
  and	( BIS is NULL or BIS > :dt_BewZeit_New )
  and	LOCK_ID != :nLock_ID
" )
.head 7 -  Call VisWaitCursor( FALSE )
.head 7 -  !
.head 7 -  Call Finish(  )
.head 7 +  ! If bOk
.head 8 -  Set nBewNr_New = n_BewNr
.head 8 -  Set sConcatString = sAbtKey || ";" || sStatKey || ";" || sGruppeKey || ";" || sBettKey
.head 8 -  Call Notifications_SendBroadcast( nNotification_MovementAffected, sConcatString )
.head 7 -  Call SalStatusSetText( hWndForm, sStatusText )
.head 7 -  Return oFall.nLastBewNr
.head 5 +  Function: DoInsertPlanWithoutChecksX2
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Number:
.head 6 +  Parameters
.head 7 -  String: sSchema
.head 7 -  Number: nEID
.head 7 -  Number: nFallKey
.head 7 -  Number: nBew_Nr
.head 7 -  Date/Time: dtBewZeit
.head 7 -  String: sBA_Key
.head 7 -  String: sBG1_Key
.head 7 -  String: sBG2_Key
.head 7 -  String: sAbtKey
.head 7 -  String: sStatKey
.head 7 -  String: sGruppeKey
.head 7 -  String: sBettKey
.head 7 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 7 -  Sql Handle: hSql1
.head 7 -  Number: nLT
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Number: nFetch
.head 7 -  Number: nFetch1
.head 7 -  Number: nBewNr_New
.head 7 -  Number: nLock_ID
.head 7 -  String: sStatusText
.head 7 -  Date/Time: dtBis
.head 7 -  String: sConcatString
.head 7 -  Boolean: bLockAcquired
.head 7 -  Number: nNR
.head 7 -  Number: nNR_Detail
.head 7 -  Date/Time: dt_BewZeit_Old
.head 7 -  Number: nLock_ID1
.head 7 -  Sql Handle: hSql2
.head 6 +  Actions
.head 7 -  Set bOk = bInitialized or Init( 'INS', sSchema, nEID, nFallKey, nBew_Nr, sBA_Key, dtBewZeit, sAbtKey, sStatKey, sGruppeKey, sBettKey, sBG1_Key, nAnswerMode, TRUE )
.head 7 +  If Not bOk
.head 8 -  Return 0
.head 7 -  !
.head 7 -  Call SalStatusGetText( hWndForm, sStatusText, 250 )
.head 7 -  Call SalStatusSetText( hWndForm, sStatusText || ' - Do insert PLAN...' )
.head 7 -  Call VisWaitCursor( TRUE )
.head 7 -  Call SqlConnect(hSql2)
.head 7 +  If bOk And sStatKey And sGruppeKey And sBettKey 
.head 8 +  Loop
.head 9 +  When SqlError
.head 10 -  ! Call SqlExtractArgs ( wParam, lParam, hSqlError, nSqlError, nErrorPos )
.head 10 +  ! If nSqlError < 0
.head 11 -  Set nSqlError = - nSqlError
.head 10 -  ! Set nrpSqlErrorNr = nSqlError
.head 10 -  ! Call SqlPrepareAndExecute(h_Sql, "rollback")
.head 10 -  Set bLockAcquired = FALSE
.head 10 -  Return FALSE
.head 9 -  Set bLockAcquired = TRUE
.head 9 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(hSql1, "lock table xlock")
.head 9 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(hSql1, "lock table bewegung_plan")
.head 9 -  Set bLockAcquired = bLockAcquired and SqlPrepareAndExecute(hSql1, "lock table bett_locks")
.head 9 +  If bLockAcquired
.head 10 -  Break
.head 8 -  ! ! Get new Plan-BEW_NR
.head 8 -  Set bOk = SqlPrepareAndExecute( hSql1, "
select	@nullvalue( max( BEW_NR ), 1000 ) + 1
from	BEWEGUNG_PLAN
where	Fall_Key = :n_FallKey
into	:oFall.nLastBewNr " ) 
.head 8 -  Set bOk = bOk And SqlFetchNext( hSql1, nFetch )
.head 8 +  If bOk
.head 9 -  Set nBewNr_New = oFall.nLastBewNr
.head 8 -  ! !
.head 8 -  ! ! Insert new BEWEGUNG_PLAN
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( hSql1, "
insert into	BEWEGUNG_PLAN
             (	EINRICHT_ID, FALL_KEY, BEW_NR,
	BEW_ZEIT, BA_KEY, BG1_Key, BG2_Key, 
	ABT_KEY,
	ENTERED, ENTERED_BY
              )
values   (	:n_EID, :n_FallKey, :oFall.nLastBewNr,
	:dt_BewZeit_New, :s_BA_New, :sBG1_Key, :sBG2_Key,
	:s_AbtKey_New, 
	:dt_BewZeit_New, USER
              ) " )
.head 8 -  ! ! Logging "insert into BEWEGUNG_PLAN"
.head 8 -  Set bOk =bOk And  SqlPrepareAndExecute( hSql1, "
select 	@nullvalue(max(NR)+1,1)
from 	LT_DETAIL
where 	LT_NR=:nLT into :nNR " )
.head 8 -  Set bOk = bOk and SqlFetchNext( hSql1, nFetch )
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( hSql1, "
insert 	into LT_DETAIL (LT_NR, NR, OP, TBNAME)
values 	(:nLT,:nNR,'I','BEWEGUNG_PLAN' ) " )
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( hSql1, "
select 	ID
from 	LT_DETAIL
where 	LT_NR=:nLT and NR=:nNR and OP='I' and TBNAME ='BEWEGUNG_PLAN'
into	:nNR_Detail " )
.head 8 -  Set bOk = bOk and SqlFetchNext( hSql1, nFetch )
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( hSql1, "
insert	into LT_VALUES (ID, NAME, KEY1, KEY2, KEY3 )
values	( :nNR_Detail, 'BEWEGUNG_PLAN', :nEinrichtId, :nFallKey , :oFall.nLastBewNr )" ) 
.head 8 -  ! end of logging
.head 8 -  ! ! Insert new BETT_LOCKS
.head 8 -  Set bOk = bOk and SqlPrepareAndExecute( hSql1, "
select	@nullvalue( max( LOCK_ID ), 0 ) + 1
from	BETT_LOCKS
into	:nLock_ID " )
.head 8 -  Set bOk = bOk And SqlFetchNext( hSql1, nFetch )
.head 8 -  !
.head 8 -  ! select min VON >= :dt_BewZeit_New for this FALL
.head 8 -  Set bOk = bOk and SqlPrepareAndExecute( hSql1, Gal_IR( "
select	min( VON )
from	BETT_LOCKS
where	PLANBEW_EINR = :n_EID
  and	PLANBEW_FALL = :n_FallKey
  and	VON > :dt_BewZeit_New
into	:dtBis ", MDB_GetServerTypeX( hSql1 ) ) )
.head 8 -  Set bOk = bOk And SqlFetchNext( hSql1, nFetch )
.head 8 -  !
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( hSql1, "
insert into	BETT_LOCKS
             (	LOCK_ID, VON, BIS, BL_ART, 
	EINRICHT_ID, Stat_Key, Gruppe_Key, Bett_Key,
	PLANBEW_EINR, PLANBEW_FALL, PLANBEW_BEW,
	INFO, pos_id
              )
values   (	:nLock_ID, :dt_BewZeit_New, :dtBis, :s_BA_New, 
	:n_EID , :oTargetCage.sRack, :oTargetCage.sCage, :s_BettKey_New, 
	:n_EID, :n_FallKey, :oFall.nLastBewNr,
	'BewPlan', :nIDPos ) " )
.head 8 -  ! ! Logging "insert into BETT_LOCKS"
.head 8 -  Set nNR = nNR+1
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( hSql1, "
insert 	into LT_DETAIL (LT_NR, NR, OP, TBNAME)
values 	(:nLT,:nNR,'I','BETT_LOCKS' ) " )
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( hSql1, "
select 	ID
from 	LT_DETAIL
where 	LT_NR=:nLT and NR=:nNR and OP='I'
into	:nNR_Detail " )
.head 8 -  Set bOk = bOk and SqlFetchNext( hSql1, nFetch )
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( hSql1, "
insert	into LT_VALUES (ID, NAME, KEY1 )
values	(:nNR_Detail, 'BETT_LOCKS', :nLock_ID )" ) 
.head 8 -  ! end of logging
.head 8 -  ! ! Logging "Update BETT_LOCKS" - save values  into LT journal BEFORE update
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( hSql2, "
select  	LOCK_ID, BIS
from 	BETT_LOCKS
where	PLANBEW_EINR = :n_EID
  and	PLANBEW_FALL = :n_FallKey
  and	VON <= :dt_BewZeit_New
  and	( BIS is NULL or BIS > :dt_BewZeit_New )
  and	LOCK_ID != :nLock_ID 
into 	 :nLock_ID1, :dt_BewZeit_Old	
" )
.head 8 +  If SqlFetchNext( hSql2, nFetch1 )
.head 9 -  Set nNR = nNR+1
.head 9 -  Set bOk = bOk And SqlPrepareAndExecute( hSql1, "
insert 	into LT_DETAIL (LT_NR, NR, OP, TBNAME)
values 	(:nLT,:nNR,'U','BETT_LOCKS' ) " )
.head 9 -  Set bOk = bOk And SqlPrepareAndExecute( hSql1, "
select 	ID
from 	LT_DETAIL
where 	LT_NR=:nLT and NR=:nNR and OP='U'
into	:nNR_Detail " )
.head 9 -  Set bOk = bOk and SqlFetchNext( hSql1, nFetch )
.head 9 -  Set bOk = bOk And SqlPrepareAndExecute( hSql1, "
insert	into LT_VALUES (ID, NAME, VALD, KEY1 )
values	(:nNR_Detail, 'BETT_LOCKS', :dt_BewZeit_Old,  :nLock_ID1 )" ) 
.head 9 +  While SqlFetchNext( hSql2, nFetch1 )										
.head 10 -  Set bOk = bOk And SqlPrepareAndExecute( hSql1, "
insert	into LT_VALUES (ID, NAME, VALD, KEY1 )
values	(:nNR_Detail, 'BETT_LOCKS', :dt_BewZeit_Old,  :nLock_ID1 )" ) 
.head 9 -  ! end of logging
.head 8 -  ! update locks set Bis = :dt_BewZeit_New where ( Bis is null or Bis > :dt_BewZeit_New ) and Von < :dt_BewZeit_New
.head 8 -  Set bOk = bOk And SqlPrepareAndExecute( hSql1, "
update	BETT_LOCKS
set	BIS = :dt_BewZeit_New
where	PLANBEW_EINR = :n_EID
  and	PLANBEW_FALL = :n_FallKey
  and	VON <= :dt_BewZeit_New
  and	( BIS is NULL or BIS > :dt_BewZeit_New )
  and	LOCK_ID != :nLock_ID
" )
.head 7 -  Call VisWaitCursor( FALSE )
.head 7 -  !
.head 7 -  Call Finish(  )
.head 7 +  ! If bOk
.head 8 -  Set nBewNr_New = n_BewNr
.head 8 -  Set sConcatString = sAbtKey || ";" || sStatKey || ";" || sGruppeKey || ";" || sBettKey
.head 8 -  Call Notifications_SendBroadcast( nNotification_MovementAffected, sConcatString )
.head 7 -  Call SalStatusSetText( hWndForm, sStatusText )
.head 7 -  Call SqlDisconnect(hSql2)
.head 7 -  Return oFall.nLastBewNr
.head 5 +  Function: BeforeInsertPlan
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 6 +  Actions
.head 7 +  ! If Not bFallDataAreFetched
.head 8 +  If Not GetFallData(  )
.head 9 -  Return FALSE
.head 7 -  !
.head 7 -  Set bOk = TRUE
.head 7 -  ! Set bOk = bOk And CheckUnqNameInGrp(  )
.head 7 -  Set bOk = bOk And IsBewActionPossible(  )
.head 7 -  ! Set bOk = bOk And CheckPlanBewBefore(  )
.head 7 -  Return bOk
.head 5 +  Function: AfterInsertPlan
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Boolean: bShowErrMsg
.head 6 +  Actions
.head 7 -  Set bOk = TRUE
.head 7 -  Set bShowErrMsg = TRUE
.head 7 +  If not b_BA_SH 
.head 8 -  Set bOk = bOk And CheckRS4Fall_OnBewPlanChange(  )
.head 8 +  If Not bOk And bShowErrMsg
.head 9 -  Call SalMessageBox( "clsBewegungActions.AfterInsert(  ): CheckRS4Fall_OnBewChange() failed !", GetMessageX( 203, 'Error' ), 0 )
.head 9 -  Set bShowErrMsg = FALSE
.head 7 -  Return bOk
.head 5 -  !
.head 5 +  Function: DoDelete
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  String: sSchema
.head 7 -  Number: nEID
.head 7 -  Number: nFallKey
.head 7 -  Number: nBewNr
.head 7 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Number: nBew_Nr[ * ]
.head 7 -  Number: nNr
.head 7 -  Number: i
.head 7 -  ! Sql Handle: hSqlD
.head 7 -  Sql Handle: hSqlU
.head 7 -  Number: nFetch
.head 7 -  String: sAbtKey[ * ]
.head 7 -  String: sStatKey[ * ]
.head 7 -  String: sGruppeKey[ * ]
.head 7 -  String: sBettKey[ * ]
.head 7 -  String: sConcatString
.head 6 +  Actions
.head 7 -  Set bOk = Init( 'DEL', sSchema, nEID, nFallKey, nBewNr, '', DATETIME_Null, '', '', '', '', '', nAnswerMode, FALSE )
.head 7 -  !
.head 7 -  Set bOk = bOk And BeforeDelete(  )
.head 7 -  Set nNr = 0
.head 7 +  If bOk	! Do Delete
.head 8 -  ! ! Get List of BewNr which have to be deleted
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, "
select	bew_nr
into	:nBew_Nr[ nNr ]
from	bewegung
where	einricht_id = :n_EID
  and	Fall_Key = :n_FallKey
  and	Bew_Nr >= :n_BewNr
  and	Geloescht = 'N'
order by	bew_zeit
" )
.head 8 +  While bOk and SqlFetchNext( h_Sql, nFetch )
.head 9 -  Set nNr = nNr + 1
.head 8 +  If bOk And nFetch > FETCH_EOF
.head 9 -  Set bOk = FALSE
.head 8 -  !
.head 8 +  If bOk and nNr > 0
.head 9 +  If Not GalConnect( hSqlU )
.head 10 -  Return FALSE
.head 9 +  ! AS 29.06.2004: We do only SET GELOESCHT = 'J'
.head 10 +  ! If Not GalConnect( hSqlD )
.head 11 -  Return FALSE
.head 11 -  Call SqlDisconnect( hSqlU )
.head 9 +  If bOk	! Prepare
.head 10 +  ! AS 29.06.2004: We do only SET GELOESCHT = 'J'
.head 11 -  ! Set bOk = bOk And SqlPrepare( hSqlD, "
delete
from	Bewegung
where	einricht_id = :n_EID
  and	Fall_Key = :n_FallKey
  and	Bew_Nr = :nBew_Nr[ i ]
" )
.head 10 -  Set bOk = bOk And SqlPrepare( hSqlU, "
update	Bewegung
set	Geloescht = 'J', Benutzer_ID = :nUserId, Modified = :dt_BewZeit_New
where	einricht_id = :n_EID
  and	Fall_Key = :n_FallKey
  and	Bew_Nr = :nBew_Nr[ i ]
" )
.head 9 -  Set i = nNr
.head 9 +  While bOk and i > 0
.head 10 -  Set i = i - 1
.head 10 +  When SqlError
.head 11 -  ! !	Cannot delete row until all the dependent rows are deleted
.head 11 +  If lParam & 0xFFFFF = 383
.head 12 -  Return TRUE
.head 11 +  If lParam & 0xFFFFF = 547	! Sybase analogue
.head 12 -  Return TRUE
.head 10 +  ! AS 29.06.2004: We do only SET GELOESCHT = 'J'
.head 11 -  ! Set bOk = bOk And SqlExecute( hSqlD )
.head 10 -  Set bOk = bOk And SqlExecute( hSqlU )
.head 10 +  If bOk
.head 11 -  Set sConcatString = sAbtKey[i] || ";" || sStatKey[i] || ";" || sGruppeKey[i] || ";" || sBettKey[i]
.head 11 -  Call Notifications_SendBroadcast( nNotification_MovementAffected, sConcatString )
.head 9 +  ! AS 29.06.2004: We do only SET GELOESCHT = 'J'
.head 10 -  ! Call SqlDisconnect( hSqlD )
.head 9 -  Call SqlDisconnect( hSqlU )
.head 7 -  Set bOk = bOk And AfterDelete( nNr )
.head 7 -  !
.head 7 -  Call Finish(  )
.head 7 -  Return bOk
.head 5 +  Function: BeforeDelete
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 6 +  Actions
.head 7 +  If Not bFallDataAreFetched
.head 8 +  If Not GetFallData(  )
.head 9 -  Return FALSE
.head 7 -  !
.head 7 -  Set bOk = TRUE
.head 7 -  Set bOk = bOk And IsBewActionPossible(  )
.head 7 -  Return bOk
.head 5 +  Function: AfterDelete
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Number: nAmountOfDeleted
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Boolean: bUpdateFall_AE_EE
.head 7 -  Boolean: bUpdateFall_LastBew
.head 6 +  Actions
.head 7 +  If nAmountOfDeleted = 0
.head 8 -  Return TRUE
.head 7 -  Set bOk = TRUE
.head 7 -  Set bUpdateFall_AE_EE = TRUE
.head 7 -  Set bUpdateFall_LastBew = TRUE
.head 7 -  !
.head 7 -  Set bOk = bOk And After_UpdPrevBewZeitBis(  )
.head 7 -  Set bOk = bOk And After_UpdFall( bUpdateFall_AE_EE, bUpdateFall_LastBew )
.head 7 -  Set bOk = bOk And After_InsPublishedEvent(  )
.head 7 -  Set bOk = bOk And ClearServicesOnEmptyCage(  )
.head 7 -  Return bOk
.head 5 -  !
.head 5 +  Function: DoUpdate
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  String: sSchema
.head 7 -  Number: nEID
.head 7 -  Number: nFallKey
.head 7 -  Number: nBew_Nr
.head 7 -  Date/Time: dtBewZeit
.head 7 -  String: sBA_Key
.head 7 -  String: sBG1_Key
.head 7 -  String: sBG2_Key
.head 7 -  String: sAbtKey
.head 7 -  String: sStatKey
.head 7 -  String: sGruppeKey
.head 7 -  String: sBettKey
.head 7 -  String: sTelefon
.head 7 -  Boolean: bUpg_Tel
.head 7 -  String: sTV
.head 7 -  Boolean: bUpg_TV
.head 7 -  Long String: lsInfo
.head 7 -  Boolean: bUpg_Info
.head 7 -  String: sBegruendung
.head 7 -  Boolean: bUpg_Begr
.head 7 -  Number: nAnswerMode	! Ask=0, Yes2All=1, No2All=2
.head 7 -  Boolean: bForceCheck
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  String: sSql
.head 7 -  String: sSql_SetSection
.head 7 -  String: sWhere4Row
.head 7 -  Boolean: bImportantChange
.head 7 -  String: sConcatString
.head 6 +  Actions
.head 7 +  ! If SalStrUpperX( sGeloescht ) != 'N'
.head 8 -  Call SalMessageBox( "If You want to delete a movement then use DELETE !", 'Update Bewegung - Error', MB_IconExclamation )
.head 8 -  Return FALSE
.head 7 -  Set bOk = Init( 'UPD', sSchema, nEID, nFallKey, nBew_Nr, sBA_Key, dtBewZeit, sAbtKey, sStatKey, sGruppeKey, sBettKey, sBG1_Key, nAnswerMode, FALSE )
.head 7 +  If bForceCheck
.head 8 -  Set bImportantChange = TRUE
.head 7 +  Else If ( dt_BewZeit_New = dt_BewZeit_Old ) And 
   ( s_StatKey_New = s_StatKey_Old ) And 
   ( s_GruppeKey_New = s_GruppeKey_Old ) And 
   ( s_BettKey_New = s_BettKey_Old )
.head 8 -  Set bImportantChange = FALSE
.head 7 +  Else
.head 8 -  Set bImportantChange = TRUE
.head 7 -  !
.head 7 -  Set bOk = bOk And BeforeUpdate( bImportantChange )
.head 7 +  If bOk	! build sSql
.head 8 -  Set sSql_SetSection = "	Benutzer_ID = :nUserId,
	Modified = :dt_BewZeit_New"
.head 8 +  If dt_BewZeit_New != dt_BewZeit_Old
.head 9 -  Set sSql_SetSection = sSql_SetSection || ",
	Bew_Zeit = :dt_BewZeit_New"
.head 8 +  If s_AbtKey_New != s_AbtKey_Old
.head 9 -  Set sSql_SetSection = sSql_SetSection || ",
	Abt_Key = :s_AbtKey_New"
.head 8 +  If s_StatKey_New != s_StatKey_Old
.head 9 -  Set sSql_SetSection = sSql_SetSection || ",
	Stat_Key = :s_StatKey_New"
.head 8 +  If s_GruppeKey_New != s_GruppeKey_Old
.head 9 -  Set sSql_SetSection = sSql_SetSection || ",
	Gruppe_Key = :s_GruppeKey_New"
.head 8 +  If s_BettKey_New != s_BettKey_Old
.head 9 -  Set sSql_SetSection = sSql_SetSection || ",
	Bett_Key = :s_BettKey_New"
.head 8 +  If sBG1_Key != s_BG1_Key_Old
.head 9 -  Set sSql_SetSection = sSql_SetSection || ",
	BG1_Key = :sBG1_Key"
.head 8 +  If sBG2_Key != s_BG2_Key_Old
.head 9 -  Set sSql_SetSection = sSql_SetSection || ",
	BG2_Key = :sBG2_Key"
.head 8 +  If bUpg_Tel
.head 9 -  Set sSql_SetSection = sSql_SetSection || ",
	Telefon = :sTelefon"
.head 8 +  If bUpg_TV
.head 9 -  Set sSql_SetSection = sSql_SetSection || ",
	TV = :sTV"
.head 8 +  If bUpg_Begr
.head 9 -  Set sSql_SetSection = sSql_SetSection || ",
	Med_Begruendung = :sBegruendung "
.head 8 -  Set sWhere4Row = "
where	einricht_id = " || StrX( n_EID ) || "
  and	Fall_Key = " || StrX( n_FallKey )  || "
  and	Bew_Nr = " || StrX( n_BewNr )
.head 8 -  Set sSql = "
update	Bewegung
set " || sSql_SetSection || "
" || sWhere4Row
.head 7 -  Set bOk = bOk And SqlPrepareAndExecute( h_Sql, sSql )
.head 7 -  Set bOk = bOk And AfterUpdate( bImportantChange )
.head 7 +  If bUpg_Info
.head 8 -  Set bOk = bOk And Long_UpdateAnyTB( sSchema, 'BEWEGUNG', 'INFO', sWhere4Row, lsInfo )
.head 7 +  If bOk
.head 8 -  Set sConcatString = s_AbtKey_New || ";" || s_StatKey_New || ";" || s_GruppeKey_New || ";" || s_BettKey_New
.head 8 -  Call Notifications_SendBroadcast( nNotification_MovementAffected, sConcatString )
.head 8 -  Set sConcatString = s_AbtKey_Old || ";" || s_StatKey_Old || ";" || s_GruppeKey_Old || ";" || s_BettKey_Old
.head 8 -  Call Notifications_SendBroadcast( nNotification_MovementAffected, sConcatString )
.head 7 -  !
.head 7 -  Call Finish(  )
.head 7 -  Return bOk
.head 5 +  Function: BeforeUpdate
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Boolean: bImportantChange
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 6 +  Actions
.head 7 +  If Not bFallDataAreFetched
.head 8 +  If Not GetFallData(  )
.head 9 -  Return FALSE
.head 7 -  !
.head 7 -  Set bOk = TRUE
.head 7 +  If bImportantChange
.head 8 -  Set bOk = bOk And CheckUnqNameInGrp(  )
.head 8 -  Set bOk = bOk And IsBewActionPossible(  )
.head 8 -  Set bOk = bOk And CheckPlanBewBefore(  )
.head 7 -  Return bOk
.head 5 +  Function: AfterUpdate
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Boolean: bImportantChange
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bOk
.head 7 -  Boolean: bUpdateFall_AE_EE
.head 7 -  Boolean: bUpdateFall_LastBew
.head 6 +  Actions
.head 7 -  Set bOk = TRUE
.head 7 +  If bImportantChange
.head 8 -  Set bUpdateFall_AE_EE = TRUE
.head 8 -  Set bUpdateFall_LastBew = FALSE
.head 8 -  !
.head 8 -  ! After Update (Standart)
.head 8 -  Set bOk = bOk And After_UpdPrevBewZeitBis(  )
.head 8 -  Set bOk = bOk And After_UpdAltAbtKey(  )
.head 8 -  Set bOk = bOk And After_UpdFall( bUpdateFall_AE_EE, bUpdateFall_LastBew )
.head 8 -  Set bOk = bOk And After_InsPublishedEvent(  )
.head 8 -  Set bOk = bOk And ClearServicesOnEmptyCage(  )
.head 8 -  !
.head 8 -  ! After Update (Extra)
.head 8 -  ! AD@20.07.2006 sGHSSchema is not used anymore while a normal user is connected. sCurrentName is used
.head 8 +  If s_Schema = sCurrentName
.head 9 +  If bBreedingIsON
.head 10 +  If s_FallStatus = 'A'
.head 11 -  Set bOk = bOk And HelStat_Check4Bew( s_StatKey_New, s_GruppeKey_New, n_FallKey, dt_BewZeit_New )
.head 10 -  Set bOk = bOk And CheckRS4Fall_OnBewChange(  )
.head 7 -  Set bOk = bOk and Check_TodDatum()
.head 7 -  Return bOk
.head 5 +  Function: ClearServicesOnEmptyCage
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Date/Time: dtBewZeitBis_PrevBew
.head 7 -  Boolean: bOk
.head 7 -  Boolean: bEmpty
.head 6 +  Actions
.head 7 +  ! If Not n_BewNr_PrevBew
.head 8 -  Return TRUE
.head 7 -  !
.head 7 +  ! If ( s_Action = 'UPD' ) And ( dt_BewZeit_New = dt_BewZeit_Old )
.head 8 -  Return TRUE
.head 7 -  !
.head 7 +  ! If s_Geloescht_New = 'J' Or s_Action = 'DEL'
.head 8 -  Set dtBewZeitBis_PrevBew = DATETIME_Null 
.head 7 +  ! Else
.head 8 -  Set dtBewZeitBis_PrevBew = dt_BewZeit_New 
.head 7 -  ! Set bOk = SqlExists( "select f.LAST_GRUPPE_KEY
		       from sysadm.bewegung b, sysadm.fall f
		        where b.einricht_id=:n_EID
     		            and b.fall_key=:n_FallKey
    		            and b.bew_nr = :n_BewNr_PrevBew
     		            and f.einricht_id = b.einricht_id
		            and f.last_stat_key = b.stat_key
		            and f.LAST_GRUPPE_KEY = b.gruppe_key
		            and f.LAST_BA_KEY in ( 'AE', 'VE', 'UE', 'RE' )
		            and @nullvalue( f.GELOESCHT, 'N' ) != 'J' " ,bEmpty )
.head 7 +  ! If not bEmpty and not b_BA_SH
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, "
update lst_erf l set l.storniert='J', L.LST_ERF_BIS=:dtBewZeitBis_PrevBew 
		where  l.done=0
 		   and l.gruppe_key is not null
		   and l.stat_key is not null
 		  and  exists (select * from sysadm.bewegung b where  b.einricht_id=l.einricht_id
						 and b.fall_key=:n_FallKey
						 and b.bew_nr = :n_BewNr_PrevBew		
						 and l.stat_key = b.STAT_KEY
						 and l.gruppe_key = b.GRUPPE_KEY )" )
.head 7 -  ! Return bOk
.head 7 +  If oSourceCage.nFallsInCage <= 1
.head 8 -  Return SqlPrepareAndExecute(h_Sql, "update
 lst_erf lerf
set
 lerf.storniert='Y', Lerf.LST_ERF_BIS= :dt_BewZeit_New
where 
 lerf.gruppe_key = :oSourceCage.sCage
 and lerf.stat_key = :oSourceCage.sRack
 and lerf.done = 0
 and lerf.storniert = 'N'")
.head 8 +  ! If s_BA_New = "EE"
.head 9 -  Return SqlPrepareAndExecute(h_Sql, "update
 lst_erf lerf
set
 lerf.storniert='Y', Lerf.LST_ERF_BIS= :dt_BewZeit_New
where 
 lerf.gruppe_key = :oTargetCage.sCage
 and lerf.stat_key = :oTargetCage.sRack
 and lerf.done = 0
 and lerf.storniert = 'N'")
.head 8 +  ! Else
.head 9 -  ! Return SqlPrepareAndExecute(h_Sql, "update
 lst_erf lerf
set
 lerf.gruppe_key = :oTargetCage.sCage, lerf.stat_key = :oTargetCage.sRack
where 
 lerf.gruppe_key = :oSourceCage.sCage
 and lerf.stat_key = :oSourceCage.sRack
 and lerf.done = 0
 and lerf.storniert = 'N'
 and lerf.lst_key in (select lst_key from leistung where lst_key = lerf.lst_key and tarif_key = lerf.tarif_key and DEL_NOTDONE_ON_EE = 1)")
.head 9 -  Return TRUE
.head 7 +  Else
.head 8 -  Return TRUE
.head 5 +  ! Function: ClearServicesOnEmptyCage !old one
.head 6 -  Description: 
.head 6 +  Returns 
.head 7 -  Boolean: 
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  Date/Time: dtBewZeitBis_PrevBew
.head 7 -  Boolean: bOk
.head 7 -  Boolean: bEmpty
.head 6 +  Actions 
.head 7 +  If Not n_BewNr_PrevBew
.head 8 -  Return TRUE
.head 7 -  !
.head 7 +  If ( s_Action = 'UPD' ) And ( dt_BewZeit_New = dt_BewZeit_Old )
.head 8 -  Return TRUE
.head 7 -  !
.head 7 +  If s_Geloescht_New = 'J' Or s_Action = 'DEL'
.head 8 -  Set dtBewZeitBis_PrevBew = DATETIME_Null 
.head 7 +  Else 
.head 8 -  Set dtBewZeitBis_PrevBew = dt_BewZeit_New 
.head 7 -  Set bOk = SqlExists( "select f.LAST_GRUPPE_KEY
		       from sysadm.bewegung b, sysadm.fall f
		        where b.einricht_id=:n_EID
     		            and b.fall_key=:n_FallKey
    		            and b.bew_nr = :n_BewNr_PrevBew
     		            and f.einricht_id = b.einricht_id
		            and f.last_stat_key = b.stat_key
		            and f.LAST_GRUPPE_KEY = b.gruppe_key
		            and f.LAST_BA_KEY in ( 'AE', 'VE', 'UE', 'RE' )
		            and @nullvalue( f.GELOESCHT, 'N' ) != 'J' " ,bEmpty )
.head 7 +  If not bEmpty and not b_BA_SH
.head 8 -  Set bOk = SqlPrepareAndExecute( h_Sql, "
update lst_erf l set l.storniert='J', L.LST_ERF_BIS=:dtBewZeitBis_PrevBew 
		where  l.done=0
 		   and l.gruppe_key is not null
		   and l.stat_key is not null
 		  and  exists (select * from sysadm.bewegung b where  b.einricht_id=l.einricht_id
						 and b.fall_key=:n_FallKey
						 and b.bew_nr = :n_BewNr_PrevBew		
						 and l.stat_key = b.STAT_KEY
						 and l.gruppe_key = b.GRUPPE_KEY )" )
.head 7 -  Return bOk
.head 5 +  Function: GetNewScreenCageNR
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Number: nFetch
.head 7 -  Number: nRes
.head 6 +  Actions
.head 7 +  ! If GalConnect( sqlSelect )
.head 8 -  Call SqlDisconnect( sqlSelect )
.head 8 -  Set bCreateNewScreenCageNR = TRUE
.head 8 +  If nScreenCageNr < 0 or nScreenCageNr = NUMBER_Null
.head 9 -  Set nScreenCageNr = 0
.head 8 -  Return nScreenCageNr+1
.head 7 -  Call SqlPrepareAndExecute( h_Sql, "
select @NULLVALUE(SCREEN_CAGE_NR, 0) + 1
from Abteilung  
where id = :nIDScreen
into :oTargetCage.nScrUniqNr
" )
.head 7 +  If SqlFetchNext( h_Sql, nFetch )
.head 8 -  Call SqlPrepareAndExecute(h_Sql, "update abteilung set SCREEN_CAGE_NR = :oTargetCage.nScrUniqNr where id = :nIDScreen") 
.head 8 -  Set nRes = TRUE
.head 7 -  Return nRes
.head 5 +  Function: After_UpdAbteilung 
.head 6 -  Description:
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Sql Handle: sqlUpdateAbteilung
.head 6 +  Actions
.head 7 +  If bCreateNewScreenCageNr and n_ScreenCageNr_New > 0
.head 8 +  If GalConnect( sqlUpdateAbteilung )
.head 9 -  Call SqlPrepareAndExecute( sqlUpdateAbteilung, "
update  Abteilung set SCREEN_CAGE_NR = :n_ScreenCageNr_New
where ABT_KEY = :s_AbtKey_New and Einricht_id=:nEinrichtId
" )
.head 9 -  ! Call SqlPrepareAndExecute( sqlUpdateAbteilung, "
update  SCREEN set SCREEN_CAGE_NR = :n_ScreenCageNr_New
where ABT_KEY = :s_AbtKey_New
" )
.head 9 -  Call SqlCommit( sqlUpdateAbteilung )
.head 9 -  Call SqlDisconnect( sqlUpdateAbteilung )
.head 9 -  Set bCreateNewScreenCageNr = FALSE
.head 5 +  ! Function: GetLastScreenCageNRInBewegung
.head 6 -  Description: 
.head 6 +  Returns 
.head 7 -  Number: 
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  Sql Handle: sqlSelect
.head 7 -  Number: nFetch
.head 7 -  Number: nScreenCageNr
.head 6 +  Actions 
.head 7 +  If GalConnect( sqlSelect )
.head 8 -  Call SqlPrepareAndExecute( sqlSelect, "
select @NULLVALUE(Max(SCREEN_CAGE_NR), 0) 
from BEWEGUNG
where einricht_id=:nEinrichtId
    and FALL_KEY =:n_FallKey
    and abt_key=:s_AbtKey_New
into :nScreenCageNr
" )
.head 8 -  Call SqlFetchNext( sqlSelect, nFetch )
.head 8 -  Call SqlDisconnect( sqlSelect )
.head 8 -  Return nScreenCageNr
.head 7 -  Return 0
.head 5 +  Function: ObjectDestructor
.head 6 -  Description:
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Set nInstances = nInstances - 1
.head 7 +  If nInstances < 1
.head 8 +  If h_Sql
.head 9 -  Call SqlDisconnect( h_Sql )
.head 8 +  If NOT (bPreserveSession) and hSession
.head 9 -  Call SqlFreeSession(hSession)
.head 8 -  Set nInstances = 0
.head 5 +  Function: ModifyLitterAfter
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Number: nParentsCount
.head 7 -  Number: nCount
.head 7 -  Boolean: bOk
.head 7 -  Number: nFetch
.head 6 +  Actions
.head 7 +  If bNeedToModify_LitterStay
.head 8 -  Set bOk = SalArrayGetUpperBound ( nParents, 1, nParentsCount )
.head 8 -  Set nCount = 0
.head 8 +  While nCount <= (nParentsCount ) And bOk
.head 9 +  If nParents [nCount] != n_FallKey
.head 10 -  Set bOk =  bOk and RS_DeleteFallFromRS_ForSession ( hSession, nRelShip_ID_Parm, nParents [nCount], FALSE, FALSE)
.head 9 -  Set nCount = nCount + 1
.head 7 +  Else If bNeedToModify_LitterRemove
.head 8 -  Set bOk =  RS_DeleteFallFromRS_ForSession ( h_Sql, nRelShip_ID_Parm, n_FallKey, FALSE, FALSE)
.head 7 +  Else
.head 8 -  Set bOk = TRUE
.head 7 -  Return bOk
.head 5 +  Function: SetSession
.head 6 -  Description:
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Session Handle: _hSession
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Set hSession = _hSession
.head 7 -  Set bPreserveSession = TRUE
.head 5 +  Function: ApplyPBChanges
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: bRes
.head 7 -  Number: nCounter
.head 6 +  Actions
.head 7 -  Set bRes = TRUE
.head 7 -  Set nCounter = 0
.head 7 -  Call SalArrayGetUpperBound(oPBChanges.oChanges, 1, nCounter)
.head 7 +  While nCounter >= 0
.head 8 +  Select Case oPBChanges.oChanges[nCounter].nAction
.head 9 +  Case BEWPL_DELETE
.head 10 -  Set bRes = bRes and BewPlan_Delete_ForSession(hSession,  oPBChanges.oChanges[nCounter].nFallKey, oPBChanges.oChanges[nCounter].nBewNr )
.head 10 -  Break
.head 9 +  Case BEWPL_SHIFT
.head 10 -  Set bRes = bRes and  BewPlan_Shift_ForSession(hSession, oPBChanges.oChanges[nCounter].nFallKey, oPBChanges.oChanges[nCounter].nBewNr, oPBChanges.oChanges[nCounter].dtDT )
.head 10 -  Break
.head 8 -  Set nCounter = nCounter - 1
.head 7 -  Return bRes
.head 5 +  Function: UpdateEmptySrcCage
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Number: nNewCageNr
.head 7 -  Number: nFetch
.head 7 -  Boolean: bRes
.head 6 +  Actions
.head 7 -  Set bRes = SqlPrepareAndExecute(h_Sql, "select @nullvalue(min(uniq_nr),0)-1 from gruppe into :nNewCageNr")
.head 7 -  Set bRes = bRes and SqlFetchNext(h_Sql, nFetch)
.head 7 -  Set bRes = bRes and SqlPrepareAndExecute(h_Sql, "update gruppe set uniq_nr = :nNewCageNr where id = :oSourceCage.nCageID")
.head 7 -  Return bRes
.head 3 +  Functional Class: clsMovementItem
.head 4 -  Description:
.head 4 -  Derived From
.head 4 -  Class Variables
.head 4 +  Instance Variables
.head 5 -  Number: nFall_Key
.head 5 -  Number: nLE_Id
.head 5 -  Number: nBewNr
.head 5 -  Date/Time: dtBewZeit
.head 5 -  Date/Time: dtBewZeitBis
.head 5 -  String: sAbtKey
.head 5 -  String: sStatKey
.head 5 -  String: sGrpKey
.head 5 -  String: sBettKey
.head 5 -  Number: nTypeOfMvmnt	! -1 - LOCK; 0 - PLAN; 1 - BEW
.head 4 -  Functions
.head 3 +  Functional Class: clsMovementCollection
.head 4 -  Description:
.head 4 -  Derived From
.head 4 -  Class Variables
.head 4 +  Instance Variables
.head 5 -  FunctionalVar: MovementItem[ * ]
.head 6 -  Class: clsMovementItem
.head 5 -  Number: nAmountOfItems
.head 4 +  Functions
.head 5 +  Function: Reset
.head 6 -  Description: Resets array MovementItem[] and sets nAmountOfItems to 0.
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Set nAmountOfItems = 0
.head 7 -  Return SalArraySetUpperBound ( MovementItem, 1, -1 )
.head 3 +  Functional Class: cBewegungData
.head 4 -  Description:
.head 4 -  Derived From
.head 4 -  Class Variables
.head 4 +  Instance Variables
.head 5 -  ! IN parameters
.head 5 -  Number: nFallKey
.head 5 -  Number: nLimitBewNr
.head 5 -  ! OUT parameters
.head 5 -  Number: nBewNr
.head 5 -  Date/Time: dtBewZeit
.head 5 -  Date/Time: dtBewZeitBis
.head 5 -  String: sBAKey
.head 5 -  String: sAbtKey
.head 5 -  Number: nIDScreen
.head 5 -  String: sStatKey
.head 5 -  Number: nIDRack
.head 5 -  String: sGruppeKey
.head 5 -  Number: nIDCage
.head 5 -  String: sBettKey
.head 5 -  Number: nIDPos
.head 5 -  Number: nCageNr
.head 5 -  Number: nCageScreenNr
.head 4 +  Functions
.head 5 +  Function: Load
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Sql Handle: hSql
.head 7 -  Boolean: bRes
.head 6 +  Actions
.head 7 +  If GalConnect(hSql)
.head 8 -  Set bRes = LoadOnHandle(hSql)
.head 8 -  Call SqlDisconnect(hSql)
.head 7 -  Return bRes
.head 5 +  Function: LoadOnHandle
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Sql Handle: hSql
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Number: nFetch
.head 7 -  String: sSQL
.head 6 +  Actions
.head 7 +  If NOT nFallKey
.head 8 -  Return FALSE
.head 7 -  Set sSQL = "select 
 b.bew_nr, 
 b.bew_zeit, 
 b.bew_zeit_bis, 
 b.ba_key, 
 b.abt_key, 
 b.scr_id, 
 b.stat_key, 
 b.rack_id, 
 b.gruppe_key, 
 b.cage_id, 
 b.bett_key, 
 b.pos_id,
 b.cage_nr,
 b.screen_cage_nr
from bewegung b
where 
 b.fall_key = :nFallKey 
 and b.einricht_id = :nEinrichtId 
 and b.geloescht = 'N'"
.head 7 +  If nLimitBewNr
.head 8 -  Set sSQL = sSQL ||"
 and b.bew_nr > "||SalNumberToStrX(nLimitBewNr, 0)
.head 7 -  Set sSQL = sSQL ||"
order by 1 desc
into 
 :nBewNr,
 :dtBewZeit,
 :dtBewZeitBis,
 :sBAKey,
 :sAbtKey,
 :nIDScreen,
 :sStatKey,
 :nIDRack,
 :sGruppeKey,
 :nIDCage,
 :sBettKey,
 :nIDPos,
 :nCageNr,
 :nCageScreenNr" 
.head 7 -  Return SqlPrepareAndExecute(hSql, sSQL) and SqlFetchNext(hSql, nFetch)
.head 3 +  Functional Class: cBewFallData
.head 4 -  Description:
.head 4 -  Derived From
.head 4 -  Class Variables
.head 4 +  Instance Variables
.head 5 -  Sql Handle: hSql
.head 5 -  Number: nFallKey
.head 5 -  Date/Time: dtDoB
.head 5 -  String: sSex
.head 5 -  String: sEarTag
.head 5 -  String: sStrain
.head 5 -  Number: nStrainID
.head 5 -  Number: nLastCage
.head 5 -  Number: nLastBett
.head 5 -  Number: nLastBewNr
.head 5 -  Number: nLastWG
.head 5 -  Date/Time: dtLastBew
.head 5 -  Date/Time: dtLastBewEnd
.head 5 -  String: sPrevBA
.head 5 -  Number: nCullingID
.head 5 -  Number: nMaxBewNr
.head 4 +  Functions
.head 5 +  Function: Load
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Number: nFetch
.head 7 -  Boolean: bRes
.head 6 +  Actions
.head 7 -  Set bRes = SqlPrepareAndExecute(hSql,"select 
 f.geb_datum, f.geschl, f.name1, f.id_strain, f.name3 ,f.last_cage_id, f.pos_id, f.last_bew_nr, f.last_scr_id, f.culling_id,
 b.BEW_ZEIT, b.BEW_ZEIT_BIs, b.ba_key
from 
 fall f
 left join bewegung b on b.einricht_id = f.einricht_id and b.fall_key = f.fall_key and b.bew_nr = f.last_bew_nr

where 
 f.fall_key = :nFallKey
into
 :dtDoB, :sSex, :sEarTag, :nStrainID, :sStrain , :nLastCage, :nLastBett, :nLastBewNr, :nLastWG, :nCullingID,
 :dtLastBew, :dtLastBewEnd, :sPrevBA")
.head 7 -  Set bRes = bRes and SqlFetchNext(hSql, nFetch)
.head 7 -  Set bRes = bRes and SqlPrepareAndExecute(hSql, "select max(bew_nr) from bewegung where fall_key = :nFallKey into :nMaxBewNr")
.head 7 -  Set bRes = bRes and SqlFetchNext(hSql, nFetch)
.head 7 -  Return bRes
.head 3 +  Functional Class: cBewCageData
.head 4 -  Description:
.head 4 -  Derived From
.head 4 -  Class Variables
.head 4 +  Instance Variables
.head 5 -  Sql Handle: hSql
.head 5 -  Number: nCageID
.head 5 -  String: sRack
.head 5 -  String: sCage
.head 5 -  Number: nUniqNr
.head 5 -  Number: nScrUniqNr
.head 5 -  String: sRFID
.head 5 -  String: sBarCode
.head 5 -  Number: nFallsInCage
.head 5 -  FunctionalVar: oFalls[*]
.head 6 -  Class: cBewFallData
.head 5 -  String: sCadaverType
.head 5 -  String: sCadaverReason1
.head 5 -  String: sCadaverReason2
.head 5 -  String: sCadaverCullingReason
.head 5 -  String: sCadaverCullingMethod
.head 5 -  Boolean: bNeedClearRFID
.head 4 +  Functions
.head 5 +  Function: ObjectDestructor
.head 6 -  Description:
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalArraySetUpperBound(oFalls, 1, -1)
.head 5 +  Function: Load
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean: bRes
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Number: nFetch
.head 7 -  FunctionalVar: oTmpFall
.head 8 -  Class: cBewFallData
.head 7 -  Boolean: bRes
.head 6 +  Actions
.head 7 -  Set nFallsInCage = 0
.head 7 +  If NOT SalArrayIsEmpty(oFalls)
.head 8 -  Call SalArraySetUpperBound(oFalls, 1, -1)
.head 7 -  Set bRes = SqlPrepareAndExecute(hSql, "select
 c.stat_key, c.gruppe_key, c.uniq_nr, c.screen_cage_nr, c.rfid, l.ID_label,
 ct.action, cad.reason1, cad.reason2, cad.reason_culling, cad.method_culling, @if(@code(@nullvalue(s.clearrfid,'N'))- @code('N'),'1','0')
from
 gruppe c
 left join cadavers cad on cad.rack = c.stat_key and cad.cage = c.gruppe_key
 left join cadavers_types ct on cad.type=ct.ID
 left join station s on s.id=c.rack_id
left join smart_labels l on (l.cageuniqnr=c.uniq_nr)
where
 c.id = :nCageID
into
 :sRack, :sCage, :nUniqNr, :nScrUniqNr, :sRFID,:sBarCode,
 :sCadaverType, :sCadaverReason1, :sCadaverReason2, :sCadaverCullingReason, :sCadaverCullingMethod, :bNeedClearRFID")
.head 7 -  ! select ct.action, c.reason1, c.reason2, c.reason_culling, c.method_culling
		from cadavers c, cadavers_types ct
		where  c.rack='"||sStatKey||"'
		and c.cage='"||sGruppeKey||"'
		and c.type=ct.ID
into :sType, :sReason1, :sReason2 , :sReas_Cull, :sMeth_Cull"
.head 7 -  Set bRes = bRes and SqlFetchNext(hSql, nFetch)
.head 7 +  If bRes
.head 8 -  Call SqlPrepareAndExecute(hSql, "select
 f.fall_key, f.geb_datum, f.geschl, f.name1, f.id_strain, f.last_bew_nr, f.pos_id, f.last_scr_id, f.culling_id,
 b.bew_zeit, b.bew_zeit_bis, b.ba_key
from
 fall f 
 inner join bewegung b on b.einricht_id = f.einricht_id and b.fall_key = f.fall_key and b.bew_nr = f.last_bew_nr
where
 f.last_cage_id = :nCageID and f.geloescht = 'N' and f.ee_datum is null
into
 :oTmpFall.nFallKey, :oTmpFall.dtDoB, :oTmpFall.sSex, :oTmpFall.sEarTag, :oTmpFall.nStrainID, :oTmpFall.nLastBewNr, :oTmpFall.nLastBett, :oTmpFall.nLastWG, :oTmpFall.nCullingID,
 :oTmpFall.dtLastBew, :oTmpFall.dtLastBewEnd, :oTmpFall.sPrevBA")
.head 8 +  If SqlGetResultSetCount(hSql, nFetch) and nFetch
.head 9 +  While SqlFetchNext(hSql, nFetch)
.head 10 +  If oTmpFall.nFallKey
.head 11 -  Set oFalls[nFallsInCage].nFallKey = oTmpFall.nFallKey
.head 11 -  Set oFalls[nFallsInCage].dtDoB = oTmpFall.dtDoB
.head 11 -  Set oFalls[nFallsInCage].sSex = oTmpFall.sSex
.head 11 -  Set oFalls[nFallsInCage].sEarTag = oTmpFall.sEarTag
.head 11 -  Set oFalls[nFallsInCage].nStrainID = oTmpFall.nStrainID
.head 11 -  Set oFalls[nFallsInCage].nLastBewNr = oTmpFall.nLastBewNr
.head 11 -  Set oFalls[nFallsInCage].nLastCage = nCageID
.head 11 -  Set oFalls[nFallsInCage].nLastBett = oTmpFall.nLastBett
.head 11 -  Set oFalls[nFallsInCage].nLastWG = oTmpFall.nLastWG
.head 11 -  Set oFalls[nFallsInCage].dtLastBew = oTmpFall.dtLastBew
.head 11 -  Set oFalls[nFallsInCage].dtLastBewEnd = oTmpFall.dtLastBewEnd
.head 11 -  Set oFalls[nFallsInCage].sPrevBA = oTmpFall.sPrevBA
.head 11 -  Set oFalls[nFallsInCage].nCullingID = oTmpFall.nCullingID
.head 11 -  Set nFallsInCage = nFallsInCage + 1
.head 7 -  Return bRes
.head 2 +  Default Classes
.head 3 -  MDI Window: cBaseMDI
.head 3 -  Form Window:
.head 3 -  Dialog Box:
.head 3 -  Table Window:
.head 3 -  Quest Window:
.head 3 -  Data Field: clsDataField
.head 3 -  Spin Field:
.head 3 -  Multiline Field: cQuickMLField
.head 3 -  Pushbutton: clsPushbuttonCancel
.head 3 -  Radio Button:
.head 3 -  Option Button:
.head 3 -  ActiveX:
.head 3 -  Check Box:
.head 3 -  Child Table: cQuickTable
.head 3 -  Quest Child Window: cQuickDatabase
.head 3 -  List Box:
.head 3 -  Combo Box: clsComboBox
.head 3 -  Picture: cQuickPicture
.head 3 -  Vertical Scroll Bar:
.head 3 -  Horizontal Scroll Bar:
.head 3 -  Column:
.head 3 -  Background Text: clsBackgroundTextRight
.head 3 -  Group Box: clsGroupBox
.head 3 -  Line:
.head 3 -  Frame:
.head 3 -  Custom Control: cQuickGraph
.head 2 +  Application Actions
.head 3 +  On SAM_AppStartup
.head 4 -  Set SqlDatabase = "GDEMO"
.head 4 -  Set SqlUser = "AU1"
.head 4 -  Set SqlPassword = "AU1"
.head 4 -  Set nEinrichtId = 1
.head 4 -  Set nUserId = 2
.head 4 -  ! Set bUseBettDispo = TRUE
.head 4 -  ! Call DeleteMovement(hWndNULL, 10001601, 3)
.head 4 -  ! Call Bewegung_DoInsertPlan("SYSADM", 1, 1005,0, SalDateCurrent( ), "UE", "","",
			"ZUCHT", "000001", "0001B1", SalNumberToStrX(1, 0), 1)
.head 1 +  Dialog Box: dlgSelectColony
.head 2 -  Class: cDlgUseOption
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Select colony nr 
.head 2 -  Accessories Enabled? Class Default
.head 2 -  Visible? Class Default
.head 2 -  Display Settings
.head 3 -  Display Style? Class Default
.head 3 -  Visible at Design time? Yes
.head 3 -  Type of Dialog: Class Default
.head 3 -  Allow Dock to Parent? Class Default
.head 3 -  Docking Orientation: Class Default
.head 3 -  Window Location and Size
.head 4 -  Left: Default
.head 4 -  Top: Default
.head 4 -  Width:  4.288"
.head 4 -  Width Editable? Class Default
.head 4 -  Height: 1.948"
.head 4 -  Height Editable? Class Default
.head 3 -  Absolute Screen Location? Class Default
.head 3 -  Font Name: Class Default
.head 3 -  Font Size: Class Default
.head 3 -  Font Enhancement: Class Default
.head 3 -  Text Color: Class Default
.head 3 -  Background Color: Class Default
.head 3 -  Resizable? Class Default
.head 3 -  Vertical Scroll? Class Default
.head 3 -  Horizontal Scroll? Class Default
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
.head 3 -  Background Text: Strain:
.head 4 -  Resource Id: 34162
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundTextRight
.head 4 -  Window Location and Size
.head 5 -  Left: -0.013"
.head 5 -  Top: 0.094"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 -  Background Text: Rack:
.head 4 -  Resource Id: 34163
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundTextRight
.head 4 -  Window Location and Size
.head 5 -  Left: -0.013"
.head 5 -  Top: 0.62"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 -  Background Text: Screen:
.head 4 -  Resource Id: 34164
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundTextRight
.head 4 -  Window Location and Size
.head 5 -  Left: -0.013"
.head 5 -  Top: 0.35"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.188"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfScreen
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
.head 6 -  Left: 0.988"
.head 6 -  Top: 0.323"
.head 6 -  Width:  3.1"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
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
.head 4 -  Message Actions
.head 3 +  Data Field: dfRack
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
.head 6 -  Left: 0.988"
.head 6 -  Top: 0.594"
.head 6 -  Width:  3.1"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
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
.head 4 -  Message Actions
.head 3 +  Data Field: dfStrain
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
.head 6 -  Left: 0.988"
.head 6 -  Top: 0.073"
.head 6 -  Width:  3.1"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
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
.head 4 -  Message Actions
.head 3 -  Background Text: Colony Nr:
.head 4 -  Resource Id: 34165
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsBackgroundTextRight
.head 4 -  Window Location and Size
.head 5 -  Left: -0.013"
.head 5 -  Top: 0.95"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Combo Box: cmbColonyNr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsComboBox
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.988"
.head 5 -  Top: 0.906"
.head 5 -  Width:  1.7"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 2.406"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Editable? No
.head 4 -  String Type: Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Sorted? Class Default
.head 4 -  Always Show List? Class Default
.head 4 -  Vertical Scroll? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  List Initialization
.head 4 -  Message Actions
.head 3 +  Pushbutton: pbOk
.head 4 -  Class Child Ref Key: 1
.head 4 -  Class ChildKey: 0
.head 4 -  Class: cDlgUseOption
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.688"
.head 5 -  Top: 1.313"
.head 5 -  Width:  Class Default
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
.head 4 -  Button Appearance: Class Default
.head 4 -  Message Actions
.head 3 +  Pushbutton: pbCancel
.head 4 -  Class Child Ref Key: 2
.head 4 -  Class ChildKey: 0
.head 4 -  Class: cDlgUseOption
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.988"
.head 5 -  Top: 1.313"
.head 5 -  Width:  Class Default
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
.head 4 -  Button Appearance: Class Default
.head 4 -  Message Actions
.head 2 +  Functions
.head 3 +  Function: Load
.head 4 -  Description:
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Sql Handle: hSqlColony
.head 5 -  Boolean: bOk
.head 5 -  Number: nFetch
.head 5 -  Number: nColony
.head 4 +  Actions
.head 5 +  If SqlCreateStatement( hSession, hSqlColony )
.head 6 -  Set bOk = SqlPrepareAndExecute( hSqlColony, "select abt_key from abteilung where id=:nIDScreen into :dfScreen " )
.head 6 -  Set bOk = bOk and SqlFetchNext(hSqlColony, nFetch)
.head 6 -  Set bOk = bOk and SqlPrepareAndExecute( hSqlColony, "select stat_key from station where id=:nIDRack into :dfRack " )
.head 6 -  Set bOk = bOk and SqlFetchNext(hSqlColony, nFetch)
.head 6 -  Set bOk = bOk and SqlPrepareAndExecute( hSqlColony, "select strain_key from strain where id=:nIDStr into :dfStrain " )
.head 6 -  Set bOk = bOk and SqlFetchNext(hSqlColony, nFetch)
.head 6 -  Set bOk = bOk and SqlPrepareAndExecute( hSqlColony, "select max(colony)+1 from colony where strain_id=:nIDStr into :nNewColony " )
.head 6 +  If bOk
.head 7 -  Call SqlFetchNext(hSqlColony, nFetch)
.head 7 +  If nNewColony = NUMBER_Null
.head 8 -  Set nNewColony = 1
.head 6 -  Set bOk = bOk and SqlPrepareAndExecute( hSqlColony, "select distinct colony from colony where scr_id=:nIDScreen
 and strain_id=:nIDStr into :nColony " )
.head 6 -  Call SalListClear( cmbColonyNr )
.head 6 -  Call SalListAdd( cmbColonyNr, "New colony" )
.head 6 -  Set nCountColony = 1
.head 6 +  While bOk and SqlFetchNext(hSqlColony, nFetch)
.head 7 -  Call SalListAdd( cmbColonyNr, SalNumberToStrX(nColony,0) )
.head 7 -  Set nCountColony = nCountColony + 1
.head 6 -  Call SqlDisconnect( hSqlColony )
.head 3 +  Function: OK
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  Call SalListQueryText( cmbColonyNr, SalListQuerySelection ( cmbColonyNr ), sText )
.head 5 +  If sText ="New colony"
.head 6 -  Set nColonyNr = nNewColony
.head 5 +  Else
.head 6 -  Set nColonyNr = SalStrToNumber( sText )
.head 5 -  Call SalEndDialog( hWndForm, IDOK )
.head 5 -  Return TRUE
.head 3 +  Function: CANCEL
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  Call SalEndDialog( hWndForm, IDCANCEL)
.head 5 -  Return TRUE
.head 2 +  Window Parameters
.head 3 -  Session Handle: hSession
.head 3 -  Number: nIDStr
.head 3 -  Number: nIDScreen
.head 3 -  Number: nIDRack
.head 3 -  Receive Number: nColonyNr
.head 2 +  Window Variables
.head 3 -  Number: nNewColony
.head 3 -  String: sText
.head 3 -  Number: nCountColony
.head 2 +  Message Actions
.head 3 +  On SAM_Create
.head 4 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 4 -  Call Load()
.head 4 -  Call SalListSelectString( cmbColonyNr, -1, "New colony" )
.head 4 +  If nCountColony = 1
.head 5 -  Call SalSendMsg( hWndForm, AM_Ok, 0, 0 )
.head 4 +  Else
.head 5 -  Call SalWaitCursor( FALSE )
.head 0 -  


