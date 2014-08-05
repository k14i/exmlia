defmodule analyzer do

  def start(n, m, host, port, is_churn) do
    result <- terminate

    pid = spawn(fn -> result(0, 0, []) end)
    register(result, pid)

    start0(n, m, host, port, is_churn)
  end

  def start0(n, m, host, port, is_churn) do
    when n > 0
    spawn(fn() -> start_node(host, port, (n - 1) * m, m, is_churn) end)
    start0(n - 1, m, host, port, is_churn)
  end

  def start0(_, _, _, _, _) do
    true
  end

  def start_node(host, port, offset, n, is_churn) do
    suffix = to_list(offset)
    Exmlia.exmlia.start(0, suffix)
    receive
    after 1000 do
      true
    end

    join(host, port, 20, suffix)
    put_data(offset, n, suffix)

    cond do
      is_churn == true -> Exmlia.exmlia.stop(suffix)
      true -> true
    end

    receive
    after 60000 do
      true
    end

    try_get(offset, n, suffix, ?trynum, host, port, is_churn)
  end

  def try_get(offset, n, suffix, try_num, host, port, is_churn) do
    when try_num > 0
    cond do
      is_churn == true ->
        Exmlia.exmlia.start(0, suffix)
        receive
        after 1000
        true
        end
        join(host, port, 20, suffix);
      true ->
        true
      end

      {success, fail, rtt} = get_data(offset, n, suffix)
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