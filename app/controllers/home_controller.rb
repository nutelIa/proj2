class HomeController < ApplicationController
	def photo
		n = rand(1..10)
		if n == 1
			@photo = "http://www.yesvegetarian.com/wp-content/uploads/2014/11/Funny-cute-dog.jpg"
		elsif n == 2
			@photo = "https://s-media-cache-ak0.pinimg.com/originals/0b/87/79/0b8779eb918782f62e08c94c6e511f6e.gif"
		elsif n == 3
			@photo = "https://pbs.twimg.com/profile_images/2989124092/8c35c8bfd524c5e3e920b118a5c414f7.jpeg"
		elsif n == 4
			@photo = "http://hotpenguin.net/wp-content/uploads/2013/09/47-Bunny-Picture.jpg"
		elsif n == 5
			@photo = "http://images6.fanpop.com/image/photos/33400000/Cute-Panda-beautiful-pictures-33434826-500-500.jpg"
		elsif n == 6
			@photo = "https://s-media-cache-ak0.pinimg.com/736x/9f/c0/f3/9fc0f3224040a52ccd5dd9a4f4af1bfa.jpg"
		elsif n == 7
			@photo = "https://kecuwayomi.files.wordpress.com/2015/03/adorable-cute-hedgehog-hedgie-love-favim-com-280416.jpg"
		elsif n == 8
			@photo = "http://www.gifbin.com/bin/092009/1252181399_rolling-puppy.gif"
		elsif n == 9
			@photo = "http://www.gifbin.com/bin/072011/1311246801_cute_baby_sloth_yawns.gif"
		elsif n == 10
			@photo = "http://www.gifbin.com/bin/102013/1383326929_cute_curious_seal_pup.gif"
		end
	end
end
