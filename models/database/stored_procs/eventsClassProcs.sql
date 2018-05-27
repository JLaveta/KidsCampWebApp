 
 	
/*     public function getEndDate(){
        return $this->endDate;
    }
 */
	

    /* public static function getEventsByDateRange($startDate, $endDate)
    {
        //return events that fall within the date range
    }




 public static function addEvent($event)
    {
        //add event to database
    }



    public static function deleteEvent($eventId)
    {
        //delete the event

    }


 public static function editEventField($eventId, $fieldToChange, $changeToThis)
    {
        //edit event characteristics, might replace with multiple methods in the
        //form of setEventName, setEventDescription, setEventLocation, etc.
    }
	

    public static function addCategory($eventId, $category)
    {
        //add a category to the event in the database

        //categories, types, and addresses likely need their own
        //methods for changes since they can have multiple entries
    }

	
    public static function removeCategory($eventId, $category)
    {
        //remove a category from the event in the database

        //categories, types, and addresses likely need their own
        //methods for changes since they can have multiple entries
    }
	

    public static function addType($eventId, $type)
    {
        //add a type to the event in the database

        //categories, types, and addresses likely need their own
        //methods for changes since they can have multiple entries
    }
	

    public static function removeType($eventId, $type)
    {
        //remove a type from the event in the database

        //categories, types, and addresses likely need their own
        //methods for changes since they can have multiple entries
    }

    public static function addAddress($eventId, $address)
    {
	
        //add an address to the event in the database

        //categories, types, and addresses likely need their own
        //methods for changes since they can have multiple entries
    }

    public static function removeAddress($eventId, $address)
    {
        //remove an address from the event in the database

        //categories, types, and addresses likely need their own
        //methods for changes since they can have multiple entries
    }


 */



    -- public function getLocation()
    -- {
        -- return $this->location;
    -- }
CREATE PROCEDURE getLocation(IN location VARCHAR)
BEGIN
SELECT * FROM Events
JOIN EventAddresses ON Events.eventId = EventAddresses.eventId
JOIN Addresses on EventAddresses.addressId = Addresses.addressId
WHERE Addresses.city = location;
END//
	
	
	
	
    -- public function getStartDate(){
        -- return $this->startDate;
    -- }
	
CREATE PROCEDURE getStartDate(IN startDate DATETIME)
BEGIN
SELECT * FROM Events
WHERE eventDate = startDate; 
END//
	
	


	
    -- public function getOrganizationId()
    -- {
        -- return $this->organizationId;
    -- }
	
CREATE PROCEDURE getOrganizationId(IN orgId INT)
BEGIN
SELECT * FROM Organizations
WHERE organizationId = orgId;
END//
	
		
	

    -- public function getCategories()
    -- {
        -- return $this->categories;
    -- }

CREATE PROCEDURE getCategories (IN eventCategories VARCHAR)
BEGIN
SELECT * FROM Categories
WHERE categoryName = eventCategories;
END//		
	
	
	
	
    -- public function getType()
    -- {
        -- return $this->type;
    -- }
	
CREATE PROCEDURE getType (IN type VARCHAR)
BEGIN
SELECT * FROM types
WHERE typeName = type;
END//	
	
	
	
	

    -- public function getPrice()
    -- {
        -- return $this->price;
    -- }
	
CREATE PROCEDURE getPrice(IN price INT)
BEGIN
SELECT * FROM events
WHERE eventPrice = price  ;
END//




    -- public function getEventId()
    -- {
        -- return $this->eventId;
    -- }

CREATE PROCEDURE getEventId(IN currentEventId INT)
BEGIN
SELECT * FROM events
WHERE eventId = currentEventId ;
END//





    -- public function getName()
    -- {
        -- return $this->name;
    -- }

CREATE PROCEDURE getName(IN currentName VARCHAR)
BEGIN
SELECT * FROM events
WHERE eventName = currentName ;
END//




    -- public function getDescription()
    -- {
        -- return $this->description;
    -- }

CREATE PROCEDURE getDescription(IN currentDescription TEXT)
BEGIN
SELECT * FROM events
WHERE eventDescription = currentDescription ;
END//	

	
	
    -- public function getMinAge()
    -- {
        -- return $this->minAge;
    -- }

CREATE PROCEDURE getMinAge(IN minAgeChild INT)
BEGIN
SELECT * FROM events
WHERE minAge = minAgeChild;
END//	
	
	
	

    -- public function getMaxAge()
    -- {
        -- return $this->maxAge;
    -- }
	
CREATE PROCEDURE getMaxAge(IN maxAgeChild INT)
BEGIN
SELECT * FROM events
WHERE maxAge = maxAgeChild;
END//
	
	
	
	
    -- public function getRegistrationOpen()
    -- {
        -- return $this->registrationOpen;
    -- }
	
CREATE PROCEDURE getRegistrationOpen(IN registrationOpenDate DATETIME)
BEGIN
SELECT * FROM events
WHERE registrationOpen = registrationOpenDate;
END//
	
	
	
	
    -- public function getRegistrationClose()
    -- {
        -- return $this->registrationClose;
    -- }
	
CREATE PROCEDURE getRegistrationClose(IN registrationCloseDate DATETIME)
BEGIN
SELECT * FROM events
WHERE registrationClose = registrationCloseDate;
END//
	



    -- public static function getEventsByUserId($userId)
    -- {
        -- //return events for the user ID
    -- }

CREATE PROCEDURE getEventsByUserId(IN currentUserId INT)
BEGIN
SELECT * FROM Events
JOIN ChildEvents ON Events.eventId = ChildEvents.eventId
JOIN Children ON ChildEvents.childId = Children.childId
JOIN Users ON Children.userId = Users.userId
WHERE Users.userId = currentUserId;
END//
	




    -- public static function getEventsByCategory($category)
    -- {
        -- //return events matching category
    -- }

CREATE PROCEDURE getEventsByCategory(IN currentCategoryName VARCHAR)
BEGIN
SELECT eventName FROM Events
JOIN EventCategories ON Events.eventId = EventCategories.eventId
JOIN Categories ON EventCategories.categoryId = Categories.categoryId
ORDER BY categoryName;
END//





    -- public static function getEventsByType($type)
    -- {
        -- //return events matching type
    -- }

CREATE PROCEDURE getEventsByType(IN currentType VARCHAR)
BEGIN
SELECT typeName FROM Types
WHERE 
END//



    -- public static function getEventsByKeyword($keyword)
    -- {
        -- //return events with keyword in name or description
    -- }

CREATE PROCEDURE getEventsByKeyword(IN currentKeyword VARCHAR)
BEGIN
SELECT eventName FROM Events
WHERE eventName LIKE '% currentKeyword %';
END//




    -- public static function getEventsByAgeRange($minAge, $maxAge)
    -- {
        -- //return events for the age range
    -- }

CREATE PROCEDURE getEventsByAgeRange(IN currentMinAge, currentMaxAge INT)
BEGIN
SELECT eventName FROM Events
WHERE minAge <= currentMinAge  AND maxAge >= currentMaxAge;
END//




    -- public static function getEventsByPriceRange($minPrice, $maxPrice)
    -- {
        -- //return events for the price range
    -- }

CREATE PROCEDURE getEventsByPriceRange(IN currentMinPrice, currentMaxPrice INT)
BEGIN
SELECT eventName FROM Events
WHERE eventPrice >= currentMinPrice AND eventPrice <= currentMaxPrice; 
END//




    -- public static function getEventsByPostalCode($code)
    -- {
        -- //return events within a range of the location
    -- }

CREATE PROCEDURE getEventsByPostalCode(IN currentCode VARCHAR)
BEGIN
SELECT eventName FROM Events
JOIN Organizations ON Events.organizationId = Organizations.organizationId
JOIN Addresses on Organizations.addressId = Addresses.addressId
WHERE postalCode = currentCode; 
END//
   


	
	
	

	