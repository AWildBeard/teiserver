defmodule Teiserver.Logging.LiveLib do
  @moduledoc false
  @spec authorize(any, Plug.Conn.t(), atom) :: boolean
  def authorize(_, conn, _), do: Central.Account.AuthLib.allow?(conn, "logging.live")
end
