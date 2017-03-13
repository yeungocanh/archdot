syntax match PythonBooo "\v[\(\,]\s{-}\zs\w+\ze\s{-}\=(\=)@!"
hi PythonBooo ctermfg = 214 guifg = #ffaf00

syn match pythonSelf "\(\W\|^\)\@<=self\(\.\)\@="
hi pythonSelf ctermfg = yellow
