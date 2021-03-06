; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "��ѧ��"
#define MyAppVersion "6.0.2"
#define MyAppPublisher "ya-soft.com, Inc."
#define MyAppURL "https://github.com/xland/xiangxuema"
#define MyAppExeName "xiangxuema.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{26AE4857-755C-40F8-8F79-EF9B776C25D5}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\xiangxuema
DisableProgramGroupPage=yes
OutputDir=E:\project\xiangxuema\innoOutput
OutputBaseFilename=setup
SetupIconFile=E:\project\xiangxuema\icon.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "ChineseSimplified"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "E:\project\xiangxuema\build\xxm\win64\xiangxuema.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\ui\*"; DestDir: "{app}\ui"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\project\xiangxuema\build\xxm\win64\locales\*"; DestDir: "{app}\locales"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\project\xiangxuema\build\xxm\win64\swiftshader\*"; DestDir: "{app}\swiftshader"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\project\xiangxuema\build\xxm\win64\credits.html"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\d3dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\ffmpeg.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\icudtl.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\libEGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\libGLESv2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\natives_blob.bin"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\node.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\notification_helper.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\nw.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\nw_100_percent.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\nw_200_percent.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\nw_elf.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\package.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\resources.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\start.js"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\v8_context_snapshot.bin"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\project\xiangxuema\build\xxm\win64\xiangxuema.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

