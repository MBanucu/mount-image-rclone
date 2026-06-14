{ lib, buildPythonPackage, setuptools, src }:
buildPythonPackage rec {
  pname = "mount-image-rclone";
  version = "0.1.0";
  pyproject = true;
  inherit src;
  nativeBuildInputs = [ setuptools ];
  propagatedBuildInputs = [ ];
  doCheck = false;
  pythonImportsCheck = [ "mount_image_rclone" ];
  meta = with lib; {
    description = "Disk image mounting via rclone (cross-platform FUSE)";
    homepage = "https://github.com/MBanucu/mount-image-rclone";
    license = licenses.gpl3Only;
    maintainers = with maintainers; [ ];
  };
}
