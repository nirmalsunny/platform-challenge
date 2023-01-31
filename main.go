package main

import (
	"fmt"
	"github.com/spf13/cobra"
	"github.com/spf13/viper"
	"net/http"
)

var cfgFile string

var cmd = &cobra.Command{
	Use:   "simple-http-server",
	Short: "Simple HTTP Server",
	Long: `Simple HTTP Server

The HTTP server will print the configured greeting, e.g. "Hello" and the name provided by a query string "name".`,
	Run: func(cmd *cobra.Command, args []string) {
		runServer()
	},
}

func init() {
	cobra.OnInitialize(initConfig)

	cmd.PersistentFlags().StringVar(&cfgFile, "config", "", "Configuration file (default is ./simple-http-server.yaml)")
	cmd.PersistentFlags().IntP("port", "p", 8080, "Port on localhost on which to run server")
	cmd.PersistentFlags().StringP("greeting", "g", "Hello", "Greeting to use in HTTP Server")
	viper.BindPFlag("port", cmd.PersistentFlags().Lookup("port"))
	viper.BindPFlag("greeting", cmd.PersistentFlags().Lookup("greeting"))
}

// initConfig Read in config file and ENV variables if set.
func initConfig() {
	if cfgFile == "" {
		// Look for config file in working directory
		viper.SetConfigName("simple-http-server")
		viper.SetConfigType("yaml")
		viper.AddConfigPath(".")
	} else {
		// Use configuration file specified on the command line.
		viper.SetConfigFile(cfgFile)
	}

	// Read in environment variables that match the flag names (but upper case)
	viper.AutomaticEnv()

	// If a config file is found, read it in.
	err := viper.ReadInConfig()
	if err == nil {
		fmt.Printf("Using config file: %s\n", viper.ConfigFileUsed())
	}
}

func runServer() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		greeting := viper.GetString("greeting")
		name := r.URL.Query().Get("name")
		if name == "" {
			name = "World"
		}
		fmt.Fprintf(w, "%s %s", greeting, name)
	})

	address := fmt.Sprintf(":%d", viper.GetInt("port"))
	err := http.ListenAndServe(address, nil)
	if err != nil {
		fmt.Printf("Failed to run server: %s\n", err)
	}
}

func main() {
	cmd.Execute()
}
