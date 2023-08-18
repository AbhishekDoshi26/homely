enum HouseTag {
  recent,
  popular,
  bestseller,
}

class HouseModel {
  final String id;
  final String title;
  final String image;
  final String description;
  final String cost;
  final String location;
  final List<String> amenities;
  final HouseTag tag;

  HouseModel({
    required this.id,
    required this.title,
    required this.image,
    required this.description,
    required this.cost,
    required this.location,
    required this.amenities,
    required this.tag,
  });

  static List<HouseModel> fakeHouseData = [
    HouseModel(
      id: "#001",
      title: "Cozy Cottage",
      image:
          "https://i.pinimg.com/originals/a9/fe/61/a9fe61f6df7375721503c5f4079b5653.jpg",
      description: "A charming cottage nestled in the woods.",
      cost: "\$350,000",
      location: "Woodland Heights",
      amenities: ["Fireplace", "Garden", "Patio"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#002",
      title: "Modern Loft",
      image:
          "https://hips.hearstapps.com/hmg-prod/images/loft-ideas-catherinekwongdesign-hawaii-1176x1120px-12-1566931238.jpg",
      description: "Sleek and stylish loft with city views.",
      cost: "\$750,000",
      location: "Downtown Metropolis",
      amenities: ["Open Floor Plan", "High Ceilings", "Balcony"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#003",
      title: "Riverside Retreat",
      image:
          "https://img.trackhs.com/x1080/https://track-pm.s3.amazonaws.com/soco/image/0b07247d-37de-4927-a67e-bbd755e41f86",
      description: "Tranquil retreat by the river with a private dock.",
      cost: "\$500,000",
      location: "Riverfront Estates",
      amenities: ["Waterfront", "Dock", "Deck"],
      tag: HouseTag.bestseller,
    ),
    HouseModel(
      id: "#004",
      title: "Vintage Villa",
      image: "https://img.stayvista.com/gallery/hamptons-charm-60b249.jpg",
      description: "Elegant villa with historical charm.",
      cost: "\$1,200,000",
      location: "Heritage District",
      amenities: ["Garden", "Pool", "Library"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#005",
      title: "Hillside Haven",
      image:
          "https://cdn.remax.co.za/listings/4253297/original/86fb6889-0aa3-f024-9ed7-1e92caf71abf.jpg",
      description: "Serenely nestled on a hillside with breathtaking views.",
      cost: "\$850,000",
      location: "Tranquil Hills",
      amenities: ["Scenic Views", "Deck", "Spa"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#006",
      title: "Modern Condo",
      image:
          "https://cdn.floridadesign.com/wp-content/uploads/sites/137/2020/03/fb7-5.jpg",
      description: "Stylish and spacious condo with panoramic views.",
      cost: "\$650,000",
      location: "City Center",
      amenities: ["Swimming Pool", "Gym", "Balcony"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#007",
      title: "Luxury Mansion",
      image:
          "https://do84cgvgcm805.cloudfront.net/article/362/1200/25cf654358d7812a07902fa42f249dedbec8eb058bdda541c88b9e3b317a93d9.jpg",
      description: "Elegant mansion with top-notch amenities.",
      cost: "\$3,500,000",
      location: "Exclusive Estates",
      amenities: ["Pool", "Home Theater", "Wine Cellar"],
      tag: HouseTag.bestseller,
    ),
    HouseModel(
      id: "#008",
      title: "Charming Bungalow",
      image:
          "https://i.pinimg.com/originals/36/88/a0/3688a033abe8b944228026b4281179ca.jpg",
      description: "Quaint bungalow with a beautifully landscaped garden.",
      cost: "\$280,000",
      location: "Suburban Retreat",
      amenities: ["Fireplace", "Patio", "Garage"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#009",
      title: "Rustic Farmhouse",
      image:
          "https://blog.canadianloghomes.com/wp-content/uploads/2022/02/log-cabin-decorating-ideas.jpg",
      description: "Cozy farmhouse with a rustic feel and vast land.",
      cost: "\$420,000",
      location: "Countryside",
      amenities: ["Barn", "Orchard", "Workshop"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#010",
      title: "Beachfront Villa",
      image:
          "https://www.exceptionalvillas.com/public/upload/listing_photos_resize/w1900xh1900-Sea-Long-Bay-Villa-Stunning-Ocean-View-Beach-Access-Villa-Anguilla-44.jpg",
      description:
          "Seaside villa with stunning ocean views and private beach access.",
      cost: "\$1,200,000",
      location: "Coastal Paradise",
      amenities: ["Infinity Pool", "Private Beach", "Sun Deck"],
      tag: HouseTag.bestseller,
    ),
    HouseModel(
      id: "#011",
      title: "Mountain Cabin",
      image:
          "https://www.seema.com/wp-content/uploads/2023/02/02cabins-shutterstock_2174507511-1365x2048.jpg",
      description: "Cozy cabin in the mountains, perfect for nature lovers.",
      cost: "\$280,000",
      location: "Scenic Highlands",
      amenities: ["Fireplace", "Deck", "Hiking Trails"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#012",
      title: "Urban Townhouse",
      image:
          "https://architecturesstyle.b-cdn.net/wp-content/uploads/2020/10/modern-townhouse-design-1.jpg",
      description: "Modern townhouse with urban amenities and convenience.",
      cost: "\$450,000",
      location: "Metropolitan Heights",
      amenities: ["Rooftop Terrace", "Walkable Neighborhood", "Fitness Center"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#013",
      title: "Lakefront Retreat",
      image:
          "https://rovology.com/wp-content/uploads/2023/05/Stunning-homes-along-Lake-Arrowhead-photo-by-Michael-Kompanik.jpg",
      description: "Tranquil retreat with stunning lake views.",
      cost: "\$550,000",
      location: "Lakeside Haven",
      amenities: ["Waterfront", "Dock", "Deck"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#014",
      title: "Historic Brownstone",
      image:
          "https://assets.agentfire3.com/uploads/sites/312/2023/04/brownstones-in-new-york-city-6.jpg",
      description: "Charming historic brownstone in a vibrant neighborhood.",
      cost: "\$950,000",
      location: "Heritage District",
      amenities: ["Vintage Details", "Courtyard", "Fireplace"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#015",
      title: "Country Estate",
      image:
          "https://robbreport.com/wp-content/uploads/2021/12/BaroqueStyleMansion.jpg",
      description: "Expansive estate with acres of land and luxury amenities.",
      cost: "\$5,500,000",
      location: "Country Acres",
      amenities: ["Pool", "Tennis Court", "Guest House"],
      tag: HouseTag.bestseller,
    ),
    HouseModel(
      id: "#016",
      title: "Secluded Cabin",
      image:
          "https://i.pinimg.com/1200x/0f/35/e2/0f35e2f00421e958e6a32313423a18fe.jpg",
      description: "Remote cabin tucked away in the wilderness.",
      cost: "\$180,000",
      location: "Hidden Woods",
      amenities: ["Nature Trails", "Privacy", "Firepit"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#017",
      title: "City Penthouse",
      image:
          "https://www.galliardhomes.com/sites/default/files/images/properties//OxuFdAryJPv.jpg",
      description: "Elevated living in a luxurious urban penthouse.",
      cost: "\$1,800,000",
      location: "Downtown Skyline",
      amenities: ["Panoramic Views", "Spa", "Concierge"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#018",
      title: "Lakeview Cottage",
      image:
          "https://i0.wp.com/www.melaniejadedesign.com/wp-content/uploads/2023/07/lake-house-1.png",
      description: "Charming cottage with beautiful views of the lake.",
      cost: "\$420,000",
      location: "Lakeside Retreat",
      amenities: ["Lake Access", "Deck", "Fireplace"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#019",
      title: "Equestrian Estate",
      image:
          "https://www.christiesrealestate.com/blog/wp-content/uploads/2023/05/DHG2004_Circle-Creek-Farm-HI-RES-292.jpg",
      description: "Elegant estate with stables and equestrian facilities.",
      cost: "\$2,950,000",
      location: "Equestrian Meadows",
      amenities: ["Stables", "Riding Arena", "Pool"],
      tag: HouseTag.bestseller,
    ),
    HouseModel(
      id: "#020",
      title: "Mansion on the Hill",
      image:
          "https://i.pinimg.com/originals/0f/90/ea/0f90ea41daf8d5807603f6584481afb3.jpg",
      description: "Grand mansion overlooking the city from a hilltop.",
      cost: "\$4,200,000",
      location: "Hillside Estates",
      amenities: ["Elevator", "Pool", "Theater"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#021",
      title: "Seaside Retreat",
      image:
          "https://img.traveltriangle.com/blog/wp-content/uploads/2017/03/most-romantic-beach-houses-in-the-world.jpg",
      description: "Relaxing retreat with direct access to the beach.",
      cost: "\$750,000",
      location: "Coastal Escape",
      amenities: ["Beach Access", "Sun Deck", "Hot Tub"],
      tag: HouseTag.recent,
    ),
    HouseModel(
      id: "#022",
      title: "Ranch Oasis",
      image: "https://digs.net/wp-content/uploads/2022/03/3S5A3496-scaled.jpg",
      description: "Sprawling ranch with rolling hills and outdoor spaces.",
      cost: "\$1,600,000",
      location: "Rural Ranchlands",
      amenities: ["Barn", "Pond", "Trails"],
      tag: HouseTag.popular,
    ),
    HouseModel(
      id: "#023",
      title: "Urban Retreat",
      image:
          "https://homeadore.com/wp-content/uploads/2023/03/002-sea-matharoo-associates-1050x637.jpg",
      description: "Serene oasis in the heart of the city.",
      cost: "\$1,050,000",
      location: "City Haven",
      amenities: ["Garden", "Courtyard", "Spa"],
      tag: HouseTag.bestseller,
    ),
    HouseModel(
      id: "#024",
      title: "Mediterranean Villa",
      image:
          "https://www.home-designing.com/wp-content/uploads/2021/10/outdoor-lighting.jpg",
      description: "Elegant villa with Mediterranean-inspired architecture.",
      cost: "\$2,300,000",
      location: "Mediterranean Enclave",
      amenities: ["Pool", "Courtyard", "Gazebo"],
      tag: HouseTag.popular,
    ),
  ];
}
