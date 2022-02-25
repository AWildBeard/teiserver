defmodule TeiserverWeb.Admin.GeneralView do
  use TeiserverWeb, :view

  @spec view_colour() :: atom
  def view_colour(), do: :info

  @spec icon() :: String.t()
  def icon(), do: StylingHelper.icon(:info)

  @spec view_colour(String.t()) :: {String.t(), String.t(), String.t()}
  def view_colour("clans"), do: Teiserver.Clans.ClanLib.colours()
  def view_colour("users"), do: Teiserver.Account.UserLib.colours()
  def view_colour("queues"), do: Teiserver.Game.QueueLib.colours()
  def view_colour("telemetry"), do: Teiserver.Telemetry.TelemetryLib.colours()
  def view_colour("tools"), do: Central.Admin.ToolLib.colours()
  def view_colour("automod_actions"), do: Teiserver.Account.AutomodActionLib.colours()
  def view_colour("chat"), do: Central.Communication.CommentLib.colours()
  def view_colour("accolades"), do: Teiserver.Account.AccoladeLib.colours()
  def view_colour("matches"), do: Teiserver.Battle.MatchLib.colours()
  def view_colour("badge_types"), do: Teiserver.Account.BadgeTypeLib.colours()
end
