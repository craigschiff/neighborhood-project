# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
#
# # members = Member.create!([
# #   { name: 'afs', relationship_status: 'red' },
# #   { name: 'gasa', relationship_status: 'yellow' },
# #   { name: 'xasc', relationship_status: 'green' },
# #   { name: 'vdava', relationship_status: 'green' }
# #   ])
#
#
#   # events = Event.create!([
#   #   { name: 'hey', capacity: 20, active: true, location:"50 murray street", price_description:"2 beers for $3", datetime: Time.now },
#   #   { name: 'hij', capacity: 60, active: true, location:"11 broadway", price_description:"20 open bar", datetime: Time.now},
#   #   { name: 'ml', capacity: 100, active: true, location:"20 mott street", price_description:"beer and burger for $5", datetime: Time.now },
#   #   { name: 'asd', capacity: 5, active: false, location:"80 chambers street", price_description:"buy one drink get one free", datetime: Time.now }
#   #   ])
#

  accounts = Account.create([
  {email: 'email1@sample.com', password: 'password', password_confirmation: 'password'},
  {email: 'email2@sample.com', password: 'password', password_confirmation: 'password'},
  {email: 'email3@sample.com', password: 'password', password_confirmation: 'password'},
  {email: 'email4@sample.com', password: 'password', password_confirmation: 'password'},
  {email: 'email5@sample.com', password: 'password', password_confirmation: 'password'},
  {email: 'email6@sample.com', password: 'password', password_confirmation: 'password'},
  {email: 'email7@sample.com', password: 'password', password_confirmation: 'password'},
  {email: 'email8@sample.com', password: 'password', password_confirmation: 'password'},
  {email: 'email9@sample.com', password: 'password', password_confirmation: 'password'},
  {email: 'email0@sample.com', password: 'password', password_confirmation: 'password'}
  ])



      z = Category.create({ name: 'food', description: "food" })
      y = Category.create({ name: 'bar', description: "drinks at bar or club" })
      x = Category.create({ name: 'service', description: "philanthropic or other service related" })
      w = Category.create({ name: 'outside', description: "outside activities including sport and more relaxing"})
      v = Category.create({ name: 'music', description: "music" })
      u = Category.create({ name: 'obscure', description: "unusual things" })
      t = Category.create({ name: 'family-friendly', description: "good for kids" })
      s = Category.create({ name: 'adults-only', description: "use your imagination" })
      r = Category.create({ name: 'theater', description: "live performances" })
      q = Category.create({ name: 'cerebral', description: "deep and thought-provoking" })

      business_acounts = BusinessAccount.create([
        {email: 'emailA@sample.com', password: 'password', password_confirmation: 'password'},
        {email: 'emailB@sample.com', password: 'password', password_confirmation: 'password'},
        {email: 'emailC@sample.com', password: 'password', password_confirmation: 'password'},
        {email: 'emailD@sample.com', password: 'password', password_confirmation: 'password'},
        {email: 'emailE@sample.com', password: 'password', password_confirmation: 'password'},
        {email: 'emailF@sample.com', password: 'password', password_confirmation: 'password'},
        {email: 'emailG@sample.com', password: 'password', password_confirmation: 'password'},
        {email: 'emailH@sample.com', password: 'password', password_confirmation: 'password'},
        {email: 'emailI@sample.com', password: 'password', password_confirmation: 'password'},
        {email: 'emailJ@sample.com', password: 'password', password_confirmation: 'password'}
        ])



              neighborhoods = Neighborhood.create([
                {name: "Tribeca"}, {name: "Soho"}, {name: "East Village"}, {name: "West Village"},
                {name: "Financial District"},{name: "East Harlem"}, {name: "Washington Heights"}
                ])

          ab = Business.create!({name: "My Business", about: "a great place", phone: "212-222-1111", location: "123 A Street", neighborhood_id: Neighborhood.all[0].id, business_account_id: BusinessAccount.all[0].id})
          bb = Business.create!({name: "None of My Business", about: "a good place", phone: "212-222-1112", location: "123 B Street", neighborhood_id: Neighborhood.all[1].id, business_account_id:BusinessAccount.all[1].id})
          cb = Business.create!({name: "Your Business", about: "an okay place", phone: "212-222-1113", location: "123 C Street", neighborhood_id: Neighborhood.all[2].id, business_account_id:BusinessAccount.all[2].id})
          db = Business.create!({name: "None of Your Business", about: "don't ask" , phone: "212-222-1114", location: "123 D Street", neighborhood_id: Neighborhood.all[3].id, business_account_id:BusinessAccount.all[3].id})
          eb = Business.create!({name: "Buy Here", about: "please do", phone: "212-222-1115", location: "123 E Street", neighborhood_id: Neighborhood.all[4].id, business_account_id:BusinessAccount.all[4].id})
          fb = Business.create!({name: "Spendee", about: "we charge a lot", phone: "212-222-1116", location: "123 F Street", neighborhood_id: Neighborhood.all[5].id, business_account_id:BusinessAccount.all[5].id})
          gb = Business.create!({name: "Cheapee", about: "we only charge a bit", phone: "212-222-1117", location: "123 G Street", neighborhood_id: Neighborhood.all[6].id, business_account_id:BusinessAccount.all[6].id})
          hb = Business.create!({name: "World's Best", about: "gotta be good", phone: "212-222-1118", location: "123 H Street", neighborhood_id: Neighborhood.all[0].id, business_account_id:BusinessAccount.all[7].id})
          ib = Business.create!({name: "Pretty Good", about: "not great", phone: "212-222-1119", location: "123 I Street", neighborhood_id: Neighborhood.all[1].id, business_account_id:BusinessAccount.all[8].id})
          jb = Business.create!({name: "Not Bad", about: "could be worse", phone: "212-222-1120", location: "123 J Street", neighborhood_id: Neighborhood.all[2].id, business_account_id:BusinessAccount.all[9].id})





        asdf = {datetime: Time.now, name: "party", description: "a fun time", location: "Tribeca street", price: 10, price_description: "Door charge", capacity: 100, active: true, business_id: Business.all[0].id }
        b = {datetime: Time.now, name: "book group", description: "let's read and discuss" , location: "Soho alley", price: 20, price_description: "Host fee", capacity: 90, active: true, business_id:  Business.all[1].id }
        c = {datetime: Time.now, name: "meatfest", description: "eat some meat", location: "East Village place", price: 30, price_description: "all inclusive", capacity: 80, active: true, business_id:  Business.all[2].id }
        d = {datetime: Time.now, name: "drinkfest", description: "drinking to excess", location: "West Village road", price: 40 , price_description: "drink all night", capacity: 70, active: true, business_id:  Business.all[3].id}
        e = {datetime: Time.now, name: "rock climbing", description: "not to be combined with drinkfest" , location: "somewhere in the Financial District", price: 50, price_description: "includes equipment rental", capacity: 60, active: true, business_id:  Business.all[4].id}
        f = {datetime: Time.now, name: "concert", description: "listening to live music", location: "East Harlem underpass", price: 60, price_description: "Includes two well drinks", capacity: 50, active: true, business_id:  Business.all[5].id }
        g = {datetime: Time.now, name: "fossil hunting", description: "finding dinosaur bones", location: "Washington Heights apartment", price: 70, price_description: "Helmet provided", capacity: 40, active: true, business_id:  Business.all[6].id }
        h = {datetime: Time.now, name: "massage party", description: "Let's touch each other", location: "Soho place", price: 80, price_description: "Worth it!", capacity: 30, active: true, business_id:  Business.all[7].id }
        i = {datetime: Time.now, name: "spoken word", description: "Shh, I'm talking now", location: "Tribeca alley", price: 90, price_description: "Show lasts 12 hours", capacity: 20, active: true, business_id:  Business.all[8].id }
        j = {datetime: Time.now, name: "discussion group", description: "Talk about it", location: "West Village penthouse", price: 0, price_description: "It's free!", capacity: 10, active: true, business_id:  Business.all[9].id}

        a = Event.create!(asdf)
        b = Event.create!(b)
        c = Event.create!(c)
        d = Event.create!(d)
        e = Event.create!(e)
        f = Event.create!(f)
        g = Event.create!(g)
        h = Event.create!(h)
        i = Event.create(i)
        j = Event.create!(j)

          # a = {datetime: Time.now, name: "party", description: "a fun time", location: "Tribeca street", price: 10, price_description: "Door charge", capacity: 100, active: true, business_id: 1 },
          # b = {datetime: Time.now, name: "book group", description: "let's read and discuss" , location: "Soho alley", price: 20, price_description: "Host fee", capacity: 90, active: true, business_id: 2 },
          # c = {datetime: Time.now, name: "meatfest", description: "eat some meat", location: "East Village place", price: 30, price_description: "all inclusive", capacity: 80, active: true, business_id: 3 },
          # d = {datetime: Time.now, name: "drinkfest", description: "drinking to excess", location: "West Village road", price: 40 , price_description: "drink all night", capacity: 70, active: true, business_id: 4},
          # e = {datetime: Time.now, name: "rock climbing", description: "not to be combined with drinkfest" , location: "somewhere in the Financial District", price: 50, price_description: "includes equipment rental", capacity: 60, active: true, business_id: 5 },
          # f = {datetime: Time.now, name: "concert", description: "listening to live music", location: "East Harlem underpass", price: 60, price_description: "Includes two well drinks", capacity: 50, active: true, business_id: 6 },
          # g = {datetime: Time.now, name: "fossil hunting", description: "finding dinosaur bones", location: "Washington Heights apartment", price: 70, price_description: "Helmet provided", capacity: 40, active: true, business_id: 7 },
          # h = {datetime: Time.now, name: "massage party", description: "Let's touch each other", location: "Soho place", price: 80, price_description: "Worth it!", capacity: 30, active: true, business_id: 8 },
          # i = {datetime: Time.now, name: "spoken word", description: "Shh, I'm talking now", location: "Tribeca alley", price: 90, price_description: "Show lasts 12 hours", capacity: 20, active: true, business_id: 9 },
          # j = {datetime: Time.now, name: "discussion group", description: "Talk about it", location: "West Village penthouse", price: 0, price_description: "It's free!", capacity: 10, active: true, business_id: 10 }
          # ])
          a.categories << z << v
          b.categories << q
          c.categories << z
          d.categories << y
          e.categories << w << t
          f.categories << v
          g.categories << w << u
          h.categories << x << s
          i.categories << r << q
          j.categories << x

          a.save
          b.save
          c.save
          d.save
          e.save
          f.save
          g.save
          h.save
          i.save
          j.save

          # q.events << a
          # r.events << b
          # s.events << c
          # t.events << d
          # u.events << e
          # v.events << f
          # w.events << g
          # x.events << h
          # y.events << i
          # z.events << j






                a1 = Member.create({name: "Ada", about: "cool", age: 34, gender: "female", relationship_status: "red", phone: 212-222-2121, hometown_state: "NYC"})
                b2 = Member.create({name: "Aaron", about: "smart" , age: 23, gender: "male", relationship_status: "yellow", phone: 212-222-2122, hometown_state: "Philly"})
                c3 = Member.create({name: "Alan", about: "fun", age: 54, gender: "male", relationship_status: "green", phone: 212-222-2123, hometown_state: "San Francisco"})
                d4 = Member.create({name: "Steven", about: "teacherly", age: 32, gender: "male", relationship_status: "red", phone: 212-222-2124, hometown_state: "Paris"})
                e5 = Member.create({name: "Joe", about: "direct", age: 36, gender: "male", relationship_status: "yellow", phone: 212-222-2125, hometown_state: "London"})
                f6 = Member.create({name: "Niky", about: "helpful", age: 30, gender: "female", relationship_status: "green", phone: 212-222-2126, hometown_state: "Munich"})
                g7 = Member.create({name: "Jess", about: "knowledgable", age: 33, gender: "female", relationship_status: "red", phone: 212-222-2127, hometown_state: "Moscow"})
                h8 = Member.create({name: "Siobhan", about: "missed", age: 24, gender: "female", relationship_status: "yellow", phone: 212-222-2128, hometown_state: "Lima"})
                j9 = Member.create({name: "Pushkin", about: "cute", age: 7, gender: "other", relationship_status: "green", phone: 212-222-2129, hometown_state: "Trenton"})
                k10 = Member.create({name: "Orpheus", about: "memorable", age: 16, gender: "other", relationship_status: "red", phone: 212-222-2130, hometown_state: "Poughkeepsie"})

##business neighborhood_ids
              ab.neighborhood_id = Neighborhood.all[0].id
              bb.neighborhood_id = Neighborhood.all[1].id
              cb.neighborhood_id = Neighborhood.all[2].id
              db.neighborhood_id = Neighborhood.all[3].id
              eb.neighborhood_id = Neighborhood.all[4].id
              fb.neighborhood_id = Neighborhood.all[5].id
              gb.neighborhood_id = Neighborhood.all[6].id
              hb.neighborhood_id = Neighborhood.all[0].id
              ib.neighborhood_id = Neighborhood.all[1].id
              jb.neighborhood_id = Neighborhood.all[2].id

              ab.save
              bb.save
              cb.save
              db.save
              eb.save
              fb.save
              gb.save
              hb.save
              ib.save
              jb.save




##members' neighborhood_id and account_id
                a1.neighborhood_id = Neighborhood.all[0].id
                a1.account_id = Account.all[0].id

                b2.neighborhood_id = Neighborhood.all[1].id
                b2.account_id = Account.all[1].id

                c3.neighborhood_id = Neighborhood.all[2].id
                c3.account_id = Account.all[2].id

                d4.neighborhood_id = Neighborhood.all[3].id
                d4.account_id = Account.all[3].id

                e5.neighborhood_id = Neighborhood.all[4].id
                e5.account_id = Account.all[4].id

                f6.neighborhood_id = Neighborhood.all[5].id
                f6.account_id = Account.all[5].id

                g7.neighborhood_id = Neighborhood.all[6].id
                g7.account_id = Account.all[6].id

                h8.neighborhood_id = Neighborhood.all[2].id
                h8.account_id = Account.all[7].id

                j9.neighborhood_id = Neighborhood.all[0].id
                j9.account_id = Account.all[8].id

                k10.neighborhood_id = Neighborhood.all[1].id
                k10.account_id = Account.all[9].id


                a1.save
                b2.save
                c3.save
                d4.save
                e5.save
                f6.save
                g7.save
                h8.save
                j9.save
                k10.save


##rsvps' member_ids and event_ids
                Rsvp.create(member_id: Member.all[0].id, event_id:Event.all[9].id)
                Rsvp.create(member_id:Member.all[1].id, event_id:Event.all[8].id)
                Rsvp.create(member_id:Member.all[1].id, event_id:Event.all[8].id)
                Rsvp.create(member_id:Member.all[2].id, event_id:Event.all[7].id)
                Rsvp.create(member_id:Member.all[3].id, event_id:Event.all[6].id)
                Rsvp.create(member_id:Member.all[4].id, event_id:Event.all[5].id)
                Rsvp.create(member_id:Member.all[5].id, event_id:Event.all[4].id)
                Rsvp.create(member_id:Member.all[6].id, event_id:Event.all[3].id)
                Rsvp.create(member_id:Member.all[7].id, event_id:Event.all[2].id)
                Rsvp.create(member_id:Member.all[8].id, event_id:Event.all[1].id)
                Rsvp.create(member_id:Member.all[9].id, event_id:Event.all[0].id)





#businesses and the members who follow them

                # ab.members << a1
                # bb.members << b2
                # cb.members << c3
                # db.members << d4
                # eb.members << e5
                # fb.members << f6
                # gb.members << g7
                # hb.members << h8
                # ib.members << j9
                # jb.members << k10


##members and the businesses they follow
                # a1.businesses << ab
                # b2.businesses << bb
                # c3.businesses << cb
                # d4.businesses << db
                # e5.businesses << eb
                # f6.businesses << fb
                # g7.businesses << gb
                # h8.businesses << hb
                # j9.businesses << ib
                # k10.businesses << jb
                #
                #
                # a1.save
                # b2.save
                # c3.save
                # d4.save
                # e5.save
                # f6.save
                # g7.save
                # h8.save
                # j9.save
                # k10.save
