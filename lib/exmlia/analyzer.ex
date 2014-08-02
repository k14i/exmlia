defmodule analyzer do

  def start(n, m, host, port, is_churn) do
    result <- terminate

    pid = spawn(fn -> result(0, 0, []) end)
    register(result, pid)

    start0(n, m, host, port, is_churn)
  end

  def start0(n, m, host, port, is_churn) do
  end

  def start0(_, _, _, _, _) do
  end

  def start_node(host, port, offset, n, is_churn) do
  end

  def try_get(offset, n, suffix, try_num, host, port, is_churn) do
  end

  def try_get(_, _, _, _, _, _, _) do
  end

  def put_data(offset, n, suffix) do
  end

  def put_data(_, _, _) do
  end

  def get_data(offset, n, suffix) do
  end

  def get_data(offset, n, success, fail, rtt, suffix) do
  end

  def get_data(_, _, success, fail, rtt, _) do
  end

  def join(ip, port, n, suffix) do
  end

  def join(_, _, _, _) do
  end

  def write(file) do
  end

  def result(success, fail, rtt) do
  end

end