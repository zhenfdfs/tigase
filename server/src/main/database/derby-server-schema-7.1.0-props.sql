--
--  Tigase Jabber/XMPP Server
--  Copyright (C) 2004-2016 "Tigase, Inc." <office@tigase.com>
--
--  This program is free software: you can redistribute it and/or modify
--  it under the terms of the GNU Affero General Public License as published by
--  the Free Software Foundation, either version 3 of the License.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU Affero General Public License for more details.
--
--  You should have received a copy of the GNU Affero General Public License
--  along with this program. Look for COPYING file in the top folder.
--  If not, see http://www.gnu.org/licenses/.
--
--

-- This is a dummy user who keeps all the database-properties
-- QUERY START:
call TigAddUserPlainPw('db-properties', NULL);
-- QUERY END:

-- QUERY START:
call TigPutDBProperty('schema-version', '7.1');
-- QUERY END:

-- QUERY START:
call TigSetComponentVersion('server', '7.1');
-- QUERY END:
