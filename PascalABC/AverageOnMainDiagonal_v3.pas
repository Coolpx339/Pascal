program AvgMainDiagonalImproved;

const
  MAX = 100;

var
  A: array[1..MAX, 1..MAX] of Integer;
  n, i, j: Integer;
  sum: Integer;
  avg: Real;

begin
  Randomize;

  Write('Введіть розмір квадратного масиву (1..100): ');
  ReadLn(n);

  if (n < 1) or (n > MAX) then
  begin
    WriteLn('Помилка! Некоректний розмір масиву.');
    Exit;
  end;

  { Заповнення масиву випадковими числами [-100; 100] }
  for i := 1 to n do
    for j := 1 to n do
      A[i, j] := Random(201) - 100;

  WriteLn('Згенерований масив:');
  for i := 1 to n do
  begin
    for j := 1 to n do
      Write(A[i, j]:5);
    WriteLn;
  end;

  { Обчислення середнього арифметичного головної діагоналі }
  sum := 0;
  for i := 1 to n do
    sum := sum + A[i, i];

  avg := sum / n;

  WriteLn;
  WriteLn('Середнє арифметичне головної діагоналі = ', avg:0:2);
end.
