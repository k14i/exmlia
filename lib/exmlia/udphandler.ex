defmodule Exmlia.udphandler do

  def start(my_id, port, suffix) do
  end

  def udphandler(my_id, port, suffix) do
  end

  def udphandler(my_id, socket, table_id, refs, suffix) do
  end

  def dispatcher(socket, host, port, my_id, _table_id) do
  end

  def dispatcher(_socket, host, port, my_id, _table_id, refs, {pong, dest, src, ref}, _suffix) do
  end

  def dispatcher(socket, host, port, my_id, _table_id, refs, {findnodes, _, src, _} = msg, suffix) do
  end

  def dispatcher(_socket, host, port, _my_id, _table_id, refs, {ackfindnodes, id, src, ref, nodes}, suffix) do
  end

  def dispatcher(socket, host, port, my_id, table_id, refs, {findvalue, {_, _}, src, _} = msg, suffix) do
  end

  def dispatcher(_socket, host, port, _my_id, _table_id, refs, {ackfindvalue, {key, {id, key}}, {value, true, value}, src, {nodes, []}, ref}, suffix) do
  end

  

end