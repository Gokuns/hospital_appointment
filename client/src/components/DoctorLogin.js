import React from 'react';
import { Card,  Nav, Button, Container, Row, Col, Form, FormCheck } from 'react-bootstrap';

function DoctorLogin(props) {

  function doctorLogin(){
    
  }


    return (
      <Container style={{marginTop:"30vh"}} >
        <Row>
          <Col sm={{span:4, offset:4}}>
        <Card>
        <Card.Header>
          <Nav variant="tabs" defaultActiveKey="/doktor-giris">
            <Nav.Item>
              <Nav.Link href="/hasta-giris">Hasta Girişi</Nav.Link>
            </Nav.Item>
            <Nav.Item>
              <Nav.Link href="/doktor-giris">Sağlık Çalışanı Girişi</Nav.Link>
            </Nav.Item>
          </Nav>
        </Card.Header>
        <Card.Body>
        <Form onSubmit={doctorLogin}>
            <Form.Group as={Col} controlId="patientId" >
              <Form.Label>Sicil Numarası</Form.Label>
              <Form.Control
              type="text"
              name="userId"
              ></Form.Control>
            </Form.Group>
            <Form.Group as={Col} controlId="password" >
              <Form.Label>Şifre</Form.Label>
              <Form.Control
              type="password"
              name="userId"
              ></Form.Control>
            </Form.Group>
            <Form.Group  as={Col} controlId="login" >
            <Button variant="primary">Giriş</Button>
            </Form.Group>
          </Form>
         
        </Card.Body>
      </Card>
      </Col>
      </Row>
      </Container>
    );
}

export default DoctorLogin;