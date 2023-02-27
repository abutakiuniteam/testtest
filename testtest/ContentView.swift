//
//  ContentView.swift
//  testtest
//
//  Created by uniteam IT on 27/02/2023.
//

import SwiftUI



struct ContentView: View {
    @State private var runCount = 1
    @State private var searchText = ""
    @State private var isEditing = false
    struct ImageSelector:Identifiable{
        let id:Int
        let name:String
        let listname:Array<String>
        
    }
//    let names: Array<String> =
//    let names2: Array<String> =
//    let names3: Array<String> =
//    let names4: Array<String> =
    

    let imagess = [ImageSelector(id:1,name:"1",listname:["Holly", "Josh", "Rhonda", "Ted"]),
                   ImageSelector(id:2,name:"2",listname:  ["molly", "Bosh", "Bhonda", "Sed"]),
                   ImageSelector(id:3,name:"3",listname: ["dolly", "Kosh", "Ahonda", "Med", "Ahonda", "Med", "Ahonda", "Med", "Ahonda", "Med", "Ahonda", "Med", "Ahonda", "Med"]),
                   ImageSelector(id:4,name:"4",listname: ["Jolly", "Tosh", "Shonda", "Led","Led","Led","Led","Led","Led","Led","Led","Led","Led","Led",]),
//                   ImageSelector(id:5,name:"4",listname: names),
    ]

    var body: some View {
        VStack {
            
            TabView(selection: $runCount){
                
                ForEach(imagess){name in
                    VStack{ Image(name.name).resizable().scaledToFit().tag(name.id).onAppear(perform: {
                        UIScrollView.appearance().bounces = false
                    }).searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always))
                        
                        
                        
                            
  
                        
                    }.searchable(text: $searchText)
                        
                    
                }
            }.tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
            
            //                    NavigationView {
            //
            //                        List {
            //                            ForEach(searchResults2, id: \.self) { name in
            //                                NavigationLink {
            //                                    Text(name)
            //                                } label: {
            //                                    Text(name)
            //                                }
            //                            }
            //                        }
            //                        .navigationTitle("list2")
            //                    }.searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always))
            NavigationView {List {
                ForEach(searchResults, id: \.self) { name in
                    NavigationLink {
                        Text(name)
                    } label: {
                        Text(name)
                    }
                }
            
        }  }.searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always))
                        
//                        Image("2").resizable().scaledToFit().tag(2).onAppear(perform: {
//                            UIScrollView.appearance().bounces = false
//                        })
//                        Image( "3").resizable().scaledToFit().tag(3).onAppear(perform: {
//                            UIScrollView.appearance().bounces = false
//
//                        })
//                        Image( "4").resizable().scaledToFit().tag(4).onAppear(perform: {
//                            UIScrollView.appearance().bounces = false
//
//                        })
                
           
//                if(runCount==2){
//                    NavigationView {
//
//                        List {
//                            ForEach(searchResults2, id: \.self) { name in
//                                NavigationLink {
//                                    Text(name)
//                                } label: {
//                                    Text(name)
//                                }
//                            }
//                        }
//                        .navigationTitle("list2")
//                    }.searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always))
//                }
//                if(runCount==3){
//                    NavigationView {
//
//                        List {
//                            ForEach(searchResults3, id: \.self) { name in
//                                NavigationLink {
//                                    Text(name)
//                                } label: {
//                                    Text(name)
//                                }
//                            }
//                        }
//                        .navigationTitle("list3")
//                    }.searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always))
//                }
//                if(runCount==4){
//                    SwiftUIView(text: $searchText)
//
//
//                        List {
//                            ForEach(searchResults4, id: \.self) { name in
//                                NavigationLink {
//                                    Text(name)
//                                } label: {
//                                    Text(name)
//                                }
//                            }.searchable(text: $searchText)
//
//                    }
//                }
            

        }
        
    }
    var searchResults: [String] {
        if searchText.isEmpty {

            return imagess[runCount-1].listname
            
        } else {
            return imagess[runCount-1].listname.filter { $0.contains(searchText) }
        }
    }
    
    
//    var searchResults2: [String] {
//        if searchText.isEmpty {
//            return names2
//        } else {
//            return names2.filter { $0.contains(searchText) }
//        }
//    }
//    var searchResults3: [String] {
//        if searchText.isEmpty {
//            return names3
//        } else {
//            return names3.filter { $0.contains(searchText) }
//        }
//    }
//    var searchResults4: [String] {
//        if searchText.isEmpty {
//            return names4
//        } else {
//            return names4.filter { $0.contains(searchText) }
//        }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
