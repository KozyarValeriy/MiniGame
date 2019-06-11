unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    Timer2: TTimer;
    SpeedButton1: TSpeedButton;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Timer3: TTimer;
    Shape2: TShape;
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Shape1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure messag();
    procedure Shape5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Shape4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Shape3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1; coord:TPoint;
  i, dx, h, s_0, p, R: integer; V_0, V:real;
  bol : boolean;
  dx4, dy4, dzx4, dzy4, dx3, dy3, dzx3, dzy3, dx5, dy5, dzx5, dzy5: integer;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
  begin
    i := 0;
    dx := 1;
    V_0 := 0;
    h := form1.height - shape4.top;
    s_0 := shape4.Top;
    V := 0;
    p := 0;
    bol := true;
    R := round(shape2.Width / 2);
    dx3 := 3; dzx3 := 1;
    dy3 := 3; dzy3 := 1;
    dx4 := 4; dzx4 := -1;
    dy4 := 4; dzy4 := 1;
    dx5 := 5; dzx5 := 1;
    dy5 := 5; dzy5 := -1;
  end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  begin
    Sleep(30);
    //InvalidateRect(0, nil, true);
    coord := ScreenToClient(Mouse.CursorPos);

    //Application.ProcessMessages;
    //Sleep(50);
    //GetCursorPos(coord);
    shape2.Left := coord.X - R;
    shape2.Top := coord.Y - R;
    //form1.canvas.Brush.Color := clRed;
    //form1.canvas.Ellipse(coord.X - R, coord.Y - R, coord.X + R, coord.Y + R);
  end;

procedure TForm1.Shape1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  begin
    Sleep(30);
    coord := ScreenToClient(Mouse.CursorPos);
    shape2.Left := coord.X - R;
    shape2.Top := coord.Y - R;
  end;

procedure TForm1.Shape3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  begin
    Sleep(30);
    coord := ScreenToClient(Mouse.CursorPos);
    shape2.Left := coord.X - R;
    shape2.Top := coord.Y - R;
  end;

procedure TForm1.Shape4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  begin
   Sleep(30);
    coord := ScreenToClient(Mouse.CursorPos);
    shape2.Left := coord.X - R;
    shape2.Top := coord.Y - R;
  end;

procedure TForm1.Shape5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  begin
    Sleep(30);
    coord := ScreenToClient(Mouse.CursorPos);
    shape2.Left := coord.X - R;
    shape2.Top := coord.Y - R;
  end;

procedure TForm1.SpeedButton1Click(Sender: TObject);

  begin


    timer2.Enabled := bol;
    timer1.Enabled := bol;
    timer3.Enabled := bol;

    shape1.Visible := bol;
    shape2.Visible := bol;
    shape3.Visible := bol;
    shape4.Visible := bol;
    shape5.Visible := bol;

    label1.Visible := bol;
    label2.Visible := bol;

    speedbutton1.visible := not bol;

    bol := true;
  end;

procedure tform1.messag();
var s:string;
 begin
  bol := false;
  SpeedButton1.Click;
  s := '�� ������� ' + label1.caption +' �����.  ����������!';
  Application.Title := '����� ����';
  showmessage(s);
  label1.caption := inttostr(0);

 end;


procedure TForm1.Timer1Timer(Sender: TObject);
  //var B_form, H_form , B_center, H_center, H1, B1, H2, B2, H3, B3: integer;
  begin
    //timer1.Interval := 20;

    shape2.BringToFront;

    if (coord.X <=(shape1.left + shape1.width)) and (coord.X >= (shape1.left))  then
      if (coord.Y <= (shape1.top + shape1.height)) and (coord.Y >= (shape1.top)) then
        label1.Caption := inttostr(strtoint(label1.Caption) + 1);

    if (coord.X <=(shape3.left + shape3.width)) and (coord.X >= (shape3.left))  then
      if (coord.Y <= (shape3.top + shape3.height)) and (coord.Y >= (shape3.top)) then
         messag();
    if (coord.X <=(shape4.left + shape4.width)) and (coord.X >= (shape4.left))  then
      if (coord.Y <= (shape4.top + shape4.height)) and (coord.Y >= (shape4.top)) then
         messag();
    if (coord.X <=(shape5.left + shape5.width)) and (coord.X >= (shape5.left))  then
      if (coord.Y <= (shape5.top + shape5.height)) and (coord.Y >= (shape5.top)) then
         messag();


  end;

procedure TForm1.Timer2Timer(Sender: TObject);
  var B1, H1, B3, H3, B4, H4, B5, H5, L3, L4, L5 :integer;
  begin
     randomize;
     {B1 := round(shape1.width / 2);
     H1 := round(shape1.height / 2);

     B3 := round(shape3.width / 2);
     H3 := round(shape3.height / 2);

     B4 := round(shape4.width / 2);
     H4 := round(shape4.height / 2);

     B5 := round(shape5.width / 2);
     H5 := round(shape5.height / 2);

     L3 := round(sqrt((shape3.Left + B3 - shape1.Left - B1) *
     (shape3.Left + B3 - shape1.Left - B1) +
     (shape3.Top + H3 - shape1.Top - H1)*
     (shape3.Top + H3 - shape1.Top - H1))); }

     {if L3 >= (sqrt(B1 * B1 + H1 * H1) + sqrt(B3 * B3 + H3 * H3)) then
        begin
         try
          dx3 := round(((shape1.Left + B1) - (shape3.Left + B3))/((shape1.top + H1) - (shape3.top + H3)));
          dy3 := round(1 / dx3);
         except
           dx3 := 1;
           dy3 := 1;
         end;
          shape3.Left := shape3.Left + dx3;
          shape3.top := shape3.top + dy3;

        end; }

// ����� ������ 4
      if (shape4.Left <= 0) then
          dzx4 := 1
      else if (shape4.Left + shape4.Width >= form1.width) then
          dzx4 := -1;
      if (shape4.top <= 0) then
          dzy4 := 1
      else if (shape4.Top + shape4.Height >= form1.Height - 32) then
          dzy4 := -1;
      shape4.Left := shape4.Left + dzx4 * dx4;
      shape4.top := shape4.top + dzy4 * dy4;
// ����� ������ 3
      if (shape3.Left <= 0) then
          dzx3 := 1
      else if (shape3.Left + shape3.Width >= form1.width) then
          dzx3 := -1;
      if (shape3.top <= 0) then
          dzy3 := 1
      else if (shape3.Top + shape3.Height >= form1.Height - 32) then
          dzy3 := -1;
      shape3.Left := shape3.Left + dzx3 * dx3;
      shape3.top := shape3.top + dzy3 * dy3;
// ����� ������ 5
      if (shape5.Left <= 0) then
          dzx5 := 1
      else if (shape5.Left + shape5.Width >= form1.width) then
          dzx5 := -1;
      if (shape5.top <= 0) then
          dzy5 := 1
      else if (shape5.Top + shape5.Height >= form1.Height - 32) then
          dzy5 := -1;
      shape5.Left := shape5.Left + dzx5 * dx5;
      shape5.top := shape5.top + dzy5 * dy5;


  end;

procedure TForm1.Timer3Timer(Sender: TObject);
  var H1, B1: integer;
  begin
    randomize;
    H1 := random(form1.height);
    B1 := random(form1.width);

    if (H1 + shape1.Height <= form1.height - 32) and (H1 - shape1.Height >= shape1.Height) then
      shape1.Top := round(H1)
    else
      shape1.Top := round(form1.Height / 2);

    if (B1 + shape1.width <= form1.width) and (B1 - shape1.width >= shape1.width) then
      shape1.left := round(B1)
    else
      shape1.left := round(form1.width / 2);

      // ��������� �������� ������ 3 �� ��� �
      if (shape4.Left + shape4.Width < form1.Width) and (shape4.Left > 0)  then
        begin
          dx4 := 5; //random(5);
          if round(random(11)) >= 5 then
            dzx4 := -1
          else
            dzx4 := 1;

        end;
      {else if (shape4.Left <= 0) then
          dzx4 := 1
      else
          dzx4 := -1;}
    // ��������� �������� ������ 4 �� ��� y
      if (shape4.top + shape4.height < form1.height - 32) and (shape4.top > 0)  then
        begin
          dy4 := 5; //random(5);
          if round(random(11)) >= 5 then
            dzy4 := -1
          else
            dzy4 := 1;

        end;
     { else if (shape4.top <= 0) then
          dzy4 := 1
      else
          dzy4 := -1;  }

     // ��������� �������� ������ 3 �� ��� �
       if (shape3.Left + shape3.Width < form1.Width) and (shape3.Left > 0)  then
        begin
          dx3 := random(3) + 3;
          if round(random(11)) >= 5 then
            dzx3 := -1
          else
            dzx3 := 1;
        end;
    // ��������� �������� ������ 3 �� ��� y
      if (shape3.top + shape3.height < form1.height - 32) and (shape3.top > 0)  then
        begin
          dy3 := random(3) + 3;
          if round(random(11)) >= 5 then
            dzy3 := -1
          else
            dzy3 := 1;
        end;

     // ��������� �������� ������ 5 �� ��� �
       if (shape5.Left + shape5.Width < form1.Width) and (shape5.Left > 0)  then
        begin
          dx5 := random(2) + 4;
          if round(random(11)) >= 5 then
            dzx5 := -1
          else
            dzx5 := 1;
        end;
    // ��������� �������� ������ 5 �� ��� y
      if (shape5.top + shape5.height < form1.height - 32) and (shape5.top > 0)  then
        begin
          dy5 := random(2) + 4;
          if round(random(11)) >= 5 then
            dzy5 := -1
          else
            dzy5 := 1;
        end;

  end;

end.
