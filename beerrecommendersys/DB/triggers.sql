--# So lets say an user reviewed a beer but then forgot and again tries to review (insert)
--# instead it should update the tuple

CREATE OR REPLACE FUNCTION trigger_function() 
    RETURNS trigger AS $BODY$
BEGIN
IF (OLD.beerId = NEW.beerId AND OLD.username = NEW.username) THEN
        UPDATE Reviews SET beerId = beerId, username = username, 
            reviewAroma = NEW.reviewAroma,  reviewAppearance = NEW.reviewAppearance, 
             reviewTaste = NEW.reviewTaste,  reviewPalate = NEW.reviewPalate,  
             reviewOverall = NEW.reviewOverall;
        UPDATE Users SET modifiedOn = current_timestamp; --date he modified or reviewed
END IF;

RETURN NEW;
END;
$BODY$ LANGUAGE plpgsql;
CREATE TRIGGER reviewUpd 
BEFORE INSERT 
ON Reviews
FOR EACH ROW
EXECUTE PROCEDURE trigger_function();