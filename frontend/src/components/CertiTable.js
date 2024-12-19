import React, { useState, useEffect } from 'react';
import {
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Paper,
  TablePagination,
} from '@mui/material';

const CertiTable = () => {
  const [certificates, setCertificates] = useState([]);
  const [page, setPage] = useState(0); // Current page
  const [rowsPerPage, setRowsPerPage] = useState(5); // Rows per page

  useEffect(() => {
    fetch('http://localhost:3000/api/certificates')
      .then((response) => response.json())
      .then((data) => setCertificates(data))
      .catch((error) => console.error('Error fetching certificates:', error));
  }, []);

  // Handle page change
  const handleChangePage = (event, newPage) => {
    setPage(newPage);
  };

  // Handle rows per page change
  const handleChangeRowsPerPage = (event) => {
    setRowsPerPage(parseInt(event.target.value, 10));
    setPage(0); // Reset to the first page
  };

  // Slice certificates for current page
  const paginatedCertificates = certificates.slice(
    page * rowsPerPage,
    page * rowsPerPage + rowsPerPage
  );

  return (
    <div>
      <TableContainer component={Paper}>
        <Table sx={{ minWidth: 650 }} aria-label="simple table">
          <TableHead>
            <TableRow>
              <TableCell>Certificate Number</TableCell>
              <TableCell>Date of Calibration</TableCell>
              <TableCell>Company Name</TableCell>
              <TableCell>Instrument Details</TableCell>
              <TableCell>Instrument Date</TableCell>
            </TableRow>
          </TableHead>
          <TableBody>
            {paginatedCertificates.map((cert) => (
              <TableRow
                key={cert.certificate_number}
                sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
              >
                <TableCell component="th" scope="row">
                  {cert.certificate_number}
                </TableCell>
                <TableCell>{cert.date_of_calibration}</TableCell>
                <TableCell>{cert.company_name}</TableCell>
                <TableCell>{cert.intr_details}</TableCell>
                <TableCell>{cert.instr_date}</TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TableContainer>

      {/* Pagination Component */}
      <TablePagination
        component="div"
        count={certificates.length} // Total number of certificates
        page={page} // Current page
        onPageChange={handleChangePage} // Page change handler
        rowsPerPage={rowsPerPage} // Rows per page
        onRowsPerPageChange={handleChangeRowsPerPage} // Rows per page change handler
      />
    </div>
  );
};

export default CertiTable;
