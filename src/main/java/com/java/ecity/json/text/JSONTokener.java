package com.java.ecity.json.text;

import org.json.JSONException;

import com.java.ecity.json.text.JSONObject;

public class JSONTokener extends org.json.JSONTokener {

	public JSONTokener(String s) {
		super(s);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Object nextValue() throws JSONException {
		// TODO Auto-generated method stub

        char c = this.nextClean();
        String string;

        switch (c) {
            case '"':
            case '\'':
                return this.nextString(c);
            case '{':
                this.back();
                return new JSONObject(this);
            case '[':
                this.back();
                return new JSONArray(this);
        }

        /*
         * Handle unquoted text. This could be the values true, false, or
         * null, or it can be a number. An implementation (such as this one)
         * is allowed to also accept non-standard forms.
         *
         * Accumulate characters until we reach the end of the text or a
         * formatting character.
         */

        StringBuilder sb = new StringBuilder();
        while (c >= ' ' && ",:]}/\\\"[{;=#".indexOf(c) < 0) {
            sb.append(c);
            c = this.next();
        }
        this.back();

        string = sb.toString().trim();
        if ("".equals(string)) {
            throw this.syntaxError("Missing value");
        }
        System.out.println("nextValue");
        return JSONObject.stringToValue(string);
	}

}
