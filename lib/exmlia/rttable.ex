defmodule Exmlia.rttable do

  def start(my_id, suffix) do
  end

  def rttable(my_id, suffix) do
  end

  def rttable(my_id, table, add, suffix) do
  end

  def rttable(my_id, {add, id, ip, port}, table, add, _pid, suffix) do
  end

  def rttable(my_id, {remove, id}, table, add, _pid, _suffix) do
  end

  def rttable(my_id, {lookup, id}, table, add, pid, _suffix) do
  end

  def rttable(my_id, {pong, id, ip, port}, table, add, _pid, suffix) do
  end

  def rttable(my_id, {pong_timeout, id}, table, add, _pid, _suffix) do
  end

  def i2nodes(my_id, id, table, is) do
  end

  def i2nodes(my_id, id, table, nodes, [h|t]) do
  end

  def i2nodes(_my_id, _id, _table, nodes, []) do
  end

  def id2i4lookup(my_id, id, table) do
  end

  def id2i4lookup(_my_id, _id, _table, is, n) do
  end

  def id2i4lookup(my_id, id, _table, is, n) do
  end

  def id2i4lookup(my_id, id, table, is, n) do
  end

  def id2i4lookup_r(my_id, id, table, is, n) do
  end

  def id2i4lookup_r(_my_id, _id, _table, is, _n) do
  end

  def id2i4lookup_r(_my_id, _d, _table, _keys, is, n) do
  end

  def id2i4lookup_r(_my_id, _d, _table, [], is, _n) do
  end

  def id2i4lookup_r(my_id, d, table, keys, is, n) do
  end

  def add2list(id, ip, port, nodes, add, suffix) do
  end

  def ping_node([{id, ip, port}|t], add) do
  end

  def ping_node([], _) do
  end

  def move2last(x, l) do
  end

  def move2last(x, l, [h|t]) do
  end

  def move2last(x, l, [_|t]) do
  end

  def move2last(x, l, []) do
  end

  def send_ping(id, ip, port, suffix) do
  end

  def send_ping(pid, id, ip, port, suffix) do
  end

  def id2i(my_id, id) do
  end

  def id2i(_, _, i) when i < 0 do
  end

  def id2i(d, mask, i) when d band mask > 0 do
  end

  def id2i(d, mask, i) do
  end

  def print_table(table) do
  end

  def print_table(table, [h|t]) do
  end

  def print_table(_table, []) do
  end

  def print_column([h|t]) do
  end

  def print_column([]) do
  end

end