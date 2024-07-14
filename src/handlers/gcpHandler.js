'use strict';

exports.handler = (req, res) => {
  res.status(200).send({
    message: 'Hello from GCP!',
  });
};
