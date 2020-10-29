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

procedure InitTask(num: integer);
begin
  case num of 
    1: Par13Ex4; 
    2: Par13Ex5; 
    3: Par13Ex6; 
    4: Par13Ex7;

  end; 
end;

procedure inittaskgroup;
begin
  CreateGroup('Eclass', 'Задачник 8-й класс', 
  'FaCSM & Bezlimix', 'qwqfsdf13dfttd', 4, InitTask); 
  Subgroup('Задачник к учебнику 8 класса 2018г.'); 
end;

procedure activate(S: string);
begin
  ActivateNET(S); 
end;

begin 
end. 