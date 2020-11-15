module LifeWeb

using Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = LifeWeb))

  include(joinpath("..", "genie.jl"))

  Base.eval(Main, :(const Genie = LifeWeb.Genie))
  Base.eval(Main, :(using Genie))
end; main()

end
