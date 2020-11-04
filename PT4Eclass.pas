library PT4Eclass;

uses PT4TaskMakerNET;

procedure Par13Ex4;
var
  x,  z, a: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 13,страница 64, упражнение 4'); 
  x := RandomN(-99, 99);
  z := RandomN(-99, 99);
  DataR('x = ', x, xLeft, 3, 2);
  DataR('z = ', z, xRight, 3, 2);
  a := 2*x/sqrt(sqr(z)+ 9);
  ResultR('a = ', a, xCenter, 2, 4);
  SetTestCount(3); 
end;
  
procedure Par13Ex5;
var
  x, y, z, a: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 13,страница 64, упражнение 5'); 
  x := RandomN(-99, 99);
  y := RandomN(-99, 99);
  z := RandomN(-99, 99);
  DataR('x = ', x, xLeft, 3, 2);
  DataR('y = ', y, xCenter, 3, 2);
  DataR('z = ', z, xRight, 3, 2);
  a := (x+y+z)/3;
  ResultR('a = ', a, xCenter, 2, 4);
  SetTestCount(3); 
end;

procedure Par13Ex6;
var
  x, y,  a: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 13,страница 64, упражнение 6'); 
  x := RandomN(-99, 99);
  y := RandomN(-99, 99);
  DataR('x = ', x, xLeft, 3, 2);
  DataR('y = ', y, xRight, 3, 2);
  a := trunc(x/y);
  ResultR('a = ', a, xCenter, 2, 4);
  SetTestCount(3); 
end;

procedure Par13Ex7;
var
  x, y,  a: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 13,страница 64, упражнение 7'); 
  x := RandomN(-99, 99);
  y := RandomN(-99, 99);
  DataR('x = ', x, xLeft, 3, 2);
  DataR('y = ', y, xRight, 3, 2);
  a := sqrt(sqr(x)-sqr(y));
  ResultR('a = ', a, xCenter, 2, 4);
  SetTestCount(3); 
end;

procedure Par13Ex8;
var
  x, y,  a: integer;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 13,страница 64, упражнение 8'); 
  x := RandomN(-99, 99);
  y := RandomN(-99, 99);
  DataN('x = ', x, xLeft, 3, 2);
  DataN('y = ', y, xRight, 3, 2);
  a := trunc(x/y);
  ResultR('a = ', a/1, xCenter, 2, 4);
  SetTestCount(3); 
end;

procedure Par15Ex4;
var
  x: integer;
  a: boolean;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 76, упражнение 4'); 
  x := RandomN(-99, 99);
  DataN('x = ', x, xCenter, 3, 2);
  a := x>0;
  ResultB('a - ', a, xCenter, 2);
  SetTestCount(3); 
end;

procedure Par15Ex5;
var
  x: integer;
  a: boolean;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 76, упражнение 5'); 
  x := RandomN(-99, 99);
  DataN('x = ', x, xCenter, 3, 2);
  a := x div 1000 >0;
  ResultB('a - ', a, xCenter, 2);
  SetTestCount(3); 
end;

procedure Par15Ex6;
var
  x,y: integer;
  a: boolean;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 76, упражнение 6'); 
  x := RandomN(-99, 99);
  y := RandomN(-99, 99);
  DataN('x = ', x, xleft, 3, 2);
  DataN('y = ', y, xRight, 3, 2);
  if x < y then
  begin
    if(x mod 2 = 0) or (y mod 2 = 0) then
    a:= true
    else
      a:= false
  end;
  ResultB('a - ', a, xCenter, 2);
  SetTestCount(3); 
end;

procedure InitTask(num: integer);
begin
  case num of 
    1: Par13Ex4; 
    2: Par13Ex5; 
    3: Par13Ex6; 
    4: Par13Ex7;
    5: Par13Ex8;
    6: Par15Ex4;
    7: Par15Ex5;
    8: Par15Ex6;

  end; 
end;

procedure inittaskgroup;
begin
  CreateGroup('Eclass', 'Задачник 8-й класс', 
  'FaCSM & Bezlimix', 'qwqfsdf13dfttd', 8, InitTask); 
  Subgroup('Задачник к учебнику 8 класса 2018г.'); 
end;

procedure activate(S: string);
begin
  ActivateNET(S); 
end;

begin 
end. 