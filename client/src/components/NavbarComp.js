import React, { Component, useContext } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import {
    BrowserRouter as Router,
    Switch,
    Route,
    Link,
    Redirect,
    useHistory,
    useLocation
} from "react-router-dom";
import { AppContext } from '../App';
import { Nav, Navbar } from 'react-bootstrap';
function NavbarComp(props) {
    const context = useContext(AppContext);

    return (
        <Navbar bg="light" expand="lg">
        <Navbar.Brand href="/">{"Merhaba " + context.appState.user.name}</Navbar.Brand>
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse id="basic-navbar-nav">
            <Nav className="mr-auto">
            <Nav.Link href="/randevu-al">Randevu Al</Nav.Link>
            <Nav.Link href="/randevularim">Randevularım</Nav.Link>
            </Nav>
        </Navbar.Collapse>
        </Navbar>
    );
}

export default NavbarComp;