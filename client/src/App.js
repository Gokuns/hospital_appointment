import 'bootstrap/dist/css/bootstrap.min.css';
import logo from './logo.svg';
import './App.css';
import { Button, Card, Col, Container, Form, Nav, Row } from 'react-bootstrap';
import PatientLogin from './components/PatientLogin';
import DoctorLogin from './components/DoctorLogin';
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Redirect,
  useHistory,
} from "react-router-dom";
import React, { useState } from 'react';
import AppointmentGet from './components/AppointmentGet';
import AppointmentView from './components/AppointmentView';
export const AppContext = React.createContext();


function App() {


  const [appState, setAppState] = useState({
    header:{},
    user:{},
    loggedIn:false,
    url:"http://localhost:8080/patient"
  });

  return (
    <AppContext.Provider value={{appState:appState, setAppState:setAppState}}>
       <Router>
         <Switch>
          <Route exact path="/">
          <Redirect to="/hasta-giris" />
          </Route>
           <Route exact path="/hasta-giris">
             {appState.loggedIn ? <Redirect to="/hasta"/> : <PatientLogin/>}
           </Route>
           <Route exact path="/saglik-giris">
            <DoctorLogin/>
           </Route>
           <Route exact path="/randevu-al">
            <AppointmentGet/>
           </Route>
           <Route exact path="/randevularim">
            <AppointmentView/>
           </Route>
         </Switch>
       </Router>
    </AppContext.Provider>
  );
}

export default App;
