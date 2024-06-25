library ieee;
use ieee.numeric_bit_unsigned.all;

entity cooley is
  port(
        clock: in  bit;
        up:    in  bit;
        down:  in  bit;
        di:    in  bit_vector(8 downto 0);
        co:    out bit;
        bo:    out bit;
        po:    out bit;
        do:    out bit_vector(8 downto 0)
      );
end entity cooley;

architecture rtl of cooley is
begin
  process(clock)
    variable ndo: bit_vector(9 downto 0);
  begin
    if rising_edge(clock) then
      ndo := '0' & do;
      co   <= '0';
      bo   <= '0';
      if up = '0' and down = '0' then
        ndo := '0' & di;
      elsif up = '1' and down = '0' then
        ndo := ndo + 3;
        co   <= ndo(9);
      elsif up = '0' and down = '1' then
        ndo := ndo - 5;
        bo   <= ndo(9);
      end if;
      po <= xnor ndo(8 downto 0);
      do <= ndo(8 downto 0);
    end if;
  end process;
end architecture rtl;

library ieee;
use ieee.std_logic_1164.all;

entity mealy is
	port(clk:     in  std_ulogic;
		 sresetn: in  std_ulogic;
		 stb:     in  std_ulogic;
		 done:    in  std_ulogic;
		 lsb:     in  std_ulogic;
		 a:       out std_ulogic;
		 s:       out std_ulogic;
		 i:       out std_ulogic
	 );
end entity mealy;

architecture rtl of mealy is

	type state_t is (idle, run, sa);
	signal state, next_state: state_t;

begin

	process(state, stb, done, lsb)
	begin
		next_state <= state;
		i          <= '0';
		a          <= '0';
		s          <= '0';
		case state is
			when idle =>
				if stb = '1' then
					next_state <= run;
					i          <= '1';
				end if;
			when run =>
				if done = '1' then
					next_state <= idle;
				elsif lsb = '1' then
					next_state <= sa;
					a          <= '1';
				else
					next_state <= sa;
				end if;
			when sa =>
				next_state <= run;
				s          <= '1';
		end case;
	end process;

	process(clk)
	begin
		if rising_edge(clk) then
			if sresetn = '0' then
				state <= idle;
			else
				state <= next_state;
			end if;
		end if;
	end process;

end architecture rtl;

library ieee;
use ieee.std_logic_1164.all;

entity moore is
	port(clk:     in  std_ulogic;
		 sresetn: in  std_ulogic;
		 stb:     in  std_ulogic;
		 done:    in  std_ulogic;
		 lsb:     in  std_ulogic;
		 a:       out std_ulogic;
		 s:       out std_ulogic;
		 i:       out std_ulogic
	 );
end entity moore;

architecture rtl of moore is

	type state_t is (idle, init, run, shift, add);
	signal state, next_state: state_t;

begin

	process(state, stb, done, lsb)
	begin
		next_state <= state;
		case state is
			when idle =>
				if stb = '1' then
					next_state <= init;
				end if;
			when init =>
				next_state <= run;
			when run =>
				if done = '1' then
					next_state <= idle;
				elsif lsb = '1' then
					next_state <= add;
				else
					next_state <= shift;
				end if;
			when add =>
				next_state <= shift;
			when shift =>
				next_state <= run;
		end case;
	end process;

	a <= '1' when state = add else '0';

	s <= '1' when state = shift else '0';

	i <= '1' when state = init else '0';

	process(clk)
	begin
		if rising_edge(clk) then
			if sresetn = '0' then
				state <= idle;
			else
				state <= next_state;
			end if;
		end if;
	end process;

end architecture rtl;
