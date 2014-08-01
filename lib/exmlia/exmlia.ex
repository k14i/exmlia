defmodule Exmlia.exmlia do

  def start(port) do
    start(port, "")
  end

  def start(port, suffix) do
  end

  def start0(_port, _suffix, _id, n, _run) do
    if n > 100 do: true
  end

  def start0(port, suffix, id, n, run) do
  end

  def is_exist() do
    is_exist("")
  end

  def is_exist(suffix) do
  end

  def exmlia(id, suffix) do
    receive
    {put, pid, key, value, ttl} ->
      spawn_link(fn -> store(pid, key, value, ttl, suffix) end)
      exmlia(id, suffix)
    {get, pid, key} ->
      spawn_link(fn -> find_value(pid, key, suffix) end)
      exmlia(id, suffix)
    {join, pid, host, port} ->
      spawn_link(fn -> join(pid, id, host, port, suffix) end)
      exmlia(id, suffix)
    {port, pid} ->
      to_atom(["udphandler"] ++ [suffix]) <- {port, pid}
      exmlia(id, suffix)
    true ->
      exit(terminated)
    end
  end

  def find_value(pid, key, suffix) do
    to_atom(["rtoperator"] ++ suffix) <- {find_value, self, key}
    receive
    {find_value, key, value} -> pid <- {get, key, value}
    end
  end

  def join(pid, my_id, host, post, suffix) do
    to_atom(["rtoperator"] ++ suffix) <- {join, self, my_id, host, port}
    receive
    {join, true} -> pid <- {join, true}
    {join, false} -> pid <- {join, false}
  end

  def store(pid, key, value, ttl, suffix) do
    to_atom(["rtoperator"] ++ suffix) <- {store, self, key, value, ttl}
    receive
    {store, key, value, ttl} -> pid <- {put, key, value, ttl}
    end
  end

  def put(pid, key, value, ttl) do
  end

  def put(pid, key, value, ttl, suffix) do
    to_atom(["exmlia"] ++ suffix) <- {put, pid, key, value, ttl}
  end

  def get(pid, key) do
  end

  def get(pid, key, suffix) do
    to_atom(["exmlia"] ++ suffix) <- {get, pid, key}
  end

  def join(pid, host, port) do
    join(pid, host, port, "")
  end

  def join(pid, host, port, suffix) do
    to_atom(["exmlia"] ++ suffix) <- {join, pid, host, port}
  end

  def get_port(pid) do
    get_port(pid, "")
  end

  def get_port(pid, suffix) do
    to_atom(["exmlia"] ++ suffix) <- {port, pid}
  end

  def stop() do
    stop("")
  end

  def stop(suffix) do
    to_atom(["exmlia"] ++ suffix) <- terminate
  end

end