package com.java.ecity.json.text;

import java.util.Map;

import org.json.JSONException;


public class JSONObject extends org.json.JSONObject {
	public JSONObject()
	{
		super();
	}
	
	public JSONObject(JSONTokener x)
	{

		this();
//		super(x);
//		System.out.println("JSONObject(JSONTokener x)");

        char c;
        String key;

        if (x.nextClean() != '{') {
            throw x.syntaxError("A JSONObject text must begin with '{'");
        }
        for (;;) {

            c = x.nextClean();
//    		System.out.println("JSONObject(JSONTokener x)"+c);
            switch (c) {
            case 0:
                throw x.syntaxError("A JSONObject text must end with '}'");
            case '}':
                return;
            default:
                x.back();
                key = x.nextValue().toString();
            }

            // The key is followed by ':'.

            c = x.nextClean();
            if (c != ':') {
                throw x.syntaxError("Expected a ':' after a key");
            }

//    		System.out.println("JSONObject(JSONTokener x)"+key);
            this.putOnce(key, x.nextValue());
            
            // Pairs are separated by ','.

            switch (x.nextClean()) {
            case ';':
            case ',':
                if (x.nextClean() == '}') {
                    return;
                }
                x.back();
                break;
            case '}':
                return;
            default:
                throw x.syntaxError("Expected a ',' or '}'");
            }
        }
	}
    
    public JSONObject(String source) throws JSONException {
    	this(new JSONTokener(source));
//		System.out.println("JSONObject(String source)");
    }
    
    public JSONObject(Map<?, ?> map) {
    	super(map);
    }    

	@Override
	public String getString(String name) throws JSONException {
		if (has(name))
		{
	        Object value = this.get(name);        
	        if (value instanceof String) {
	            return (String) value;
	        } else if (value != null) {
	            return String.valueOf(value);
	        }
	        return "";
	            
		}
		else
		{
			System.out.println("JSONObject No value for "+name);
			return "";
		}
	}

	@Override
	public JSONObject getJSONObject(String key) throws JSONException {
		
        Object object = this.get(key);
//        System.err.println(object.getClass().getName());
        if (object instanceof JSONObject) {
            return (JSONObject) object;
        }
        throw new JSONException("JSONObject[" + quote(key)
                + "] is not a JSONObject.");
	}
	@Override
	public JSONObject put(String key, Map<?, ?> value) throws JSONException {
//		System.out.println("put:"+key);
        this.put(key, new JSONObject(value));
        return this;
	}



	@Override
	public JSONObject putOnce(String key, Object value) throws JSONException {
		// TODO Auto-generated method stub
//        System.err.println("---putOnce---");
//        System.err.println(value.getClass().getName());
//		System.out.println("putOnce:"+key);
        if (key != null && value != null) {
            if (this.opt(key) != null) {
                throw new JSONException("Duplicate key \"" + key + "\"");
            }
            this.put(key, value);
        }

//        System.err.println("---putOnce end ---");
		return this;
	}

	@Override
	public JSONArray getJSONArray(String key) throws JSONException {
		// TODO Auto-generated method stub
        Object object = this.get(key);
        if (object instanceof JSONArray) {
            return (JSONArray) object;
        }
        throw new JSONException("JSONObject[" + quote(key)
                + "] is not a JSONArray.");
	}

	@Override
	public Object get(String key) throws JSONException {
		// TODO Auto-generated method stub
        if (key == null) {
            throw new JSONException("Null key.");
        }
        Object object = this.opt(key);
        if (object == null) {
            throw new JSONException("JSONObject[" + quote(key) + "] not found.");
        }
        return object;
	}
	

}
