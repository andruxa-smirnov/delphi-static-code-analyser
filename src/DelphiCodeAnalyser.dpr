program DelphiCodeAnalyser;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Main in 'Main.pas',
  DelphiAST.Classes in '..\components\DelphiAST\DelphiAST.Classes.pas',
  DelphiAST.Consts in '..\components\DelphiAST\DelphiAST.Consts.pas',
  DelphiAST in '..\components\DelphiAST\DelphiAST.pas',
  DelphiAST.ProjectIndexer in '..\components\DelphiAST\DelphiAST.ProjectIndexer.pas',
  DelphiAST.Serialize.Binary in '..\components\DelphiAST\DelphiAST.Serialize.Binary.pas',
  DelphiAST.SimpleParserEx in '..\components\DelphiAST\DelphiAST.SimpleParserEx.pas',
  DelphiAST.Writer in '..\components\DelphiAST\DelphiAST.Writer.pas',
  StringPool in '..\components\DelphiAST\StringPool.pas',
  SimpleParser.Lexer in '..\components\DelphiAST\SimpleParser\SimpleParser.Lexer.pas',
  SimpleParser.Lexer.Types in '..\components\DelphiAST\SimpleParser\SimpleParser.Lexer.Types.pas',
  SimpleParser in '..\components\DelphiAST\SimpleParser\SimpleParser.pas',
  SimpleParser.Types in '..\components\DelphiAST\SimpleParser\SimpleParser.Types.pas',
  IncludeHandler in 'IncludeHandler.pas',
  Analytics.UnitMetrics in 'Analytics.UnitMetrics.pas',
  Analytics.MethodMetrics in 'Analytics.MethodMetrics.pas',
  Command.AnalyseUnit in 'Command.AnalyseUnit.pas',
  Command.AnalyseFolder in 'Command.AnalyseFolder.pas',
  Utils.IntegerArray in 'Utils.IntegerArray.pas';

begin
  try
    ApplicationRun();
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
