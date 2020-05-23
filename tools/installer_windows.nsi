;
; Copyright(C) 2018-2019 taozuhong(https://github.com/taozuhong)
; Important:
;   These functions are a part of the Kangaroo tool suite;
;   copyright taozuhong. 2018, 2019.  All rights reserved.
;
; Author:    taozuhong
; Created:   1.8.2019
;

Unicode true
!define APP_NAME "kangaroo"
!define APP_DESC "Database / Admin / SQL Client"
!define APP_WEBSITE "https://dbkangaroo.github.io/"
!define APP_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}"
!define APP_INSTDIR_KEY "Software\${APP_NAME}"
!define APP_INSTDIR_VALUENAME "InstDir"

;--------------------------------
;Include Modern UI

!define MUI_CUSTOMFUNCTION_GUIINIT custom_gui_init
!include "x64.nsh"
!include "MUI2.nsh"
!include "FileFunc.nsh"

;--------------------------------
;General
BrandingText "Kangaroo development team"
Name "${APP_NAME} $%VERSION%"
OutFile "..\build\${APP_NAME}_$%VERSION%_$%PROCESSOR_ARCHITECTURE%.exe"

;Default compress method
SetCompressor /SOLID /FINAL lzma
SetCompressorDictSize 32

;Default installation folder
InstallDir "$PROGRAMFILES64\${APP_NAME}"

;Get installation folder from registry if available
InstallDirRegKey HKLM "${APP_INSTDIR_KEY}" ${APP_INSTDIR_VALUENAME}

;Request application privileges for Windows Vista
RequestExecutionLevel admin


;--------------------------------
;Interface Settings

!define MUI_ICON "..\data\assets\kangaroo.ico"
!define MUI_UNICON "..\data\assets\kangaroo.ico"
!define MUI_ABORTWARNING
!define MUI_FINISHPAGE_NOAUTOCLOSE

; finish page setting
!define MUI_FINISHPAGE_RUN "$INSTDIR\bin\${APP_NAME}.exe"
!define MUI_FINISHPAGE_SHOWREADME ${APP_WEBSITE}
!define MUI_FINISHPAGE_SHOWREADME_TEXT "${APP_NAME} website"
!define MUI_FINISHPAGE_LINK "${APP_NAME} website"
!define MUI_FINISHPAGE_LINK_LOCATION ${APP_WEBSITE}
!define MUI_FINISHPAGE_NOREBOOTSUPPORT

;--------------------------------
;Language Selection Dialog Settings

;Show all languages, despite user's codepage
!define MUI_LANGDLL_ALLLANGUAGES

;Remember the installer language
!define MUI_LANGDLL_REGISTRY_ROOT "HKLM" 
!define MUI_LANGDLL_REGISTRY_KEY "${APP_INSTDIR_KEY}" 
!define MUI_LANGDLL_REGISTRY_VALUENAME "Installer Language"


;--------------------------------
;Pages

!insertmacro MUI_PAGE_WELCOME
;!insertmacro MUI_PAGE_LICENSE "${__FILEDIR__}\..\build\windows\share\doc\lgpl-3.0.txt"
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_UNPAGE_WELCOME
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_UNPAGE_FINISH


;--------------------------------
;Languages

!insertmacro MUI_LANGUAGE "English" ; The first language is the default language
!insertmacro MUI_LANGUAGE "French"
!insertmacro MUI_LANGUAGE "German"
!insertmacro MUI_LANGUAGE "Spanish"
!insertmacro MUI_LANGUAGE "SpanishInternational"
!insertmacro MUI_LANGUAGE "SimpChinese"
!insertmacro MUI_LANGUAGE "TradChinese"
!insertmacro MUI_LANGUAGE "Japanese"
!insertmacro MUI_LANGUAGE "Korean"
!insertmacro MUI_LANGUAGE "Italian"
!insertmacro MUI_LANGUAGE "Dutch"
!insertmacro MUI_LANGUAGE "Danish"
!insertmacro MUI_LANGUAGE "Swedish"
!insertmacro MUI_LANGUAGE "Norwegian"
!insertmacro MUI_LANGUAGE "NorwegianNynorsk"
!insertmacro MUI_LANGUAGE "Finnish"
!insertmacro MUI_LANGUAGE "Greek"
!insertmacro MUI_LANGUAGE "Russian"
!insertmacro MUI_LANGUAGE "Portuguese"
!insertmacro MUI_LANGUAGE "PortugueseBR"
!insertmacro MUI_LANGUAGE "Polish"
!insertmacro MUI_LANGUAGE "Ukrainian"
!insertmacro MUI_LANGUAGE "Czech"
!insertmacro MUI_LANGUAGE "Slovak"
!insertmacro MUI_LANGUAGE "Croatian"
!insertmacro MUI_LANGUAGE "Bulgarian"
!insertmacro MUI_LANGUAGE "Hungarian"
!insertmacro MUI_LANGUAGE "Thai"
!insertmacro MUI_LANGUAGE "Romanian"
!insertmacro MUI_LANGUAGE "Latvian"
!insertmacro MUI_LANGUAGE "Macedonian"
!insertmacro MUI_LANGUAGE "Estonian"
!insertmacro MUI_LANGUAGE "Turkish"
!insertmacro MUI_LANGUAGE "Lithuanian"
!insertmacro MUI_LANGUAGE "Slovenian"
!insertmacro MUI_LANGUAGE "Serbian"
!insertmacro MUI_LANGUAGE "SerbianLatin"
!insertmacro MUI_LANGUAGE "Arabic"
!insertmacro MUI_LANGUAGE "Farsi"
!insertmacro MUI_LANGUAGE "Hebrew"
!insertmacro MUI_LANGUAGE "Indonesian"
!insertmacro MUI_LANGUAGE "Mongolian"
!insertmacro MUI_LANGUAGE "Luxembourgish"
!insertmacro MUI_LANGUAGE "Albanian"
!insertmacro MUI_LANGUAGE "Breton"
!insertmacro MUI_LANGUAGE "Belarusian"
!insertmacro MUI_LANGUAGE "Icelandic"
!insertmacro MUI_LANGUAGE "Malay"
!insertmacro MUI_LANGUAGE "Bosnian"
!insertmacro MUI_LANGUAGE "Kurdish"
!insertmacro MUI_LANGUAGE "Irish"
!insertmacro MUI_LANGUAGE "Uzbek"
!insertmacro MUI_LANGUAGE "Galician"
!insertmacro MUI_LANGUAGE "Afrikaans"
!insertmacro MUI_LANGUAGE "Catalan"
!insertmacro MUI_LANGUAGE "Esperanto"
!insertmacro MUI_LANGUAGE "Asturian"
!insertmacro MUI_LANGUAGE "Basque"
!insertmacro MUI_LANGUAGE "Pashto"
!insertmacro MUI_LANGUAGE "ScotsGaelic"
!insertmacro MUI_LANGUAGE "Georgian"
!insertmacro MUI_LANGUAGE "Vietnamese"
!insertmacro MUI_LANGUAGE "Welsh"
!insertmacro MUI_LANGUAGE "Armenian"
!insertmacro MUI_LANGUAGE "Corsican"
!insertmacro MUI_LANGUAGE "Tatar"
!insertmacro MUI_LANGUAGE "Hindi"


;--------------------------------
;Reserve Files
  
;If you are using solid compression, files that are required before
;the actual installation should be stored first in the data block,
;because this will make your installer start faster.
!insertmacro MUI_RESERVEFILE_LANGDLL


Section "Install Kangaroo"
    SectionIn RO        ; required and readonly
    SetShellVarContext all

    SetOutPath "$INSTDIR"
    File /r "..\build\windows\*.*"

    ; Store installation folder
    WriteRegStr HKLM "${APP_INSTDIR_KEY}" "${APP_INSTDIR_VALUENAME}" $INSTDIR

    ; Register supported file extensions
    ; (generated using gen_supported_types.py)
    !define APP_ASSOC_KEY "Software\${APP_NAME}\${APP_NAME}\Capabilities\FileAssociations"
    WriteRegStr HKLM "${APP_ASSOC_KEY}" ".db" "${APP_NAME}.assoc.ANY"
    WriteRegStr HKLM "${APP_ASSOC_KEY}" ".sqlite" "${APP_NAME}.assoc.ANY"

    ; Create uninstaller
    WriteUninstaller "$INSTDIR\uninstall.exe"

    ; Create start menu shortcuts
    CreateDirectory "$SMPROGRAMS\${APP_NAME}"
    CreateShortCut "$SMPROGRAMS\${APP_NAME}\${APP_NAME}.lnk" "$INSTDIR\bin\${APP_NAME}.exe" "" "$INSTDIR\bin\${APP_NAME}.ico" 0
SectionEnd

Section "Desktop Shortcut"
    SetShellVarContext current
    CreateShortCut "$DESKTOP\Kangaroo.lnk" "$INSTDIR\bin\${APP_NAME}.exe" "" "$INSTDIR\bin\${APP_NAME}.ico" 0
SectionEnd

;--------------------------------
;Installer Functions

Function .onInit    
    ${If} ${RunningX64}
        SetRegView 64
    ${Else}
        SetRegView 32
    ${EndIf}

    !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Function custom_gui_init
    BringToFront

    ; Read the install dir and set it
    Var /GLOBAL instdir_temp
    Var /GLOBAL APP_UNINST_BIN_temp
    
    ${If} ${RunningX64}
        SetRegView 64
    ${Else}
        SetRegView 32
    ${EndIf}

    ReadRegStr $instdir_temp HKLM "${APP_INSTDIR_KEY}" "${APP_INSTDIR_VALUENAME}"
    ${If} $instdir_temp != ""
        StrCpy $INSTDIR $instdir_temp
    ${EndIf}

    StrCpy $APP_UNINST_BIN_temp "$INSTDIR\uninstall.exe"

    ; try to un-install existing installations first
    IfFileExists "$INSTDIR" do_uninst do_continue
    do_uninst:
        ; instdir exists
        IfFileExists "$APP_UNINST_BIN_temp" exec_uninst rm_instdir
        exec_uninst:
            ; uninstall.exe exists, execute it and
            ; if it returns success proceed, otherwise abort the
            ; installer (uninstall aborted by user for example)
            ExecWait '"$APP_UNINST_BIN_temp" _?=$INSTDIR' $R1
            ; uninstall succeeded, since the uninstall.exe is still there
            ; goto rm_instdir as well
            StrCmp $R1 0 rm_instdir
            ; uninstall failed
            Abort
        rm_instdir:
            ; either the uninstaller was successfull or
            ; the uninstaller.exe wasn't found
            RMDir /r "$INSTDIR"
    do_continue:
        ; the instdir shouldn't exist from here on

    BringToFront
FunctionEnd

Section "Uninstall"
    SetShellVarContext all
    SetAutoClose true

    ; Remove start menu entries
    Delete "$SMPROGRAMS\${APP_NAME}\${APP_NAME}.lnk"
    RMDir "$SMPROGRAMS\${APP_NAME}"

    ; Remove application registration and file assocs
    DeleteRegKey HKLM "Software\Classes\${APP_NAME}.assoc.ANY"
    DeleteRegKey HKLM "Software\${APP_NAME}"
    DeleteRegValue HKLM "Software\RegisteredApplications" "${APP_NAME}"

    ; Remove app paths
    DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\App Paths\${APP_NAME}.exe"

    ; Delete installation related keys
    DeleteRegKey HKLM "${APP_UNINST_KEY}"
    DeleteRegKey HKLM "${APP_INSTDIR_KEY}"

    ; Delete files
    RMDir /r "$INSTDIR"
SectionEnd

;--------------------------------
;Uninstaller Functions

Function un.onInit
    ${If} ${RunningX64}
        SetRegView 64
    ${Else}
        SetRegView 32
    ${EndIf}

    !insertmacro MUI_UNGETLANGUAGE
    
FunctionEnd