use publications;

-- Challenge 1 Who published what at where?

select authors.au_id as Author_Id, authors.au_lname as Last_Name, authors.au_fname as First_name, titles.title as Title, publishers.pub_name as Publisher
	from authors
    join titleauthor
		on authors.au_id = titleauthor.au_id
	join titles
		on titles.title_id = titleauthor.title_id
	join publishers
		on publishers.pub_id = titles.pub_id
	order by Author_Id asc;
    
    -- Challenge 2 Who has published how many at where?
    
  select authors.au_id as Author_Id, authors.au_lname as Last_Name, authors.au_fname as First_name, publishers.pub_name as Publisher, count(titles.title) as Title
	from authors
    join titleauthor
		on authors.au_id = titleauthor.au_id
	join titles
		on titles.title_id = titleauthor.title_id
	join publishers
		on publishers.pub_id = titles.pub_id
	group by Author_Id, last_name, first_name, Publisher 
	order by Author_Id desc; 
    
-- Challenge 3 - Best Selling Authors

