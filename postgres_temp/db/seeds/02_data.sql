INSERT INTO childAccount (
  id, 
  child_id, 
  first_name, 
  last_name, 
  account_number, 
  account_balance, 
  account_cvv, 
  expiry_date)
VALUES
  (1, 1, "Tina", "Toaster", "d0660a4d-9be5-4cb4-a3a1-4d1854bd26ae", 125, 111, 2025/12/01)


INSERT INTO children (
  id,
  first_name,
  last_name,
  account_number,
  account_password,
  expiry_date,
  start_date,
  end_date,
  active,
  account_balance,
  account_cvv,
  money_request,
  parent_id,
  permission_list,
  transaction_list,
  max_transaction,
  bank_account_reference,
  text_color,
  card_color,
  background_color,
  header_color,
  created_at,
  updated_at,
);
VALUES
  (1, "Tina", "Toaster", "d0660a4d-9be5-4cb4-a3a1-4d1854bd26ae", 2025/12/01, 2021/11/11, 2025/12/01, true, 125, 111, 100, 1, "www.sephora.com",  )


INSERT INTO recent_transactions (
  id,
  child_id,
  account_number,
  transaction_amount,
  transaction_note,
  created_at,
)
VALUES(1, 1, "d0660a4d-9be5-4cb4-a3a1-4d1854bd26ae", 50, "www.sephora.com", now )


INSERT INTO requestMoney(
  id,
  child_id,
  parent_id,
  request_note,
  request_amount,
  created_at,
  decided,
  decision_updated_at,
)
VALUES(1, 1, 1, "www.amazon.com", 100, "www.sephora.com", now, false ,now )

INSERT INTO approveRequestMoney(
  id,
  child_id,
  parent_id,
  request_note,
  request_amount,
  created_at,
  decided,
  decision_updated_at,
)
VALUES(1, 1, 1, "www.amazon.com", 100, "www.sephora.com", now, true ,now )

INSERT INTO accountSetting(
  child_id,
  parent_id,
  active,
  created_at,
)
VALUES(1, 1, true, 2021/11/11)

INSERT INTO sendMoney(
  id,
  child_id,
  parent_id,
  send_money_note,
  send_amount,
  created_at
)
VALUES(1, 1, 1, "Money from Mom", 50, 2021/11/22)

INSERT INTO parents(
  id,
  first_name,
  last_name,
  ewallet_account_number,
  ewallet_password,
  bank_account_number,
  active,
  street_number,
  street,
  city,
  postal_code,
  phone_number,
  email,
  money_request,
  children_list,
  transaction_list,
  text_color,
  background_color,
  header_color,
  created_at,
  updated_at,
)

VALUES(1, 1, 1, "Money from Mom", 50, 2021/11/22)