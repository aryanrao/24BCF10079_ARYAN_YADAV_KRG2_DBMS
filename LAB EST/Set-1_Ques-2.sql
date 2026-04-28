--Step 1: Create Function
CREATE OR REPLACE FUNCTION check_stock()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.quantity > (
        SELECT stock_qty 
        FROM Products 
        WHERE product_id = NEW.product_id
    ) THEN
        RAISE EXCEPTION 'Order quantity exceeds available stock!';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

--Step 2: Create Trigger
CREATE TRIGGER validate_order
BEFORE INSERT ON Orders
FOR EACH ROW
EXECUTE FUNCTION check_stock();
