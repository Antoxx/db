# A + A-B intersection
select u.name, r. name from users u
left join user_roles ur on u.id = ur.user_id 
left join roles r on r.id = ur.role_id

# A - A-B intersection
select u.name, r. name from users u
left join user_roles ur on u.id = ur.user_id 
left join roles r on r.id = ur.role_id
where r.id is null

# A-B intersection (INNER JOIN by default)
select u.name, r. name from users u
join user_roles ur on u.id = ur.user_id 
join roles r on r.id = ur.role_id

# A-B intersection
select u.name, r. name from users u
inner join user_roles ur on u.id = ur.user_id 
inner join roles r on r.id = ur.role_id

# B + A-B intersection
select u.name, r. name from users u
right join user_roles ur on u.id = ur.user_id 
right join roles r on r.id = ur.role_id

# B - A-B intersection
select u.name, r. name from users u
right join user_roles ur on u.id = ur.user_id 
right join roles r on r.id = ur.role_id
where u.id is null

# A + B + A-B intersection
select u.name, r. name from users u
full join user_roles ur on u.id = ur.user_id 
full join roles r on r.id = ur.role_id

# A + B - A-B intersection
select u.name, r. name from users u
full join user_roles ur on u.id = ur.user_id 
full join roles r on r.id = ur.role_id
where u.id is null or r.id is null
