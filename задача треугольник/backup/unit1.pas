unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label3Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var
    S, alpha, c, a: real;
begin
  c := StrToInt(Edit1.text);
  alpha := StrToInt(Edit2.text);

  alpha := alpha * (Pi / 180);

  S := (sqr(c)* (sin(alpha) / cos(alpha))) / 4;
  a := (c / 2) * cos(alpha);

  Edit3.text := FloatToStr(S);
  Edit4.text := FloatToStr(a);
end;

end.

