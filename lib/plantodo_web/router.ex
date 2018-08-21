defmodule PlantodoWeb.Router do
  use PlantodoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PlantodoWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", PlantodoWeb do
    pipe_through :api

    resources "/tasks", TaskController, except: [:new, :edit]
  end
end
