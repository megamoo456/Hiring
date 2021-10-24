import React, {useEffect, useState, useRef} from 'react';
import axios from 'axios';
import './App.css';
import { DataTable } from 'primereact/datatable';
import { Column } from 'primereact/column';
import { InputText } from 'primereact/inputtext';
import { Button } from 'primereact/button';
import styled from "styled-components";
import { Toast } from 'primereact/toast';
import 'primeicons/primeicons.css';
import 'primereact/resources/themes/saga-blue/theme.css';
import 'primereact/resources/primereact.css';
import { useHistory } from "react-router-dom";
//Api 






var config = {
  method: 'get',
  url: 'http://localhost:8000/companies/?format=json',
  headers: { 
    'Authorization': 'Basic YWRtaW46cGFzc3dvcmQxMjM=', 
    'Cookie': 'csrftoken=ISt3kjRQRZJZPLp8PTjMwWuG58xHKrbCHUDWFFveVHR82ySS2C8DdjLChWbZgm0w'
  }
};

const fetchData =()=> {return axios(config)
.then(function (response) {
  const {results} = response.data;
  console.log(JSON.stringify(response.data));
  return results;
  
})
.catch(function (error) {
  console.log(error);
});
}

//
function Companies() {
  const [globalFilter, setGlobalFilter] = useState('');
  const [companies, setCompanies] = useState([]);
  useEffect(()=>{
    fetchData().then(apiCompanies =>{
      setCompanies(apiCompanies);
     
    });
  }, [])
  
/*   const [randomUserDataJSON, setRandomUserDataJSON]  */ 
const Companyidtemp = (rowData) => {
  return (
      <React.Fragment>
          <span className="p-column-title">Source Id</span>
          {rowData.source_id}
      </React.Fragment>
  );
}
const Companynametemp = (rowData) => {
  console.log(rowData.name)
  return (
      <React.Fragment>
          <span className="p-column-title">Company Name</span>
          {rowData.name}
         
      </React.Fragment>
  );
}
const Companydetailtemp = (rowData) => {

  return (
      <React.Fragment>
          <span className="p-column-title">Company Detail</span>
          <a href='detail'>Company Detail</a>
         
      </React.Fragment>
  );
}
// datatable
const [selectedProduct1, setSelectedProduct1] = useState(null);
const reset = () => {
  setGlobalFilter('');

}

    
const toast = useRef(null);
const history = useHistory();
const onRowSelect = (event) => {
    //i can use info to show data for the selected row
  toast.current.show({ severity: 'info', summary: 'Company Selected', detail: `Name: ${event.data.name}
   Website: ${event.data.website} Email: ${event.data.email} Phone: ${event.data.phone} Postal Code: ${event.data.postal_code}
   City: ${event.data.city} Country: ${event.data.country}`, 
   life: 20000 }); 
   // or go to page
  // history.push({pathname:`/detail/${event.data.id}`, search: '?query=abc',state: {detail: "test" }})
}
const header = (
  <div className="table-header">
      <Button type="button" label="Clear" className="p-button-outlined" icon="pi pi-filter-slash" onClick={reset} />
      <span className="p-input-icon-left">
          <i className="pi pi-search" />
          <InputText type="search" value={globalFilter} onChange={(e) => setGlobalFilter(e.target.value)} placeholder="Global Search" />
      </span>
  </div>
);

return (
  <>
              
  

        <div className="datatable-filter-demo">
        <Toast ref={toast} />
            <div className="card">
                <DataTable value={companies} header={header}  paginator rows={50} className="p-datatable-customers"
                    globalFilter={globalFilter} emptyMessage="No customers found." selectionMode="single" 
                    selection={selectedProduct1} onSelectionChange={e => setSelectedProduct1(e.value)} dataKey="id"
                    onRowSelect={onRowSelect} >
                    <Column field="id" header="Id" body={Companyidtemp} />
                    <Column field="name" header="Name" body={Companynametemp} />
                    <Column field="detail" header="Detail" body={Companydetailtemp} />
                </DataTable>
            </div>
        </div>
     
        
  

  </>
  )
}

const AppFrame = styled.div`
  text-align: center;
  width:100%;
  
`;
export default Companies;
