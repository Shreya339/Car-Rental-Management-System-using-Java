             function getDays(){
                var pickUpDate = new Date(document.getElementById("pickUpDate").value);
                var returnDate = new Date(document.getElementById("returnDate").value);
                return parseInt((returnDate - pickUpDate) / (24 * 3600 * 1000));
            }
            
            function show(){
                if(document.getElementById("pickUpDate")){
                    document.getElementById("numOfDays").value = getDays();
                }
            }
                function totalDue(){
                    var rpm = parseFloat(document.getElementById("rpm").value) || 0;
                    var rpd = parseFloat(document.getElementById("rpd").value) || 0;
                    var totalMiles = parseFloat(document.getElementById("totalMile").value) || 0;
                    var numOfDays = parseFloat(document.getElementById("numOfDays").value) || 0;
                
                    var totalDue = (rpm * totalMiles) + (rpd * numOfDays);
                    document.getElementById("totalDue").value = totalDue;
                }
