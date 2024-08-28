// {"0:0":[9,248,102,112,44,36,234,249,124,52,234,87,185,159,36,228,98,234,45,250,178,39,187,133,166,253,236,56,225,88,162,28]}
// Seed: 11755010911096467062

struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(Struct_3(Struct_2(false, 18941i, vec3<u32>(0u, 15302u, 1u), Struct_1(vec4<i32>(-7316i, 2147483647i, 31566i, 0i))), Struct_2(false, -11210i, vec3<u32>(0u, 32354u, 1u), Struct_1(vec4<i32>(30149i, -11602i, -1i, 0i))), 1u, vec2<f32>(-1779f, -442f), Struct_1(vec4<i32>(-1i, -35924i, 22140i, -14175i))), Struct_3(Struct_2(false, 0i, vec3<u32>(42136u, 22449u, 16942u), Struct_1(vec4<i32>(-32924i, 1i, -7303i, 20409i))), Struct_2(false, 31147i, vec3<u32>(4294967295u, 106793u, 5501u), Struct_1(vec4<i32>(0i, 15437i, 2757i, 0i))), 4294967295u, vec2<f32>(-1699f, -795f), Struct_1(vec4<i32>(i32(-2147483648), 5553i, 0i, -1i)))), Struct_4(Struct_3(Struct_2(true, i32(-2147483648), vec3<u32>(8639u, 0u, 4294967295u), Struct_1(vec4<i32>(2147483647i, 30283i, -19636i, -11459i))), Struct_2(true, i32(-2147483648), vec3<u32>(6391u, 4294967295u, 51488u), Struct_1(vec4<i32>(0i, 38655i, 48092i, 1i))), 0u, vec2<f32>(966f, -743f), Struct_1(vec4<i32>(0i, 0i, -4306i, i32(-2147483648)))), Struct_3(Struct_2(true, 1i, vec3<u32>(4294967295u, 1u, 91688u), Struct_1(vec4<i32>(59622i, 0i, 16957i, 3126i))), Struct_2(true, 2147483647i, vec3<u32>(18065u, 0u, 50131u), Struct_1(vec4<i32>(-1i, -21088i, -1i, 1i))), 57696u, vec2<f32>(985f, 1185f), Struct_1(vec4<i32>(19243i, -4259i, 1i, -21256i)))), Struct_4(Struct_3(Struct_2(false, 2147483647i, vec3<u32>(0u, 2254u, 1u), Struct_1(vec4<i32>(-30518i, -13559i, 9594i, 6974i))), Struct_2(true, 8211i, vec3<u32>(42562u, 4294967295u, 78591u), Struct_1(vec4<i32>(0i, 1i, i32(-2147483648), 0i))), 99449u, vec2<f32>(493f, 428f), Struct_1(vec4<i32>(-1i, -1i, 1i, -1i))), Struct_3(Struct_2(false, -21282i, vec3<u32>(0u, 0u, 0u), Struct_1(vec4<i32>(-1i, 2147483647i, 1i, -341i))), Struct_2(true, 1i, vec3<u32>(17843u, 67129u, 22615u), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -73083i, -17097i))), 4294967295u, vec2<f32>(-111f, 580f), Struct_1(vec4<i32>(-20060i, -1i, i32(-2147483648), 0i)))), Struct_4(Struct_3(Struct_2(false, 25413i, vec3<u32>(60900u, 110240u, 4294967295u), Struct_1(vec4<i32>(-26317i, -8583i, 2147483647i, 1i))), Struct_2(false, 30937i, vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(vec4<i32>(2147483647i, -1i, 31204i, -1i))), 43929u, vec2<f32>(-1263f, 1151f), Struct_1(vec4<i32>(2147483647i, -1i, 2147483647i, -1i))), Struct_3(Struct_2(true, 0i, vec3<u32>(0u, 16352u, 1u), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 44474i))), Struct_2(false, 2147483647i, vec3<u32>(56392u, 0u, 0u), Struct_1(vec4<i32>(1242i, 44344i, 0i, -1i))), 4294967295u, vec2<f32>(153f, -343f), Struct_1(vec4<i32>(0i, 49958i, 0i, -32698i)))), Struct_4(Struct_3(Struct_2(true, 2147483647i, vec3<u32>(4294967295u, 48618u, 0u), Struct_1(vec4<i32>(1i, -7341i, 14943i, -21672i))), Struct_2(true, 1i, vec3<u32>(114974u, 0u, 0u), Struct_1(vec4<i32>(-2368i, 2147483647i, 2147483647i, 3582i))), 0u, vec2<f32>(542f, 1336f), Struct_1(vec4<i32>(-16982i, 0i, 0i, i32(-2147483648)))), Struct_3(Struct_2(true, 10157i, vec3<u32>(1u, 0u, 49557u), Struct_1(vec4<i32>(2147483647i, 6052i, -53626i, i32(-2147483648)))), Struct_2(false, -67090i, vec3<u32>(1u, 0u, 1009u), Struct_1(vec4<i32>(22699i, 55573i, -20658i, i32(-2147483648)))), 38945u, vec2<f32>(1665f, 530f), Struct_1(vec4<i32>(8551i, 7069i, 15552i, -39035i)))), Struct_4(Struct_3(Struct_2(false, 8543i, vec3<u32>(4294967295u, 1u, 1u), Struct_1(vec4<i32>(2147483647i, -27396i, 8967i, -34197i))), Struct_2(true, 27782i, vec3<u32>(1u, 0u, 4294967295u), Struct_1(vec4<i32>(-1i, 0i, -1i, -3911i))), 21998u, vec2<f32>(619f, 165f), Struct_1(vec4<i32>(-15763i, -1i, 1i, -4785i))), Struct_3(Struct_2(true, -10229i, vec3<u32>(4294967295u, 0u, 64675u), Struct_1(vec4<i32>(2147483647i, 36984i, 2147483647i, -24047i))), Struct_2(true, 2147483647i, vec3<u32>(13964u, 4294967295u, 4294967295u), Struct_1(vec4<i32>(0i, -40696i, 1i, -22835i))), 0u, vec2<f32>(-899f, 714f), Struct_1(vec4<i32>(-8875i, -12298i, 91307i, 15241i)))), Struct_4(Struct_3(Struct_2(true, i32(-2147483648), vec3<u32>(8080u, 21094u, 1u), Struct_1(vec4<i32>(-1i, 13709i, -27752i, -46049i))), Struct_2(false, i32(-2147483648), vec3<u32>(1u, 74368u, 73565u), Struct_1(vec4<i32>(i32(-2147483648), -4762i, 1i, 805i))), 35358u, vec2<f32>(-771f, 1697f), Struct_1(vec4<i32>(0i, 20656i, 21628i, 4261i))), Struct_3(Struct_2(false, 14982i, vec3<u32>(29194u, 0u, 0u), Struct_1(vec4<i32>(1i, -1i, -9567i, 10982i))), Struct_2(false, 2147483647i, vec3<u32>(0u, 1u, 4294967295u), Struct_1(vec4<i32>(46510i, -22094i, -21812i, -33628i))), 49679u, vec2<f32>(-2073f, -820f), Struct_1(vec4<i32>(-1i, -1i, i32(-2147483648), 0i)))), Struct_4(Struct_3(Struct_2(false, 1i, vec3<u32>(1u, 1u, 0u), Struct_1(vec4<i32>(-60949i, i32(-2147483648), 1848i, 2147483647i))), Struct_2(false, -49065i, vec3<u32>(50905u, 1885u, 15830u), Struct_1(vec4<i32>(-5008i, 0i, 1i, -34869i))), 34371u, vec2<f32>(-150f, 790f), Struct_1(vec4<i32>(-5045i, 23163i, 1i, 2147483647i))), Struct_3(Struct_2(true, i32(-2147483648), vec3<u32>(178987u, 1u, 39129u), Struct_1(vec4<i32>(50811i, 2147483647i, 16371i, 2495i))), Struct_2(true, -41958i, vec3<u32>(4294967295u, 1u, 1u), Struct_1(vec4<i32>(1i, 29505i, -24468i, -25361i))), 1u, vec2<f32>(1194f, -1691f), Struct_1(vec4<i32>(29843i, -15967i, -1i, -32133i)))), Struct_4(Struct_3(Struct_2(true, i32(-2147483648), vec3<u32>(49106u, 42480u, 1u), Struct_1(vec4<i32>(21170i, 2147483647i, -1i, 1i))), Struct_2(false, 0i, vec3<u32>(4294967295u, 4294967295u, 56140u), Struct_1(vec4<i32>(-1i, -46297i, 4735i, 1i))), 33693u, vec2<f32>(-436f, -765f), Struct_1(vec4<i32>(0i, -86297i, 1137i, 0i))), Struct_3(Struct_2(true, 0i, vec3<u32>(4294967295u, 14993u, 87246u), Struct_1(vec4<i32>(-974i, 2147483647i, -1i, 0i))), Struct_2(true, -1i, vec3<u32>(1u, 1u, 4294967295u), Struct_1(vec4<i32>(0i, 70282i, -1i, 19210i))), 4294967295u, vec2<f32>(-1004f, -1372f), Struct_1(vec4<i32>(i32(-2147483648), -33017i, i32(-2147483648), 7754i)))), Struct_4(Struct_3(Struct_2(true, -5025i, vec3<u32>(9128u, 0u, 58621u), Struct_1(vec4<i32>(-32374i, -20912i, 10445i, 2147483647i))), Struct_2(true, -1i, vec3<u32>(1u, 1u, 76555u), Struct_1(vec4<i32>(1i, 1i, 0i, -5938i))), 1u, vec2<f32>(-646f, 1000f), Struct_1(vec4<i32>(12761i, -1i, 27939i, 20057i))), Struct_3(Struct_2(false, 56795i, vec3<u32>(11615u, 4294967295u, 4294967295u), Struct_1(vec4<i32>(-38748i, -35277i, 46223i, -14061i))), Struct_2(false, -1i, vec3<u32>(4294967295u, 1u, 25592u), Struct_1(vec4<i32>(-1i, -1i, 2147483647i, -29641i))), 0u, vec2<f32>(-770f, -1088f), Struct_1(vec4<i32>(52534i, -41649i, -1i, 19464i)))), Struct_4(Struct_3(Struct_2(false, 13301i, vec3<u32>(12096u, 4294967295u, 33529u), Struct_1(vec4<i32>(-9871i, 3346i, 2147483647i, -1i))), Struct_2(false, 17430i, vec3<u32>(0u, 1u, 4294967295u), Struct_1(vec4<i32>(2147483647i, 1i, 2147483647i, i32(-2147483648)))), 4294967295u, vec2<f32>(257f, 1000f), Struct_1(vec4<i32>(i32(-2147483648), -1i, 1i, -6050i))), Struct_3(Struct_2(true, -59295i, vec3<u32>(0u, 0u, 0u), Struct_1(vec4<i32>(20353i, -1i, -1i, -46712i))), Struct_2(false, -15527i, vec3<u32>(1u, 34911u, 33474u), Struct_1(vec4<i32>(i32(-2147483648), 0i, 1i, i32(-2147483648)))), 158u, vec2<f32>(423f, -269f), Struct_1(vec4<i32>(-12187i, -15396i, 0i, 1i)))), Struct_4(Struct_3(Struct_2(true, 21852i, vec3<u32>(9066u, 3011u, 0u), Struct_1(vec4<i32>(-31595i, 8384i, -11584i, -1i))), Struct_2(true, 0i, vec3<u32>(8242u, 4294967295u, 4294967295u), Struct_1(vec4<i32>(-34178i, 1i, 0i, -1i))), 1u, vec2<f32>(1020f, -125f), Struct_1(vec4<i32>(-31151i, 37351i, 1i, -1i))), Struct_3(Struct_2(false, -1i, vec3<u32>(1u, 4294967295u, 45996u), Struct_1(vec4<i32>(1i, i32(-2147483648), -3973i, -22650i))), Struct_2(true, -1i, vec3<u32>(14360u, 4294967295u, 88u), Struct_1(vec4<i32>(i32(-2147483648), -6978i, 2147483647i, 0i))), 4294967295u, vec2<f32>(709f, 359f), Struct_1(vec4<i32>(-1i, -1i, 1i, -17254i)))), Struct_4(Struct_3(Struct_2(true, -34292i, vec3<u32>(1u, 100057u, 1u), Struct_1(vec4<i32>(-1i, i32(-2147483648), 43016i, 2147483647i))), Struct_2(false, 2147483647i, vec3<u32>(4294967295u, 91714u, 0u), Struct_1(vec4<i32>(-44736i, 1158i, -1i, 12593i))), 0u, vec2<f32>(286f, 476f), Struct_1(vec4<i32>(26367i, 1i, -7186i, 3321i))), Struct_3(Struct_2(true, 2147483647i, vec3<u32>(47257u, 4294967295u, 26229u), Struct_1(vec4<i32>(-17444i, 0i, -12856i, -30566i))), Struct_2(true, 0i, vec3<u32>(4294967295u, 37059u, 4294967295u), Struct_1(vec4<i32>(-2569i, -8169i, -65163i, 38357i))), 0u, vec2<f32>(1000f, 117f), Struct_1(vec4<i32>(2147483647i, 3128i, -23098i, -25426i)))), Struct_4(Struct_3(Struct_2(true, -68287i, vec3<u32>(1u, 0u, 64958u), Struct_1(vec4<i32>(9020i, 0i, 2147483647i, -1i))), Struct_2(true, -49436i, vec3<u32>(31978u, 1u, 0u), Struct_1(vec4<i32>(1i, -22014i, 2760i, -12299i))), 0u, vec2<f32>(661f, 935f), Struct_1(vec4<i32>(2147483647i, 22349i, 48890i, 7179i))), Struct_3(Struct_2(true, -19313i, vec3<u32>(24440u, 4294967295u, 4294967295u), Struct_1(vec4<i32>(-9709i, i32(-2147483648), 7962i, -23340i))), Struct_2(false, -1i, vec3<u32>(0u, 8303u, 48500u), Struct_1(vec4<i32>(41800i, -1i, 1i, 2147483647i))), 0u, vec2<f32>(-570f, -188f), Struct_1(vec4<i32>(2147483647i, -52136i, i32(-2147483648), -21083i)))), Struct_4(Struct_3(Struct_2(false, 45598i, vec3<u32>(15113u, 1u, 39726u), Struct_1(vec4<i32>(0i, 35100i, 0i, 1i))), Struct_2(false, i32(-2147483648), vec3<u32>(4294967295u, 1u, 28013u), Struct_1(vec4<i32>(i32(-2147483648), 6098i, -1i, 0i))), 0u, vec2<f32>(158f, -1000f), Struct_1(vec4<i32>(0i, 1i, -4704i, -1i))), Struct_3(Struct_2(true, i32(-2147483648), vec3<u32>(4294967295u, 11644u, 4294967295u), Struct_1(vec4<i32>(-8899i, -13163i, 2147483647i, -1i))), Struct_2(false, 2147483647i, vec3<u32>(4294967295u, 4294967295u, 7633u), Struct_1(vec4<i32>(1i, i32(-2147483648), 1i, 0i))), 4294967295u, vec2<f32>(658f, -480f), Struct_1(vec4<i32>(46588i, -66445i, 2147483647i, 72282i)))), Struct_4(Struct_3(Struct_2(false, i32(-2147483648), vec3<u32>(0u, 4294967295u, 0u), Struct_1(vec4<i32>(25565i, 48742i, 46099i, -1i))), Struct_2(false, -11471i, vec3<u32>(1u, 1u, 4294967295u), Struct_1(vec4<i32>(-1i, 30524i, 15668i, -33709i))), 18902u, vec2<f32>(-465f, 683f), Struct_1(vec4<i32>(-8262i, 1i, 2147483647i, 0i))), Struct_3(Struct_2(false, -61503i, vec3<u32>(1u, 0u, 0u), Struct_1(vec4<i32>(-22252i, 2147483647i, 11614i, 2147483647i))), Struct_2(false, 2147483647i, vec3<u32>(0u, 0u, 48318u), Struct_1(vec4<i32>(0i, i32(-2147483648), -59i, -30923i))), 4294967295u, vec2<f32>(-714f, 422f), Struct_1(vec4<i32>(-46666i, -10931i, 2147483647i, i32(-2147483648))))), Struct_4(Struct_3(Struct_2(false, -54718i, vec3<u32>(82248u, 35241u, 62496u), Struct_1(vec4<i32>(-1i, 32950i, -3425i, 33405i))), Struct_2(true, 15716i, vec3<u32>(41551u, 86680u, 0u), Struct_1(vec4<i32>(-31610i, -22372i, -21573i, 0i))), 50166u, vec2<f32>(933f, -1000f), Struct_1(vec4<i32>(-10308i, 1i, 0i, 33635i))), Struct_3(Struct_2(true, 1i, vec3<u32>(14277u, 0u, 0u), Struct_1(vec4<i32>(37802i, 2147483647i, 36621i, -29936i))), Struct_2(true, 1i, vec3<u32>(1u, 31813u, 39814u), Struct_1(vec4<i32>(2147483647i, 0i, i32(-2147483648), 1i))), 42393u, vec2<f32>(-158f, -352f), Struct_1(vec4<i32>(0i, 0i, i32(-2147483648), 0i)))), Struct_4(Struct_3(Struct_2(true, 7685i, vec3<u32>(71434u, 4294967295u, 4294967295u), Struct_1(vec4<i32>(1i, 1i, -17407i, -29957i))), Struct_2(false, 16680i, vec3<u32>(0u, 21915u, 21176u), Struct_1(vec4<i32>(1i, -75819i, -17427i, -48041i))), 31270u, vec2<f32>(-121f, -1000f), Struct_1(vec4<i32>(10405i, -5860i, 45476i, 2147483647i))), Struct_3(Struct_2(true, -16856i, vec3<u32>(0u, 4294967295u, 18389u), Struct_1(vec4<i32>(0i, -1i, 0i, 2147483647i))), Struct_2(true, 2147483647i, vec3<u32>(0u, 0u, 5358u), Struct_1(vec4<i32>(16673i, 17905i, 27218i, 51947i))), 1u, vec2<f32>(112f, 786f), Struct_1(vec4<i32>(0i, 1i, i32(-2147483648), 1i)))), Struct_4(Struct_3(Struct_2(true, 5644i, vec3<u32>(26340u, 0u, 0u), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 54661i, 50085i))), Struct_2(true, 16976i, vec3<u32>(1u, 42120u, 0u), Struct_1(vec4<i32>(1i, 0i, 20754i, 1i))), 60598u, vec2<f32>(1535f, -971f), Struct_1(vec4<i32>(-1i, 25013i, -13242i, 1i))), Struct_3(Struct_2(false, 57222i, vec3<u32>(22694u, 49366u, 4537u), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 1i, 1i))), Struct_2(true, 1083i, vec3<u32>(44378u, 4294967295u, 67141u), Struct_1(vec4<i32>(i32(-2147483648), 1i, 94063i, -21261i))), 3659u, vec2<f32>(1004f, -348f), Struct_1(vec4<i32>(2147483647i, -11913i, 23011i, 0i)))), Struct_4(Struct_3(Struct_2(true, 0i, vec3<u32>(1u, 49392u, 36237u), Struct_1(vec4<i32>(30751i, -11261i, 2725i, i32(-2147483648)))), Struct_2(false, 1i, vec3<u32>(23268u, 35696u, 20144u), Struct_1(vec4<i32>(-14713i, 2583i, -17916i, 0i))), 33302u, vec2<f32>(-169f, 710f), Struct_1(vec4<i32>(-18514i, 40400i, 1i, -1i))), Struct_3(Struct_2(false, -10497i, vec3<u32>(32711u, 1u, 0u), Struct_1(vec4<i32>(i32(-2147483648), 1i, 14760i, -17849i))), Struct_2(true, 35952i, vec3<u32>(31636u, 37860u, 28406u), Struct_1(vec4<i32>(2147483647i, 1i, -8190i, 60685i))), 4294967295u, vec2<f32>(-128f, -2089f), Struct_1(vec4<i32>(18790i, 2147483647i, 20611i, 0i)))), Struct_4(Struct_3(Struct_2(false, 1i, vec3<u32>(10764u, 17173u, 0u), Struct_1(vec4<i32>(66253i, -21532i, 3295i, -24046i))), Struct_2(false, 0i, vec3<u32>(4294967295u, 4294967295u, 98771u), Struct_1(vec4<i32>(-43557i, 2147483647i, -30640i, -25645i))), 75727u, vec2<f32>(-1730f, 189f), Struct_1(vec4<i32>(4360i, 5038i, -1i, 0i))), Struct_3(Struct_2(false, -34064i, vec3<u32>(0u, 0u, 4294967295u), Struct_1(vec4<i32>(-6630i, 23934i, 22453i, -1i))), Struct_2(false, 1i, vec3<u32>(1u, 22990u, 38752u), Struct_1(vec4<i32>(1i, 0i, 2147483647i, i32(-2147483648)))), 69104u, vec2<f32>(-189f, 1345f), Struct_1(vec4<i32>(1i, 2147483647i, -26847i, -66534i)))));

var<private> global1: Struct_1;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global3: array<f32, 25> = array<f32, 25>(1301f, 991f, 363f, -1147f, 362f, 1062f, -911f, -770f, 584f, -124f, -463f, 610f, 580f, 1339f, -1814f, 574f, -2154f, 1261f, -1157f, 1555f, 446f, -101f, -1056f, -1067f, -567f);

fn func_3() -> u32 {
    let var_0 = Struct_1(-min(u_input.b, ~vec4<i32>(global1.a.x, global1.a.x, -1i, global1.a.x) * abs(global1.a)));
    global0 = array<Struct_4, 21>();
    var var_1 = sign(select(vec2<f32>(590f, global3[32764u % 0u]), trunc(vec2<f32>(global3[0u], global3[0u]) - vec2<f32>(global3[31789u], -396f)), any(global2.ww))) - ((select(-vec2<f32>(global3[4294967295u], 192f), -vec2<f32>(global3[0u], 767f), vec2<bool>(global2.x, global2.x)) * vec2<f32>(-1367f, -1000f)) - -vec2<f32>(global3[39056u] / global3[113568u], abs(global3[1u])));
    global0 = array<Struct_4, 21>();
    let var_2 = (-(-35361i) ^ abs(i32(-2147483648))) << ((50637u - ((26244u - 0u) | (4294967295u & 39713u))) << dot(select(~vec4<u32>(14852u, 1u, 29106u, 13876u), vec4<u32>(28886u, 1u, 43983u, 29305u), !vec4<bool>(global2.x, false, false, true)), vec4<u32>(4294967295u, 13705u, 70405u, 62315u) - ~vec4<u32>(15046u, 1u, 56561u, 0u)));
    return reverseBits(~0u) >> 14686u;
}

fn func_2() -> vec4<i32> {
    global1 = Struct_1(global1.a);
    let var_0 = -vec4<f32>(global3[~(~23537u) * func_3()], step(644f, -148f) * -global3[0u | 39054u], -global3[26080u], sign(-sign(global3[1u])));
    var var_1 = !vec3<bool>(global3[reverseBits(114833u)] == min(select(-409f, global3[1u], true), select(768f, var_0.x, global2.x)), true, any(vec4<bool>(true, !global2.x, !true, !global2.x)));
    let var_2 = floor(3348f);
    let var_3 = Struct_1(vec4<i32>(u_input.a, firstTrailingBit(u_input.b.x), global1.a.x, -1i));
    return vec4<i32>(var_3.a.x, select(min(var_3.a.x, -25876i), ~(abs(global1.a.x) % -1i), var_1.x), var_3.a.x, 18999i);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: bool, arg_3: vec3<f32>) -> u32 {
    global0 = array<Struct_4, 21>();
    let var_0 = ~((abs(-vec4<i32>(arg_0.x, 2147483647i, 66207i, u_input.b.x)) & vec4<i32>(u_input.b.x, -u_input.a, u_input.a, select(global1.a.x, global1.a.x, true))) & (-vec4<i32>(u_input.a, 1i, 20567i, -1i) * func_2()));
    let var_1 = Struct_3(Struct_2(arg_2, ~13631i, vec3<u32>(max(countOneBits(arg_1), arg_1), ~dot(vec4<u32>(arg_1, arg_1, 20410u, arg_1), vec4<u32>(arg_1, arg_1, arg_1, 59569u)), arg_1 & dot(vec3<u32>(57514u, arg_1, arg_1), vec3<u32>(7846u, arg_1, arg_1))), Struct_1(select(select(vec4<i32>(0i, -62984i, u_input.a, arg_0.x), u_input.b, vec4<bool>(false, arg_2, false, global2.x)), global1.a % var_0, !false))), Struct_2(arg_2, 2147483647i, vec3<u32>(arg_1, 1u, ~(4294967295u >> arg_1)), Struct_1(min(~var_0, -vec4<i32>(u_input.b.x, 13321i, 36400i, 6609i)))), 1u * (54896u >> arg_1), min(min(-trunc(vec2<f32>(global3[arg_1], 405f)), arg_3.yx), -(-vec2<f32>(arg_3.x, -1408f))), Struct_1(var_0));
    let var_2 = var_0.x << ~(~(~4058u));
    global2 = !select(vec4<bool>(any(global2.zz), false, all(select(global2.zx, global2.yw, global2.wz)), all(vec3<bool>(true, arg_2, global2.x))), select(!(!vec4<bool>(arg_2, true, true, global2.x)), vec4<bool>(all(vec3<bool>(global2.x, var_1.a.a, true)), false, -881f > var_1.d.x, !false), select(!vec4<bool>(false, true, arg_2, arg_2), !vec4<bool>(arg_2, var_1.a.a, false, global2.x), !vec4<bool>(global2.x, true, true, true))), select(!vec4<bool>(global2.x, false, arg_2, var_1.b.a), vec4<bool>(false, global2.x || var_1.b.a, false, false), !arg_2));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -820f + 666f;
    let var_1 = global2.zz;
    var var_2 = global1.a.x;
    let var_3 = ~vec3<u32>(max(60667u & 1u, 0u / 60572u), ~38558u, ~(~43024u)) | vec3<u32>(~func_1(u_input.b.ywz, 0u, false, vec3<f32>(global3[1u], -1978f, 526f)) >> func_1(-global1.a.zwz, ~4294967295u, false, round(vec3<f32>(543f, -1099f, -249f))), ~1u, abs(39943u));
    let var_4 = sign((select(-vec4<f32>(187f, -1315f, -1737f, global3[1u]), -vec4<f32>(-1032f, 110f, global3[35996u], -1149f), !vec4<bool>(true, global2.x, var_1.x, global2.x)) + vec4<f32>(630f, global3[func_3()], 1370f, -(-281f))) - (-sign(vec4<f32>(-623f, global3[var_3.x], global3[0u], -149f)) - ((vec4<f32>(-148f, global3[103574u], global3[var_3.x], 1713f) - vec4<f32>(global3[var_3.x], 941f, 529f, -445f)) - (vec4<f32>(global3[var_3.x], 1218f, global3[4294967295u], -1012f) - vec4<f32>(global3[var_3.x], 542f, global3[var_3.x], global3[13090u])))));
    var_2 = -306i;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, -global3[0u], 4294967295u);
}

