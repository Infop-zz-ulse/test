Application Description: GHS application template
		Galilei Software GmbH
		
		21.app
		
		Utility for §21 data export
		
		01.05.2003 @ v.1.0.0 MR created
		03.05.2003 @ v.1.0.1 MR changed Aufnahmeanlass select SQL
		05.05.2003 @ v.1.0.2 MR: now all errors are shown for all Falls
		05.05.2003 @ v.1.0.3 MR: errors are shown in the table, doubleclick opens Fall, added Aufnahmeanlass substitution.
		29.07.2003 @ v.1.0.4 MR: added Krankenhausbezogene Daten and Verfahrensinformationen
		13.01.2005 @ v.1.0.5 AS Refreshed; HelpMenu was added (for translations)
.data CLASSPROPSSIZE
0000: 6D00
.enddata
.data CLASSPROPS
0000: 4442475F504C4159 4241434B5F475549 440010009310F118 3E35EE42B4875AF5
0020: A0A8F9DA00557365 476C6F62616C5061 7468000400010000 0000417070506174
0040: 684C656E0004000E 0000000041707050 617468000E004B3A 5C47485333322E43
0060: 5444323100000000 0000000000
.enddata
	Outline Version - 4.0.35
	Design-time Settings
.data VIEWINFO
0000: 6F00000001000000 FFFF01000D004347 5458566965775374 6174650400010000
0020: 0000000000CA0000 002C000000020000 0003000000FFFFFF FFFFFFFFFFFCFFFF
0040: FFE9FFFFFF000000 00D4000000BA0300 00A8010000010000 0001000000010000
0060: 000F4170706C6963 6174696F6E497465 6D00000000
.enddata
.data DT_MAKERUNDLG
0000: 00000000134B3A5C 47485333325C4E4F 544531322E49434F 0632312E65786507
0020: 3330312E646C6C07 3330312E61706300 010101010A573A5C 3330312E72756E0A
0040: 573A5C3330312E64 6C6C0A573A5C3330 312E617063000001 01010A573A5C3330
0060: 312E6170640A573A 5C3330312E646C6C 0A573A5C3330312E 6170630000010101
0080: 0A573A5C3330312E 61706C0A573A5C33 30312E646C6C0A57 3A5C3330312E6170
00A0: 630000010101
.enddata
		Outline Window State: Maximized
		Outline Window Location and Size
.data VIEWINFO
0000: 6600010003001B00 0200000000000000 0000D32A921A0500 1D00FFFF4D61696E
0020: 00
.enddata
.data VIEWSIZE
0000: 2100
.enddata
			Left: -0.013"
			Top: 0.0"
			Width:  8.013"
			Height: 4.969"
		Options Box Location
.data VIEWINFO
0000: D4182E07B80B2A00
.enddata
.data VIEWSIZE
0000: 0800
.enddata
			Visible? Yes
			Left: 4.15"
			Top: 1.885"
			Width:  3.8"
			Height: 2.073"
		Class Editor Location
			Visible? No
			Left: 1.038"
			Top: 0.26"
			Width:  5.063"
			Height: 2.719"
		Tool Palette Location
			Visible? No
			Left: 7.775"
			Top: 1.865"
		Fully Qualified External References? Yes
		Reject Multiple Window Instances? Yes
		Enable Runtime Checks Of External References? No
		Use Release 4.0 Scope Rules? No
		Edit Fields Read Only On Disable? No
	Libraries
		File Include: MODUL.APL
		File Include: MAINACTS.APL
		!
		File Include: CLS_FORM.APL
		File Include: CLS_GNRL.APL
		File Include: CLS_OBJ.APL
		File Include: cls_tabl_brwsgnrl.apl
		File Include: CLS_CLMN.APL
		File Include: VTFILE.APL
		!
		Dynalib: Dyna_Config.apd
		Dynalib: Dyna_ProgrInd.apd
		Dynalib: Dyna_reader.apd
		!
		File Include: structs.apl
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
			Date/Time: MMM d, yyyy hh:mm AMPM
			Date/Time: dd.MM.yyyy
			Input: 99.99.9999
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
				Number: n21_REQUIRED_DB_VERSION = 5.87
				String: s21_VERSION = '1.0.5'
			Enumerations
		Resources
		Variables
		Internal Functions
		Named Menus
		Class Definitions
.data RESOURCE 0 0 1 2596674697
0000: C20300009F020000 0000000000000000 0200000900FFFF01 00160000436C6173
0020: 73566172004F7574 6C696E6552006567 496E666F19003C00 000F63006C734765
0040: 6E657261006C4669 656C642200C00000 0100000053190000 01C0200107000000
0060: 008A027300000001 000D000180040010 0000010000126302 6C44617461466907
0080: 50726F7065C87222 0000019E0004000A 000201060000C600 E402736C00010001
00A0: 0080680000000200 0010000C636C5371 6C0048616E646C65 9A00C00000050000
00C0: 005B190001D22005 0000107A0C730000 01006D0019005604 000301B606007A67
00E0: 000100831D000000 19A500012007ED00 7AD1000100006036 0000001900090120
0100: 080000007B7A0034 0100004F00580000 190001C220090000 001E7A0001000D00
0120: 01801D0001000300 00000B63026C4261 73696357806E6440 00000002BD0004A5
0140: 000320058D00980C 73D1000100006604 0019006901200600 7B98003401000001
0160: 80607D0000000400 000D63526164696F 4C00697374426F78 9A00D90005005B19
0180: 0001DE2000107E0E 73000001006D0019 009619000120B607 007E470001000083
01A0: 3200000019A50001 2008ED007ED10001 0000604B00000019 0069012009007B7E
01C0: 0034010000640058 0000190001C2200A 0000001E7E000100 0D00018029001800
01E0: 00050005634C4461 9A0000F4050000D6 040003360500D211 447300000100009B
0200: 040004B5000306ED 00D2D90001006408 000004006D030700 7BD2003601000C00
0220: 580000040003DB08 009ED200010D0010 0000009619000120 B60A00D247000100
0240: 0063018004002406 00000B5363C07265 656E446144220000 0100006F04006D03
0260: 060063EA11730036 0100018046040007 000008096352636B 44611F000100BD00
0280: 04F500038D00F611 73D9000100980180 0400080900094361 67657C446100F401
02A0: 0000D60400033700 0212647300000100 03
.enddata
		Default Classes
			MDI Window: cBaseMDI
			Form Window:
			Dialog Box:
			Table Window:
			Quest Window:
			Data Field: clsDataField
			Spin Field:
			Multiline Field: clsMultilineField
			Pushbutton: clsHintedPushbutton
			Radio Button: clsRadioButton
			Option Button:
			ActiveX:
			Check Box: clsCheckBox
			Child Table: clsChildTableBrowse
			Quest Child Window: cQuickDatabase
			List Box:
			Combo Box: clsComboBox
			Picture:
			Vertical Scroll Bar:
			Horizontal Scroll Bar:
			Column: clsColumn
			Background Text: clsBackgroundText
			Group Box: clsGroupBox
			Line:
			Frame: clsFrame
			Custom Control: cQuickGraph
		Application Actions
			On SAM_AppStartup
				If App_ReadExeArguments(  )
					If CheckDBVersion( n21_REQUIRED_DB_VERSION )
						Call GalConfig_InitDefault( )
						Call SalCreateWindow( frm21, hWndStar2000 )
					Else
						Call SalQuit(  )
			On SAM_AppExit
				Call App_EndOfSeparateEXE(  )
			On SAM_SqlError
				Select Case MainOnSqlError( )
					Case RETURN_True
						Return TRUE
					Case RETURN_False
						Return FALSE
					Case RETURN_Nothing
						Break
					Default
						Call SalMessageBox( "Return value Error!", "MainOnSqlError( )", MB_IconExclamation )
	Form Window: frm21
		Class: clsSimpleForm
		Property Template:
		Class DLL Name:
		Title: §21 exchange
		Icon File:
		Accessories Enabled? Class Default
		Visible? Class Default
		Display Settings
			Display Style? Class Default
			Visible at Design time? Yes
			Automatically Created at Runtime? Class Default
			Initial State: Class Default
			Maximizable? Class Default
			Minimizable? Class Default
			Allow Child Docking? No
			Docking Orientation: All
			System Menu? Class Default
			Resizable? Class Default
			Window Location and Size
				Left: 2.6"
				Top: 0.729"
				Width:  6.438"
				Width Editable? Class Default
				Height: 6.115"
				Height Editable? Class Default
			Form Size
				Width:  Class Default
				Height: Class Default
				Number of Pages: Class Default
			Font Name: Class Default
			Font Size: Class Default
			Font Enhancement: Class Default
			Text Color: Class Default
			Background Color: Class Default
		Description:
		Named Menus
		Menu
			Popup Menu: &Datei
				Resource Id: 39097
				Enabled when:
				Status Text:
				Menu Item Name:
				Menu Item: &Beenden
					Resource Id: 39098
					Keyboard Accelerator: (none)
					Status Text:
					Menu Settings
						Enabled when:
						Checked when:
					Menu Actions
						Call SalPostMsg( hWndForm, SAM_Close, 0, 0 )
					Menu Item Name:
			Popup Menu: &Vorgang
				Resource Id: 39099
				Enabled when:
				Status Text:
				Menu Item Name:
				Menu Item: &Start
					Resource Id: 39100
					Keyboard Accelerator: (none)
					Status Text:
					Menu Settings
						Enabled when:
						Checked when:
					Menu Actions
						Call SalPostMsg( pbOk, SAM_Click, 0, 0 )
					Menu Item Name:
				Menu Separator
				Menu Item: &Optionen...
					Resource Id: 39103
					Keyboard Accelerator: (none)
					Status Text:
					Menu Settings
						Enabled when:
						Checked when:
					Menu Actions
						Call SalPostMsg( pbOptions, SAM_Click, 0, 0 )
					Menu Item Name:
			Named Menu: menuHelp
				Resource Id: 3081
		Tool Bar
			Display Settings
				Display Style? Class Default
				Location? Class Default
				Visible? Class Default
				Size: Class Default
				Size Editable? Class Default
				Docking Toolbar? Class Default
				Toolbar Docking Orientation: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
				Resizable? Class Default
			Contents
				Pushbutton: pbExit
					Class Child Ref Key: 0
					Class ChildKey: 0
					Class: clsPbExit
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: 0.013"
						Top: 0.021"
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
					Button Appearance: Standard
					Message Actions
				Pushbutton: pbOk
					Class Child Ref Key: 0
					Class ChildKey: 0
					Class: clsPushbuttonOk
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: 0.363"
						Top: 0.021"
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
					Button Appearance: Standard
					Message Actions
				Pushbutton: pbOptions
					Class Child Ref Key: 0
					Class ChildKey: 0
					Class: clsPbOptionsPic
					Property Template:
					Class DLL Name:
					Title:
					Window Location and Size
						Left: 0.713"
						Top: 0.021"
						Width:  0.35"
						Width Editable? Class Default
						Height: 0.292"
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
					Button Appearance: Standard
					Message Actions
		Contents
			Background Text: Ausgang zu
				Resource Id: 40049
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundTextRight
				Window Location and Size
					Left: 0.188"
					Top: 0.104"
					Width:  1.075"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfOutDir
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: Class Default
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 1.313"
						Top: 0.063"
						Width:  2.15"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Pushbutton: pbChOutDir
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsPbChooseDir
				Property Template:
				Class DLL Name:
				Title:
				Window Location and Size
					Left: 3.513"
					Top: 0.042"
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
				Button Appearance: Standard
				Message Actions
			Background Text: Daten von:
				Resource Id: 9174
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundTextRight
				Window Location and Size
					Left: 0.188"
					Top: 0.427"
					Width:  0.725"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfStart
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 10
					Data Type: Date/Time
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 0.95"
						Top: 0.385"
						Width:  0.9"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: dd.MM.yyyy
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: 99.99.9999
				Message Actions
			Background Text: Daten bis:
				Resource Id: 9175
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundTextRight
				Window Location and Size
					Left: 2.225"
					Top: 0.427"
					Width:  0.725"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfEnd
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 10
					Data Type: Date/Time
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 2.963"
						Top: 0.385"
						Width:  0.9"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: dd.MM.yyyy
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: 99.99.9999
				Message Actions
			Group Box: Verfahrensinformationen
				Resource Id: 58993
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsGroupBox
				Window Location and Size
					Left: 0.1"
					Top: 0.719"
					Width:  6.075"
					Width Editable? Class Default
					Height: 1.375"
					Height Editable? Class Default
				Visible? Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Background Text: Datenerhebung:
				Resource Id: 58994
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 0.225"
					Top: 0.948"
					Width:  1.35"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Bold
				Text Color: Class Default
				Background Color: Class Default
			Combo Box: cmbDatenErh
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsComboBox
				Property Template:
				Class DLL Name:
				Window Location and Size
					Left: 1.613"
					Top: 0.927"
					Width:  Class Default
					Width Editable? Class Default
					Height: 1.458"
					Height Editable? Class Default
				Visible? Class Default
				Editable? Class Default
				String Type: Class Default
				Maximum Data Length: 9
				Sorted? Class Default
				Always Show List? Class Default
				Vertical Scroll? Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
				Input Mask: Class Default
				List Initialization
					Text: Test.D
					Text: D1.2002
					Text: 2002
					Text: 2003
					Text: D1.2002.S
					Text: 2002.S
					Text: 2003.S
				Message Actions
			Background Text: Erstelldatum:
				Resource Id: 58995
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 0.225"
					Top: 1.229"
					Width:  1.35"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Bold
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfErstell		! has initialization
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataFieldDateHM
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: Class Default
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 1.613"
						Top: 1.188"
						Width:  1.2"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
					On SAM_Create
						Call SalSendClassMessage( SAM_Create, wParam, lParam )
						Set MyValue = SalDateCurrent( )
			Background Text: E-Mail Adresse:
				Resource Id: 58996
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 0.225"
					Top: 1.51"
					Width:  1.35"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Bold
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfEmail
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 50
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 1.613"
						Top: 1.469"
						Width:  1.575"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Background Text: DRG-Grouper:
				Resource Id: 58997
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 0.225"
					Top: 1.792"
					Width:  1.35"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfGrouper
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 25
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 1.613"
						Top: 1.75"
						Width:  1.575"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Background Text: Kostendaten von:
				Resource Id: 58998
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 3.288"
					Top: 0.948"
					Width:  1.35"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfKstVon
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataFieldDate
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: Class Default
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 4.763"
						Top: 0.906"
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Background Text: Kostendaten bis:
				Resource Id: 58991
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 3.288"
					Top: 1.229"
					Width:  1.35"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfKstBis
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataFieldDate
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: Class Default
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 4.763"
						Top: 1.188"
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Background Text: Softwarelösung:
				Resource Id: 58992
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 3.288"
					Top: 1.51"
					Width:  1.35"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfSoftLosung
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 25
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 4.763"
						Top: 1.469"
						Width:  1.3"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Background Text: Versionskennung:
				Resource Id: 58990
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 3.288"
					Top: 1.792"
					Width:  1.35"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Bold
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfVersKenn			! has initialization
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 8
					Data Type: Class Default
					Editable? No
				Display Settings
					Window Location and Size
						Left: 4.763"
						Top: 1.75"
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
					On SAM_Create
						Call SalSendClassMessage( SAM_Create, wParam, lParam )
						Set MyValue = '20021201'
			Group Box: Krankenhausbezogene daten
				Resource Id: 58999
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsGroupBox
				Window Location and Size
					Left: 0.1"
					Top: 2.167"
					Width:  6.075"
					Width Editable? Class Default
					Height: 1.104"
					Height Editable? Class Default
				Visible? Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Background Text: IK-Nummer:
				Resource Id: 59001
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 0.25"
					Top: 2.396"
					Width:  1.35"
					Width Editable? Class Default
					Height: 0.167"
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Bold
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfIK
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 9
					Data Type: Number
					Editable? No
				Display Settings
					Window Location and Size
						Left: 1.613"
						Top: 2.354"
						Width:  1.575"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Background Text: KH-Name:
				Resource Id: 59000
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 0.25"
					Top: 2.688"
					Width:  0.975"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Bold
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfKHName
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: Class Default
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 1.613"
						Top: 2.646"
						Width:  1.575"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Background Text: KH-Art:
				Resource Id: 59005
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 0.25"
					Top: 2.979"
					Width:  Class Default
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Bold
				Text Color: Class Default
				Background Color: Class Default
			Combo Box: cmbKHArt
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsComboBox
				Property Template:
				Class DLL Name:
				Window Location and Size
					Left: 1.288"
					Top: 2.958"
					Width:  1.9"
					Width Editable? Class Default
					Height: 2.0"
					Height Editable? Class Default
				Visible? Class Default
				Editable? No
				String Type: Class Default
				Maximum Data Length: Class Default
				Sorted? Class Default
				Always Show List? Class Default
				Vertical Scroll? Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
				Input Mask: Class Default
				List Initialization
					Text: B (Bundeswerkrankenhaus)
					Text: H (HochschulKlnk./UniversitätsKlnk.)
					Text: P (Plankrankenhaus)
					Text: U (KH i. Trgschft d. ges. UV)
					Text: V (KH m. e. Vers.vertrag (n. §18.3 SGB V)
				Message Actions
			Background Text: KH-Träger:
				Resource Id: 59004
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 3.288"
					Top: 2.396"
					Width:  Class Default
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Bold
				Text Color: Class Default
				Background Color: Class Default
			Combo Box: cmbKHTrager
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsComboBox
				Property Template:
				Class DLL Name:
				Window Location and Size
					Left: 4.488"
					Top: 2.375"
					Width:  1.575"
					Width Editable? Class Default
					Height: 1.458"
					Height Editable? Class Default
				Visible? Class Default
				Editable? No
				String Type: Class Default
				Maximum Data Length: Class Default
				Sorted? Class Default
				Always Show List? Class Default
				Vertical Scroll? Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
				Input Mask: Class Default
				List Initialization
					Text: F (Freigemeinnützig)
					Text: P (Privat)
					Text: O (Öffentlich)
				Message Actions
			Background Text: Betten:
				Resource Id: 59003
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 3.288"
					Top: 2.688"
					Width:  Class Default
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Bold
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfBetten
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 4
					Data Type: Number
					Editable? No
				Display Settings
					Window Location and Size
						Left: 4.475"
						Top: 2.646"
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Background Text: Merkmal Zu-Abschläge:
				Resource Id: 59002
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 3.288"
					Top: 2.906"
					Width:  Class Default
					Width Editable? Class Default
					Height: 0.313"
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfMerkmal
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 6
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 4.475"
						Top: 2.938"
						Width:  Class Default
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Pushbutton: pbAusb
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsHintedPushbutton
				Property Template:
				Class DLL Name:
				Title: Ausbildungsstätten...
				Window Location and Size
					Left: 4.588"
					Top: 0.385"
					Width:  1.575"
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
				Button Appearance: Standard
				Message Actions
			Child Table: tblMsg
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsChildTableBrowse
				Property Template:
				Class DLL Name:
				Display Settings
					Window Location and Size
						Left: 0.075"
						Top: 3.396"
						Width:  6.125"
						Width Editable? Class Default
						Height: 2.0"
						Height Editable? Class Default
					Visible? Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					View: Class Default
					Allow Row Sizing? Class Default
					Lines Per Row: Class Default
				Memory Settings
					Maximum Rows in Memory: 5000
					Discardable? No
				Contents
					Column: colFall
						Class Child Ref Key: 0
						Class ChildKey: 0
						Class: clsColumn
						Property Template:
						Class DLL Name:
						Title: Fall
						Visible? Class Default
						Editable? No
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
					Column: colMsg
						Class Child Ref Key: 0
						Class ChildKey: 0
						Class: clsColumn
						Property Template:
						Class DLL Name:
						Title: Meldung
						Visible? Class Default
						Editable? No
						Maximum Data Length: Class Default
						Data Type: Class Default
						Justify: Class Default
						Width:  6.6"
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
				Window Variables
				Message Actions
					On SAM_DoubleClick
						If not (SalIsNull(colFall) or colFall = 0) and VisWinIsWindow( hWndStar2000 )
							Call SalPostMsg( hWndStar2000, AM_OpenFall, 0, colFall )
		Functions
			Function: _FillFileList
				Description:
				Returns
				Parameters
				Static Variables
				Local variables
				Actions
					Call SalArraySetUpperBound( sFiles, 1, -1 )
					Set sFiles[0] = 'KRANKENHAUS'
					Set sFiles[1] = 'INFO'
					Set sFiles[2] = 'FALL'
					Set sFiles[3] = 'FAB'
					Set sFiles[4] = 'ICD'
					Set sFiles[5] = 'OPS'
			Function: _FillFormatArray
				Description:
				Returns
				Parameters
					String: sFile
				Static Variables
				Local variables
				Actions
					Set nFields = 0
					Call SalArraySetUpperBound( sNames, 1, -1 )
					Call SalArraySetUpperBound( nLengths, 1, -1 )
					Call SalArraySetUpperBound( sFormats, 1, -1 )
					Call SalArraySetUpperBound( bRequired, 1, -1 )
					Call SalArraySetUpperBound( bHidden, 1, -1 )
					Call SalArraySetUpperBound( sErrMsg, 1, -1 )
					Call SalArraySetUpperBound( sDefaults, 1, -1 )
					!
					Call AddField( 'IK', 9, '', TRUE, '', '', FALSE )
					If sFile = 'KRANKENHAUS'
						Call AddField( 'KH-Name', 50, '', TRUE, '', 'KH-Name is empty!', FALSE )
						Call AddField( 'KH-Art', 1, '', TRUE, '', 'KH-Art is empty!', FALSE )
						Call AddField( 'KH-Träger', 1, '', TRUE, '', 'KH-Träger is empty!', FALSE )
						Call AddField( 'Betten', 4, '', TRUE, '', '"Augestellte Betten" is not specified!', FALSE )
						Call AddField( 'Merkmal-Zu-Abschläge', 6, '', FALSE, '', '', FALSE )
					Else If sFile = 'INFO'
						Call AddField( 'Datenerhebung', 9, '', TRUE, '', 'Datenerhebung is not specified!', FALSE )
						Call AddField( 'Datum-der-Erstellung', 12, 'yyyyMMddhhhhmm', TRUE, '', '', FALSE )
						Call AddField( 'E-Mail', 50, '', TRUE, '', 'Email is missing!', FALSE )
						Call AddField( 'DRG-Grouper', 25, '', FALSE, '', '', FALSE )
						Call AddField( 'Kostendaten-von', 8, 'yyyyMMdd', FALSE, '', '', FALSE )
						Call AddField( 'Kostendaten-bis', 8, 'yyyyMMdd', FALSE, '', '', FALSE )
						Call AddField( 'Softwarelösung', 25, '', FALSE, '', '', FALSE )
						Call AddField( 'Versionskennung', 8, '', TRUE, '', '', FALSE )
					Else
						Call AddField('KH-internes-Kennzeichen', 15, '',TRUE, '', '', FALSE)
						If sFile = 'FALL'
							Set nMaxRepeat = 1
							! Call AddField('Geburtsjahr', 4, 'yyyy', TRUE, '', 'Birthday date is empty!', FALSE)
							Call AddField('Geburtsjahr', 4, '', TRUE, '', 'Birthday date is empty!', FALSE)
							! Call AddField('Geburtsmonat', 2, 'mm', FALSE, '', '', FALSE)
							Call AddField('Geburtsmonat', 2, '', FALSE, '', '', FALSE)
							Call AddField('Geschlecht', 1, '', TRUE, '', '', FALSE)
							Call AddField('PLZ-3', 3, '', FALSE, '', '', FALSE)
							! Call AddField('Aufnahmedatum', 12, 'yyyyMMddhhhhmm', TRUE, '', 'Aufnahmedatum is empty!', FALSE)
							Call AddField('Aufnahmedatum', 12, '', TRUE, '', 'Aufnahmedatum is empty!', FALSE)
							Call AddField('Aufnahmeanlass', 1, '', TRUE, VisStrChoose(bAufnanlass, sAufnanlass, ''), 'Aufnahmeanlass cannot be obtained!', FALSE)
							Call AddField('Aufnahmegrund', 4, '', FALSE, '', '', FALSE)
							Call AddField('Aufnahmegewicht', 5, '', FALSE, '', '', FALSE)
							! Call AddField('Entlassdatum', 12, 'yyyyMMddhhhhmm', TRUE, '', 'Entlassdatum is empty!', FALSE)
							Call AddField('Entlassdatum', 12, '', TRUE, '', 'Entlassdatum is empty!', FALSE)
							Call AddField('Entlassgrund', 3, '', TRUE, '', 'Entlassungsgrund is not specified!', FALSE)
							Call AddField('Alter-in-Tagen-am-Aufnahmetag', 3, '', FALSE, '', '', FALSE)
							Call AddField('Alter-in-Jahren-am-Aufnahmetag', 3, '', FALSE, '', '', FALSE)
							Call AddField('Berlaubungstage', 3, '', FALSE, '', '', FALSE)
							Call AddField('Patientennummer', 15, '', FALSE, '', '', FALSE)
							Call AddField('Interkurrente-Dialysen', 3, '', FALSE, '', '', FALSE)
							Call AddField('Versorgungstage', 3, '', FALSE, '', '', FALSE)
							! Call AddField('Behandlungsbeginn-vorstationär', 8, 'yyyymmdd', FALSE, '', '', FALSE)
							Call AddField('Behandlungsbeginn-vorstationär', 8, '', FALSE, '', '', FALSE)
							Call AddField('Behandlungstage-vorstationär', 1, '', FALSE, '', '', FALSE)
							! Call AddField('Behandlungsende-nachstationär', 8, 'yyyymmdd', FALSE, '', '', FALSE)
							Call AddField('Behandlungsende-nachstationär', 8, '', FALSE, '', '', FALSE)
							Call AddField('Behandlungstage-nachstationär', 2, '', FALSE, '', '', FALSE)
							Call AddField('IK-Verlegungs-KH', 9, '', FALSE, '', '', FALSE)
							Call AddField('Belegungstage-aussenhalb-KHEntgG', 2, '', FALSE, '', '', FALSE)
						Else If sFile = 'FAB'
							Set nMaxRepeat = -1 ! not limited
							Call AddField('FAB', 6, '', TRUE, '', 'Fachabteilung code is empty!', FALSE)
							! Call AddField('FAB-Aufnahmedatum', 12, 'yyyyMMddhhhhmm', TRUE, '', 'Aufnahmedatum cannot be obtained!', FALSE)
							Call AddField('FAB-Aufnahmedatum', 12, '', TRUE, '', 'Aufnahmedatum cannot be obtained!', FALSE)
							! Call AddField('FAB-Entlassungsdatum', 12, 'yyyyMMddhhhhmm', TRUE, '', 'Entlassungsdatum cannot be obtained!', FALSE)
							Call AddField('FAB-Entlassungsdatum', 12, '', TRUE, '', 'Entlassungsdatum cannot be obtained!', FALSE)
						Else If sFile = 'ICD'
							Set nMaxRepeat = 50
							Call AddField('Diagnoseart', 3, '', TRUE, '', '', FALSE)
							Call AddField('ICD-Version', 6, '', TRUE, '', '', FALSE)
							Call AddField('ICD-Kode', 9, '', TRUE, '', '', FALSE)
							Call AddField('Lokalization', 1, '', FALSE, '', '', FALSE)
							Call AddField('Sekundär-Kode', 9, '', FALSE, '', '', FALSE)
							Call AddField('Lokalization', 2, '', FALSE, '', '', FALSE)
						Else If sFile = 'OPS'
							Set nMaxRepeat = 100
							Call AddField('OPS-Version', 6, '', TRUE, '', '', FALSE)
							Call AddField('OPS-Kode', 11, '', TRUE, '', '', FALSE)
							! Call AddField('OPS-Datum', 12, 'yyyyMMddhhhhmm', FALSE, '', '', FALSE)
							Call AddField('OPS-Datum', 12, '', FALSE, '', '', FALSE)
							Call AddField('Beatmungsstunden', 4, '', FALSE, '', '', FALSE)
							Call AddField('Belegoperateur', 1, '', FALSE, '', '', FALSE)
							Call AddField('Beleganästhesist', 1, '', FALSE, '', '', FALSE)
							Call AddField('Beleghebamme', 1, '', FALSE, '', '', FALSE)
			Function: _FillSQLArray
				Description:
				Returns
				Parameters
					String: sFile
				Static Variables
				Local variables
				Actions
					Set nSQLs = 0
					Call SalArraySetUpperBound( sSQLs, 1, -1)
					Call SalArraySetUpperBound( bReqResultSet, 1, -1)
					Call SalArraySetUpperBound( bSQLMultifetch, 1, -1)
					Call SalArraySetUpperBound( sSQLErrMsg, 1, -1)
					!
					If sFile = 'FALL'
						Call AddSQL( "
								select	@datetochar(f.GEB_DATUM, 'yyyy'),@nullvalue(le.GESCHL, 'U'),@datetochar(f.AE_DATUM+f.AE_TIME, 'yyyymmddhhmi'),
									@datetochar(f.EE_DATUM+f.EE_TIME, 'yyyymmddhhmi'),f.IK_VERANL_KH, f.LE_ID
								from	FALL f, LE
								where	f.EINRICHT_ID = :nEinrichtId
								  and	f.FALL_KEY = :s[1]
								  and	le.LE_ID = f.LE_ID
								into	:s[2], :s[4], :s[6], :s[10], :s[22], :s[30]
								", TRUE, '',FALSE)
						Call AddSQL("
								select	@datetochar(GEB_DATUM, 'mm'), @int(AUFN_GEWICHT*1000)
								from	FALL
								where	EINRICHT_ID = :nEinrichtId
								  and	FALL_KEY = :s[1]
								  and	GEB_DATUM + 1 YEAR > AE_DATUM
								into	:s[3], :s[9]
								", FALSE, '', FALSE )
						Call AddSQL("
								select	FKZ
								from	ADRESSE a, EINRICHTUNG e
								where	e.EINRICHT_ID = :nEinrichtId
								  and	e.ADRESSE_ID = a.ADRESSE_ID
								into	:s[31]
								", TRUE, 'LKZ for Einrichtung is empty!', FALSE )
						Call AddSQL("
								select	@if(@exact(a.FKZ, :s[31]), @left(a.PLZ, 3), '000')
								from	ADRESSE a, LE
								where	le.LE_ID = :s[30]
								   and	le.ADRESSE_ID = a.ADRESSE_ID
								into	:s[5]
								", FALSE, '', FALSE )
						Call AddSQL("
								select	BG1.BG1_CODE, BG2.BG2_CODE,
									@right( '0' || BG1.BG1_CODE, 2 ) || @right( '0' || BG2.BG2_CODE, 2 )
								from	BEWEGUNG B, BEW_GRUND1 BG1, BEW_GRUND2 BG2
								where	B.EINRICHT_ID = :nEinrichtId
								  and	B.FALL_KEY = :s[1]
								  and	B.GELOESCHT = 'N'
								  and	B.BA_KEY = 'AE'
								  and	BG1.EINRICHT_ID = B.EINRICHT_ID
								  and	BG1.BG1_KEY = B.BG1_KEY
								  and	BG1.BA_KEY = B.BA_KEY
								  and	BG2.EINRICHT_ID = B.EINRICHT_ID
								  and	BG2.BG2_KEY = B.BG2_KEY
								  and	BG2.BA_KEY = B.BA_KEY
								into	:s[32], :s[33], :s[8] ", FALSE, "", FALSE )
						Call AddSQL("
								select	aa.ANLASS_CODE
								from	FALL f, AUFNANLASS aa
								where	f.EINRICHT_ID = :nEinrichtId
								  and	f.FALL_KEY = :s[1]
								  and	f.AE_ANLASS = aa.ANLASS_KEY
								into	:s[7]
								", FALSE, '',FALSE)
						Call AddSQL("
								select * from EINRICHTUNG
								where	:s[7] in ('G', 'B')
								  or	:s[32] IS NOT NULL
									and
									:s[33] IS NOT NULL
								", TRUE, 'Aufnahmegrund is missing!', FALSE )
						Call AddSQL("
								select	BG1.BG1_CODE, BG2.BG2_CODE,
									@right( '0' || BG1.BG1_CODE, 2 ) || BG2.BG2_CODE
								from	BEWEGUNG B, BEW_GRUND1 BG1, BEW_GRUND2 BG2
								where	B.EINRICHT_ID = :nEinrichtId
								  and	B.FALL_KEY = :s[1]
								  and	B.BA_KEY = 'EE'
								  and	B.GELOESCHT = 'N'
								  and	BG1.EINRICHT_ID = B.EINRICHT_ID
								  and	BG1.BG1_KEY = B.BG1_KEY
								  and	BG1.BA_KEY = B.BA_KEY
								  and	BG2.EINRICHT_ID = B.EINRICHT_ID
								  and	BG2.BG2_KEY = B.BG2_KEY
								  and	BG2.BA_KEY = B.BA_KEY
								into	:s[32], :s[33], :s[11]
								", TRUE, 'Either of Entlassungsgrund is missing!', FALSE )
						Call AddSQL("
								select * from EINRICHTUNG
								where	:s[32] IS NOT NULL
									and
									:s[33] IS NOT NULL
								", TRUE, 'Both of Entlassungsgrund must be present!', FALSE )
						Call AddSQL("
								select	@int(AE_DATUM-@nullvalue(GEB_DATUM, AE_DATUM))
								from	FALL
								where	EINRICHT_ID = :nEinrichtId
								  and	FALL_KEY = :s[1]
								  and	GEB_DATUM + 1 YEAR > AE_DATUM
								into	:s[12]
								", FALSE, "", FALSE)
						Call AddSQL("
								select @year(AE_DATUM)-@year(@nullvalue(GEB_DATUM, AE_DATUM)) +
										@choose(@month(AE_DATUM) - @month(@nullvalue(GEB_DATUM, AE_DATUM)) +1, -1,
											@choose(@month(AE_DATUM) - @month(@nullvalue(GEB_DATUM, AE_DATUM)),
												@choose(@day(AE_DATUM) - @day(@nullvalue(GEB_DATUM, AE_DATUM)) + 1, -1, 0),
												0
											)
										)
								from	FALL
								where	EINRICHT_ID = :nEinrichtId
								  and	FALL_KEY = :s[1]
								  and	GEB_DATUM + 1 YEAR <= AE_DATUM
								into	:s[13]
								", FALSE, "", FALSE)
						Call AddSQL("
									select	max(ENTL_DATUM-ENTB_DATUM)
									from	NEUGEBORENE
									where	EINRICHT_ID = :nEinrichtId
									  and	FALL_KEY = :s[1]
									into	:s[17]
								", FALSE, '', FALSE)
						Call AddSQL("
								select	sum(@round(b2.BEW_ZEIT-b1.BEW_ZEIT,0))
								from	BEWEGUNG b1, BEWEGUNG b2, BEW_GRUND1 bg
								where	b1.EINRICHT_ID = :nEinrichtId
								  and	b1.FALL_KEY = :s[1]
								  and	b1.BA_KEY = 'IE'
								  and	b1.GELOESCHT='N'
								  and	b1.BA_KEY = bg.BA_KEY
								  and	b1.BG1_KEY = bg.BG1_KEY
								  and	bg.URLAUB = 1
								  and	bg.CANCELED = 0
								  and	b2.EINRICHT_ID = b1.EINRICHT_ID
								  and	b2.FALL_KEY = b1.FALL_KEY
								  and	b2.BEW_NR = (
										select	min(BEW_NR)
										from	BEWEGUNG b3
										where	b3.EINRICHT_ID = b1.EINRICHT_ID
										  and	b3.FALL_KEY = b1.FALL_KEY
										  and	b3.BA_KEY = 'RE'
										  and	b3.BEW_NR > b1.BEW_NR
									)
								into	:s[14]
								",FALSE,"",FALSE)
						Call AddSQL("
								select	sum(@round(b2.BEW_ZEIT-b1.BEW_ZEIT,0))
								from	BEWEGUNG b1, BEWEGUNG b2, BEW_GRUND1 bg
								where	b1.EINRICHT_ID = :nEinrichtId
								  and	b1.FALL_KEY = :s[1]
								  and	b1.BA_KEY = 'IE'
								  and	b1.GELOESCHT='N'
								  and	b1.BA_KEY = bg.BA_KEY
								  and	b1.BG1_KEY = bg.BG1_KEY
								  and	bg.BG1_CODE = '06'
								  and	bg.CANCELED = 0
								  and	b2.EINRICHT_ID = b1.EINRICHT_ID
								  and	b2.FALL_KEY = b1.FALL_KEY
								  and	b2.BEW_NR = (
										select	min(BEW_NR)
										from	BEWEGUNG b3
										where	b3.EINRICHT_ID = b1.EINRICHT_ID
										  and	b3.FALL_KEY = b1.FALL_KEY
										  and	b3.BA_KEY = 'RE'
										  and	b3.BEW_NR > b1.BEW_NR
									)
								into	:s[23]
								",FALSE,"",FALSE)
						! Call AddSQL("
								select	b.BEW_ZEIT, b.BEW_NR
								from	BEWEGUNG b, BEW_GRUND1 bg
								where	EINRICHT_ID = :nEinrichtId
								   and	FALL_KEY = :s[1]
								   and	BA_KEY = 'IE'
								   and	GELOESCHT = 'N'
								   and	b.BA_KEY = bg.BA_KEY
								   and	bg.URLAUB = 1
								   and	bg.CANCELED = 0
								into	:s[34],:s[35]
								order by BEW_ZEIT
								", FALSE, '', TRUE )
						! Call AddSQL("
								select	BEW_ZEIT
								from	BEWEGUNG
								where	EINRICHT_ID = :nEinrichtId
								   and	FALL_KEY = :s[1]
								   and	BA_KEY = 'RE'
								   and	GELOESCHT = 'N'
								   and	BEW_NR > :s[35]
								order by 	BEW_ZEIT
								into	:s[36]
								", FALSE, '', FALSE )
						! Call AddSQL("
								select	@round(:s[36]-:s[35])
								from	BEWEGUNG
								where	EINRICHT_ID = :nEinrichtId
								   and	FALL_KEY = :s[1]
								   and	BA_KEY = 'RE'
								   and	GELOESCHT = 'N'
								   and	BEW_NR > :s[34]
								order by 	BEW_ZEIT
								into	:s[14]
								", FALSE, '', FALSE )
					Else If sFile = 'FAB'
						Call AddSQL( "
								select	a.ABT_ART || a.ABT_301, @datetochar(b.BEW_ZEIT, 'yyyymmddhhmi'), b.BEW_ZEIT, a.ABT_ART, a.ABT_301
								from	ABTEILUNG a, BEWEGUNG  b
								where	b.EINRICHT_ID = :nEinrichtId
								  and	b.FALL_KEY = :s[1]
								  and	b.GELOESCHT = 'N'
								  and	b.BA_KEY in ('AE', 'VE')
								  and	a.EINRICHT_ID = b.EINRICHT_ID
								  and	a.ABT_KEY = b.ABT_KEY
								order by	b.BEW_ZEIT
								into	:s[2], :s[3], :s[10], :s[11], :s[12]
								", TRUE, '',TRUE )
						Call AddSQL( "
								select	*
								from	FALL
								where	:s[11] IS NOT NULL
								  and	:s[12] IS NOT NULL
								", TRUE, 'Abteilung art or Abteilung 301-code is empty!', FALSE )
						Call AddSQL( "
								select	@datetochar(BEW_ZEIT, 'yyyymmddhhmi')
								from	BEWEGUNG
								where	EINRICHT_ID = :nEinrichtId
								  and	FALL_KEY = :s[1]
								  and	GELOESCHT = 'N'
								  and	BA_KEY in ('VE', 'EE')
								  and	BEW_ZEIT > :s[10]
								order by	BEW_ZEIT
								into	:s[4]
								", TRUE, 'EE- or VE- time is empty!',FALSE )
					Else If sFile = 'ICD'
						Call AddSQL( "
								select	@if(@exact(FAD,1), 'HD','ND'), '2.0', DIAG_KEY, LOKALIS_301, fd.FALLDIAG_NR
								from	FALL_DIAG fd, LOKALISATION l
								where	EINRICHT_ID = :nEinrichtId
								   and	FALL_KEY = :s[1]
								   and	GELOESCHT = 'N'
								   and	FAD > 0
								   and	fd.LOKALIS_KEY = l.LOKALIS_KEY(+)
								order by	BEW_NR, FAD
								into	:s[2], :s[3], :s[4], :s[5], :s[10]
								", FALSE, '',TRUE)
						Call AddSQL( "
								select	FD.SEC_DIAG_KEY, L.LOKALIS_301
								from	FALL_DIAG FD, LOKALISATION L
								where	FD.EINRICHT_ID = :nEinrichtId
								   and	FD.FALL_KEY = :s[1]
								   and	FD.FALLDIAG_NR = :s[10]
								   and	FD.GELOESCHT = 'N'
								   and	FD.SEC_LOKALIS_KEY = L.LOKALIS_KEY(+)
								into :s[6], :s[7]", FALSE, '',FALSE )
					Else If sFile = 'OPS'
						Call AddSQL( "
								select	'2.1', OP_KEY, @datetochar( FO.FO_DATUM_ZEIT, 'yyyymmddhhmi' )
								from	FALL_OP fo, FALL_DIAG fd
								where	fd.EINRICHT_ID = :nEinrichtId
								   and	fd.FALL_KEY = :s[1]
								   and	fd.GELOESCHT = 'N'
								   and	fd.FAD > 0
								   and	fo.EINRICHT_ID = fd.EINRICHT_ID
								   and	fo.FALL_KEY = fd.FALL_KEY
								   and	fo.FALLDIAG_NR = fd.FALLDIAG_NR
								order by  fo.FALLOP_NR
								into	:s[2], :s[3], :s[4]
								", FALSE, '',TRUE)
			Function: AddField
				Description:
				Returns
				Parameters
					String: sName
					Number: nLength
					String: sFormat
					Boolean: bReq
					String: sDefault
					String: sMsg
					Boolean: bHide
				Static Variables
				Local variables
				Actions
					Set sNames[nFields] = sName
					Set nLengths[nFields] = nLength
					Set sFormats[nFields] = sFormat
					Set bRequired[nFields] = bReq
					Set sDefaults[nFields] = sDefault
					Set sErrMsg[nFields] = sMsg
					Set bHidden[nFields] = bHide
					Set nFields = nFields + 1
			Function: DoExport
				Description:
				Returns
					Boolean:
				Parameters
				Static Variables
				Local variables
					Number: nFiles
					Number: i
					String: sFalls
					Boolean: bOk
					Boolean: bCanceled
				Actions
					Call ReadSettings()
					Call ClearLog()
					!
					If not dfOutDir or not VisDosExist(dfOutDir)
						Set dfOutDir = '.\\'
					Set dfOutDir = GalStrAddBackSlashX(dfOutDir)
					If SalIsNull(dfStart)
						Call SalMessageBox('Please, specify a start date!', 'Error', MB_Ok | MB_IconStop )
						Return FALSE
					If SalIsNull(dfEnd)
						Set dfEnd = SalDateCurrent()
					Set sFalls = PutSelectToString("
							select	distinct f.fall_key
							from	bewegung b, fall f
							where	f.EINRICHT_ID = :nEinrichtId
							   and	f.GELOESCHT = 'N'
							   and	f.STATUS = 'A'
							   and	f.FALLART_KEY <> 'AM'
							   and	b.EINRICHT_ID = f.EINRICHT_ID
							   and	b.FALL_KEY = f.FALL_KEY
							   and	b.GELOESCHT = 'N'
							   and	b.BEW_ZEIT >= :frm21.dfStart
							   and	b.BEW_ZEIT <= :frm21.dfEnd
							   and	b.BA_KEY = 'EE'
							   and  	f.VIS_KAT_KEY in (
								select VIS_KAT_KEY from VIS_KAT
								where PATIENT = 'J' or BEGL_PERSON = 1
								) 
							",';')
					Set nFalls = SalStrTokenize( sFalls, '', ';', sFallKeys )
					!
					If nFalls <= 0
						Call SalMessageBox('No Falls!', 'Exchange', MB_Ok | MB_IconExclamation )
						Return TRUE
					!
					Call SalWaitCursor( TRUE )
					!
					Call _FillFileList( )
					Set nFiles = ArrayItemCountStr( sFiles )
					! init progress bar
					Set bOk = Progress_Open( )
					Set nProgressSteps = ( nFiles - 2 ) * nFalls ! w/o INFO & KRANKENHAUS
					Set bOk = bOk and Progress_SetRange(0, 100, nProgressSteps)
					!
					Set i = 0
					Set bOk = TRUE
					Set bCanceled = FALSE
					While bOk and i < nFiles and not bCanceled
						Set bOk = Progress_SetTitle( 'Building file: ' || sFiles[ i ] || '...' )
						Set bOk = WriteFile( sFiles[ i ] )
						! Call Progress_DoStep( )
						Set bCanceled = Progress_Query_bCancel( )
						Set i = i + 1
					If bOk and bArchive and not bCanceled
						Set bOk = ArchiveFiles( )
					If bOk and bEncrypt and not bCanceled
						Set bOk = EncryptFiles( )
					Call SalWaitCursor( FALSE )
					Call Progress_Destroy( )
					If bOk and not bCanceled
						Call SalMessageBox('Ready!', 'Exchange', MB_Ok | MB_IconAsterisk )
					Else
						Call SalMessageBox('Export was canceled!', 'Exchange', MB_Ok | MB_IconStop )
					Return bOk
			Function: WriteFile
				Description:
				Returns
					Boolean:
				Parameters
					String: sName
				Static Variables
				Local variables
					FunctionalVar: hsqlMulti
						Class: clsSqlHandleSelect
					File Handle: fhOut
					String: sFName
					Boolean: bOk
					Boolean: bFail
					Number: i
					Number: j
					Number: nSave_j
					Number: nErr
					Number: nLineCount
				Actions
					Set sFName = dfOutDir || sName || '.csv'
					If VisDosExist( sFName )
						If bBackup
							If VisDosExist( sBakDir ) or SalFileCreateDirectory( sBakDir )
								Call SalFileCopy( sFName, sBakDir || sName || '.bak', TRUE )
					!
					Set bOk = SalFileOpen( fhOut, sFName, OF_Create | OF_Write )
					If bOk
						! prepare arrays
						Call _FillFormatArray( sName )
						Call _FillSQLArray( sName )
						! fill first row
						Set i = 0
						Set sTmp = ''
						While i < nFields
							Set sTmp = sTmp || sNames[i] || ';'
							Set i = i + 1
						Set sTmp = SalStrLeftX( sTmp, SalStrLength( sTmp ) - 1 )
						Set bOk = SalFilePutStr( fhOut, sTmp )
						!
						! Set bOk = bOk and DoImmediate( "select KH_IK from EINRICHTUNG where EINRICHT_ID = :nEinrichtId into :s[0]" )
						! Set sIK = s[0]
						Set s[0] = StrX( dfIK )
						If sName = 'KRANKENHAUS'
							Set s[1] = dfKHName
							Set s[2] = cmbKHArt
							Set s[3] = cmbKHTrager
							Set s[4] = StrX( dfBetten )
							Set s[5] = dfMerkmal
							Set bOk = CheckAndWriteLine( fhOut, bFail )
							If bFail
								Set bOk = FALSE
						Else If sName = 'INFO'
							Set s[1] = cmbDatenErh
							Call SalDateToStr( dfErstell, s[2] )
							Set s[3] = dfEmail
							Set s[4] = dfGrouper
							Call SalDateToStr( dfKstVon, s[5] )
							Call SalDateToStr( dfKstBis, s[6] )
							Set s[7] = dfSoftLosung
							Set s[8] = dfVersKenn
							Set bOk = CheckAndWriteLine( fhOut, bFail )
							If bFail
								Set bOk = FALSE
						Else
							Set bOk = hsqlMulti.Connect()
							!
							Set i = 0
							While bOk and i < nFalls and not Progress_Query_bCancel( )
								Call SalArraySetUpperBound( s, 1, -1 ) ! clear previously created information
								Set s[0] = StrX( dfIK )
								Set s[1] = sFallKeys[i]
								Set sFallKey = s[1]
								Set bFail = FALSE
								Set j = 0
								! execute SQLs while not bSQLMultifetch: multifetch SQL forms several lines for one Fall
								While bOk and j < nSQLs and not bSQLMultifetch[j]
									Set bOk = ExecSQL( j, bFail )
									Set j = j + 1
								If bOk
									If j < nSQLs
										! open multifetch handle
										Set bOk = hsqlMulti.Initialize( sSQLs[ j ] )
										Set j = j + 1
										Set nSave_j = j
										Set nLineCount = 0
										Set bOk = bOk and hsqlMulti.PrepareAndExecute( )
										If hsqlMulti.nResultSetCount = 0 and bReqResultSet[ j ]
											Set bFail = TRUE
											Call LogError(sSQLErrMsg[j])
										While bOk and hsqlMulti.FetchNext( nErr, FALSE ) and nErr = FETCH_Ok
													and (nLineCount <= nMaxRepeat or nMaxRepeat < 0 )
											! all SQLs after multifetch are supposed to be single-fetch and depending on multifetch SQL
											While bOk and j < nSQLs
												Set bOk = ExecSQL( j, bFail )
												Set j = j + 1
											! write line to file
											Set bOk = CheckAndWriteLine( fhOut, bFail )
											Set j = nSave_j
											Set nLineCount = nLineCount + 1
									Else ! no multifetch
										Set bOk = CheckAndWriteLine( fhOut, bFail )
								Call Progress_DoStep()
								Set i = i +1
							Call hsqlMulti.Disconnect()
					Call SalArraySetUpperBound( s, 1, -1 ) ! clear previously created information
					Call SalFileClose( fhOut )
					Return bOk
			Function: ExecSQL
				Description:
				Returns
					Boolean: bOk
				Parameters
					Number: i
					Receive Boolean: bFail
				Static Variables
				Local variables
					Boolean: bOk
					Boolean: bExists
				Actions
					Set bOk = DoImmediateSingle( sSQLs[i], bExists )
					If bOk and not bExists and bReqResultSet[i]
						Call LogError(sSQLErrMsg[i])
						Set bFail = TRUE
					Return bOk
			Function: FormatField
				Description:
				Returns
					String:
				Parameters
					Number: i
					Receive Boolean: bOk
				Static Variables
				Local variables
					String: sF
				Actions
					Set sF = s[i]
					If sFormats[i] != ''
						! format conversions
						If SalFmtIsValidPicture( sFormats[i], FMT_Pic_DateTime )
							Set sF = SalFmtFormatDateTime( SalStrToDate( sF ), sFormats[i] )
					If SalStrLength( sF ) > nLengths[i]
						Set sF = SalStrLeftX( sF, nLengths[i] )
					Return sF
			Function: AddSQL
				Description:
				Returns
				Parameters
					String: sSQL
					Boolean: bReqSet
					String: sErrMsg
					Boolean: bMultifetch
				Static Variables
				Local variables
				Actions
					Set sSQLs[nSQLs] = sSQL
					Set bReqResultSet[nSQLs] = bReqSet
					Set sSQLErrMsg[nSQLs] = sErrMsg
					Set bSQLMultifetch[nSQLs] = bMultifetch
					Set nSQLs = nSQLs + 1
			Function: CheckAndWriteLine
				Description:
				Returns
					Boolean:
				Parameters
					File Handle: fh
					Receive Boolean: bFail
				Static Variables
				Local variables
					Number: i
					Boolean: bOk
					String: sLine
				Actions
					Set i = 0
					Set sLine = ''
					Set bOk = TRUE
					While i < nFields
						If bRequired[i] and not s[i]
							If sDefaults[i]
								Set s[i] = sDefaults[i]
							If not s[i]
								Call LogError( sErrMsg[i] )
								Set bFail = TRUE
						Set sLine = sLine || FormatField( i, bOk ) || ';'
						Set i = i + 1
					If bOk and not bFail
						Set sLine = SalStrLeftX( sLine, SalStrLength( sLine ) -1 ) ! delete last ';' symbol
						Set bOk = bOk and SalFilePutStr(fh, sLine)
					Return bOk
			Function: LogError
				Description:
				Returns
				Parameters
					String: sMsg
				Static Variables
				Local variables
					Number: nRow
				Actions
					Set nRow = SalTblInsertRow( tblMsg, TBL_MaxRow )
					Call SalTblSetContext( tblMsg, nRow )
					Call SalTblSetRowFlags ( tblMsg, nRow, ROW_New, FALSE )
					If sFallKey
						Set tblMsg.colFall = NumberX(sFallKey)
					Set tblMsg.colMsg = sMsg
					Call SalUpdateWindow( hWndForm )
			Function: ArchiveFiles
				Description:
				Returns
					Boolean:
				Parameters
				Static Variables
				Local variables
					File Handle: fh
					String: sTemp
					Number: i
					Number: n
					Boolean: bOk
				Actions
					Set n = ArrayItemCountStr( sFiles )
					Set i = 0
					Set sTemp = GalStrAddBackSlashX( VisDosGetEnvString( "TEMP" ) ) || 'arch.$$$'
					Set bOk = SalFileOpen( fh, sTemp, OF_Create | OF_Write )
					If bOk
						While bOk and i < n
							Set bOk = SalFilePutStr( fh, dfOutDir || sFiles[i] || '.csv' )
							Set i = i + 1
						Call SalFileClose( fh )
					If bOk
						If SalStrLowerX(GalStrExtractFileExt( sArchFile )) != 'zip'
							Set sArchFile = sArchFile || '.zip'
						If GalStrExtractPath( sArchFile ) = ''
							Set sArchFile = dfOutDir || sArchFile
						Set sArchCom = VisStrSubstitute( sArchCom, '~files~', sTemp )
						Set sArchCom = VisStrSubstitute( sArchCom, '~package~', sArchFile )
						Set bOk = SalLoadAppAndWait( '"' ||
									sArchiver || '" ' ||
									sArchCom,
									Window_NotVisible, n
								)
						If not bOk
							Call LogError( 'Cannot start archiver! Error code: ' || StrX( n ))
						Else
							Set bOk = n = 0
							If not bOk
								Call LogError( 'The archiver returned an error code: ' || StrX( n ))
						Call VisFileDelete( sTemp )
					Return bOk
			Function: EncryptFiles
				Description:
				Returns
				Parameters
				Static Variables
				Local variables
					Boolean: bOk
					Number: n
				Actions
					If GalStrExtractPath( sEncFile ) = ''
						Set sEncFile = dfOutDir || sEncFile
					Set sEncCom = VisStrSubstitute( sEncCom, '~recipient~', sEncRecipient )
					Set sEncCom = VisStrSubstitute( sEncCom, '~package~', sArchFile )
					Set sEncCom = VisStrSubstitute( sEncCom, '~encpackage~', sEncFile )
					Set bOk = SalLoadAppAndWait( '"' ||
								sEncryptor || '" ' ||
								sEncCom,
								Window_Normal, n
							)
					If not bOk
						Call LogError( 'Cannot start the encryptor! Error code: ' || StrX( n ))
					Else
						Set bOk = n = 0
						If not bOk
							Call LogError( 'The encryptor returned an error code: ' || StrX( n ))
					Return bOk
			Function: ReadSettings
				Description:
				Returns
				Parameters
				Static Variables
				Local variables
				Actions
					Set bArchive = GalConfig_GetBool( "P21", "Archive", TRUE, cfgSYSTEM | cfgNOCACHE )
					Set sArchiver = GalConfig_GetStr( "P21", "ArchiverPath", "pkzip25.exe", cfgSYSTEM | cfgNOCACHE )
					Set sArchCom = GalConfig_GetStr( "P21", "ArchiveCommand", '-add -attr=all -max  "~Package~" "@~Files~"', cfgSYSTEM | cfgNOCACHE )
					Set sArchFile = GalConfig_GetStr( "P21", "ArchivedFile", "P21", cfgSYSTEM | cfgNOCACHE )
					Set bEncrypt = GalConfig_GetBool( "P21", "Encrypt", FALSE, cfgSYSTEM | cfgNOCACHE )
					Set sEncryptor = GalConfig_GetStr( "P21", "EncryptorPath", "", cfgSYSTEM | cfgNOCACHE )
					Set sEncCom = GalConfig_GetStr( "P21", "EncryptCommand", "", cfgSYSTEM | cfgNOCACHE )
					Set sEncFile = GalConfig_GetStr( "P21", "EncryptedFile", "P21.gpg", cfgSYSTEM | cfgNOCACHE )
					Set sEncRecipient = GalConfig_GetStr( "P21", "EncRecipient", "", cfgSYSTEM | cfgNOCACHE )
					Set bBackup = GalConfig_GetBool( "P21", "DoBackup", TRUE, cfgSYSTEM | cfgNOCACHE )
					Set sBakDir = GalStrAddBackSlashX(GalConfig_GetStr("P21", "BakDir", "", cfgSYSTEM | cfgNOCACHE ))
					Set bAufnanlass = GalConfig_GetBool( "P21", "SetAufnAnlass", FALSE, cfgSYSTEM | cfgNOCACHE )
					Set sAufnanlass = GalConfig_GetStr( "P21", "AufnAnlass", "", cfgSYSTEM | cfgNOCACHE )
			Function: ClearLog
				Description:
				Returns
				Parameters
				Static Variables
				Local variables
				Actions
					Call SalTblReset( tblMsg )
					Call SalUpdateWindow( tblMsg )
		Window Parameters
		Window Variables
			String: sFallKeys[*]
			Number: nFalls
			String: sIK
			String: sFallKey
			!
			String: sFiles[*]
			!
			String: sNames[*]
			String: sFormats[*]
			Boolean: bRequired[*]
			Boolean: bHidden[*]
			Number: nLengths[*]
			String: sErrMsg[*]
			String: sDefaults[*]
			Number: nFields
			Number: nMaxRepeat
			!
			String: sSQLs[*]
			Number: nSQLs
			Boolean: bReqResultSet[*]
			Boolean: bSQLMultifetch[*]
			String: sSQLErrMsg[*]
			! settings
			Boolean: bArchive
			Boolean: bBackup
			Boolean: bEncrypt
			Boolean: bAufnanlass
			String: sArchiver
			String: sArchCom
			String: sArchFile
			String: sEncryptor
			String: sEncCom
			String: sEncFile
			String: sEncRecipient
			String: sBakDir
			String: sAufnanlass
			!
			Number: nProgressSteps
			String: sWinTitle
		Message Actions
			On SAM_CreateComplete
				Call SalSendClassMessage( SAM_CreateComplete, wParam, lParam )
				Call SalGetWindowText( hWndForm, sWinTitle, 100 )
				Call SalSetWindowText( hWndForm, sWinTitle || ' (v.' || s21_VERSION || ')' )
				!
				Set dfOutDir = GalConfig_GetStr( "P21", "OutputDir", "",  cfgSYSTEM | cfgNOCACHE )
				Call pbChOutDir.Init( dfOutDir, "Select a directory for export" )
				Set dfStart = GalConfig_GetDate( "P21", "StartDate", DATETIME_Null, cfgSYSTEM | cfgNOCACHE )
				Set dfEnd = GalConfig_GetDate( "P21", "EndDate", DATETIME_Null, cfgSYSTEM | cfgNOCACHE )
				! Restore previous data from INI 
				Set cmbDatenErh = GalConfig_GetStr( "P21", "DatenErh", "", cfgSYSTEM | cfgNOCACHE )
				Set dfEmail = GalConfig_GetStr( "P21", "Email", "", cfgSYSTEM | cfgNOCACHE )
				Set dfGrouper = GalConfig_GetStr( "P21", "DRGGrouper", "", cfgSYSTEM | cfgNOCACHE )
				Set dfKstVon = GalConfig_GetDate( "P21", "KstVon", DATETIME_Null, cfgSYSTEM | cfgNOCACHE )
				Set dfKstBis = GalConfig_GetDate( "P21", "KstBis", DATETIME_Null, cfgSYSTEM | cfgNOCACHE )
				Set dfSoftLosung = GalConfig_GetStr( "P21", "SoftLoesung", "", cfgSYSTEM | cfgNOCACHE )
				Call SalListSetSelect( cmbKHArt, GalConfig_GetInt( "P21", "KHArt", 0, cfgSYSTEM | cfgNOCACHE ) )
				Call SalListSetSelect( cmbKHTrager, GalConfig_GetInt( "P21", "KHTraeger", 0, cfgSYSTEM | cfgNOCACHE ) )
				Set dfMerkmal = GalConfig_GetStr( "P21", "Merkmal", "", cfgSYSTEM | cfgNOCACHE )
				! Populate from DB
				Call DoImmediate("
							select e.KH_IK, e.AUFGEST_BETTEN, a.NAME1 || ' ' || a.NAME2
							from ADRESSE a, EINRICHTUNG e
							where	EINRICHT_ID = :nEinrichtId
							   and	a.ADRESSE_ID = e.ADRESSE_ID
							into	:frm21.dfIK, :frm21.dfBetten, :frm21.dfKHName
						")
			On AM_Ok
				Call GalConfig_SetDate( "P21", "StartDate", dfStart, cfgSYSTEM )
				Call GalConfig_SetDate( "P21", "EndDate", dfEnd, cfgSYSTEM )
				Call GalConfig_SetStr( "P21", "OutputDir", dfOutDir,  cfgSYSTEM )
				!
				Call GalConfig_SetStr( "P21", "DatenErh", cmbDatenErh, cfgSYSTEM )
				Call GalConfig_SetStr( "P21", "Email", dfEmail, cfgSYSTEM )
				Call GalConfig_SetStr( "P21", "DRGGrouper", dfGrouper, cfgSYSTEM )
				Call GalConfig_SetDate( "P21", "KstVon", dfKstVon, cfgSYSTEM )
				Call GalConfig_SetDate( "P21", "KstBis", dfKstBis, cfgSYSTEM )
				Call GalConfig_SetStr( "P21", "SoftLoesung", dfSoftLosung, cfgSYSTEM )
				Call GalConfig_SetInt( "P21", "KHArt", SalListQuerySelection( cmbKHArt ), cfgSYSTEM )
				Call GalConfig_SetInt( "P21", "KHTraeger", SalListQuerySelection( cmbKHTrager ), cfgSYSTEM )
				Call GalConfig_SetStr( "P21", "Merkmal", dfMerkmal, cfgSYSTEM )
				!
				Call DoExport()
			On AM_Options
				Call SalModalDialog( dlgOptions21, hWndForm )
	Dialog Box: dlgOptions21
		Class: clsSimpleDialogBox
		Property Template:
		Class DLL Name:
		Title: Options
		Accessories Enabled? Class Default
		Visible? Class Default
		Display Settings
			Display Style? Class Default
			Visible at Design time? Yes
			Type of Dialog: Class Default
			Allow Dock to Parent? No
			Docking Orientation: All
			Window Location and Size
				Left: Default
				Top: Default
				Width:  5.25"
				Width Editable? Class Default
				Height: 4.344"
				Height Editable? Class Default
			Absolute Screen Location? Class Default
			Font Name: Class Default
			Font Size: Class Default
			Font Enhancement: Class Default
			Text Color: Class Default
			Background Color: Class Default
			Resizable? No
			Vertical Scroll? Yes
			Horizontal Scroll? Yes
		Description:
		Tool Bar
			Display Settings
				Display Style? Class Default
				Location? Class Default
				Visible? Class Default
				Size: Class Default
				Size Editable? Class Default
				Docking Toolbar? Class Default
				Toolbar Docking Orientation: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
				Resizable? Class Default
			Contents
		Contents
			Pushbutton: pbOk
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsPushbuttonOk
				Property Template:
				Class DLL Name:
				Title:
				Window Location and Size
					Left: 3.275"
					Top: 3.917"
					Width:  0.825"
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
				Button Appearance: Standard
				Message Actions
			Pushbutton: pbCancel
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsPushbuttonCancel
				Property Template:
				Class DLL Name:
				Title:
				Window Location and Size
					Left: 4.2"
					Top: 3.917"
					Width:  0.825"
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
				Button Appearance: Standard
				Message Actions
			Group Box: ZIP-archiver
				Resource Id: 56157
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsGroupBox
				Window Location and Size
					Left: 0.075"
					Top: 0.073"
					Width:  5.025"
					Width Editable? Class Default
					Height: 1.063"
					Height Editable? Class Default
				Visible? Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Check Box: cbArchive
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsCheckBox
				Property Template:
				Class DLL Name:
				Title: Archive files with
				Window Location and Size
					Left: 0.225"
					Top: 0.24"
					Width:  1.275"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
				Message Actions
			Data Field: dfArchiver
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 2048
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 1.55"
						Top: 0.24"
						Width:  3.075"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Pushbutton: pbChArchiver
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsPbChooseFile
				Property Template:
				Class DLL Name:
				Title:
				Window Location and Size
					Left: 4.675"
					Top: 0.219"
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
				Button Appearance: Standard
				Message Actions
			Background Text: Command line:
				Resource Id: 56158
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 0.225"
					Top: 0.573"
					Width:  Class Default
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfArchCom
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 2048
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 1.55"
						Top: 0.531"
						Width:  3.075"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Background Text: Result filename:
				Resource Id: 37784
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 0.225"
					Top: 0.854"
					Width:  Class Default
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfArchFile
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 2048
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 1.55"
						Top: 0.823"
						Width:  3.075"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Pushbutton: pbChArchFile
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsPbChooseFile
				Property Template:
				Class DLL Name:
				Title:
				Window Location and Size
					Left: 4.675"
					Top: 0.802"
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
				Button Appearance: Standard
				Message Actions
			Group Box: GPG-encryptor
				Resource Id: 56159
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsGroupBox
				Window Location and Size
					Left: 0.075"
					Top: 1.146"
					Width:  5.025"
					Width Editable? Class Default
					Height: 1.417"
					Height Editable? Class Default
				Visible? Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Check Box: cbEncrypt
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsCheckBox
				Property Template:
				Class DLL Name:
				Title: Encrypt files with
				Window Location and Size
					Left: 0.225"
					Top: 1.323"
					Width:  1.275"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
				Message Actions
			Data Field: dfEncryptor
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 2048
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 1.55"
						Top: 1.323"
						Width:  3.075"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Pushbutton: pbChEncryptor
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsPbChooseFile
				Property Template:
				Class DLL Name:
				Title:
				Window Location and Size
					Left: 4.675"
					Top: 1.302"
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
				Button Appearance: Standard
				Message Actions
			Background Text: Command line:
				Resource Id: 56160
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 0.225"
					Top: 1.656"
					Width:  Class Default
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfEncCom
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 2048
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 1.55"
						Top: 1.615"
						Width:  3.075"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Background Text: Result filename:
				Resource Id: 37785
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 0.225"
					Top: 1.938"
					Width:  Class Default
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfEncFile
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: 2048
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 1.55"
						Top: 1.906"
						Width:  3.075"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Pushbutton: pbChEncFile
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsPbChooseFile
				Property Template:
				Class DLL Name:
				Title:
				Window Location and Size
					Left: 4.675"
					Top: 1.885"
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
				Button Appearance: Standard
				Message Actions
			Background Text: Recipient:
				Resource Id: 36664
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 0.225"
					Top: 2.24"
					Width:  0.975"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfEncRecipient
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: Class Default
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 1.55"
						Top: 2.198"
						Width:  3.075"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Group Box: Export process
				Resource Id: 56161
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsGroupBox
				Window Location and Size
					Left: 0.075"
					Top: 2.635"
					Width:  5.025"
					Width Editable? Class Default
					Height: 1.188"
					Height Editable? Class Default
				Visible? Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Check Box: cbAufnanlass
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsCheckBox
				Property Template:
				Class DLL Name:
				Title: Substitute an empty Aufnahmeanlass with value:
				Window Location and Size
					Left: 0.2"
					Top: 2.865"
					Width:  3.175"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
				Message Actions
			Combo Box: cmbAufnanlass
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsComboNoEditPopulateOnCreate
				Property Template:
				Class DLL Name:
				Window Location and Size
					Left: 3.375"
					Top: 2.885"
					Width:  1.05"
					Width Editable? Class Default
					Height: 1.313"
					Height Editable? Class Default
				Visible? Class Default
				Editable? Class Default
				String Type: Class Default
				Maximum Data Length: Class Default
				Sorted? Class Default
				Always Show List? Class Default
				Vertical Scroll? Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
				Input Mask: Class Default
				List Initialization
				Message Actions
					On SAM_Create
						Set bWithoutSetFirst = TRUE
						Call Initialize( "
								select	ANLASS_KEY
								from	AUFNANLASS
								" )
						Call SalSendClassMessage( SAM_Create, wParam, lParam )
			Check Box: cbBackup
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsCheckBox
				Property Template:
				Class DLL Name:
				Title: Make backup if export file exists
				Window Location and Size
					Left: 0.2"
					Top: 3.156"
					Width:  2.275"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
				Message Actions
			Background Text: Backup directory:
				Resource Id: 56162
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsBackgroundText
				Window Location and Size
					Left: 0.2"
					Top: 3.458"
					Width:  1.225"
					Width Editable? Class Default
					Height: Class Default
					Height Editable? Class Default
				Visible? Class Default
				Justify: Class Default
				Font Name: Class Default
				Font Size: Class Default
				Font Enhancement: Class Default
				Text Color: Class Default
				Background Color: Class Default
			Data Field: dfBakDir
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsDataField
				Property Template:
				Class DLL Name:
				Data
					Maximum Data Length: Class Default
					Data Type: Class Default
					Editable? Class Default
				Display Settings
					Window Location and Size
						Left: 1.525"
						Top: 3.417"
						Width:  3.075"
						Width Editable? Class Default
						Height: Class Default
						Height Editable? Class Default
					Visible? Class Default
					Border? Class Default
					Justify: Class Default
					Format: Class Default
					Country: Class Default
					Font Name: Class Default
					Font Size: Class Default
					Font Enhancement: Class Default
					Text Color: Class Default
					Background Color: Class Default
					Input Mask: Class Default
				Message Actions
			Pushbutton: pbChBakDir
				Class Child Ref Key: 0
				Class ChildKey: 0
				Class: clsPbChooseDir
				Property Template:
				Class DLL Name:
				Title:
				Window Location and Size
					Left: 4.638"
					Top: 3.396"
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
				Button Appearance: Standard
				Message Actions
		Functions
			Function: ReadSettings
				Description:
				Returns
				Parameters
				Static Variables
				Local variables
				Actions
					Set cbArchive = GalConfig_GetBool( "P21", "Archive", TRUE, cfgSYSTEM | cfgNOCACHE )
					Set dfArchiver = GalConfig_GetStr( "P21", "ArchiverPath", "pkzip25.exe", cfgSYSTEM | cfgNOCACHE )
					Set dfArchCom = GalConfig_GetStr( "P21", "ArchiveCommand", "-add -attr=all -max  \"~package~\" \"@~files~\"", cfgSYSTEM | cfgNOCACHE )
					Set dfArchFile = GalConfig_GetStr( "P21", "ArchivedFile", "P21", cfgSYSTEM | cfgNOCACHE )
					Set cbEncrypt = GalConfig_GetBool( "P21", "Encrypt", FALSE, cfgSYSTEM | cfgNOCACHE )
					Set dfEncryptor = GalConfig_GetStr( "P21", "EncryptorPath", "gpg.exe", cfgSYSTEM | cfgNOCACHE )
					Set dfEncCom = GalConfig_GetStr( "P21", "EncryptCommand", "--output \"~encpackage~\" --encrypt --sign --recipient \"~recipient~\" \"~package~\"", cfgSYSTEM | cfgNOCACHE )
					Set dfEncFile = GalConfig_GetStr( "P21", "EncryptedFile", "P21", cfgSYSTEM | cfgNOCACHE )
					Set dfEncRecipient = GalConfig_GetStr( "P21", "EncRecipient", "", cfgSYSTEM | cfgNOCACHE )
					Set cbBackup = GalConfig_GetBool( "P21", "DoBackup", TRUE, cfgSYSTEM | cfgNOCACHE )
					Set dfBakDir = GalConfig_GetStr("P21", "BakDir", "", cfgSYSTEM | cfgNOCACHE )
					Set cbAufnanlass = GalConfig_GetBool( "P21", "SetAufnAnlass", FALSE, cfgSYSTEM | cfgNOCACHE )
					Set cmbAufnanlass = GalConfig_GetStr( "P21", "AufnAnlass", "", cfgSYSTEM | cfgNOCACHE )
			Function: SaveSettings
				Description:
				Returns
				Parameters
				Static Variables
				Local variables
				Actions
					Call GalConfig_SetBool( "P21", "Archive", cbArchive, cfgSYSTEM )
					Call GalConfig_SetStr( "P21", "ArchiverPath", dfArchiver, cfgSYSTEM )
					Call GalConfig_SetStr( "P21", "ArchiveCommand", dfArchCom, cfgSYSTEM )
					Call GalConfig_SetStr( "P21", "ArchivedFile", dfArchFile, cfgSYSTEM )
					Call GalConfig_SetBool( "P21", "Encrypt", cbEncrypt, cfgSYSTEM )
					Call GalConfig_SetStr( "P21", "EncryptorPath", dfEncryptor, cfgSYSTEM )
					Call GalConfig_SetStr( "P21", "EncryptCommand", dfEncCom, cfgSYSTEM )
					Call GalConfig_SetStr( "P21", "EncryptedFile", dfEncFile, cfgSYSTEM )
					Call GalConfig_SetStr( "P21", "EncRecipient", dfEncRecipient, cfgSYSTEM )
					Call GalConfig_SetBool( "P21", "DoBackup", cbBackup, cfgSYSTEM )
					Call GalConfig_SetStr( "P21", "BakDir", dfBakDir, cfgSYSTEM )
					Call GalConfig_SetBool( "P21", "SetAufnAnlass", cbAufnanlass, cfgSYSTEM )
					Call GalConfig_SetStr( "P21", "AufnAnlass", cmbAufnanlass, cfgSYSTEM )
		Window Parameters
		Window Variables
		Message Actions
			On SAM_CreateComplete
				Call pbChArchiver.Init( dfArchiver, "Select an archive program", FALSE )
				Call pbChArchiver.AddFilter( '*.exe', 'Program files (*.exe)')
				Call pbChArchFile.Init( dfArchFile, "Select a result file", TRUE )
				Call pbChArchFile.AddFilter( '*.*', 'All files (*.*)')
				Call pbChEncryptor.Init( dfEncryptor, "Select an encryption program", FALSE )
				Call pbChEncryptor.AddFilter( '*.exe', 'Program files (*.exe)')
				Call pbChEncFile.Init( dfEncFile, "Select a result file", TRUE )
				Call pbChEncFile.AddFilter( '*.*', 'All files (*.*)')
				Call pbChBakDir.Init( dfBakDir, "Select a directory for backup" )
				!
				Call ReadSettings()
				Return SalSendClassMessage( SAM_CreateComplete, wParam, lParam )
			On AM_Ok
				Call SaveSettings()
				Call SalEndDialog( hWndForm, TRUE )
			On AM_Cancel
				Call SalEndDialog( hWndForm, FALSE )
