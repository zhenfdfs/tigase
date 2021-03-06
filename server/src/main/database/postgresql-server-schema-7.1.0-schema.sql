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

-- Database stored procedures and fucntions for Tigase schema version 5.1

\i database/postgresql-server-schema-7.0.0-schema.sql

-- LOAD FILE: database/postgresql-server-schema-7.0.0-schema.sql

-- QUERY START:
do $$
begin
    if not exists (select 1 from information_schema.columns where table_catalog = current_database() and table_schema = 'public' and table_name = 'tig_pairs' and column_name = 'pid') then
        ALTER TABLE tig_pairs ADD COLUMN pid BIGSERIAL PRIMARY KEY;
    end if;
end$$;
-- QUERY END:
