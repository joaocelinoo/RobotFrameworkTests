import requests
import json

id = str
url = "https://dummy.restapiexample.com/api/v1/"
headers = {
  'Content-Type': 'application/json',
  'user-agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36',
}

def test_create_new_employer():
  payload = json.dumps({
  "name": "joao",
  "salary": "123",
  "age": "23"
  })

  response = requests.request("POST", url+'create', headers=headers, data=payload)
  assert response.status_code == 200
  global id
  id = str(response.json()['data']['id'])
  print('New user create by id:' + id)

def test_verify_employer():
  global id
  response = requests.request("GET", url+'employee/'+id, headers=headers)
  assert response.status_code == 200
  print('Check new user create by id:' + id)

def test_delete_employeer():
  global id
  response = requests.request("DELETE", url+'delete/'+id, headers=headers)
  assert response.status_code == 200
  print('Delete new user succefully by id:' + id)