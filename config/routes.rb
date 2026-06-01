Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })

  # Sessions
  get("/login",  { :controller => "sessions", :action => "new" })
  post("/login", { :controller => "sessions", :action => "create" })
  get("/logout", { :controller => "sessions", :action => "destroy" })

  # Signup
  get("/signup",  { :controller => "users", :action => "new" })
  post("/signup", { :controller => "users", :action => "create" })

  # Places
  get("/places",          { :controller => "places", :action => "index" })
  get("/places/new",      { :controller => "places", :action => "new" })
  post("/places",         { :controller => "places", :action => "create" })
  get("/places/:id",      { :controller => "places", :action => "show" })

  # Entries
  get("/entries/new",  { :controller => "entries", :action => "new" })
  post("/entries",     { :controller => "entries", :action => "create" })
end