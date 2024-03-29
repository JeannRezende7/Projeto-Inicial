unit Inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TCad_Usu = class(TForm)
    lb_cad_usuarios: TLabel;
    btn_salvar_venda: TButton;
    SpeedButton1: TSpeedButton;
    btn_deletar: TButton;
    Button3: TButton;
    txt_nome: TEdit;
    Label1: TLabel;
    txt_nome2: TEdit;
    txt_nome3: TEdit;
    lb_valor: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btn_calcular: TButton;
    txt_vlr_1: TEdit;
    txt_vlr_2: TEdit;
    txt_total: TEdit;
    Label4: TLabel;
    btn_tela2: TButton;
    Label5: TLabel;
    lb_editado: TLabel;
    procedure btn_salvar_vendaClick(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_calcularClick(Sender: TObject);
    procedure btn_tela2Click(Sender: TObject);

  private
     var nome:string;
    { Private declarations }
  public
     var sobrenome, endereco:string;
     var valor :Integer  ;
    { Public declarations }
  end;

var
  Cad_Usu: TCad_Usu;

implementation

{$R *.dfm}

uses Tela2;

procedure cadastro;
var nome,sobrenome,endereco : string;
begin
   nome := 'Jeann';
   sobrenome := 'Rezende';
   endereco := 'Rua A,B,C';
end;

procedure TCad_Usu.btn_calcularClick(Sender: TObject);
  var vlr1, vlr2, total, media : Double;
  var cont : Integer;
begin

  vlr1 := strToFloat(txt_vlr_1.Text);
  vlr2 := strToFloat(txt_vlr_2.Text);

  total := vlr1 + vlr2;
  txt_total.Text := FloatToStr(total);



   //operador de condi��o if
   media := 60;
   if (total >= media) OR (total > 50) Then
   begin

   ShowMessage('O aluno obteve ' + FloatToStr(total) + ' pontos e est� Aprovado');

   end
   Else
   begin
     ShowMessage('O aluno obteve ' + FloatToStr(total) + ' pontos e est� Reprovado');
   end;

    
   //LA�O DE REPETI��O FOR
   { for cont := 1 To 5 do
   begin
     showMessage(intToStr(cont));
     if(cont <= 0) Then
     begin
          showMessage('O contador chegou a 0');
     end;
   end;    }


   //LOOP DE REPETI��O WHILE
   cont := 1;
   while (cont <= 4) do
   begin
      showMessage(intToStr(cont));
      cont := cont + 1;
   end;


end;

procedure TCad_Usu.btn_deletarClick(Sender: TObject);
begin
      nome := '';
      txt_nome.Text := nome;
      sobrenome := '';
      txt_nome2.Text := sobrenome;
      txt_nome3.Text := '';
end;



procedure TCad_Usu.btn_salvar_vendaClick(Sender: TObject);


begin
   nome := 'Jeann';
   sobrenome := 'Rezende';
   endereco := 'Rua A,B,C';
   txt_nome.Text := nome;
   txt_nome2.Text := sobrenome;
   txt_nome3.Text := endereco;
end;



procedure TCad_Usu.btn_tela2Click(Sender: TObject);
begin
    frm_tela2 := Tfrm_tela2.Create(self);
    frm_tela2.ShowModal;
end;

procedure TCad_Usu.Button3Click(Sender: TObject);
begin
   lb_editado.Caption := 'Meu nome � ' + nome + ' ' + sobrenome + ' e meu endere�o � ' + endereco;
end;

procedure TCad_Usu.SpeedButton1Click(Sender: TObject);
begin
  valor := 5;
  lb_valor.Caption := IntToStr(valor);
end;

end.




