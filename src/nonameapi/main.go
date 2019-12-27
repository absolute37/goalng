package main

import (

	"net/http"
	"github.com/labstack/echo"
	"github.com/labstack/echo/middleware"
	// "dbconnect"
)
 
func main() {

	e := echo.New()
	// con := dbconnect.New()

	// Middleware
	e.Use(middleware.Logger())
	e.Use(middleware.Recover())
  
	e.Use(middleware.CORSWithConfig(middleware.CORSConfig{
		AllowOrigins: []string{"*"},
		AllowMethods: []string{http.MethodGet, http.MethodPut, http.MethodPost, http.MethodDelete},
	}))

	e.GET("/", func(c echo.Context) error {
		return c.String(http.StatusOK, "Hello, asdasdasdf!")
	})
	e.Logger.Fatal(e.Start(":80"))
}