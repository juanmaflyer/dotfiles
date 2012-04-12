set sw=2
set ts=2

call IMAP('%%', '% <++>', 'mote')
call IMAP('$$', '{{<++>}}', 'mote')

call IMAP('p--', '<p><++></p>', 'mote')
call IMAP('a--', '<a href="<++>"><++></a>', 'mote')
call IMAP('h1--', '<h1><++></h1>', 'mote')
call IMAP('h2--', '<h2><++></h2>', 'mote')
call IMAP('h3--', '<h3><++></h3>', 'mote')
call IMAP('div--', '<div><++></div>', 'mote')
