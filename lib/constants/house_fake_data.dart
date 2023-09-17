import 'package:homely/home/model/home_model.dart';

class HouseFakeData {
  static List<HouseModel> fakeHouseData = [
    HouseModel(
      id: "#001",
      title: "Cozy Cottage",
      imageUrl:
          "https://i.pinimg.com/originals/a9/fe/61/a9fe61f6df7375721503c5f4079b5653.jpg",
      description:
          "Nestled amidst the tranquil woods, this charming cottage offers a serene escape from the bustling world. Its rustic allure combines seamlessly with modern comforts, creating an inviting retreat for those seeking solace. With a spacious interior boasting warm wooden accents and a crackling fireplace, you'll find every corner exudes coziness. Step outside onto the lush garden, where vibrant blooms paint a picturesque scene, and the soothing rustle of leaves complements your leisurely moments. The quaint patio invites you to unwind with a cup of your favorite brew, enveloped in the symphony of nature. Discover the perfect balance of rustic elegance and comfort in this delightful woodland haven.",
      cost: "\$350,000",
      location: "Woodland Heights",
      amenities: ["🔥 Fireplace", "🌳 Garden", "🪴 Patio"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#002",
      title: "Modern Loft",
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod/images/loft-ideas-catherinekwongdesign-hawaii-1176x1120px-12-1566931238.jpg",
      description:
          "Experience urban living at its finest in this sleek and stylish loft. Offering a fusion of contemporary design and comfort, this loft is a canvas of modern elegance. Floor-to-ceiling windows frame sweeping city views, infusing the space with natural light. The open floor plan encourages seamless living, while the high ceilings amplify the sense of spaciousness. Step onto the balcony to savor a breath of fresh air while overlooking the vibrant pulse of Downtown Metropolis. Immerse yourself in the urban energy while maintaining a sense of tranquility in this remarkable modern loft.",
      cost: "\$750,000",
      location: "Downtown Metropolis",
      amenities: ["🏠 Open Floor Plan", "🏞️ High Ceilings", "🌆 Balcony"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#003",
      title: "Riverside Retreat",
      imageUrl:
          "https://img.trackhs.com/x1080/https://track-pm.s3.amazonaws.com/soco/image/0b07247d-37de-4927-a67e-bbd755e41f86",
      description:
          "Indulge in serenity by the river in this enchanting retreat. Embraced by lush greenery and nestled along the waterfront, this residence offers a private oasis for relaxation and leisure. A picturesque dock extends over the tranquil river, providing a personal escape for boating and quiet reflection. The spacious deck beckons you to enjoy alfresco moments, where you can watch the sun paint the sky with hues of gold and amber. With water as your backdrop and nature as your neighbor, discover the harmony of living in harmony with the elements in this riverside haven.",
      cost: "\$500,000",
      location: "Riverfront Estates",
      amenities: ["🌊 Waterfront", "⚓ Dock", "🛋️ Deck"],
      tag: HouseTag.bestseller,
    ),
    HouseModel(
      id: "#004",
      title: "Vintage Villa",
      imageUrl: "https://img.stayvista.com/gallery/hamptons-charm-60b249.jpg",
      description:
          "Step into a bygone era of elegance in this exquisite vintage villa. Rich in historical charm, this residence stands as a testament to craftsmanship and artistry. The ornate details, from intricate woodwork to stained glass windows, reflect a time of opulence. Amidst the meticulously landscaped garden, you'll find respite and tranquility. Immerse yourself in the ambiance of the past while enjoying modern comforts. With a refreshing pool and a well-curated library, this vintage villa offers a lifestyle that merges heritage and luxury seamlessly.",
      cost: "\$1,200,000",
      location: "Heritage District",
      amenities: ["🌳 Garden", "🏊‍♂️ Pool", "📚 Library"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#005",
      title: "Hillside Haven",
      imageUrl:
          "https://cdn.remax.co.za/listings/4253297/original/86fb6889-0aa3-f024-9ed7-1e92caf71abf.jpg",
      description:
          "Discover the epitome of serenity and natural beauty in this hillside haven. Set amidst tranquil hills, this residence captures breathtaking panoramic views that unfold before you in every direction. Whether bathed in the warm hues of sunrise or the soft glow of sunset, the vistas are nothing short of mesmerizing. Embrace the outdoors on the spacious deck, where each moment is a feast for the senses. Unwind in the spa, letting your worries melt away as you soak in the peaceful surroundings. Here, amidst the harmonious union of nature and architecture, you'll find the retreat you've been longing for.",
      cost: "\$850,000",
      location: "Tranquil Hills",
      amenities: ["🌄 Scenic Views", "🛋️ Deck", "💆‍♀️ Spa"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#006",
      title: "Modern Condo",
      imageUrl:
          "https://cdn.floridadesign.com/wp-content/uploads/sites/137/2020/03/fb7-5.jpg",
      description:
          "Experience modern urban living at its finest in this stylish and spacious condo. From the moment you step inside, you'll be captivated by the clean lines and contemporary design. Expansive windows offer panoramic views that stretch beyond the cityscape, creating an ever-changing backdrop. Embrace an active lifestyle with access to the swimming pool and well-equipped gym, perfect for daily workouts. The private balcony invites you to enjoy your morning coffee while gazing at the city's pulse below. Live in the heart of the City Center, where luxury meets convenience in this remarkable modern condo.",
      cost: "\$650,000",
      location: "City Center",
      amenities: ["🏊‍♂️ Swimming Pool", "🏋️‍♂️ Gym", "🌆 Balcony"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#007",
      title: "Luxury Mansion",
      imageUrl:
          "https://do84cgvgcm805.cloudfront.net/article/362/1200/25cf654358d7812a07902fa42f249dedbec8eb058bdda541c88b9e3b317a93d9.jpg",
      description:
          "Indulge in the epitome of refined living in this elegant mansion. From the grand entrance to the intricate details, every aspect of this residence exudes luxury. The spacious interior is complemented by top-notch amenities that cater to your every desire. Imagine hosting lavish gatherings in the home theater or savoring fine vintages from your private wine cellar. Beyond the opulent interior, step into the serene oasis of the pool area, surrounded by lush landscaping. Nestled in the prestigious Exclusive Estates, this mansion offers a lifestyle where extravagance meets sophistication.",
      cost: "\$3,500,000",
      location: "Exclusive Estates",
      amenities: ["🏊‍♂️ Pool", "🎬 Home Theater", "🍷 Wine Cellar"],
      tag: HouseTag.bestseller,
    ),
    HouseModel(
      id: "#008",
      title: "Charming Bungalow",
      imageUrl:
          "https://i.pinimg.com/originals/36/88/a0/3688a033abe8b944228026b4281179ca.jpg",
      description:
          "Escape to this quaint bungalow, where charm meets comfort in perfect harmony. Tucked away in a peaceful suburban retreat, this home boasts a character all its own. The beautifully landscaped garden sets the scene for tranquil mornings and serene evenings. Inside, the ambiance is further enriched by the warmth of a crackling fireplace, creating the ideal setting for cozy gatherings. Step outside onto the patio, where you can enjoy alfresco dining or simply unwind in the fresh air. With the convenience of a spacious garage, this charming bungalow offers a slice of suburban paradise.",
      cost: "\$280,000",
      location: "Suburban Retreat",
      amenities: ["🔥 Fireplace", "🪴 Patio", "🚗 Garage"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#009",
      title: "Rustic Farmhouse",
      imageUrl:
          "https://blog.canadianloghomes.com/wp-content/uploads/2022/02/log-cabin-decorating-ideas.jpg",
      description:
          "Experience the allure of rustic living in this cozy farmhouse, nestled amidst the picturesque countryside. As you approach, the classic charm of the exterior welcomes you with open arms. Inside, the rustic ambiance is infused with modern comfort, making this farmhouse a retreat that strikes the perfect balance between old-world charm and contemporary living. The vast land provides ample space for your own private oasis, while the barn, orchard, and workshop allow you to pursue hobbies and passions to your heart's content. Embrace the beauty of simple living and the tranquility of nature in this charming rustic farmhouse.",
      cost: "\$420,000",
      location: "Countryside",
      amenities: ["🏡 Barn", "🌳 Orchard", "🛠️ Workshop"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#010",
      title: "Beachfront Villa",
      imageUrl:
          "https://www.exceptionalvillas.com/public/upload/listing_photos_resize/w1900xh1900-Sea-Long-Bay-Villa-Stunning-Ocean-View-Beach-Access-Villa-Anguilla-44.jpg",
      description:
          "Indulge in the epitome of coastal living in this breathtaking beachfront villa. Perched along the shoreline of the mesmerizing ocean, this seaside retreat offers uninterrupted views that stretch to the horizon. Immerse yourself in the luxury of the infinity pool, where the water seems to seamlessly merge with the sea. The private beach access is a gateway to moments of sun-soaked tranquility and the rhythm of the waves. Take in the beauty of sunrises and sunsets from the sun deck, where each moment is a cherished memory. Live in paradise in the heart of the Coastal Paradise.",
      cost: "\$1,200,000",
      location: "Coastal Paradise",
      amenities: ["🏖️ Infinity Pool", "🏖️ Private Beach", "🌄 Sun Deck"],
      tag: HouseTag.bestseller,
    ),
    HouseModel(
      id: "#011",
      title: "Mountain Cabin",
      imageUrl:
          "https://www.seema.com/wp-content/uploads/2023/02/02cabins-shutterstock_2174507511-1365x2048.jpg",
      description:
          "Embrace the serenity of the mountains in this cozy cabin nestled within the embrace of the scenic highlands. The cabin's rustic charm and inviting warmth create a haven for nature lovers seeking respite. As you step onto the deck, the crisp mountain air fills your senses, inviting you to explore the beauty of the surroundings. Inside, a crackling fireplace sets the tone for cozy evenings, while the deck provides a space for star-gazing and quiet reflection. Venture out onto the hiking trails to experience the allure of untouched landscapes and the harmony of nature. Live amidst the mountains in this perfect retreat.",
      cost: "\$280,000",
      location: "Scenic Highlands",
      amenities: ["🔥 Fireplace", "🛋️ Deck", "🥾 Hiking Trails"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#012",
      title: "Urban Townhouse",
      imageUrl:
          "https://architecturesstyle.b-cdn.net/wp-content/uploads/2020/10/modern-townhouse-design-1.jpg",
      description:
          "Experience urban living at its finest in this modern townhouse designed for convenience and style. Nestled in the heart of the bustling Metropolitan Heights, this townhouse offers the perfect balance between contemporary living and urban amenities. The rooftop terrace provides a private oasis with panoramic views of the city skyline, while the walkable neighborhood ensures that every convenience is just a stroll away. Stay active and rejuvenated in the fitness center, ensuring that every aspect of modern living is at your doorstep.",
      cost: "\$450,000",
      location: "Metropolitan Heights",
      amenities: [
        "🏙️ Rooftop Terrace",
        "🚶‍♂️ Walkable Neighborhood",
        "💪 Fitness Center"
      ],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#013",
      title: "Lakefront Retreat",
      imageUrl:
          "https://rovology.com/wp-content/uploads/2023/05/Stunning-homes-along-Lake-Arrowhead-photo-by-Michael-Kompanik.jpg",
      description:
          "Escape to this tranquil retreat that embraces the beauty of nature alongside stunning lake views. The essence of serenity is woven into every corner of this haven, where the sound of gently lapping waves soothes the soul. Take in the breathtaking scenery from the comfort of the spacious deck, or venture to the private dock to enjoy leisurely afternoons by the water's edge. Whether you seek peaceful contemplation or joyful gatherings, this lakeside escape promises both. Live amidst nature's beauty in the heart of Lakeside Haven.",
      cost: "\$550,000",
      location: "Lakeside Haven",
      amenities: ["🌊 Waterfront", "⚓ Dock", "🛋️ Deck"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#014",
      title: "Historic Brownstone",
      imageUrl:
          "https://wp-tid.zillowstatic.com/streeteasy/2/Classic-Brownstone-in-Park-Slope-Brooklyn-fe2ee5.jpeg",
      description:
          "Step into the past and experience the charm of a bygone era in this historic brownstone nestled within the vibrant Heritage District. This charming residence exudes character with its vintage details, from ornate architectural features to timeless craftsmanship. The enchanting courtyard is a peaceful haven that welcomes you with blooming flowers and the soothing sound of a fountain. Inside, the warmth of a crackling fireplace sets the tone for cozy evenings spent in good company. Immerse yourself in the stories of the past while enjoying modern comforts in this captivating historic brownstone.",
      cost: "\$950,000",
      location: "Heritage District",
      amenities: ["🕰️ Vintage Details", "🌼 Courtyard", "🔥 Fireplace"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#015",
      title: "Country Estate",
      imageUrl:
          "https://robbreport.com/wp-content/uploads/2021/12/BaroqueStyleMansion.jpg",
      description:
          "Embrace grandeur and luxury in this expansive country estate that sprawls across acres of lush land. The epitome of opulence, this property offers an unparalleled lifestyle with its lavish amenities and exquisite design. Lounge by the shimmering pool under the sun's warmth, practice your game on the tennis court nestled amidst the estate's natural beauty, and host guests in the charming guest house. Immerse yourself in the refined elegance of the Country Acres, where every corner exudes sophistication and leisure.",
      cost: "\$5,500,000",
      location: "Country Acres",
      amenities: ["🏊‍♂️ Pool", "🎾 Tennis Court", "🏠 Guest House"],
      tag: HouseTag.bestseller,
    ),
    HouseModel(
      id: "#016",
      title: "Secluded Cabin",
      imageUrl:
          "https://i.pinimg.com/1200x/0f/35/e2/0f35e2f00421e958e6a32313423a18fe.jpg",
      description:
          "Discover serenity in this remote cabin, a hidden gem tucked away in the heart of the wilderness. Experience the beauty of nature in its purest form as you navigate the meandering nature trails, finding solace amidst the trees and under the open sky. Privacy reigns supreme, offering a tranquil escape from the demands of modern life. As the sun sets, gather around the firepit to enjoy the crackling flames, creating lasting memories in this idyllic haven known as Hidden Woods.",
      cost: "\$180,000",
      location: "Hidden Woods",
      amenities: ["🌲 Nature Trails", "🔒 Privacy", "🔥 Firepit"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#017",
      title: "City Penthouse",
      imageUrl:
          "https://www.galliardhomes.com/sites/default/files/images/properties//OxuFdAryJPv.jpg",
      description:
          "Elevate your living experience in this luxurious city penthouse that offers a lifestyle beyond compare. High above the bustling streets of Downtown Skyline, indulge in panoramic views that stretch to the horizon. Rejuvenate in the private spa, a haven of relaxation amidst the urban landscape. The attentive concierge service ensures that your every need is met, offering convenience and a touch of indulgence. Experience elevated urban living in the lap of luxury.",
      cost: "\$1,800,000",
      location: "Downtown Skyline",
      amenities: ["🌆 Panoramic Views", "💆‍♀️ Spa", "👨‍✈️ Concierge"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#018",
      title: "Lakeview Cottage",
      imageUrl:
          "https://i0.wp.com/www.melaniejadedesign.com/wp-content/uploads/2023/07/lake-house-1.png",
      description:
          "Escape to this charming lakeview cottage, a tranquil retreat that offers breathtaking views of the water's edge. The gentle lapping of the waves against the shore provides the soundtrack to your serene getaway. Spend your days on the inviting deck, absorbing the stunning scenery or cozied up by the fireplace on cooler nights. The lake access allows you to dip your toes in the water whenever you please, creating a haven of relaxation and natural beauty in the heart of Lakeside Retreat.",
      cost: "\$420,000",
      location: "Lakeside Retreat",
      amenities: ["🏞️ Lake Access", "🛋️ Deck", "🔥 Fireplace"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#019",
      title: "Equestrian Estate",
      imageUrl:
          "https://www.christiesrealestate.com/blog/wp-content/uploads/2023/05/DHG2004_Circle-Creek-Farm-HI-RES-292.jpg",
      description:
          "Step into a world of elegance and equine luxury with this exquisite equestrian estate. Nestled within the sprawling landscapes of Equestrian Meadows, this property boasts top-notch stables fit for your beloved horses, a spacious riding arena where you can practice your passion, and a refreshing pool where you can unwind after a long day. Immerse yourself in a lifestyle that beautifully balances the grace of nature with the refinement of high-class living. Discover the ultimate equestrian haven.",
      cost: "\$2,950,000",
      location: "Equestrian Meadows",
      amenities: ["🐴 Stables", "🏇 Riding Arena", "🏊‍♂️ Pool"],
      tag: HouseTag.bestseller,
    ),
    HouseModel(
      id: "#020",
      title: "Mansion on the Hill",
      imageUrl:
          "https://i.pinimg.com/originals/0f/90/ea/0f90ea41daf8d5807603f6584481afb3.jpg",
      description:
          "Indulge in the grandeur of this magnificent mansion, perched atop a hill with commanding views of the city below. The Mansion on the Hill offers a lifestyle of opulence and sophistication. Ride the elevator between floors, enjoy a refreshing swim in the sprawling pool, and experience the magic of movie nights in your private theater. As the sun sets over the Hillside Estates, you'll be reminded of the extraordinary life you've built in this remarkable dwelling.",
      cost: "\$4,200,000",
      location: "Hillside Estates",
      amenities: ["🛗 Elevator", "🏊‍♂️ Pool", "🎬 Theater"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#021",
      title: "Seaside Retreat",
      imageUrl:
          "https://img.traveltriangle.com/blog/wp-content/uploads/2017/03/most-romantic-beach-houses-in-the-world.jpg",
      description:
          "Experience the essence of relaxation at this enchanting Seaside Retreat. With direct access to the beach, you'll wake up to the soothing sound of waves and breathtaking ocean views. Lounge on the ☀️ Sun Deck, unwind in the 🛁 Hot Tub, and let the worries of everyday life melt away in this coastal haven.",
      cost: "\$750,000",
      location: "Coastal Escape",
      amenities: ["🏖️ Beach Access", "☀️ Sun Deck", "🛁 Hot Tub"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#022",
      title: "Ranch Oasis",
      imageUrl: "https://digs.net/wp-content/uploads/2022/03/3S5A3496-scaled.jpg",
      description:
          "Discover the allure of the great outdoors at the Ranch Oasis. This sprawling ranch, nestled in the serene expanse of Rural Ranchlands, offers rolling hills, spacious outdoor spaces, and a sense of tranquility that invites you to leave behind the hustle and bustle. Experience the rustic charm of a 🏡 Barn, take in the beauty of the 🏞️ Pond, and explore the scenic 🥾 Trails that wind through this breathtaking property.",
      cost: "\$1,600,000",
      location: "Rural Ranchlands",
      amenities: ["🏡 Barn", "🏞️ Pond", "🥾 Trails"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#023",
      title: "Urban Retreat",
      imageUrl:
          "https://homeadore.com/wp-content/uploads/2023/03/002-sea-matharoo-associates-1050x637.jpg",
      description:
          "Escape the urban hustle and find solace in the heart of the city with this exquisite Urban Retreat. Tucked away in the City Haven, this serene oasis offers a 🌼 Garden for quiet contemplation, a 🌆 Courtyard to unwind, and a rejuvenating 💆‍♀️ Spa to melt away the stress of modern life. Embrace the harmonious blend of nature and urban living.",
      cost: "\$1,050,000",
      location: "City Haven",
      amenities: ["🌼 Garden", "🌆 Courtyard", "💆‍♀️ Spa"],
      tag: HouseTag.bestseller,
    ),
    HouseModel(
      id: "#024",
      title: "Mediterranean Villa",
      imageUrl:
          "https://www.home-designing.com/wp-content/uploads/2021/10/outdoor-lighting.jpg",
      description:
          "Transport yourself to a world of elegance and refinement with the Mediterranean Villa. This architectural masterpiece nestled within the charming Mediterranean Enclave captures the essence of old-world beauty. Immerse yourself in luxury with the 🏊‍♂️ Pool, find serenity in the 🌼 Courtyard, and indulge in the romance of the 🏰 Gazebo. Experience a lifestyle inspired by the allure of the Mediterranean coast.",
      cost: "\$2,300,000",
      location: "Mediterranean Enclave",
      amenities: ["🏊‍♂️ Pool", "🌼 Courtyard", "🏰 Gazebo"],
      tag: HouseTag.popular,
    ),
  ];
}