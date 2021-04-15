﻿; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
#define MyAppName "PyScripter"
#define MyAppVersion "3.6.4"
#define OSPlatform "x64"
#define MyAppPublisherURL="https://sourceforge.net/projects/pyscripter/"
#define MyAppSupportURL="https://github.com/pyscripter/pyscripter"
#define MyAppUpdatesURL="https://sourceforge.net/projects/pyscripter/"

[Setup]
AppName={#MyAppName}
AppId={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion} ({#OSPlatform})
AppPublisher={#MyAppName}
AppPublisherURL={#MyAppPublisherURL}
AppSupportURL={#MyAppSupportURL}
AppUpdatesURL={#MyAppUpdatesURL}
DefaultDirName={commonpf}\{#MyAppName}
DefaultGroupName={#MyAppName}-{#OSPlatform}
OutputDir=Output
OutputBaseFilename={#MyAppName}-{#MyAppVersion}-{#OSPlatform}-Setup
Compression=lzma/Max
SolidCompression=true
ChangesAssociations=true
UninstallDisplayIcon={app}\{#MyAppName}.exe
PrivilegesRequired=poweruser
AppCopyright=(C) Kiriakos Vlahos
;WizardStyle = modern
#if OSPlatform == "x64"
ArchitecturesAllowed={#OSPlatform}
ArchitecturesInstallIn64BitMode={#OSPlatform}
#endif

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"; InfoAfterFile: "locale\en\AfterInstallPyScripter-{#OSPlatform}.txt"
Name: "de"; MessagesFile: "compiler:\Languages\German.isl"; InfoAfterFile: "locale\de\AfterInstallPyScripter-{#OSPlatform}.txt"
Name: "el"; MessagesFile: "locale\el\Greek.isl"; InfoAfterFile: "locale\el\AfterInstallPyScripter-{#OSPlatform}.txt"
Name: "fa"; MessagesFile: "locale\el\Farsi.isl"; InfoAfterFile: "locale\el\AfterInstallPyScripter-{#OSPlatform}.txt"
Name: "it"; MessagesFile: "compiler:\Languages\Italian.isl"; InfoAfterFile: "locale\it\AfterInstallPyScripter-{#OSPlatform}.txt"
Name: "ja"; MessagesFile: "compiler:\Languages\Japanese.isl"; InfoAfterFile: "locale\ja\AfterInstallPyScripter-{#OSPlatform}.txt"

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: fileexplorercontextmenu; Description: {cm:ShellIntegrationEditwithPyScripter}; GroupDescription: {cm:ShellIntegration}:

[Files]
Source: ..\PyScripter.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\PyScripter.chm; DestDir: {app}; Flags: ignoreversion
Source: ..\Source\PyProject.ico; DestDir: {app}
Source: ..\Lib\rpyc.zip; DestDir: {app}\Lib
; localization
Source: ..\locale\default.pot; DestDir: {app}\locale
Source: ..\locale\languagecodes.mo; DestDir: {app}\locale
Source: ..\locale\languagecodes.po; DestDir: {app}\locale
Source: ..\locale\languages.pot; DestDir: {app}\locale
Source: ..\locale\ar\LC_MESSAGES\default.mo; DestDir: {app}\locale\ar\LC_MESSAGES\
Source: ..\locale\ar\LC_MESSAGES\default.po; DestDir: {app}\locale\ar\LC_MESSAGES\
Source: ..\locale\ar\LC_MESSAGES\languages.mo; DestDir: {app}\locale\ar\LC_MESSAGES\
Source: ..\locale\ar\LC_MESSAGES\languages.po; DestDir: {app}\locale\ar\LC_MESSAGES\
Source: ..\locale\de\LC_MESSAGES\default.mo; DestDir: {app}\locale\de\LC_MESSAGES\
Source: ..\locale\de\LC_MESSAGES\default.po; DestDir: {app}\locale\de\LC_MESSAGES\
Source: ..\locale\de\LC_MESSAGES\languages.mo; DestDir: {app}\locale\de\LC_MESSAGES\
Source: ..\locale\de\LC_MESSAGES\languages.po; DestDir: {app}\locale\de\LC_MESSAGES\
Source: ..\locale\el\LC_MESSAGES\default.mo; DestDir: {app}\locale\el\LC_MESSAGES\
Source: ..\locale\el\LC_MESSAGES\default.po; DestDir: {app}\locale\el\LC_MESSAGES\
Source: ..\locale\el\LC_MESSAGES\languages.mo; DestDir: {app}\locale\el\LC_MESSAGES\
Source: ..\locale\el\LC_MESSAGES\languages.po; DestDir: {app}\locale\el\LC_MESSAGES\
Source: ..\locale\ja\LC_MESSAGES\default.mo; DestDir: {app}\locale\ja\LC_MESSAGES\
Source: ..\locale\ja\LC_MESSAGES\default.po; DestDir: {app}\locale\ja\LC_MESSAGES\
Source: ..\locale\ja\LC_MESSAGES\languages.mo; DestDir: {app}\locale\ja\LC_MESSAGES\
Source: ..\locale\ja\LC_MESSAGES\languages.po; DestDir: {app}\locale\ja\LC_MESSAGES\
Source: ..\locale\sk\LC_MESSAGES\default.mo; DestDir: {app}\locale\sk\LC_MESSAGES\
Source: ..\locale\sk\LC_MESSAGES\default.po; DestDir: {app}\locale\sk\LC_MESSAGES\
Source: ..\locale\sk\LC_MESSAGES\languages.mo; DestDir: {app}\locale\sk\LC_MESSAGES\
Source: ..\locale\sk\LC_MESSAGES\languages.po; DestDir: {app}\locale\sk\LC_MESSAGES\
Source: ..\locale\zh\LC_MESSAGES\default.mo; DestDir: {app}\locale\zh\LC_MESSAGES\
Source: ..\locale\zh\LC_MESSAGES\default.po; DestDir: {app}\locale\zh\LC_MESSAGES\
Source: ..\locale\zh\LC_MESSAGES\languages.mo; DestDir: {app}\locale\zh\LC_MESSAGES\
Source: ..\locale\zh\LC_MESSAGES\languages.po; DestDir: {app}\locale\zh\LC_MESSAGES\
Source: ..\locale\es\LC_MESSAGES\default.mo; DestDir: {app}\locale\es\LC_MESSAGES\
Source: ..\locale\es\LC_MESSAGES\default.po; DestDir: {app}\locale\es\LC_MESSAGES\
Source: ..\locale\es\LC_MESSAGES\languages.mo; DestDir: {app}\locale\es\LC_MESSAGES\
Source: ..\locale\es\LC_MESSAGES\languages.po; DestDir: {app}\locale\es\LC_MESSAGES\
Source: ..\locale\fa_IR\LC_MESSAGES\default.mo; DestDir: {app}\locale\fr\LC_MESSAGES\
Source: ..\locale\fa_IR\LC_MESSAGES\default.po; DestDir: {app}\locale\fr\LC_MESSAGES\
Source: ..\locale\fa_IR\LC_MESSAGES\languages.mo; DestDir: {app}\locale\fr\LC_MESSAGES\
Source: ..\locale\fa_IR\LC_MESSAGES\languages.po; DestDir: {app}\locale\fr\LC_MESSAGES\
Source: ..\locale\fr\LC_MESSAGES\default.mo; DestDir: {app}\locale\fr\LC_MESSAGES\
Source: ..\locale\fr\LC_MESSAGES\default.po; DestDir: {app}\locale\fr\LC_MESSAGES\
Source: ..\locale\fr\LC_MESSAGES\languages.mo; DestDir: {app}\locale\fr\LC_MESSAGES\
Source: ..\locale\fr\LC_MESSAGES\languages.po; DestDir: {app}\locale\fr\LC_MESSAGES\
Source: ..\locale\it\LC_MESSAGES\default.mo; DestDir: {app}\locale\it\LC_MESSAGES\
Source: ..\locale\it\LC_MESSAGES\default.po; DestDir: {app}\locale\it\LC_MESSAGES\
Source: ..\locale\it\LC_MESSAGES\languages.mo; DestDir: {app}\locale\it\LC_MESSAGES\
Source: ..\locale\it\LC_MESSAGES\languages.po; DestDir: {app}\locale\it\LC_MESSAGES\
Source: ..\locale\pt_PT\LC_MESSAGES\default.mo; DestDir: {app}\locale\pt_PT\LC_MESSAGES\
Source: ..\locale\pt_PT\LC_MESSAGES\default.po; DestDir: {app}\locale\pt_PT\LC_MESSAGES\
Source: ..\locale\pt_PT\LC_MESSAGES\languages.mo; DestDir: {app}\locale\pt_PT\LC_MESSAGES\
Source: ..\locale\pt_PT\LC_MESSAGES\languages.po; DestDir: {app}\locale\pt_PT\LC_MESSAGES\
Source: ..\locale\pt_BR\LC_MESSAGES\default.mo; DestDir: {app}\locale\pt_BR\LC_MESSAGES\
Source: ..\locale\pt_BR\LC_MESSAGES\default.po; DestDir: {app}\locale\pt_BR\LC_MESSAGES\
Source: ..\locale\pt_BR\LC_MESSAGES\languages.mo; DestDir: {app}\locale\pt_BR\LC_MESSAGES\
Source: ..\locale\pt_BR\LC_MESSAGES\languages.po; DestDir: {app}\locale\pt_BR\LC_MESSAGES\
Source: ..\locale\ru\LC_MESSAGES\default.mo; DestDir: {app}\locale\ru\LC_MESSAGES\
Source: ..\locale\ru\LC_MESSAGES\default.po; DestDir: {app}\locale\ru\LC_MESSAGES\
Source: ..\locale\ru\LC_MESSAGES\languages.mo; DestDir: {app}\locale\ru\LC_MESSAGES\
Source: ..\locale\ru\LC_MESSAGES\languages.po; DestDir: {app}\locale\ru\LC_MESSAGES\
Source: ..\locale\kab\LC_MESSAGES\default.mo; DestDir: {app}\locale\kab\LC_MESSAGES\
Source: ..\locale\kab\LC_MESSAGES\default.po; DestDir: {app}\locale\kab\LC_MESSAGES\
Source: ..\locale\kab\LC_MESSAGES\languages.mo; DestDir: {app}\locale\kab\LC_MESSAGES\
Source: ..\locale\kab\LC_MESSAGES\languages.po; DestDir: {app}\locale\kab\LC_MESSAGES\
Source: ..\locale\uk\LC_MESSAGES\default.po; DestDir: {app}\locale\uk\LC_MESSAGES\
Source: ..\locale\uk\LC_MESSAGES\default.mo; DestDir: {app}\locale\uk\LC_MESSAGES\
Source: ..\locale\uk\LC_MESSAGES\languages.mo; DestDir: {app}\locale\uk\LC_MESSAGES\
Source: ..\locale\uk\LC_MESSAGES\languages.po; DestDir: {app}\locale\uk\LC_MESSAGES\
;Ini Files
Source: "PyScripter.ini"; DestDir: "{commonappdata}\PyScripter"
; Startup scripts
Source: ..\Scripts\pyscripter_init.py; DestDir: {commonappdata}\PyScripter
Source: ..\Scripts\python_init.py; DestDir: {commonappdata}\PyScripter
; Highlighters
Source: "..\Highlighters\Autumn_dark.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Black Pastel.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_3.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_4.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_5.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_eos.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_gedit.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_muted.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_oblivion.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_obsidian.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_terminal.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_waher.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_zenburn.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\DarkHighlight.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\DarkHighlight2.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Darthy_sand_light.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Default.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Frontenddev.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Gedit Original Oblivion.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Greyish_dark.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Havenjark.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\IDLEHighlighting.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\IDLEHighlightingv2.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\IDLEHighlightingv3.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Lnkpot.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Meadow.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\MochaHighlight.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Monokai.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Mr.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\NightLion Aptana Theme.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Notepad++ Like.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Oblivion.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Obsidian.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Pastel.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\RecognEyes.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Retta.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Schuss.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Skycool_light.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Ski.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Solarized Dark.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Solarized Light.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Solarized_dark_edit.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Solarized_light_edit.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Sublime Text 2.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Sunburst.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Tango.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Vibrant Ink.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Wasp_night.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Wombat.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Zenburn.ini"; DestDir: "{commonappdata}\PyScripter\Highlighters"
; Styles
Source: "..\Styles\AquaLightSlate.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\CalypsoSE.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\Copper.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\CopperDark.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\FlatUILight.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\Glossy.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\Glow.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\IcebergClassico.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\LavenderClassico.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\LuckyPoint.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\MaterialOxfordBlue.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\MaterialPatternsBlue.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\Radiant.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\Sky.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\SlateClassico.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\TabletDark.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\Vapor.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\Windows10.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\Windows10BlackPearl.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\Windows10BlueWhale.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\Windows10ClearDay.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\Windows10Dark.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\Windows10Malibu.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\Windows10SlateGray.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"
Source: "..\Styles\Zircon.vsf"; DestDir: "{commonappdata}\PyScripter\Styles"

[Icons]
Name: {group}\PyScripter; Filename: {app}\PyScripter.exe
Name: {group}\{cm:PyScripterHelp}; Filename: {app}\PyScripter.chm
Name: {group}\{cm:UninstallProgram,PyScripter}; Filename: {uninstallexe}
Name: {commondesktop}\PyScripter; Filename: {app}\PyScripter.exe; Tasks: desktopicon
Name: {commonappdata}\Microsoft\Internet Explorer\Quick Launch\PyScripter; Filename: {app}\PyScripter.exe; Tasks: quicklaunchicon

[Registry]
Root: HKCR; Subkey: Python.File\shell\Edit with PyScripter; ValueType: string; ValueData: {cm:EditwithPyScripter}; Flags: deletekey uninsdeletekey; Tasks: fileexplorercontextmenu
Root: HKCR; Subkey: Python.File\shell\Edit with PyScripter\command; ValueType: string; ValueData: """{app}\PyScripter.exe"" ""%1"""; Flags: uninsdeletekey; Tasks: fileexplorercontextmenu
Root: HKCR; SubKey: .psproj; ValueType: string; ValueData: PyScripter project; Flags: uninsdeletekey
Root: HKCR; SubKey: PyScripter project; ValueType: string; ValueData: PyScripter project file; Flags: uninsdeletekey
Root: HKCR; SubKey: PyScripter project\Shell\Open\Command; ValueType: string; ValueData: """{app}\PyScripter.exe"" --PROJECT ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: PyScripter project\DefaultIcon; ValueType: string; ValueData: {app}\PyProject.ico,-1; Flags: uninsdeletevalue
; IE 11 mode (https://weblog.west-wind.com/posts/2011/may/21/web-browser-control-specifying-the-ie-version)
Root: HKLM; Subkey: "Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION"; ValueType: dword; ValueName: "PyScripter.exe"; ValueData: "11001"; Flags: uninsdeletekey createvalueifdoesntexist
; IE DPI aware (https://stackoverflow.com/questions/38754354/wpf-web-browser-control-and-dpi-scaling/40657760)
Root: HKLM; Subkey: "Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_96DPI_PIXEL"; ValueType: dword; ValueName: "PyScripter.exe"; ValueData: "1"; Flags: uninsdeletekey createvalueifdoesntexist

[Run]
Filename: {app}\PyScripter.exe; Description: {cm:LaunchProgram,PyScripter}; Flags: nowait postinstall skipifsilent

[CustomMessages]
#include "locale\en\InstallMessages.txt"
#include "locale\de\InstallMessages.txt"
#include "locale\el\InstallMessages.txt"
#include "locale\fa\InstallMessages.txt"
#include "locale\it\InstallMessages.txt"
#include "locale\ja\InstallMessages.txt"

;#expr SaveToFile(AddBackslash(SourcePath) + "Preprocessed.iss")