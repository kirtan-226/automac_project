import React, { useState } from "react";
import "bootstrap/dist/css/bootstrap.min.css";

const CalibrationCertificate = () => {
  // State to hold form data
  const [formData, setFormData] = useState({
    certificateNumber: "",
    companyName: "",
    companyAddress: "",
    instrumentSerial: "",
    instrumentDetails: "",
    masterModel: "",
    masterCalDate: "",
    masterMake: "",
    masterRange: "",
    instrumentModel: "",
    instrumentCalDate: "",
    instrumentMake: "",
    instrumentRange: "",
    calibrationResults: [
      { upReading: "", downReading: "", accuracy: "", output: "", remark: "" },
    ],
  });

  // Handle form input changes
  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFormData((prevState) => ({
      ...prevState,
      [name]: value,
    }));
  };

  // Handle dynamic changes to calibration results
  const handleCalibrationResultChange = (index, e) => {
    const { name, value } = e.target;
    const newCalibrationResults = [...formData.calibrationResults];
    newCalibrationResults[index] = { ...newCalibrationResults[index], [name]: value };
    setFormData({ ...formData, calibrationResults: newCalibrationResults });
  };

  // Handle form submission
  const handleSubmit = async (e) => {
    e.preventDefault();

    try {
      const response = await fetch("http://localhost:3000/api/certificates/", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(formData),
      });

      if (response.ok) {
        alert("Certificate submitted successfully!");
        setFormData({
          certificateNumber: "",
          companyName: "",
          companyAddress: "",
          instrumentSerial: "",
          instrumentDetails: "",
          masterModel: "",
          masterCalDate: "",
          masterMake: "",
          masterRange: "",
          instrumentModel: "",
          instrumentCalDate: "",
          instrumentMake: "",
          instrumentRange: "",
          calibrationResults: [
            { upReading: "", downReading: "", accuracy: "", output: "", remark: "" },
          ],
        });
      } else {
        alert("Error submitting the certificate.");
      }
    } catch (error) {
      console.error("Error submitting the certificate:", error);
      alert("Error submitting the certificate.");
    }
  };

  return (
    <div className="container mt-4">
      <h1>Calibration Certificate Form</h1>
      <form onSubmit={handleSubmit}>
        <div className="mb-3">
          <label htmlFor="certificateNumber" className="form-label">
            Certificate Number
          </label>
          <input
            type="text"
            className="form-control"
            id="certificateNumber"
            name="certificateNumber"
            value={formData.certificateNumber}
            onChange={handleInputChange}
            required
          />
        </div>

        <div className="mb-3">
          <label htmlFor="companyName" className="form-label">
            Company Name
          </label>
          <input
            type="text"
            className="form-control"
            id="companyName"
            name="companyName"
            value={formData.companyName}
            onChange={handleInputChange}
            required
          />
        </div>

        <div className="mb-3">
          <label htmlFor="companyAddress" className="form-label">
            Company Address
          </label>
          <input
            type="text"
            className="form-control"
            id="companyAddress"
            name="companyAddress"
            value={formData.companyAddress}
            onChange={handleInputChange}
            required
          />
        </div>

        <div className="mb-3">
          <label htmlFor="instrumentSerial" className="form-label">
            Instrument Serial Number
          </label>
          <input
            type="text"
            className="form-control"
            id="instrumentSerial"
            name="instrumentSerial"
            value={formData.instrumentSerial}
            onChange={handleInputChange}
            required
          />
        </div>

        <div className="mb-3">
          <label htmlFor="instrumentDetails" className="form-label">
            Instrument Details
          </label>
          <input
            type="text"
            className="form-control"
            id="instrumentDetails"
            name="instrumentDetails"
            value={formData.instrumentDetails}
            onChange={handleInputChange}
            required
          />
        </div>

        <h3>Master Instrument Details</h3>
        <div className="mb-3">
          <label htmlFor="masterModel" className="form-label">
            Master Model
          </label>
          <input
            type="text"
            className="form-control"
            id="masterModel"
            name="masterModel"
            value={formData.masterModel}
            onChange={handleInputChange}
            required
          />
        </div>
        <div className="mb-3">
          <label htmlFor="masterCalDate" className="form-label">
            Last Calibration Date
          </label>
          <input
            type="date"
            className="form-control"
            id="masterCalDate"
            name="masterCalDate"
            value={formData.masterCalDate}
            onChange={handleInputChange}
            required
          />
        </div>
        <div className="mb-3">
          <label htmlFor="masterMake" className="form-label">
            Master Make
          </label>
          <input
            type="text"
            className="form-control"
            id="masterMake"
            name="masterMake"
            value={formData.masterMake}
            onChange={handleInputChange}
            required
          />
        </div>
        <div className="mb-3">
          <label htmlFor="masterRange" className="form-label">
            Master Range
          </label>
          <input
            type="text"
            className="form-control"
            id="masterRange"
            name="masterRange"
            value={formData.masterRange}
            onChange={handleInputChange}
            required
          />
        </div>

        <h3>Instrument Details</h3>
        <div className="mb-3">
          <label htmlFor="instrumentModel" className="form-label">
            Instrument Model
          </label>
          <input
            type="text"
            className="form-control"
            id="instrumentModel"
            name="instrumentModel"
            value={formData.instrumentModel}
            onChange={handleInputChange}
            required
          />
        </div>
        <div className="mb-3">
          <label htmlFor="instrumentCalDate" className="form-label">
            Instrument Calibration Date
          </label>
          <input
            type="date"
            className="form-control"
            id="instrumentCalDate"
            name="instrumentCalDate"
            value={formData.instrumentCalDate}
            onChange={handleInputChange}
            required
          />
        </div>
        <div className="mb-3">
          <label htmlFor="instrumentMake" className="form-label">
            Instrument Make
          </label>
          <input
            type="text"
            className="form-control"
            id="instrumentMake"
            name="instrumentMake"
            value={formData.instrumentMake}
            onChange={handleInputChange}
            required
          />
        </div>
        <div className="mb-3">
          <label htmlFor="instrumentRange" className="form-label">
            Instrument Range
          </label>
          <input
            type="text"
            className="form-control"
            id="instrumentRange"
            name="instrumentRange"
            value={formData.instrumentRange}
            onChange={handleInputChange}
            required
          />
        </div>

        <h3>Calibration Results</h3>
        {formData.calibrationResults.map((result, index) => (
          <div key={index}>
            <div className="mb-3">
              <label htmlFor={`upReading-${index}`} className="form-label">
                UP Reading
              </label>
              <input
                type="text"
                className="form-control"
                id={`upReading-${index}`}
                name="upReading"
                value={result.upReading}
                onChange={(e) => handleCalibrationResultChange(index, e)}
              />
            </div>
            <div className="mb-3">
              <label htmlFor={`downReading-${index}`} className="form-label">
                Down Reading
              </label>
              <input
                type="text"
                className="form-control"
                id={`downReading-${index}`}
                name="downReading"
                value={result.downReading}
                onChange={(e) => handleCalibrationResultChange(index, e)}
              />
            </div>
            <div className="mb-3">
              <label htmlFor={`accuracy-${index}`} className="form-label">
                Accuracy (%)
              </label>
              <input
                type="text"
                className="form-control"
                id={`accuracy-${index}`}
                name="accuracy"
                value={result.accuracy}
                onChange={(e) => handleCalibrationResultChange(index, e)}
              />
            </div>
            <div className="mb-3">
              <label htmlFor={`output-${index}`} className="form-label">
                Output (mA)
              </label>
              <input
                type="text"
                className="form-control"
                id={`output-${index}`}
                name="output"
                value={result.output}
                onChange={(e) => handleCalibrationResultChange(index, e)}
              />
            </div>
            <div className="mb-3">
              <label htmlFor={`remark-${index}`} className="form-label">
                Remark
              </label>
              <input
                type="text"
                className="form-control"
                id={`remark-${index}`}
                name="remark"
                value={result.remark}
                onChange={(e) => handleCalibrationResultChange(index, e)}
              />
            </div>
          </div>
        ))}

        <button type="submit" className="btn btn-primary">
          Submit
        </button>
      </form>
    </div>
  );
};

export default CalibrationCertificate;
