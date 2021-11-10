set version=%1

set cleanVersion=%version:.=%

rd ..\..\modules\php

mklink /J ..\..\modules\php ..\..\modules\php%cleanVersion%
