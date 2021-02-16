import React, { useContext } from 'react';
import { Card, Nav, Button, Container, Row, Col, Form, FormCheck } from 'react-bootstrap';
import { AppContext } from '../App';
import axios from 'axios';
import { useHistory } from 'react-router-dom';


function PatientLogin(props) {
  const context = useContext(AppContext);
  const history = useHistory();
  const url = "http://localhost:8080/patient"

  async function patientLoginSubmit(e){
    e.preventDefault();
    let formData = new FormData(e.target);
    let formDataObj = Object.fromEntries(formData.entries());
    let username = formDataObj.username;
    let password = formDataObj.password;
    let encodedString = btoa(username + ':' + password);
    let header = {

        'Authorization': 'Basic ' + encodedString
      }
    
      console.log(url + "/" + username);
    const res = await axios.get(url + "/" + username, {
      headers: header
    })
    if(res.status===200){
      let appState = Object.assign({}, context.appState);
        appState.header = header;
        appState.user = res.data;
        appState.loggedIn = true;
        context.setAppState(appState);
        history.push("/randevu-al")
    }

    console.log(res);

  }


  return (
    <Container style={{marginTop:"30vh"}}>
      <Row >
        <Col sm={{span:4, offset:4}}>

          <Card>
            <Card.Header>
              <Nav variant="tabs" defaultActiveKey="/hasta-giris">
                <Nav.Item>
                  <Nav.Link href="/hasta-giris">Hasta Girişi</Nav.Link>
                </Nav.Item>
                <Nav.Item>
                  <Nav.Link href="/saglik-giris">Sağlık Çalışanı Girişi</Nav.Link>
                </Nav.Item>

              </Nav>
            </Card.Header>
            <Card.Body>
              <Form onSubmit={patientLoginSubmit}>
                <Form.Group as={Col} controlId="username" >
                  <Form.Label>TC Kimlik Numarası</Form.Label>
                  <Form.Control
                    type="text"
                    name="username"
                  ></Form.Control>
                </Form.Group>
                <Form.Group as={Col} controlId="password" >
                  <Form.Label>Şifre</Form.Label>
                  <Form.Control
                    type="password"
                    name="password"
                  ></Form.Control>
                </Form.Group>
                <Form.Group as={Col} controlId="login" >
                  <Button type="submit" variant="primary">Giriş</Button>
                </Form.Group>
              </Form>
            </Card.Body>
          </Card>
        </Col>
      </Row>
    </Container>
  );
}

export default PatientLogin;