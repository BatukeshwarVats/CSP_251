
entity clss is

port(
clk: in std_logic;
q1,q2: out std_logic

);

end clss;
architecture Behavioral of clss is
signal a: std_logic:='1';
signal b: std_logic:='0';


component t_flip_flop is

Port(
t: in std_logic;
clk:in std_logic;

q: out std_logic



);

end component;


begin

t1: t_flip_flop port map(t=>a,clk=>clk,q=>a);
t2: t_flip_flop port map(t=>b,clk=>a,q=>b);

q2<=b;
q1<=a;

end Behavioral;

