3.times do |topic|

	Topic.create!(
			title: "Topic #{topic}"
		)
end

puts "3 Topics created"




10.times do |blog|
	Blog.create!(
			title: "My Blog Post#{blog}",
			body: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
			topic_id: Topic.last.id
		)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
			title: "Rails #{skill}",
			precent_utilized: 15
		)
end

puts "5 skills created"

8.times do |por|
	Portfolio.create!(
			title: "portfolio #{por}",
			subtitle: "Ruby on rails",
			body: "It is a long established fact that a reader",
			main_image: "https://place-hold.it/300x200",
			thumb_image: "https://place-hold.it/350x200"
		)
end

1.times do |por|
	Portfolio.create!(
			title: "portfolio #{por}",
			subtitle: "Angular",
			body: "It is a long established fact that a reader",
			main_image: "https://place-hold.it/300x200",
			thumb_image: "https://place-hold.it/350x200"
		)
end

puts "9 portfolio items created"


3.times do |technology|
	Portfolio.last.technologies.create!(
			name: "Technology #{technology}"
		)
end

puts "3 technologies created"