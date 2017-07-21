unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ComCtrls, jpeg, ExtCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Button2: TButton;
    Memo1: TMemo;
    RichEdit1: TRichEdit;
    MainMenu1: TMainMenu;
    Home1: TMenuItem;
    heory1: TMenuItem;
    CalculationProgram1: TMenuItem;
    HydrolisisfromStrongAcidandweakBase1: TMenuItem;
    SaltHydrolisisfromStrongAcidandweakBase1: TMenuItem;
    SaltHydrolisisfromweakAcidandweakBase1: TMenuItem;
    Exit1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure heory1Click(Sender: TObject);
    procedure Home1Click(Sender: TObject);
    procedure HydrolisisfromStrongAcidandweakBase1Click(Sender: TObject);
    procedure SaltHydrolisisfromStrongAcidandweakBase1Click(
      Sender: TObject);
    procedure SaltHydrolisisfromweakAcidandweakBase1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  M,kh,ka,kb,h,ph,oh,poh:real;

const
Kw=1e-14;

implementation

{$R *.dfm}


procedure TForm2.FormCreate(Sender: TObject);
begin
image1.Visible:=true;
label1.Visible:=false;
label2.Visible:=false;
label3.Visible:=false;
edit1.Visible:=false;
edit2.Visible:=false;
button2.Visible:=false;
memo1.Visible:=false;
richedit1.Visible:=false;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
if label3.Caption='Salt Hydrolisis from Strong Acid and Weak Base'then
    if (edit1.Text='') or (edit2.Text='') then
    messagedlg('Data belum diisi',mterror,[mbok],0)else
begin
    M:=strtofloat(edit1.Text);
    kb:=strtofloat(edit2.Text);
    kh:=kw/kb;
    H:=sqrt(kh*M);
    pH:=-ln(H)/ln(10);
    memo1.Lines.Add('Tetapan hidrolisis garam sebesar '+floattostr(kh));
    memo1.Lines.Add('Konsentrasi H+ sebesar '+floattostr(H));
    memo1.Lines.Add('pH larutan garam sebesar '+floattostr(pH));
end else if label3.Caption='Salt Hydrolisis from Weak Acid and Strong Base' then
    if (edit1.Text='') or (edit2.Text='') then
    messagedlg('Data belum diisi',mterror,[mbok],0)else
begin
    M:=strtofloat(edit1.Text);
    ka:=strtofloat(edit2.Text);
    kh:=kw/ka;
    OH:=sqrt(kh*M);
    pOH:=-ln(OH)/ln(10);
    pH:=14-pOH;
    memo1.Lines.Add('Tetapan hidrolisis garam sebesar '+floattostr(kh));
    memo1.Lines.Add('Konsentrasi OH- sebesar '+floattostr(OH));
    memo1.Lines.Add('pH larutan garam sebesar '+floattostr(pH));
end else if label3.Caption='Salt Hydrolisis from Weak Acid and Weak Base' then
    if (edit1.Text='') or (edit2.Text='') then
    messagedlg('Data belum diisi',mterror,[mbok],0)else
begin
    ka:=strtofloat(edit1.Text);
    kb:=strtofloat(edit2.Text);
    kh:=kw/(ka*kb);
    H:=sqrt(kw*ka/kb);
    pH:=-ln(H)/ln(10);
    memo1.Lines.Add('Tetapan hidrolisis garam sebesar '+floattostr(kh));
    memo1.Lines.Add('Konsentrasi H+ sebesar '+floattostr(H));
    memo1.Lines.Add('pH larutan garam sebesar '+floattostr(pH));
end;
end;
procedure TForm2.Exit1Click(Sender: TObject);
begin
if messagedlg ('Do you want to close the program?',
mtconfirmation, mbokcancel,0) = mrok then
application.Terminate;
end;

procedure TForm2.heory1Click(Sender: TObject);
begin
image1.Visible:=false;
label1.Visible:=false;
label2.Visible:=false;
label3.Visible:=false;
edit1.Visible:=false;
edit2.Visible:=false;
button2.Visible:=false;
memo1.Visible:=false;
richedit1.Visible:=true;
richedit1.Lines.LoadFromFile('hidrolisis.rtf');
edit1.Text:='';
edit2.Text:='';
memo1.Lines.Clear;
end;

procedure TForm2.Home1Click(Sender: TObject);
begin
image1.Visible:=true;
label1.Visible:=false;
label2.Visible:=false;
label3.Visible:=false;
edit1.Visible:=false;
edit2.Visible:=false;
button2.Visible:=false;
memo1.Visible:=false;
richedit1.Visible:=false;
end;

procedure TForm2.HydrolisisfromStrongAcidandweakBase1Click(
  Sender: TObject);
begin
label1.Visible:=true;
label1.Caption:='Salt Concentration (M)';
label2.Visible:=true;
label2.Caption:='Kb ';
label3.Visible:=true;
label3.Caption:='Salt Hydrolisis from Strong Acid and Weak Base';
button2.Visible:=true;
edit1.Visible:=true;
edit2.Visible:=true;
memo1.Visible:=true;
image1.Visible:=false;
richedit1.Visible:=false;
edit1.Text:='';
edit2.Text:='';
memo1.Lines.Clear;
end;

procedure TForm2.SaltHydrolisisfromStrongAcidandweakBase1Click(
  Sender: TObject);
begin
label1.Visible:=true;
label1.Caption:='Salt Concentration (M)';
label2.Visible:=true;
label2.Caption:='Ka ';
label3.Visible:=true;
label3.Caption:='Salt Hydrolisis from Weak Acid and Strong Base';
button2.Visible:=true;
edit1.Visible:=true;
edit2.Visible:=true;
memo1.Visible:=true;
image1.Visible:=false;
richedit1.Visible:=false;
edit1.Text:='';
edit2.Text:='';
memo1.Lines.Clear;
end;

procedure TForm2.SaltHydrolisisfromweakAcidandweakBase1Click(
  Sender: TObject);
begin
label1.Visible:=true;
label1.Caption:='Ka ';
label2.Visible:=true;
label2.Caption:='Kb ';
label3.Visible:=true;
label3.Caption:='Salt Hydrolisis from Weak Acid and Weak Base';
button2.Visible:=true;
edit1.Visible:=true;
edit2.Visible:=true;
memo1.Visible:=true;
image1.Visible:=false;
richedit1.Visible:=false;
edit1.Text:='';
edit2.Text:='';
memo1.Lines.Clear;
end;

end.
