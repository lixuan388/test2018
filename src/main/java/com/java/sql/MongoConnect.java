package com.java.sql;



import com.mongodb.MongoClient;
import com.mongodb.client.MongoDatabase;

public class MongoConnect {
	static MongoDatabase mongoDatabase=null;
	
	
//  try{
//  	// 连接到 mongodb 服务
//    MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
//    
//    // 连接到数据库
//    MongoDatabase mongoDatabase = mongoClient.getDatabase("xj");  
//    System.out.println("Connect to database successfully");
//
//    MongoCollection<Document> collection = mongoDatabase.getCollection("test");
//
//    System.out.println("集合 test 选择成功");
//    
//    Document document = new Document("title", "MongoDB").  
//    append("description", "database").  
//    append("likes", 100).  
//    append("by", "Fly");  
//    List<Document> documents = new ArrayList<Document>();  
//    documents.add(document);  
//    collection.insertMany(documents);  
//    System.out.println("文档插入成功");  
//        
//     
//   }catch(Exception e){
//     System.err.println( e.getClass().getName() + ": " + e.getMessage() );
//  }
  
  static public MongoDatabase GetConnect()
  {
    if (mongoDatabase==null)
    {
    	MongoClient mongoClient = new MongoClient( "www.17ecity.cc" , 57017 );
      
      // 连接到数据库
      mongoDatabase = mongoClient.getDatabase("weixin");  
      System.out.println("Connect to database successfully");
    }
    return mongoDatabase;

  }
  
  
}
