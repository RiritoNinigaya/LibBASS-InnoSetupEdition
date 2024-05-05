; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Code]
function BASS_Init(device: Integer; freq, flags: DWORD; win: hwnd; CLSID: Integer): Boolean;
external 'BASS_Init@files:bass.dll stdcall';
 
function BASS_StreamCreateFile(mem: BOOL; f: PAnsiChar; offset1: DWORD; offset2: DWORD; length1: DWORD; length2: DWORD; flags: DWORD): DWORD;
external 'BASS_StreamCreateFile@files:bass.dll stdcall';
 
function BASS_Start(): Boolean;
external 'BASS_Start@files:bass.dll stdcall';
 
function BASS_ChannelPlay(handle: DWORD; restart: BOOL): Boolean;
external 'BASS_ChannelPlay@files:bass.dll stdcall';

function BASS_Stop(): Boolean;
external 'BASS_Stop@files:bass.dll stdcall';
 
function BASS_Free(): Boolean;
external 'BASS_Free@files:bass.dll stdcall';

const
  BASS_SAMPLE_LOOP = 4;
  var
  mp3Handle: HWND;
  mp3Name: string;

  procedure Bass_Begin(dev_id: Integer, frequence, flags: DWORD, window: hwnd, CLSID: Integer);
  begin
    BASS_Init(dev_id, frequence, flags, window, CLSID)
  end;
  procedure BASS_START()
  begin
    BASS_Start()
  end;

  procedure BeginInitHWNDBASS(memory_init: BOOL, filename: PAnsiChar, offs1: DWORD, offs2: DWORD, length1: DWORD, length2: DWORD, flags: DWORD): HWND;
  begin
    mp3handle := BASS_StreamCreateFile(memory_init, filename, offs1, offs2, length1, length2, flags)
    return mp3handle
  end;

