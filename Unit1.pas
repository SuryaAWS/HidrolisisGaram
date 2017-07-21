unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
button1.Enabled:=false;
button2.Enabled:=false;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
if radiogroup1.ItemIndex=0 then
begin
button1.Enabled:=true;
button2.Enabled:=true;
end else if radiogroup1.ItemIndex=1 then
begin
button1.Enabled:=false;
button2.Enabled:=true;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
form1.Visible:=false;
form2.Visible:=true;
end;

end.
