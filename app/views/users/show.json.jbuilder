json.user do
	json.firstName @user.firstName
  json.middleName @user.middleName
  json.lastName @user.lastName
  json.todolists @todolists
end