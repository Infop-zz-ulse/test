Application Description: ATLANTA!  Aplication module
		Global variables & classes for §301
		
		301_ErrView.APL
		
		Created by AS 01.07.04 from 301_GLOB.APL
		17.08.2004 AS: fixed a bug - there was a fixed condition on nFall_Fall_Key
		18.08.2004 AS: using nPopulateMode = TBL_FillAll, Discardable-NO, MaxRowInMem=32000 
			          (to fix a bug with CTD 1.5 when table scrolling shows empty rows)
		30.09.2004 AS: show FALL column (it was hidden in tblFall301ErrView)
	Outline Version - 4.0.27
	Design-time Settings
.data VIEWINFO
0000: 6F00000003000000 FFFF01000D004347 5458566965775374 6174650400010000
0020: 0000000000B20000 002C000000020000 0003000000FFFFFF FFFFFFFFFFFCFFFF
0040: FFE9FFFFFF000000 0000000000170300 00C4010000010000 0001000000010000
0060: 000F4170706C6963 6174696F6E497465 6D00000000000001 8004000100000000
0080: 000000AF0000002C 0000000000000001 000000FFFFFFFFFF FFFFFFFCFFFFFFE9
00A0: FFFFFFC6000000C6 000000C902000082 0200000000000001 000000030000000F
00C0: 4170706C69636174 696F6E4974656D07 436C61737365730D 636C733330314572
00E0: 7256696577000000 00
.enddata
.data DT_MAKERUNDLG
0000: 020000000018453A 5C47485333325C33 30315F4572725669 65772E6578651845
0020: 3A5C47485333325C 3330315F45727256 6965772E646C6C18 453A5C4748533332
0040: 5C3330315F457272 566965772E617063 000001010118453A 5C47485333325C33
0060: 30315F4572725669 65772E72756E1845 3A5C47485333325C 3330315F45727256
0080: 6965772E646C6C18 453A5C4748533332 5C3330315F457272 566965772E617063
00A0: 00000101010F3330 315F457272566965 772E6170640F3330 315F457272566965
00C0: 772E646C6C0F3330 315F457272566965 772E617063000001 010118453A5C4748
00E0: 5333325C3330315F 457272566965772E 61706C18453A5C47 485333325C333031
0100: 5F45727256696577 2E646C6C18453A5C 47485333325C3330 315F457272566965
0120: 772E617063000001 0101
.enddata
		Outline Window State: Maximized
		Outline Window Location and Size
.data VIEWINFO
0000: 6600050003001B00 0000000000000000 00000820E6130500 1D00FFFF4D61696E
0020: 0029000100000000 0000000000E91E80 0A00008600FFFF49 6E7465726E616C20
0040: 46756E6374696F6E 7300200001000000 000000000000E91E 800A0000DF00FFFF
0060: 5661726961626C65 7300290001000000 0000000000000820 E6130000F500FFFF
0080: 636C734576656E74 5F5661726961626C 6573002300010000 0000000000000008
00A0: 20E6130000F500FF FF636C733330315F 577269746500
.enddata
.data VIEWSIZE
0000: B600
.enddata
			Left: -0.025"
			Top:    0.0"
			Width:  8.013"
			Height: 4.969"
		Options Box Location
.data VIEWINFO
0000: CC180807B80B2A00
.enddata
.data VIEWSIZE
0000: 0800
.enddata
			Visible? Yes
			Left: 4.15"
			Top:    1.885"
			Width:  3.8"
			Height: 2.073"
		Class Editor Location
			Visible? No
			Left: 0.575"
			Top:    0.094"
			Width:  5.063"
			Height: 2.719"
		Tool Palette Location
			Visible? No
			Left: 6.388"
			Top:    1.073"
		Fully Qualified External References? Yes
		Reject Multiple Window Instances? Yes
		Enable Runtime Checks Of External References? No
		Use Release 4.0 Scope Rules? No
	Libraries
		! File Include: 301_GLOB.APL
		File Include: CLS_TABL.APL
		File Include: CLS_CLMN.APL
		! File Include: ERR_INFO.APL
		File Include: CLS_SORTFILTERDLG.APL
		Dynalib: Dyna_Vars_INI.apd
		Dynalib: Dyna_Vars_Gnrl.apd
		Dynalib: Dyna_Vars_GHS.apd
		Dynalib: Dyna_Vars_Tmp.apd
		! ---------------------------------------------
		! File Include: SQLHANDL.APL
		! File Include: VTDOS.APL
		! File Include: SQLAPIW.APL
		! File Include: GLOBAL_V.APL
		! File Include: GLB_F_VT.APL
		! ---------------------------------------------
	Global Declarations
		Window Defaults
			Tool Bar
				Display Style? Etched
				Font Name: System Default
				Font Size: System Default
				Font Enhancement: System Default
				Text Color: System Default
				Background Color: System Default
			Form Window
				Display Style? Etched
				Font Name: System Default
				Font Size: System Default
				Font Enhancement: System Default
				Text Color: System Default
				Background Color: System Default
			Dialog Box
				Display Style? Etched
				Font Name: System Default
				Font Size: System Default
				Font Enhancement: System Default
				Text Color: System Default
				Background Color: System Default
			Top Level Table Window
				Font Name: System Default
				Font Size: System Default
				Font Enhancement: System Default
				Text Color: System Default
				Background Color: System Default
			Data Field
				Font Name: Use Parent
				Font Size: Use Parent
				Font Enhancement: Use Parent
				Text Color: Use Parent
				Background Color: Use Parent
			Multiline Field
				Font Name: Use Parent
				Font Size: Use Parent
				Font Enhancement: Use Parent
				Text Color: Use Parent
				Background Color: Use Parent
			Spin Field
				Font Name: Use Parent
				Font Size: Use Parent
				Font Enhancement: Use Parent
				Text Color: Use Parent
				Background Color: Use Parent
			Background Text
				Font Name: Use Parent
				Font Size: Use Parent
				Font Enhancement: Use Parent
				Text Color: Use Parent
				Background Color: Use Parent
			Pushbutton
				Font Name: Use Parent
				Font Size: Use Parent
				Font Enhancement: Use Parent
			Radio Button
				Font Name: Use Parent
				Font Size: Use Parent
				Font Enhancement: Use Parent
				Text Color: Use Parent
				Background Color: Use Parent
			Check Box
				Font Name: Use Parent
				Font Size: Use Parent
				Font Enhancement: Use Parent
				Text Color: Use Parent
				Background Color: Use Parent
			Option Button
				Font Name: Use Parent
				Font Size: Use Parent
				Font Enhancement: Use Parent
			Group Box
				Font Name: Use Parent
				Font Size: Use Parent
				Font Enhancement: Use Parent
				Text Color: Use Parent
				Background Color: Use Parent
			Child Table Window
				Font Name: Use Parent
				Font Size: Use Parent
				Font Enhancement: Use Parent
				Text Color: Use Parent
				Background Color: Use Parent
			List Box
				Font Name: Use Parent
				Font Size: Use Parent
				Font Enhancement: Use Parent
				Text Color: Use Parent
				Background Color: Use Parent
			Combo Box
				Font Name: Use Parent
				Font Size: Use Parent
				Font Enhancement: Use Parent
				Text Color: Use Parent
				Background Color: Use Parent
			Line
				Line Color: Use Parent
			Frame
				Border Color: Use Parent
				Background Color: Use Parent
			Picture
				Border Color: Use Parent
				Background Color: Use Parent
		Formats
			Number: 0'%'
			Number: #0
			Number: ###000
			Number: ###000;'($'###000')'
			Date/Time: hh:mm:ss AMPM
			Date/Time: M/d/yy
			Date/Time: MM-dd-yy
			Date/Time: dd-MMM-yyyy
			Date/Time: MMM d, yyyy
			Date/Time: MMM d, yyyy hh:mm AMPM
			Date/Time: MMMM d, yyyy hh:mm AMPM
		External Functions
		Constants
.data CCDATA
0000: 3000000000000000 0000000000000000 00000000
.enddata
.data CCSIZE
0000: 1400
.enddata
			System
			User
		Resources
		Variables
			Window Handle: hWndViewErr301	! __Exported
			!
		Internal Functions
			Function: Fall301_ErrView_Open	! __Exported
				Description: Opens/Shows tblFall301ErrView
				Returns
					Window Handle:
				Parameters
					Window Handle: hWndParent_2Set
				Static Variables
				Local variables
				Actions
					If VisWinIsWindow( hWndViewErr301 )
						Call SalBringWindowToTop( hWndViewErr301 )
						Call VisWinShow( hWndViewErr301, SHOW_Normal )
					Else
						Set hWndViewErr301 = SalCreateWindow( tblFall301ErrView, hWndParent_2Set )
					If VisWinIsWindow( hWndViewErr301 )
						Call SalPostMsg( hWndViewErr301, AM_Refresh, 0, 0 )
					Return hWndViewErr301
		Named Menus
		Class Definitions
.data RESOURCE 0 0 1 1358003051
0000: FE0200009A010000 0000000000000000 0200000700FFFF01 00160000436C6173
0020: 73566172004F7574 6C696E6552006567 496E666F0D003C00 000F63006C734765
0040: 6E657261006C4669 656C641E00C00000 01000000A3010D00 00FFFF0001800400
0060: 0000010021001263 6C44617074614669 5080726F7065721E 00EC000100D10204
0080: 0000FF7F01008011 000000020000D000 19636C470B615461 626C006542726F77
00A0: 73654D0061726B38 000000027B0001F6 0D00FF9F0D00D000 03040000FF7F0108
00C0: 801E000003000010 0011636C43686970 6C6454614D075200 0000037B0001F60D
00E0: 00FFDF0DD8000304 00FF7F1172000001 00FFFF3101801100 044200000B636C42
0100: 0061736963576E64 38B2000002007703 00FFFF8D0400010D FD00FF0701804100
0120: 000000050000000D 6352006164696F4C 69737400426F7886 000000057B0001F6
0140: 0D00FF9F0D00DC00 0100FF7F1A700000 000100FFFFC12700 000001FD00FF0734
0160: 00000001F700FF1F 0180380200000600 00000C04636C5371 6C4861406E646C65
0180: 860000F60500EC01 0D00FFBF0DB90003 00FFFFE6110001FE 00FF931E000001FB
01A0: 00FF0F2B000000EE 0100FF3F
.enddata
			Table Window Class: cls301ErrView
				Title: List of received error messages
				Icon File:
				Accesories Enabled? Class Default
				Visible? Class Default
				Display Settings
					Visible at Design time? Yes
					Automatically Created at Runtime? Class Default
					Initial State: Class Default
					Maximizable? Class Default
					Minimizable? Class Default
					System Menu? Class Default
					Resizable? Class Default
					Window Location and Size
						Left:
						Top:   
						Width:  8.133"
						Width Editable? Class Default
						Height: 4.607"
						Height Editable? Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					View: Class Default
					Allow Row Sizing? Class Default
					Lines Per Row: Class Default
				Memory Settings
					Maximum Rows in Memory: 32000
					Discardable? No
				Next Class Child Key: 47
				List in Tool Palette? Yes
				Property Template:
				Class DLL Name:
				Description: Implements viewing of R301_ERROR table.
						If you want an additional 'where' condition, fill sWhere variable with it and _AFTER_ that call SalSendClassMessage()
						Example:
						Set sWhere = '
						FALL_KEY = 12345
						and ERR_FIXED = 1
						'
						Call SalSendClassMessage( ... )
				Derived From
					Class: clsTableEdit
				Menu
				Tool Bar
					Display Settings
						Display Style? Class Default
						Location? Class Default
						Visible? Class Default
						Size: Class Default
						Size Editable? Class Default
						Font Name: Class Default
						Font Size: Class Default
						Font Enhancement: Class Default
						Text Color: Class Default
						Background Color: Class Default
					Contents
						Pushbutton: pbExit
							Class Child Ref Key: 66
							Class ChildKey: 32
							Class: clsTableEdit
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: Class Default
								Top:    Class Default
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? Class Default
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
						Pushbutton: pbRefresh
							Class Child Ref Key: 71
							Class ChildKey: 33
							Class: clsTableEdit
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: Class Default
								Top:    Class Default
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? Class Default
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
						Pushbutton: pbUpdate
							Class Child Ref Key: 56
							Class ChildKey: 34
							Class: clsTableEdit
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: Class Default
								Top:    Class Default
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? Class Default
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
						Pushbutton: pbInsert
							Class Child Ref Key: 55
							Class ChildKey: 35
							Class: clsTableEdit
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: Class Default
								Top:    Class Default
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? No
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
						Pushbutton: pbUndo
							Class Child Ref Key: 57
							Class ChildKey: 36
							Class: clsTableEdit
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: 1.063"
								Top:    Class Default
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? Yes
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
						Pushbutton: pbDelete
							Class Child Ref Key: 58
							Class ChildKey: 37
							Class: clsTableEdit
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: Class Default
								Top:    Class Default
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? No
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
						Pushbutton: pbPrint
							Class Child Ref Key: 59
							Class ChildKey: 38
							Class: clsTableEdit
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: Class Default
								Top:    Class Default
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? Class Default
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
						Pushbutton: pbFirst
							Class Child Ref Key: 67
							Class ChildKey: 39
							Class: clsTableEdit
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: Class Default
								Top:    Class Default
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? No
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
						Pushbutton: pbPrev
							Class Child Ref Key: 68
							Class ChildKey: 40
							Class: clsTableEdit
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: Class Default
								Top:    Class Default
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? No
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
						Pushbutton: pbNext
							Class Child Ref Key: 69
							Class ChildKey: 41
							Class: clsTableEdit
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: Class Default
								Top:    Class Default
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? No
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
						Pushbutton: pbLast
							Class Child Ref Key: 70
							Class ChildKey: 42
							Class: clsTableEdit
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: Class Default
								Top:    Class Default
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? No
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
						!
						Pushbutton: pbDelFixed
							Class Child Ref Key: 0
							Class ChildKey: 43
							Class: clsHintedPushbutton
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: 1.413"
								Top:    0.021"
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? Class Default
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name: CLEAR1.BMP
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
								On SAM_Create
									Call SalSendClassMessage( SAM_Create, wParam, lParam )
									Set nAM_Msg = AM_Delete
									Set sHint =  GetMessageXX( 2913, 'Delete corrected errors', sGhsMSG_Hint_FileName )
						Pushbutton: pbMarkAllCorrect
							Class Child Ref Key: 0
							Class ChildKey: 44
							Class: clsPbMarkSelectAllPic
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: 1.763"
								Top:    0.021"
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? Class Default
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
								On SAM_Create
									Call SalSendClassMessage( SAM_Create, wParam, lParam )
									Set sHint =  GetMessageXX( 2914, 'Mark all errors as corrected', sGhsMSG_Hint_FileName )
						Pushbutton: pbUnmarkAllCorrect
							Class Child Ref Key: 0
							Class ChildKey: 45
							Class: clsPbMarkUnselectAllPic
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: 2.113"
								Top:    0.021"
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? Class Default
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
								On SAM_Create
									Call SalSendClassMessage( SAM_Create, wParam, lParam )
									Set sHint =  GetMessageXX( 2915, 'Mark all errors as not corrected', sGhsMSG_Hint_FileName )
						Pushbutton: pbSort
							Class Child Ref Key: 0
							Class ChildKey: 46
							Class: clsPbSort
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: 2.463"
								Top:    0.021"
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? Class Default
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
						Pushbutton: pbFilter
							Class Child Ref Key: 0
							Class ChildKey: 47
							Class: clsPbFilter
							Property Template:
							Class DLL Name:
							Title:
							Window Location and Size
								Left: 2.813"
								Top:    0.021"
								Width:  Class Default
								Width Editable? Class Default
								Height: Class Default
								Height Editable? Class Default
							Visible? Class Default
							Keyboard Accelerator: Class Default
							Font Name: Class Default
							Font Size: Class Default
							Font Enhancement: Class Default
							Picture File Name:
							Picture Transparent Color: Class Default
							Image Style: Class Default
							Text Color: Class Default
							Background Color: Class Default
							Message Actions
				Contents
					Column: colErr_Nr
						Class Child Ref Key: 0
						Class ChildKey: 11
						Class: clsColumn
						Property Template:
						Class DLL Name:
						Title:
						Visible? No
						Editable? Class Default
						Maximum Data Length: Class Default
						Data Type: Number
						Justify: Class Default
						Width:  Class Default
						Width Editable? Class Default
						Format: Class Default
						Country: Class Default
						Input Mask: Class Default
						Cell Options
							Cell Type? Class Default
							Multiline Cell? Class Default
							Cell DropDownList
								Sorted? Class Default
								Vertical Scroll? Class Default
								Auto Drop Down? Class Default
								Allow Text Editing? Class Default
							Cell CheckBox
								Check Value:
								Uncheck Value:
								Ignore Case? Class Default
						List Values
						Message Actions
					Column: colReceived
						Class Child Ref Key: 0
						Class ChildKey: 10
						Class: clsDateTimeColumn
						Property Template:
						Class DLL Name:
						Title: Received
						Visible? Class Default
						Editable? No
						Maximum Data Length: Class Default
						Data Type: Class Default
						Justify: Class Default
						Width:  1.483"
						Width Editable? Class Default
						Format: Class Default
						Country: Class Default
						Input Mask: Class Default
						Cell Options
							Cell Type? Class Default
							Multiline Cell? Class Default
							Cell DropDownList
								Sorted? Class Default
								Vertical Scroll? Class Default
								Auto Drop Down? Class Default
								Allow Text Editing? Class Default
							Cell CheckBox
								Check Value:
								Uncheck Value:
								Ignore Case? Class Default
						List Values
						Message Actions
					Column: colErr_Fixed
						Class Child Ref Key: 0
						Class ChildKey: 31
						Class: clsColumnCheck_1_0
						Property Template:
						Class DLL Name:
						Title: Corrected
						Visible? Class Default
						Editable? Class Default
						Maximum Data Length: Class Default
						Data Type: Class Default
						Justify: Class Default
						Width:  Class Default
						Width Editable? Class Default
						Format: Class Default
						Country: Class Default
						Input Mask: Class Default
						Cell Options
							Cell Type? Class Default
							Multiline Cell? Class Default
							Cell DropDownList
								Sorted? Class Default
								Vertical Scroll? Class Default
								Auto Drop Down? Class Default
								Allow Text Editing? Class Default
							Cell CheckBox
								Check Value:
								Uncheck Value:
								Ignore Case? Class Default
						List Values
						Message Actions
					Column: colFall_Key
						Class Child Ref Key: 0
						Class ChildKey: 22
						Class: clsColumn
						Property Template:
						Class DLL Name:
						Title: Fall Nr.
						Visible? Class Default
						Editable? No
						Maximum Data Length: Class Default
						Data Type: Class Default
						Justify: Class Default
						Width:  Class Default
						Width Editable? Class Default
						Format: Class Default
						Country: Class Default
						Input Mask: Class Default
						Cell Options
							Cell Type? Class Default
							Multiline Cell? Class Default
							Cell DropDownList
								Sorted? Class Default
								Vertical Scroll? Class Default
								Auto Drop Down? Class Default
								Allow Text Editing? Class Default
							Cell CheckBox
								Check Value:
								Uncheck Value:
								Ignore Case? Class Default
						List Values
						Message Actions
					Column: colSection
						Class Child Ref Key: 0
						Class ChildKey: 12
						Class: clsColumn
						Property Template:
						Class DLL Name:
						Title: Section
						Visible? Class Default
						Editable? No
						Maximum Data Length: Class Default
						Data Type: Class Default
						Justify: Class Default
						Width:  0.867"
						Width Editable? Class Default
						Format: Class Default
						Country: Class Default
						Input Mask: Class Default
						Cell Options
							Cell Type? Class Default
							Multiline Cell? Class Default
							Cell DropDownList
								Sorted? Class Default
								Vertical Scroll? Class Default
								Auto Drop Down? Class Default
								Allow Text Editing? Class Default
							Cell CheckBox
								Check Value:
								Uncheck Value:
								Ignore Case? Class Default
						List Values
						Message Actions
					Column: colSegment
						Class Child Ref Key: 0
						Class ChildKey: 13
						Class: clsColumn
						Property Template:
						Class DLL Name:
						Title: Segment
						Visible? Class Default
						Editable? No
						Maximum Data Length: Class Default
						Data Type: Class Default
						Justify: Class Default
						Width:  0.9"
						Width Editable? Class Default
						Format: Class Default
						Country: Class Default
						Input Mask: Class Default
						Cell Options
							Cell Type? Class Default
							Multiline Cell? Class Default
							Cell DropDownList
								Sorted? Class Default
								Vertical Scroll? Class Default
								Auto Drop Down? Class Default
								Allow Text Editing? Class Default
							Cell CheckBox
								Check Value:
								Uncheck Value:
								Ignore Case? Class Default
						List Values
						Message Actions
					Column: colSegment_Pos
						Class Child Ref Key: 0
						Class ChildKey: 14
						Class: clsColumn
						Property Template:
						Class DLL Name:
						Title: Segment
								position
						Visible? Class Default
						Editable? No
						Maximum Data Length: Class Default
						Data Type: Class Default
						Justify: Class Default
						Width:  0.9"
						Width Editable? Class Default
						Format: Class Default
						Country: Class Default
						Input Mask: Class Default
						Cell Options
							Cell Type? Class Default
							Multiline Cell? Class Default
							Cell DropDownList
								Sorted? Class Default
								Vertical Scroll? Class Default
								Auto Drop Down? Class Default
								Allow Text Editing? Class Default
							Cell CheckBox
								Check Value:
								Uncheck Value:
								Ignore Case? Class Default
						List Values
						Message Actions
					Column: colField_Pos
						Class Child Ref Key: 0
						Class ChildKey: 15
						Class: clsColumn
						Property Template:
						Class DLL Name:
						Title: Field
								position
						Visible? Class Default
						Editable? No
						Maximum Data Length: Class Default
						Data Type: Class Default
						Justify: Class Default
						Width:  0.9"
						Width Editable? Class Default
						Format: Class Default
						Country: Class Default
						Input Mask: Class Default
						Cell Options
							Cell Type? Class Default
							Multiline Cell? Class Default
							Cell DropDownList
								Sorted? Class Default
								Vertical Scroll? Class Default
								Auto Drop Down? Class Default
								Allow Text Editing? Class Default
							Cell CheckBox
								Check Value:
								Uncheck Value:
								Ignore Case? Class Default
						List Values
						Message Actions
					Column: colErr_Code
						Class Child Ref Key: 0
						Class ChildKey: 16
						Class: clsColumn
						Property Template:
						Class DLL Name:
						Title: Error code
						Visible? Class Default
						Editable? No
						Maximum Data Length: Class Default
						Data Type: Class Default
						Justify: Class Default
						Width:  0.967"
						Width Editable? Class Default
						Format: Class Default
						Country: Class Default
						Input Mask: Class Default
						Cell Options
							Cell Type? Class Default
							Multiline Cell? Class Default
							Cell DropDownList
								Sorted? Class Default
								Vertical Scroll? Class Default
								Auto Drop Down? Class Default
								Allow Text Editing? Class Default
							Cell CheckBox
								Check Value:
								Uncheck Value:
								Ignore Case? Class Default
						List Values
						Message Actions
					Column: colErr_Text
						Class Child Ref Key: 0
						Class ChildKey: 17
						Class: clsColumn
						Property Template:
						Class DLL Name:
						Title: Error text
						Visible? Class Default
						Editable? No
						Maximum Data Length: Class Default
						Data Type: Class Default
						Justify: Class Default
						Width:  3.733"
						Width Editable? Class Default
						Format: Class Default
						Country: Class Default
						Input Mask: Class Default
						Cell Options
							Cell Type? Class Default
							Multiline Cell? Class Default
							Cell DropDownList
								Sorted? Class Default
								Vertical Scroll? Class Default
								Auto Drop Down? Class Default
								Allow Text Editing? Class Default
							Cell CheckBox
								Check Value:
								Uncheck Value:
								Ignore Case? Class Default
						List Values
						Message Actions
					Column: colUNB_Filename
						Class Child Ref Key: 0
						Class ChildKey: 18
						Class: clsColumn
						Property Template:
						Class DLL Name:
						Title: Filename
								(UNB)
						Visible? Class Default
						Editable? No
						Maximum Data Length: Class Default
						Data Type: Class Default
						Justify: Class Default
						Width:  1.3"
						Width Editable? Class Default
						Format: Class Default
						Country: Class Default
						Input Mask: Class Default
						Cell Options
							Cell Type? Class Default
							Multiline Cell? Class Default
							Cell DropDownList
								Sorted? Class Default
								Vertical Scroll? Class Default
								Auto Drop Down? Class Default
								Allow Text Editing? Class Default
							Cell CheckBox
								Check Value:
								Uncheck Value:
								Ignore Case? Class Default
						List Values
						Message Actions
					Column: colUNB_Date
						Class Child Ref Key: 0
						Class ChildKey: 19
						Class: clsDateTimeColumn
						Property Template:
						Class DLL Name:
						Title: Receive date
								(UNB)
						Visible? Class Default
						Editable? No
						Maximum Data Length: Class Default
						Data Type: Class Default
						Justify: Class Default
						Width:  1.467"
						Width Editable? Class Default
						Format: Class Default
						Country: Class Default
						Input Mask: Class Default
						Cell Options
							Cell Type? Class Default
							Multiline Cell? Class Default
							Cell DropDownList
								Sorted? Class Default
								Vertical Scroll? Class Default
								Auto Drop Down? Class Default
								Allow Text Editing? Class Default
							Cell CheckBox
								Check Value:
								Uncheck Value:
								Ignore Case? Class Default
						List Values
						Message Actions
					Column: colUNH_Msg_Num
						Class Child Ref Key: 0
						Class ChildKey: 20
						Class: clsColumn
						Property Template:
						Class DLL Name:
						Title: Message number
								(UNH)
						Visible? Class Default
						Editable? No
						Maximum Data Length: Class Default
						Data Type: Class Default
						Justify: Class Default
						Width:  1.467"
						Width Editable? Class Default
						Format: Class Default
						Country: Class Default
						Input Mask: Class Default
						Cell Options
							Cell Type? Class Default
							Multiline Cell? Class Default
							Cell DropDownList
								Sorted? Class Default
								Vertical Scroll? Class Default
								Auto Drop Down? Class Default
								Allow Text Editing? Class Default
							Cell CheckBox
								Check Value:
								Uncheck Value:
								Ignore Case? Class Default
						List Values
						Message Actions
					Column: colUNB_File_Numb
						Class Child Ref Key: 0
						Class ChildKey: 21
						Class: clsColumn
						Property Template:
						Class DLL Name:
						Title: File number
								(UNB)
						Visible? Class Default
						Editable? No
						Maximum Data Length: Class Default
						Data Type: Class Default
						Justify: Class Default
						Width:  1.367"
						Width Editable? Class Default
						Format: Class Default
						Country: Class Default
						Input Mask: Class Default
						Cell Options
							Cell Type? Class Default
							Multiline Cell? Class Default
							Cell DropDownList
								Sorted? Class Default
								Vertical Scroll? Class Default
								Auto Drop Down? Class Default
								Allow Text Editing? Class Default
							Cell CheckBox
								Check Value:
								Uncheck Value:
								Ignore Case? Class Default
						List Values
						Message Actions
				Class Variables
				Instance Variables
					String: sSelect
					String: sSelectToDo
					String: sWhere
					String: s301Err_WinTitle
					!
					: cSortDialog
						Class: clsSF_SortDialog
					: cFilterDialog
						Class: clsSF_FilterDialog
					String: sInit
					String: sWhereInit
					String: sWhereInit_and
					String: sWhereInit_where
				Functions
					Function: WhereInit
						Description:
						Returns
							String:
						Parameters
						Static Variables
						Local variables
							String: sS
						Actions
							Set sWhereInit = ''
							Set sWhereInit_and = ''
							Set sWhereInit_where = ''
							If sWhere
								Set sS = sWhere || cFilterDialog.FilterString( )
							Else
								Set sS = cFilterDialog.FilterStringX( FALSE )
							! Set sS = VisStrChoose( sS != '', ' where ' || sS, '' )
							Set sWhereInit = sS
							If sWhereInit
								Set sWhereInit_and = ' and ' || sWhereInit
								Set sWhereInit_where = ' where ' || sWhereInit
							Return sS
				Message Actions
					On SAM_Create
						! Call SalSendClassMessage( SAM_Create, wParam, lParam )
						Call SalGetWindowText( hWndItem, s301Err_WinTitle, 100 )
						Set bRefreshOnCreateSuspend = TRUE
						Set nPopulateMode = TBL_FillAll
						!
						If TRUE ! Init Sort/Filter
							Call SortFilter_AddToInitString( sInit, colReceived, 'RECEIVED' )
							Call SortFilter_AddToInitString( sInit, colFall_Key, 'FALL_KEY' )
							Call SortFilter_AddToInitString( sInit, colErr_Fixed, 'ERR_FIXED' )
							Call SortFilter_AddToInitString( sInit, colSection, 'SECTION' )
							Call SortFilter_AddToInitString( sInit, colSegment, 'SEGMENT' )
							Call SortFilter_AddToInitString( sInit, colSegment_Pos, 'SEGMENT_POS' )
							Call SortFilter_AddToInitString( sInit, colField_Pos, 'FIELD_POS' )
							Call SortFilter_AddToInitString( sInit, colErr_Code, 'ERR_CODE' )
							Call SortFilter_AddToInitString( sInit, colErr_Text, 'ERR_TEXT' )
							Call SortFilter_AddToInitString( sInit, colUNB_Filename, 'UNB_FILENAME' )
							Call SortFilter_AddToInitString( sInit, colUNB_File_Numb, 'UNB_FILE_NUMB' )
							!
							Call cSortDialog.Initialize(
										sInit, TRUE,
										'§301', 'ErrSort', cfgUSER,
										'colReceived,Desc,On;colErr_Fixed,Asc,On',
										TRUE
									)
							Call cFilterDialog.Initialize(
										sInit, TRUE,
										'§301', 'ErrFilter', cfgUSER,
										TRUE
									)
						!
						Set sSelect = '
								select	ERR_NR,
									RECEIVED,
									SECTION, SEGMENT, SEGMENT_POS, FIELD_POS,
									ERR_CODE, ERR_TEXT,
									UNB_FILENAME, UNB_DATE, UNH_MSG_NUM, UNB_FILE_NUMB,
									FALL_KEY,
									ERR_FIXED
								from	R301_ERROR
								into	:hWndForm.cls301ErrView.colErr_Nr,
									:hWndForm.cls301ErrView.colReceived,
									:hWndForm.cls301ErrView.colSection, :hWndForm.cls301ErrView.colSegment, :hWndForm.cls301ErrView.colSegment_Pos, :hWndForm.cls301ErrView.colField_Pos,
									:hWndForm.cls301ErrView.colErr_Code, :hWndForm.cls301ErrView.colErr_Text,
									:hWndForm.cls301ErrView.colUNB_Filename, :hWndForm.cls301ErrView.colUNB_Date, :hWndForm.cls301ErrView.colUNH_Msg_Num, :hWndForm.cls301ErrView.colUNB_File_Numb,
									:hWndForm.cls301ErrView.colFall_Key,
									:hWndForm.cls301ErrView.colErr_Fixed
								'
						Call WhereInit( )
						Set sSelectToDo = sSelect || sWhereInit_where || cSortDialog.SortString()
						Call Initialize(
								sSelectToDo,
								'
								select	ERR_FIXED
								from	R301_ERROR
								into	:hWndForm.cls301ErrView.colErr_Fixed
								where	ERR_NR = :hWndForm.cls301ErrView.colErr_Nr
								','', '
								update	R301_ERROR
								set	ERR_FIXED = :hWndForm.cls301ErrView.colErr_Fixed
								where	ERR_NR = :hWndForm.cls301ErrView.colErr_Nr
								', ''
								)
					On SAM_CreateComplete
						Call SalSendClassMessage( SAM_CreateComplete, wParam, lParam )
						Call SalPostMsg( hWndForm , AM_Refresh, 0, 0 )
					On AM_Refresh
						Call WhereInit( )
						Set sSelectToDo = sSelect || sWhereInit_where || cSortDialog.SortString()
						Call clsSqlHandle.PrepareX( sSelectToDo )
						If Not SalSendClassMessage( AM_Refresh, wParam, lParam )
							Return FALSE
						Call SetSortFilterTableMarks( hWndForm, cSortDialog, cFilterDialog )
						Return TRUE
					On AM_Sort
						If cSortDialog.Invoke( hWndForm )
							Call SalPostMsg( hWndForm, AM_Refresh, 0, 0 )
					On AM_Filter
						If cFilterDialog.Invoke( hWndForm )
							Call SalPostMsg( hWndForm, AM_Refresh, 0, 0 )
					On AM_Delete
						If SalMessageBox( GetMessageX( 1000022, "All corrected errors will be removed. Proceed?" ), 'Warning', MB_YesNo | MB_IconExclamation ) = IDNO
							Return TRUE
						Call SalWaitCursor( TRUE )
						Call DoImmediate( "
								delete 
								from	R301_ERROR
								where	ERR_FIXED = 1 " || sWhereInit_and ||
								" ;
								commit
								"
								)
						Call SalPostMsg( hWndForm, AM_Refresh, 0, 0 )
						Call SalWaitCursor( FALSE )
					On AM_SelectAll
						If SalMessageBox( GetMessageX( 1000023, "All errors will be set as corrected. Proceed?" ), 'Warning', MB_YesNo | MB_IconExclamation ) = IDNO
							Return TRUE
						Call SalWaitCursor( TRUE )
						Call DoImmediate( "
									update R301_ERROR
									set ERR_FIXED = 1
									where ERR_FIXED = 0 " || sWhereInit_and ||
								" ;
								commit
								"
								)
						Call SalPostMsg( hWndForm, AM_Refresh, 0, 0 )
						Call SalWaitCursor( FALSE )
					On AM_UnselectAll
						If SalMessageBox( GetMessageX( 1000024, "All errors will be set as not corrected. Proceed?" ), 'Warning', MB_YesNo | MB_IconExclamation ) = IDNO
							Return TRUE
						Call SalWaitCursor( TRUE )
						Call DoImmediate( "
									update R301_ERROR
									set ERR_FIXED = 0
									" || sWhereInit_where ||
								" ;
								commit
								"
								)
						Call SalPostMsg( hWndForm, AM_Refresh, 0, 0 )
						Call SalWaitCursor( FALSE )
					On AM_Insert
		Default Classes
			MDI Window:
			Form Window: cBaseForm
			Dialog Box:
			Table Window:
			Quest Window:
			Data Field:
			Spin Field:
			Multiline Field:
			Pushbutton: clsPushbuttonMarkUnselectAll
			Radio Button:
			Option Button:
			ActiveX:
			Check Box:
			Child Table:
			Quest Child Window: cQuickDatabase
			List Box:
			Combo Box:
			Picture: cQuickPicture
			Vertical Scroll Bar:
			Horizontal Scroll Bar:
			Column:
			Background Text:
			Group Box:
			Line:
			Frame:
			Custom Control:
		Application Actions
	Table Window: tblFall301ErrView
		Class: cls301ErrView
		Property Template:
		Class DLL Name:
		Title:
		Icon File:
		Accesories Enabled? Class Default
		Visible? Class Default
		Display Settings
			Visible at Design time? Yes
			Automatically Created at Runtime? Class Default
			Initial State: Normal
			Maximizable? Class Default
			Minimizable? Class Default
			System Menu? Class Default
			Resizable? Class Default
			Window Location and Size
				Left: Default
				Top:    Default
				Width:  12.15"
				Width Editable? Class Default
				Height: 6.643"
				Height Editable? Class Default
			Font Name: Class Default
			Font Size: Class Default
			Font Enhancement: Class Default
			Text Color: Class Default
			Background Color: Class Default
			View: Class Default
			Allow Row Sizing? Class Default
			Lines Per Row: Class Default
		Memory Settings
			Maximum Rows in Memory: Class Default
			Discardable? Class Default
		Description:
		Named Menus
		Menu
		Tool Bar
			Display Settings
				Display Style? Default
				Location? Class Default
				Visible? Class Default
				Size: Class Default
				Size Editable? Yes
				Font Name: Default
				Font Size: Default
				Font Enhancement: Default
				Text Color: Default
				Background Color: Default
			Contents
				Pushbutton: pbExit
					Class Child Ref Key: 32
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbRefresh
					Class Child Ref Key: 33
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbUpdate
					Class Child Ref Key: 34
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbInsert
					Class Child Ref Key: 35
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbUndo
					Class Child Ref Key: 36
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbDelete
					Class Child Ref Key: 37
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbPrint
					Class Child Ref Key: 38
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbFirst
					Class Child Ref Key: 39
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbPrev
					Class Child Ref Key: 40
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbNext
					Class Child Ref Key: 41
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbLast
					Class Child Ref Key: 42
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbDelFixed
					Class Child Ref Key: 43
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbMarkAllCorrect
					Class Child Ref Key: 44
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbUnmarkAllCorrect
					Class Child Ref Key: 45
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbSort
					Class Child Ref Key: 46
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
				Pushbutton: pbFilter
					Class Child Ref Key: 47
					Class ChildKey: 0
					Class: cls301ErrView
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: Class Default
						Top:    Class Default
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Keyboard Accelerator: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Picture File Name:
					Picture Transparent Color: Class Default
					Image Style: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Message Actions
		Contents
			Column: colErr_Nr
				Class Child Ref Key: 11
				Class ChildKey: 0
				Class: cls301ErrView
				Property Template:
				Class DLL Name:
				Title:
				Visible? Class Default
				Editable? Class Default
				Maximum Data Length: Class Default
				Data Type: Class Default
				Justify: Class Default
				Width:  Class Default
				Width Editable? Class Default
				Format: Class Default
				Country: Class Default
				Input Mask: Class Default
				Cell Options
					Cell Type? Class Default
					Multiline Cell? Class Default
					Cell DropDownList
						Sorted? Class Default
						Vertical Scroll? Class Default
						Auto Drop Down? Class Default
						Allow Text Editing? Class Default
					Cell CheckBox
						Check Value:
						Uncheck Value:
						Ignore Case? Class Default
				List Values
				Message Actions
			Column: colReceived
				Class Child Ref Key: 10
				Class ChildKey: 0
				Class: cls301ErrView
				Property Template:
				Class DLL Name:
				Title:
				Visible? Class Default
				Editable? Class Default
				Maximum Data Length: Class Default
				Data Type: Class Default
				Justify: Class Default
				Width:  Class Default
				Width Editable? Class Default
				Format: Class Default
				Country: Class Default
				Input Mask: Class Default
				Cell Options
					Cell Type? Class Default
					Multiline Cell? Class Default
					Cell DropDownList
						Sorted? Class Default
						Vertical Scroll? Class Default
						Auto Drop Down? Class Default
						Allow Text Editing? Class Default
					Cell CheckBox
						Check Value:
						Uncheck Value:
						Ignore Case? Class Default
				List Values
				Message Actions
			Column: colErr_Fixed
				Class Child Ref Key: 31
				Class ChildKey: 0
				Class: cls301ErrView
				Property Template:
				Class DLL Name:
				Title:
				Visible? Class Default
				Editable? Class Default
				Maximum Data Length: Class Default
				Data Type: Class Default
				Justify: Class Default
				Width:  Class Default
				Width Editable? Class Default
				Format: Class Default
				Country: Class Default
				Input Mask: Class Default
				Cell Options
					Cell Type? Class Default
					Multiline Cell? Class Default
					Cell DropDownList
						Sorted? Class Default
						Vertical Scroll? Class Default
						Auto Drop Down? Class Default
						Allow Text Editing? Class Default
					Cell CheckBox
						Check Value:
						Uncheck Value:
						Ignore Case? Class Default
				List Values
				Message Actions
			Column: colSection
				Class Child Ref Key: 12
				Class ChildKey: 0
				Class: cls301ErrView
				Property Template:
				Class DLL Name:
				Title:
				Visible? Class Default
				Editable? Class Default
				Maximum Data Length: Class Default
				Data Type: Class Default
				Justify: Class Default
				Width:  Class Default
				Width Editable? Class Default
				Format: Class Default
				Country: Class Default
				Input Mask: Class Default
				Cell Options
					Cell Type? Class Default
					Multiline Cell? Class Default
					Cell DropDownList
						Sorted? Class Default
						Vertical Scroll? Class Default
						Auto Drop Down? Class Default
						Allow Text Editing? Class Default
					Cell CheckBox
						Check Value:
						Uncheck Value:
						Ignore Case? Class Default
				List Values
				Message Actions
			Column: colSegment
				Class Child Ref Key: 13
				Class ChildKey: 0
				Class: cls301ErrView
				Property Template:
				Class DLL Name:
				Title:
				Visible? Class Default
				Editable? Class Default
				Maximum Data Length: Class Default
				Data Type: Class Default
				Justify: Class Default
				Width:  Class Default
				Width Editable? Class Default
				Format: Class Default
				Country: Class Default
				Input Mask: Class Default
				Cell Options
					Cell Type? Class Default
					Multiline Cell? Class Default
					Cell DropDownList
						Sorted? Class Default
						Vertical Scroll? Class Default
						Auto Drop Down? Class Default
						Allow Text Editing? Class Default
					Cell CheckBox
						Check Value:
						Uncheck Value:
						Ignore Case? Class Default
				List Values
				Message Actions
			Column: colSegment_Pos
				Class Child Ref Key: 14
				Class ChildKey: 0
				Class: cls301ErrView
				Property Template:
				Class DLL Name:
				Title:
				Visible? Class Default
				Editable? Class Default
				Maximum Data Length: Class Default
				Data Type: Class Default
				Justify: Class Default
				Width:  Class Default
				Width Editable? Class Default
				Format: Class Default
				Country: Class Default
				Input Mask: Class Default
				Cell Options
					Cell Type? Class Default
					Multiline Cell? Class Default
					Cell DropDownList
						Sorted? Class Default
						Vertical Scroll? Class Default
						Auto Drop Down? Class Default
						Allow Text Editing? Class Default
					Cell CheckBox
						Check Value:
						Uncheck Value:
						Ignore Case? Class Default
				List Values
				Message Actions
			Column: colField_Pos
				Class Child Ref Key: 15
				Class ChildKey: 0
				Class: cls301ErrView
				Property Template:
				Class DLL Name:
				Title:
				Visible? Class Default
				Editable? Class Default
				Maximum Data Length: Class Default
				Data Type: Class Default
				Justify: Class Default
				Width:  Class Default
				Width Editable? Class Default
				Format: Class Default
				Country: Class Default
				Input Mask: Class Default
				Cell Options
					Cell Type? Class Default
					Multiline Cell? Class Default
					Cell DropDownList
						Sorted? Class Default
						Vertical Scroll? Class Default
						Auto Drop Down? Class Default
						Allow Text Editing? Class Default
					Cell CheckBox
						Check Value:
						Uncheck Value:
						Ignore Case? Class Default
				List Values
				Message Actions
			Column: colErr_Code
				Class Child Ref Key: 16
				Class ChildKey: 0
				Class: cls301ErrView
				Property Template:
				Class DLL Name:
				Title:
				Visible? Class Default
				Editable? Class Default
				Maximum Data Length: Class Default
				Data Type: Class Default
				Justify: Class Default
				Width:  Class Default
				Width Editable? Class Default
				Format: Class Default
				Country: Class Default
				Input Mask: Class Default
				Cell Options
					Cell Type? Class Default
					Multiline Cell? Class Default
					Cell DropDownList
						Sorted? Class Default
						Vertical Scroll? Class Default
						Auto Drop Down? Class Default
						Allow Text Editing? Class Default
					Cell CheckBox
						Check Value:
						Uncheck Value:
						Ignore Case? Class Default
				List Values
				Message Actions
			Column: colErr_Text
				Class Child Ref Key: 17
				Class ChildKey: 0
				Class: cls301ErrView
				Property Template:
				Class DLL Name:
				Title:
				Visible? Class Default
				Editable? Class Default
				Maximum Data Length: Class Default
				Data Type: Class Default
				Justify: Class Default
				Width:  Class Default
				Width Editable? Class Default
				Format: Class Default
				Country: Class Default
				Input Mask: Class Default
				Cell Options
					Cell Type? Class Default
					Multiline Cell? Class Default
					Cell DropDownList
						Sorted? Class Default
						Vertical Scroll? Class Default
						Auto Drop Down? Class Default
						Allow Text Editing? Class Default
					Cell CheckBox
						Check Value:
						Uncheck Value:
						Ignore Case? Class Default
				List Values
				Message Actions
			Column: colUNB_Filename
				Class Child Ref Key: 18
				Class ChildKey: 0
				Class: cls301ErrView
				Property Template:
				Class DLL Name:
				Title:
				Visible? Class Default
				Editable? Class Default
				Maximum Data Length: Class Default
				Data Type: Class Default
				Justify: Class Default
				Width:  Class Default
				Width Editable? Class Default
				Format: Class Default
				Country: Class Default
				Input Mask: Class Default
				Cell Options
					Cell Type? Class Default
					Multiline Cell? Class Default
					Cell DropDownList
						Sorted? Class Default
						Vertical Scroll? Class Default
						Auto Drop Down? Class Default
						Allow Text Editing? Class Default
					Cell CheckBox
						Check Value:
						Uncheck Value:
						Ignore Case? Class Default
				List Values
				Message Actions
			Column: colUNB_Date
				Class Child Ref Key: 19
				Class ChildKey: 0
				Class: cls301ErrView
				Property Template:
				Class DLL Name:
				Title:
				Visible? Class Default
				Editable? Class Default
				Maximum Data Length: Class Default
				Data Type: Class Default
				Justify: Class Default
				Width:  Class Default
				Width Editable? Class Default
				Format: Class Default
				Country: Class Default
				Input Mask: Class Default
				Cell Options
					Cell Type? Class Default
					Multiline Cell? Class Default
					Cell DropDownList
						Sorted? Class Default
						Vertical Scroll? Class Default
						Auto Drop Down? Class Default
						Allow Text Editing? Class Default
					Cell CheckBox
						Check Value:
						Uncheck Value:
						Ignore Case? Class Default
				List Values
				Message Actions
			Column: colUNH_Msg_Num
				Class Child Ref Key: 20
				Class ChildKey: 0
				Class: cls301ErrView
				Property Template:
				Class DLL Name:
				Title:
				Visible? Class Default
				Editable? Class Default
				Maximum Data Length: Class Default
				Data Type: Class Default
				Justify: Class Default
				Width:  Class Default
				Width Editable? Class Default
				Format: Class Default
				Country: Class Default
				Input Mask: Class Default
				Cell Options
					Cell Type? Class Default
					Multiline Cell? Class Default
					Cell DropDownList
						Sorted? Class Default
						Vertical Scroll? Class Default
						Auto Drop Down? Class Default
						Allow Text Editing? Class Default
					Cell CheckBox
						Check Value:
						Uncheck Value:
						Ignore Case? Class Default
				List Values
				Message Actions
			Column: colUNB_File_Numb
				Class Child Ref Key: 21
				Class ChildKey: 0
				Class: cls301ErrView
				Property Template:
				Class DLL Name:
				Title:
				Visible? Class Default
				Editable? Class Default
				Maximum Data Length: Class Default
				Data Type: Class Default
				Justify: Class Default
				Width:  Class Default
				Width Editable? Class Default
				Format: Class Default
				Country: Class Default
				Input Mask: Class Default
				Cell Options
					Cell Type? Class Default
					Multiline Cell? Class Default
					Cell DropDownList
						Sorted? Class Default
						Vertical Scroll? Class Default
						Auto Drop Down? Class Default
						Allow Text Editing? Class Default
					Cell CheckBox
						Check Value:
						Uncheck Value:
						Ignore Case? Class Default
				List Values
				Message Actions
			Column: colFall_Key
				Class Child Ref Key: 22
				Class ChildKey: 0
				Class: cls301ErrView
				Property Template:
				Class DLL Name:
				Title:
				Visible? Class Default
				Editable? Class Default
				Maximum Data Length: Class Default
				Data Type: Class Default
				Justify: Class Default
				Width:  Class Default
				Width Editable? Class Default
				Format: Class Default
				Country: Class Default
				Input Mask: Class Default
				Cell Options
					Cell Type? Class Default
					Multiline Cell? Class Default
					Cell DropDownList
						Sorted? Class Default
						Vertical Scroll? Class Default
						Auto Drop Down? Class Default
						Allow Text Editing? Class Default
					Cell CheckBox
						Check Value:
						Uncheck Value:
						Ignore Case? Class Default
				List Values
				Message Actions
		Functions
		Window Parameters
		Window Variables
			Boolean: b4Fall
		Message Actions
			On AM_Refresh
				If nFall_Fall_Key
					Set sWhere = 'FALL_KEY = :nFall_Fall_Key'
				Else
					Set sWhere = ''
				Call SalSetWindowText( hWndForm, s301Err_WinTitle || VisStrChoose( nFall_Fall_Key, ' ( Fall-Nr: ' || StrX( nFall_Fall_Key ) || ' )', '' ) )
				Return SalSendClassMessage( AM_Refresh, wParam, lParam )
			On SAM_Destroy
				Call SalSendClassMessage( SAM_Destroy, wParam, lParam )
				Set hWndViewErr301 = hWndNULL 
