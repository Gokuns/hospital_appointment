import React, { useContext, useEffect, useState } from 'react';
import { Button, Card, Col, Container, Form, ListGroup, Row } from 'react-bootstrap';
import { AppContext } from '../App';
import NavbarComp from './NavbarComp';
import axios from 'axios';

function AppointmentGet(props) {

    const context = useContext(AppContext);
    const times = ['8:00 - 9:00', '9:00 - 10:00','10:00 - 11:00',
    '11:00 - 12:00','12:00 - 13:00','13:00 - 14:00',
    '14:00 - 15:00','15:00 - 16:00','16:00 - 17:00','17:00 - 18:00',]
    let timesGroup = [];
    const [number, setNumber] = useState();
    const [timeList, setTimeList] = useState(() => {
        let lst = []
        for (let i = 0; i<times.length;i++){
            lst.push(<ListGroup.Item disabled>{times[i]}</ListGroup.Item>)
        }
        return lst
    });
    const [hospitals, setHospitals] = useState([]);
    const [units, setUnits] = useState([]);
    const [doctors, setDoctors] = useState([]);

    useEffect(() => {
        getHospitals();
    },[])

    async function getHospitals(){
        const res = await axios.get(context.appState.url + '/hospitals', {headers : context.appState.header})
        let data = res.data;
        setHospitals(data);
    }

    async function getUnits(e){
        console.log(e.target.value);
        let selected = JSON.parse(e.target.value);
        let unitControl = document.getElementById("unitControl");
        const res = await axios.get(context.appState.url + '/units?hospitalId=' + selected.id, {headers : context.appState.header})
        let data = res.data;
        setUnits(data);
        unitControl.disabled=false;
    }

    async function getDoctors(e){
        let selected = JSON.parse(e.target.value);
        let hospital = JSON.parse(document.getElementById("hospitalControl").value)
        let doctorControl = document.getElementById("doctorControl");
        const res = await axios.get(context.appState.url + '/doctors?hospitalId=' + hospital.id +'&unitId=' + selected.id, {headers : context.appState.header});
        let data = res.data;
        setDoctors(data)
        doctorControl.disabled=false;


    }

    async function getTimes(e){

        let date = e.target.value;
        let doctor = JSON.parse(document.getElementById("doctorControl").value);
        if(date != ""){
        const res = await axios.get(context.appState.url + '/appointments/doctor?id=' + doctor.id +'&date=' + date, {headers : context.appState.header});
        console.log(res);
            
        let apps = res.data;
        let lstItems=  [];
        for(let i = 0; i<times.length;i++){
            let created = false;
            for (let j = 0; j<apps.length;j++){
                
                if(i===apps[j].time && !created){
                    lstItems.push(<ListGroup.Item disabled>{times[i]}</ListGroup.Item>);
                    created = true;
                }
            }
            if(!created){
                lstItems.push(<ListGroup.Item value={times[i]} variant="success" onClick={activateListNode} action>{times[i]}</ListGroup.Item>);
            }
            
        }
        setTimeList(lstItems);
        console.log(lstItems);
        }
    }

    function activateListNode(e) {
         e.target.active = true;
         setNumber(times.indexOf(e.target.value));
         let but = document.getElementById("appointmentSubmit");
         but.disabled = false;
    }

    async function saveAppointment(e){
        e.preventDefault();
        let doctor = JSON.parse(document.getElementById("doctorControl").value);
        let date = document.getElementById("dateControl").value;
        let user = context.appState.user;

        let appointment = {name :"",
            date:date,
        patient:user,
        time:number,
        doctor:doctor};
        const res = await axios.post(context.appState.url + '/appointments', appointment, {headers:context.appState.header});
        console.log(res);


        
    }


    return (
        <div>
            <NavbarComp/>
            <Container>
                <Row>
                    <Col  md={8}>
                    <Card>
                
                <Card.Title>Randevu Alım Formu</Card.Title>
               <Form  onSubmit={saveAppointment}>
                   <Form.Group as={Col}>
                       <Form.Label>Hastane</Form.Label>
                       <Form.Control id="hospitalControl" as="select" onChange={getUnits}>
                           <option>Seçiniz...</option>
                           {hospitals.map(item => {
                               return <option id={item.id} key={item.id} value={JSON.stringify(item)}>{item.name}</option>
                           })}
                       </Form.Control>
                   </Form.Group>
                   <Form.Group as={Col}>
                       <Form.Label>Poliklinik</Form.Label>
                       <Form.Control id="unitControl" disabled="true" as="select"  onChange={getDoctors}>
                           <option>Seçiniz...</option>
                           {units.map(item => {
                               return <option key={item.id} value={JSON.stringify(item)}>{item.name}</option>
                           })}
                       </Form.Control>
                   </Form.Group>
                   <Form.Group as={Col}>
                       <Form.Label>Doktor</Form.Label>
                       <Form.Control id="doctorControl" disabled="true" as="select" name="doctor" onChange={() => document.getElementById("dateControl").disabled=false}>
                           <option>Seçiniz...</option>
                           {doctors.map(item => {
                               return <option key={item.id} value={JSON.stringify(item)}>{item.name}</option>
                           })}
                       </Form.Control>
                   </Form.Group>
                   <Form.Group as={Col}>
                       <Form.Label>Tarih</Form.Label>
                       <Form.Control id="dateControl" disabled={true} as="input" type="date" onSelect={getTimes}></Form.Control>
                   </Form.Group>
                   <Form.Group as={Col} style={{marginTop:'64px', paddingBottom:'0px'}}>
                       <Button size="lg" id="appointmentSubmit" type="submit" disabled>Randevu Al</Button>
                   </Form.Group>
               </Form>
            </Card>
                    </Col>
                    <Col md={4}>
                    <Card>
                        <ListGroup  id="timeGroup">
                            {
                                timeList
                  
                           }
                        
                        </ListGroup>
                    </Card>
                    </Col>
                </Row>
            </Container>

        </div>
    );
}

export default AppointmentGet;