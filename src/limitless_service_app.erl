%%%-------------------------------------------------------------------
%% @doc limitless_service public API
%% @end
%%%-------------------------------------------------------------------

-module(limitless_service_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    limitless_service_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
