# Cocoapods::Check

[![Travis-CI Build Status](https://travis-ci.org/dtrenz/pod-check.svg?branch=master)](https://travis-ci.org/dtrenz/pod-check)

Checks if the dependencies listed in Podfile are satisfied by currently installed pods.

If all pods are found, prints a success message and exits with a status of 0.
If not, the first missing pod is listed and exits with a status of 1.
