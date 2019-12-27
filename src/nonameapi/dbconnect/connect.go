package dbconnect

import (
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/postgres"
	"fmt"
)



func ConnectDatabase() {

	db, err := gorm.Open("postgres", "host=localhost port=5432 user=okpme5^d dbname=no_name_db password=okpme5^d")

	if err != nil {
		fmt.Print("ERROR CONNECT DATABASE")
	}
	
}