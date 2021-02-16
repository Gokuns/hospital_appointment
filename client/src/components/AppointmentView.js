import React, { useContext } from 'react';
import { AppContext } from '../App';
import NavbarComp from './NavbarComp';

function AppointmentView(props) {
    const context = useContext(AppContext);

    return (
        <div>
            <NavbarComp />

        </div>
    );
}

export default AppointmentView;