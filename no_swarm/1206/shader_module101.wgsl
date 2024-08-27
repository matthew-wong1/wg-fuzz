struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(-57618i, 0u, vec4<u32>(58475u, 19288u, 0u, 59388u), vec4<u32>(106486u, 4294967295u, 94251u, 40113u), vec2<i32>(2147483647i, 0i)), Struct_1(-46083i, 4294967295u, vec4<u32>(4294967295u, 2263u, 14926u, 4294967295u), vec4<u32>(0u, 1u, 18831u, 13869u), vec2<i32>(-37637i, 2147483647i)), Struct_1(34749i, 4294967295u, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(52720u, 14808u, 1u, 20275u), vec2<i32>(-30213i, 0i)), Struct_1(72180i, 82162u, vec4<u32>(4294967295u, 0u, 36247u, 4294967295u), vec4<u32>(83088u, 4294967295u, 1u, 4294967295u), vec2<i32>(51630i, 2161i))), Struct_2(Struct_1(3527i, 19356u, vec4<u32>(4294967295u, 108789u, 4294967295u, 42560u), vec4<u32>(0u, 1u, 4294967295u, 11057u), vec2<i32>(-14502i, 2147483647i)), Struct_1(0i, 27893u, vec4<u32>(4294967295u, 25768u, 12355u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 25974u, 11996u), vec2<i32>(0i, 2147483647i)), Struct_1(5336i, 1596u, vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(0u, 1u, 31296u, 10831u), vec2<i32>(6044i, 2147483647i)), Struct_1(-30492i, 29688u, vec4<u32>(1u, 4294967295u, 5276u, 63247u), vec4<u32>(1u, 1u, 8553u, 4294967295u), vec2<i32>(43697i, -60989i))), Struct_2(Struct_1(-1i, 1u, vec4<u32>(4294967295u, 0u, 35938u, 0u), vec4<u32>(0u, 0u, 29150u, 4294967295u), vec2<i32>(41025i, -6151i)), Struct_1(1i, 0u, vec4<u32>(9849u, 39663u, 24802u, 10056u), vec4<u32>(4294967295u, 4294967295u, 22126u, 1u), vec2<i32>(0i, -1i)), Struct_1(-23952i, 39559u, vec4<u32>(36536u, 0u, 20745u, 1u), vec4<u32>(59241u, 1u, 1u, 1u), vec2<i32>(32442i, 16723i)), Struct_1(-1i, 4294967295u, vec4<u32>(23452u, 38565u, 1u, 1u), vec4<u32>(1u, 54106u, 21382u, 22840u), vec2<i32>(2147483647i, 0i))), Struct_2(Struct_1(3391i, 4294967295u, vec4<u32>(1u, 1u, 0u, 9761u), vec4<u32>(38468u, 32132u, 4728u, 13853u), vec2<i32>(8803i, -1i)), Struct_1(-7485i, 152757u, vec4<u32>(0u, 59755u, 4294967295u, 54623u), vec4<u32>(0u, 1u, 35530u, 0u), vec2<i32>(1i, -46008i)), Struct_1(-1i, 2415u, vec4<u32>(61619u, 1u, 49684u, 1u), vec4<u32>(51802u, 4203u, 0u, 4294967295u), vec2<i32>(23801i, -1i)), Struct_1(27563i, 0u, vec4<u32>(19174u, 0u, 4294967295u, 35582u), vec4<u32>(18691u, 39527u, 20856u, 25199u), vec2<i32>(0i, 1i))), Struct_2(Struct_1(-56105i, 317u, vec4<u32>(59540u, 6890u, 18401u, 1u), vec4<u32>(36133u, 4294967295u, 23524u, 1309u), vec2<i32>(-23143i, -18007i)), Struct_1(34901i, 70494u, vec4<u32>(4294967295u, 1u, 0u, 22731u), vec4<u32>(18472u, 14966u, 0u, 14526u), vec2<i32>(2147483647i, -4665i)), Struct_1(i32(-2147483648), 24583u, vec4<u32>(0u, 6476u, 72360u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec2<i32>(24856i, -15686i)), Struct_1(i32(-2147483648), 1u, vec4<u32>(1u, 50395u, 1u, 20497u), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec2<i32>(0i, 0i))), Struct_2(Struct_1(i32(-2147483648), 4294967295u, vec4<u32>(0u, 31161u, 1u, 5434u), vec4<u32>(0u, 21166u, 1u, 4294967295u), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(43086i, 697u, vec4<u32>(4294967295u, 19243u, 26403u, 0u), vec4<u32>(118218u, 4294967295u, 4294967295u, 4294967295u), vec2<i32>(-49375i, 0i)), Struct_1(-1i, 14138u, vec4<u32>(4294967295u, 8906u, 41387u, 1u), vec4<u32>(1u, 4294967295u, 49894u, 1389u), vec2<i32>(36005i, -11974i)), Struct_1(-19581i, 1u, vec4<u32>(41852u, 23472u, 36385u, 0u), vec4<u32>(3u, 1u, 75367u, 56370u), vec2<i32>(-83064i, 5692i))), Struct_2(Struct_1(-1i, 0u, vec4<u32>(10434u, 14900u, 1u, 14948u), vec4<u32>(0u, 0u, 17525u, 16414u), vec2<i32>(-29242i, 10008i)), Struct_1(14301i, 4294967295u, vec4<u32>(26247u, 0u, 36793u, 21362u), vec4<u32>(67914u, 18980u, 1u, 1u), vec2<i32>(1i, -7345i)), Struct_1(i32(-2147483648), 0u, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(30011u, 78968u, 26473u, 0u), vec2<i32>(i32(-2147483648), -1i)), Struct_1(i32(-2147483648), 1u, vec4<u32>(4294967295u, 37160u, 21594u, 0u), vec4<u32>(76738u, 82399u, 4294967295u, 30943u), vec2<i32>(i32(-2147483648), -69046i))), Struct_2(Struct_1(13293i, 4294967295u, vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(4294967295u, 22164u, 4294967295u, 0u), vec2<i32>(-2022i, -5436i)), Struct_1(-38034i, 1u, vec4<u32>(1u, 4905u, 39726u, 1u), vec4<u32>(34758u, 0u, 11361u, 72267u), vec2<i32>(-55984i, 1i)), Struct_1(-1i, 1u, vec4<u32>(0u, 65642u, 22454u, 31085u), vec4<u32>(4294967295u, 1u, 70825u, 16589u), vec2<i32>(-49315i, 1i)), Struct_1(-6601i, 151013u, vec4<u32>(4294967295u, 40901u, 4294967295u, 4294967295u), vec4<u32>(50867u, 4294967295u, 4294967295u, 14847u), vec2<i32>(-31418i, 0i))), Struct_2(Struct_1(-6629i, 1u, vec4<u32>(3253u, 63519u, 68856u, 21119u), vec4<u32>(11329u, 0u, 59032u, 16441u), vec2<i32>(44964i, 0i)), Struct_1(-23897i, 1u, vec4<u32>(0u, 0u, 40014u, 89382u), vec4<u32>(30265u, 29236u, 4294967295u, 39404u), vec2<i32>(1i, i32(-2147483648))), Struct_1(43485i, 0u, vec4<u32>(1u, 5123u, 1u, 32429u), vec4<u32>(0u, 1u, 0u, 1u), vec2<i32>(i32(-2147483648), -1i)), Struct_1(1851i, 20840u, vec4<u32>(1u, 0u, 65906u, 1u), vec4<u32>(4294967295u, 0u, 22556u, 22772u), vec2<i32>(66136i, 5635i))), Struct_2(Struct_1(20340i, 92878u, vec4<u32>(8742u, 31648u, 28295u, 27372u), vec4<u32>(6421u, 1u, 0u, 34894u), vec2<i32>(0i, 2147483647i)), Struct_1(1i, 0u, vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 32401u, 0u, 1u), vec2<i32>(i32(-2147483648), 26233i)), Struct_1(-37561i, 0u, vec4<u32>(41581u, 4294967295u, 112498u, 1u), vec4<u32>(60749u, 1u, 10698u, 33020u), vec2<i32>(0i, 12672i)), Struct_1(-9700i, 66305u, vec4<u32>(27806u, 9164u, 0u, 1u), vec4<u32>(29796u, 0u, 9276u, 37381u), vec2<i32>(0i, -1i))), Struct_2(Struct_1(2147483647i, 530u, vec4<u32>(0u, 0u, 0u, 28346u), vec4<u32>(21088u, 4294967295u, 4294967295u, 1u), vec2<i32>(-29388i, 2147483647i)), Struct_1(-31265i, 1u, vec4<u32>(33344u, 57419u, 13477u, 0u), vec4<u32>(19692u, 4294967295u, 69299u, 0u), vec2<i32>(63723i, -31555i)), Struct_1(0i, 1u, vec4<u32>(28373u, 79944u, 60665u, 1u), vec4<u32>(1u, 1u, 1u, 19000u), vec2<i32>(1i, 2147483647i)), Struct_1(-10069i, 1u, vec4<u32>(43752u, 59457u, 35061u, 3719u), vec4<u32>(0u, 0u, 0u, 96316u), vec2<i32>(-38106i, 2147483647i))), Struct_2(Struct_1(i32(-2147483648), 0u, vec4<u32>(4294967295u, 0u, 17851u, 2147u), vec4<u32>(0u, 17977u, 0u, 11110u), vec2<i32>(36250i, 13330i)), Struct_1(-30743i, 1u, vec4<u32>(30460u, 4294967295u, 45753u, 0u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(0i, 83024u, vec4<u32>(4294967295u, 4294967295u, 19975u, 0u), vec4<u32>(1u, 0u, 4294967295u, 26274u), vec2<i32>(-1i, 75490i)), Struct_1(-87406i, 3905u, vec4<u32>(4294967295u, 43746u, 1u, 0u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec2<i32>(-1i, -1i))), Struct_2(Struct_1(31622i, 104803u, vec4<u32>(80430u, 0u, 81904u, 15906u), vec4<u32>(4294967295u, 0u, 49460u, 90198u), vec2<i32>(9528i, 2147483647i)), Struct_1(-45519i, 48385u, vec4<u32>(70087u, 0u, 0u, 5485u), vec4<u32>(4294967295u, 23186u, 0u, 1u), vec2<i32>(i32(-2147483648), 43117i)), Struct_1(2147483647i, 1u, vec4<u32>(48145u, 1u, 40885u, 85295u), vec4<u32>(1u, 1u, 8021u, 2331u), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(80090i, 4294967295u, vec4<u32>(843u, 0u, 1u, 0u), vec4<u32>(32664u, 23339u, 88070u, 4294967295u), vec2<i32>(-22894i, 0i))), Struct_2(Struct_1(-21991i, 1289u, vec4<u32>(26410u, 4294967295u, 4294967295u, 26129u), vec4<u32>(0u, 28452u, 4294967295u, 95580u), vec2<i32>(-66014i, -1i)), Struct_1(-11119i, 0u, vec4<u32>(0u, 4294967295u, 0u, 6850u), vec4<u32>(42058u, 25716u, 4294967295u, 26133u), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(0i, 2550u, vec4<u32>(50548u, 0u, 4294967295u, 4975u), vec4<u32>(4294967295u, 4294967295u, 102069u, 4294967295u), vec2<i32>(26742i, i32(-2147483648))), Struct_1(45287i, 9025u, vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(0u, 18542u, 37095u, 1u), vec2<i32>(-12688i, i32(-2147483648)))), Struct_2(Struct_1(-2340i, 45789u, vec4<u32>(11948u, 4294967295u, 6925u, 47911u), vec4<u32>(40678u, 24393u, 59989u, 4294967295u), vec2<i32>(34628i, -1i)), Struct_1(-42521i, 4294967295u, vec4<u32>(23086u, 0u, 12059u, 22295u), vec4<u32>(4294967295u, 0u, 53269u, 83657u), vec2<i32>(-39791i, -5213i)), Struct_1(22137i, 23433u, vec4<u32>(38065u, 55455u, 24485u, 0u), vec4<u32>(4294967295u, 19364u, 1u, 19860u), vec2<i32>(-14582i, -31464i)), Struct_1(0i, 16028u, vec4<u32>(32427u, 51060u, 4294967295u, 1u), vec4<u32>(58770u, 1u, 1u, 73794u), vec2<i32>(i32(-2147483648), 2147483647i))), Struct_2(Struct_1(-25470i, 0u, vec4<u32>(40558u, 4294967295u, 0u, 65832u), vec4<u32>(1u, 14970u, 0u, 4294967295u), vec2<i32>(25324i, 42390i)), Struct_1(25228i, 4294967295u, vec4<u32>(1u, 17698u, 1u, 110270u), vec4<u32>(3108u, 0u, 0u, 3803u), vec2<i32>(-9781i, 16784i)), Struct_1(-31581i, 1u, vec4<u32>(0u, 0u, 4294967295u, 3052u), vec4<u32>(1u, 4294967295u, 2087u, 4294967295u), vec2<i32>(2147483647i, 5111i)), Struct_1(19681i, 5155u, vec4<u32>(4294967295u, 1u, 4294967295u, 69123u), vec4<u32>(1u, 29977u, 18545u, 1u), vec2<i32>(-43096i, -44285i))), Struct_2(Struct_1(13571i, 4294967295u, vec4<u32>(42821u, 45267u, 28408u, 0u), vec4<u32>(1u, 19901u, 0u, 23125u), vec2<i32>(-1i, i32(-2147483648))), Struct_1(1i, 0u, vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(46574u, 4294967295u, 44417u, 50067u), vec2<i32>(-34995i, 3648i)), Struct_1(-35654i, 1u, vec4<u32>(0u, 54043u, 29623u, 120331u), vec4<u32>(80624u, 0u, 59717u, 4673u), vec2<i32>(1i, 18931i)), Struct_1(i32(-2147483648), 56458u, vec4<u32>(1u, 65649u, 0u, 4294967295u), vec4<u32>(31122u, 13867u, 131901u, 11066u), vec2<i32>(-14708i, 2147483647i))), Struct_2(Struct_1(-5850i, 1u, vec4<u32>(44266u, 33183u, 0u, 19681u), vec4<u32>(13709u, 4294967295u, 9898u, 0u), vec2<i32>(-61941i, -14742i)), Struct_1(30725i, 4294967295u, vec4<u32>(57420u, 1730u, 1u, 1u), vec4<u32>(14571u, 19005u, 19140u, 4294967295u), vec2<i32>(i32(-2147483648), -31139i)), Struct_1(11274i, 0u, vec4<u32>(36017u, 30521u, 1u, 1937u), vec4<u32>(1u, 10519u, 0u, 0u), vec2<i32>(12329i, 13441i)), Struct_1(18327i, 45914u, vec4<u32>(4294967295u, 1u, 32051u, 1u), vec4<u32>(27750u, 0u, 96031u, 4294967295u), vec2<i32>(-1i, i32(-2147483648)))), Struct_2(Struct_1(-1i, 20464u, vec4<u32>(4294967295u, 12871u, 22104u, 69938u), vec4<u32>(59062u, 80880u, 86030u, 31019u), vec2<i32>(-1i, 52411i)), Struct_1(1i, 1u, vec4<u32>(24287u, 64241u, 10042u, 70238u), vec4<u32>(12180u, 47121u, 0u, 30394u), vec2<i32>(2147483647i, 12447i)), Struct_1(11691i, 1u, vec4<u32>(9933u, 4294967295u, 4294967295u, 0u), vec4<u32>(76139u, 26805u, 0u, 1u), vec2<i32>(22526i, -53680i)), Struct_1(-1696i, 47481u, vec4<u32>(55393u, 36114u, 4294967295u, 4294967295u), vec4<u32>(51801u, 4735u, 4294967295u, 363u), vec2<i32>(-1i, -1i))), Struct_2(Struct_1(-8969i, 1133u, vec4<u32>(4294967295u, 4294967295u, 38918u, 2508u), vec4<u32>(4294967295u, 17602u, 1732u, 5008u), vec2<i32>(i32(-2147483648), 1i)), Struct_1(1i, 0u, vec4<u32>(84605u, 1u, 22430u, 4772u), vec4<u32>(8629u, 29758u, 19081u, 0u), vec2<i32>(41708i, -1i)), Struct_1(-16190i, 8593u, vec4<u32>(1u, 73594u, 1u, 1u), vec4<u32>(0u, 1u, 1u, 0u), vec2<i32>(1i, 5174i)), Struct_1(-2342i, 1u, vec4<u32>(127279u, 4294967295u, 12969u, 1u), vec4<u32>(1u, 1u, 1u, 9016u), vec2<i32>(2147483647i, -21873i))), Struct_2(Struct_1(3255i, 24513u, vec4<u32>(12056u, 0u, 4294967295u, 1u), vec4<u32>(1u, 0u, 4294967295u, 60740u), vec2<i32>(31218i, -28804i)), Struct_1(2147483647i, 4294967295u, vec4<u32>(20588u, 13984u, 0u, 108606u), vec4<u32>(4532u, 140038u, 75121u, 0u), vec2<i32>(8914i, 2147483647i)), Struct_1(48877i, 46761u, vec4<u32>(1u, 27098u, 1u, 0u), vec4<u32>(83507u, 0u, 0u, 2239u), vec2<i32>(1i, -14654i)), Struct_1(2147483647i, 4294967295u, vec4<u32>(32290u, 50242u, 44314u, 1u), vec4<u32>(1u, 1u, 9671u, 22754u), vec2<i32>(1i, -1i))), Struct_2(Struct_1(-42544i, 19607u, vec4<u32>(137570u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 48606u, 4294967295u, 1u), vec2<i32>(i32(-2147483648), 34541i)), Struct_1(-31862i, 61387u, vec4<u32>(4294967295u, 18261u, 4294967295u, 4294967295u), vec4<u32>(17157u, 82854u, 57592u, 12087u), vec2<i32>(13731i, 2147483647i)), Struct_1(-1i, 4294967295u, vec4<u32>(51667u, 0u, 1u, 90112u), vec4<u32>(11750u, 20300u, 4294967295u, 40726u), vec2<i32>(-24169i, 0i)), Struct_1(1i, 1u, vec4<u32>(18460u, 34208u, 64616u, 4294967295u), vec4<u32>(35354u, 45539u, 29110u, 9689u), vec2<i32>(-1i, -28380i))), Struct_2(Struct_1(-16084i, 43059u, vec4<u32>(4294967295u, 2232u, 104685u, 3930u), vec4<u32>(1053u, 4294967295u, 0u, 42333u), vec2<i32>(-8634i, -16567i)), Struct_1(i32(-2147483648), 1879u, vec4<u32>(14220u, 4294967295u, 26531u, 4294967295u), vec4<u32>(1u, 0u, 1u, 0u), vec2<i32>(-1i, -47680i)), Struct_1(i32(-2147483648), 71653u, vec4<u32>(1u, 43324u, 89680u, 1u), vec4<u32>(21527u, 0u, 4294967295u, 4294967295u), vec2<i32>(2147483647i, -1i)), Struct_1(1i, 0u, vec4<u32>(10911u, 14447u, 3717u, 63426u), vec4<u32>(83708u, 1u, 1u, 1u), vec2<i32>(8186i, 27350i))));

var<private> global1: array<f32, 27>;

var<private> global2: i32;

var<private> global3: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(37809u, 22781u, 1u, 1u), vec4<u32>(57698u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 97480u, 1u, 15044u), vec4<u32>(58740u, 77573u, 0u, 30623u), vec4<u32>(14410u, 46703u, 1u, 8320u), vec4<u32>(4294967295u, 30100u, 1764u, 0u), vec4<u32>(105099u, 1u, 0u, 0u), vec4<u32>(73246u, 4294967295u, 0u, 0u), vec4<u32>(82801u, 0u, 30054u, 0u), vec4<u32>(0u, 7639u, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(91848u, 9092u, 76434u, 1u), vec4<u32>(0u, 32382u, 0u, 76390u), vec4<u32>(1u, 110109u, 2384u, 9866u), vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(1u, 81990u, 76334u, 1u));

var<private> global4: array<vec3<u32>, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = vec3<f32>(global1[_wgslsmith_index_u32(~6786u, 27u)], _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_div_f32(195f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1493f + global1[_wgslsmith_index_u32(18499u, 27u)]))), 382f))));
    global1 = array<f32, 27>();
    global1 = array<f32, 27>();
    global3 = array<vec4<u32>, 16>();
    var var_1 = (global3[_wgslsmith_index_u32(u_input.a, 16u)] >> (~(~select(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), vec4<u32>(1u, 0u, u_input.e, 48430u), true)) % vec4<u32>(32u))) & ~(~(global3[_wgslsmith_index_u32(1u, 16u)] ^ global3[_wgslsmith_index_u32(1u, 16u)]) >> (~vec4<u32>(u_input.e, u_input.e, 69569u, u_input.e) % vec4<u32>(32u)));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~firstLeadingBit(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 16u)]), (~global3[_wgslsmith_index_u32(0u, 16u)] | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, var_1.x, 8695u, 978u), global3[_wgslsmith_index_u32(var_1.x, 16u)])) << (abs(vec4<u32>(19887u, u_input.a, 14784u, u_input.e)) % vec4<u32>(32u))), ~(~(~countOneBits(global3[_wgslsmith_index_u32(u_input.e, 16u)]))));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<u32>) -> u32 {
    var var_0 = abs(vec3<u32>(func_3(!vec2<bool>(arg_0.x, false)) ^ select(~76491u, _wgslsmith_mod_u32(u_input.e, 5191u), !arg_0.x), u_input.a, 1u));
    let var_1 = vec2<bool>(false, -_wgslsmith_add_i32(countOneBits(arg_1), 1i) >= select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, arg_1, arg_1, -1i), vec4<i32>(arg_1, 37739i, u_input.d, 2147483647i)), u_input.c, false));
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(~(~(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], vec4<u32>(arg_2.x, 58768u, 0u, 30511u)) ^ _wgslsmith_add_u32(1u, u_input.a))), 23u)], Struct_1(2147483647i, max(~11358u, ~(~74923u)), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, var_0.x, 0u, 26597u)), global3[_wgslsmith_index_u32(arg_2.x, 16u)]) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, var_0.x), global3[_wgslsmith_index_u32(~arg_2.x, 16u)], vec4<u32>(19663u, 96901u, u_input.e, u_input.a)), ~(~vec4<u32>(u_input.e, 0u, 0u, arg_2.x) | ~global3[_wgslsmith_index_u32(u_input.a, 16u)]), _wgslsmith_add_vec2_i32(-(vec2<i32>(arg_1, arg_1) & vec2<i32>(u_input.d, -1i)), vec2<i32>(u_input.b, ~20553i))), ~(~min(vec3<u32>(var_0.x, 0u, 16892u), _wgslsmith_mod_vec3_u32(global4[_wgslsmith_index_u32(1u, 13u)], vec3<u32>(1u, u_input.e, u_input.e)))), Struct_1(arg_1, arg_2.x, ~abs(global3[_wgslsmith_index_u32(u_input.e, 16u)]) ^ global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(69073u, var_0.x), 16u)], global3[_wgslsmith_index_u32(2689u, 16u)], abs(vec2<i32>(-u_input.c, 0i))), reverseBits(~min(1i, i32(-1i) * -1i)));
    var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(countOneBits(arg_2.zy), select(var_0.xy, _wgslsmith_div_vec2_u32(vec2<u32>(var_2.d.d.x, 113490u), vec2<u32>(40583u, arg_2.x)), vec2<bool>(var_1.x, arg_0.x)) << (var_0.zz % vec2<u32>(32u))), ~(~(~_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(9519u, 16u)], vec4<u32>(29876u, var_0.x, var_0.x, var_0.x)))), _wgslsmith_sub_u32(var_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_2.a.c.c, var_2.d.c >> (global3[_wgslsmith_index_u32(3132u, 16u)] % vec4<u32>(32u))), vec4<u32>(abs(22806u), _wgslsmith_sub_u32(4014u, var_2.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 57319u, 1u), vec4<u32>(var_0.x, 1u, u_input.a, 16479u)), _wgslsmith_sub_u32(var_0.x, var_2.a.b.b)))));
    var_0 = _wgslsmith_clamp_vec3_u32(~abs(var_2.b.c.xxw), ~arg_2, arg_2);
    return abs(4784u);
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = u_input.b;
    let var_1 = select(~_wgslsmith_div_u32(~u_input.e, u_input.a ^ 87779u) >> (reverseBits(10605u) % 32u), _wgslsmith_clamp_u32(10616u, func_2(vec2<bool>(arg_0, arg_0), ~(-2147483647i), ~vec3<u32>(u_input.a, 16594u, 16515u)), ~(~34724u)) & _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a & u_input.a, u_input.a), 16u)], firstTrailingBit(vec4<u32>(u_input.e, 0u, 23172u, u_input.a))), true);
    let var_2 = (_wgslsmith_add_i32(abs(u_input.c), ~_wgslsmith_add_i32(19645i, u_input.b)) | -1i) != _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(reverseBits(vec3<i32>(u_input.b, -29107i, u_input.b))), vec3<i32>(_wgslsmith_mod_i32(u_input.d, u_input.b), ~u_input.b, _wgslsmith_div_i32(u_input.c, u_input.b))), vec3<i32>(firstTrailingBit(u_input.c << (2812u % 32u)), _wgslsmith_sub_i32(u_input.d, u_input.c) | ~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-27508i, 0i), vec2<i32>(u_input.c, u_input.b)) ^ ~2147483647i));
    global4 = array<vec3<u32>, 13>();
    global1 = array<f32, 27>();
    return all(vec2<bool>(!select(true, false, var_1 >= u_input.e), var_2 && true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(!any(vec4<bool>(true, true, true, true)), !(true && (global1[_wgslsmith_index_u32(u_input.a, 27u)] != 1276f)), 4294967295u != ~(~u_input.e)), !select(vec3<bool>(func_1(true), true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), 2147483647i != u_input.b), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), true)), false);
    global0 = array<Struct_2, 23>();
    var var_1 = Struct_5(u_input.d >= u_input.b, global0[_wgslsmith_index_u32(~0u, 23u)], u_input.d, Struct_4(vec2<bool>(!(!var_0.x), !(var_0.x || var_0.x)), ~abs(vec3<i32>(u_input.d, u_input.d, -8132i))));
    let var_2 = _wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec3_u32(select(firstLeadingBit(vec3<u32>(1u, 1u, u_input.e)), vec3<u32>(var_1.b.d.c.x, 17101u, 1u), var_1.a), reverseBits(_wgslsmith_clamp_vec3_u32(global4[_wgslsmith_index_u32(u_input.a, 13u)], var_1.b.d.d.zxx, global4[_wgslsmith_index_u32(var_1.b.a.c.x, 13u)])))), firstLeadingBit(_wgslsmith_clamp_u32(~4294967295u, var_1.b.a.b, ~9528u) & ~4294967295u));
    let var_3 = var_1.b;
    let var_4 = global3[_wgslsmith_index_u32(reverseBits(u_input.a), 16u)] << ((vec4<u32>((1u >> (var_2 % 32u)) ^ _wgslsmith_mod_u32(0u, var_2), abs(4294967295u), firstLeadingBit(countOneBits(4294967295u)), ~(var_3.a.d.x & u_input.a)) >> (vec4<u32>(_wgslsmith_mod_u32(~var_3.a.b, func_3(var_0.yy)), 1u, ~1u, var_3.c.c.x & _wgslsmith_sub_u32(0u, var_3.a.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
    global3 = array<vec4<u32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-100f, -2008f), vec2<f32>(global1[_wgslsmith_index_u32(var_1.b.c.b, 27u)], -1013f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(2034f, global1[_wgslsmith_index_u32(var_4.x, 27u)]), vec2<f32>(579f, global1[_wgslsmith_index_u32(1u, 27u)])))), _wgslsmith_div_vec2_f32(vec2<f32>(1471f, -393f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(var_3.c.c.x, 27u)], 717f)))), true))), i32(-1i) * -24201i);
}

