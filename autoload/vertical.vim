fu! vertical#edgeh() abort
    let line = getline('.')
    let start = matchstrpos(line, '\<.', 0)[2]
    let end = len(line)
    let pos = col('.')
    if pos <= start
        let cmd = 'norm 0'
    elseif start < pos && pos <= end
        let cmd = 'norm ^'
    elseif end < pos
        let cmd = 'norm $'
    endif
    exe cmd
endf

fu! vertical#edgel() abort
    let line = getline('.')
    let start = matchstrpos(line, '\<.', 0)[2]
    let end = len(line)
    let pos = col('.')
    if pos < start
        let cmd = 'norm ^'
    elseif start <= pos && pos < end
        let cmd = 'norm $'
    else
        retu
    endif
    exe cmd
endf

