
<br>
<br>
<br>

<form name="addEventsForm" action="#" method="post">

    <div class="container">

        <h3>Add Event</h3>

        <div class="form-row">
            <div class="form-group col-md-4">
                <input type="text" class="form-control" id="eventName" placeholder="Enter event name" name="eventName" required>
            </div>

            <div class="form-group col-md-6">
                <input type="text" class="form-control" id="eventDescription" placeholder="Enter event description" name="eventDescription">
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="minAge">Min Age</label>
                <input type="text" class="form-control" id="ageMin" placeholder="Enter minimum age" name="ageMin">
            </div>

            <div class="form-group col-md-2">
                <label for="maxAge">Max Age</label>
                <input type="text" class="form-control" id="ageMax" placeholder="Enter maximum age" name="ageMax">
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="regOpenDate">Registration Open Date</label>
                <input type="date" class="form-control" id="registrationOpenDate"  name="registrationOpenDate">
            </div>

            <div class="form-group col-md-2">
                <label for="regCloseDate">Registration Close Date</label>
                <input type="date" class="form-control" id="registrationCloseDate"  name="registrationCloseDate">
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-1">
                <label for="regOpenDate">Event Date</label>
            </div>
            <div class="form-group col-md-4">
                <input type="date" class="form-control" id="eventDate" placeholder="Enter event date" name="eventDate">
            </div>
        </div>

        <button type="submit" class="btn btn-info btn-rounded">Add to my Event list</button>
    </div> <!-- end of div container -->

</form>