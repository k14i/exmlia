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
  end

  def join(pid, my_id, host, post, suffix) do
  end

  def store(pid, key, value, ttl, suffix) do
  end

  def put(pid, key, value, ttl) do
  end

  def put(pid, key, value, ttl, suffix) do
  end

  def get(pid, key) do
  end

  def get(pid, key, suffix) do
  end

  def join(pid, host, port) do
  end

  def join(pid, host, port, suffix) do
  end

  def get_port(pid) do
  end

  def get_port(pid, suffix) do
  end

  def stop() do
  end

  def stop(suffix) do
  end

end