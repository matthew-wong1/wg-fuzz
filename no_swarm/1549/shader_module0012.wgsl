struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-4355i, 1i);

var<private> global1: vec3<i32> = vec3<i32>(28703i, 0i, 1i);

var<private> global2: array<vec4<i32>, 21>;

var<private> global3: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(true, Struct_2(Struct_1(225f, vec4<i32>(2147483647i, -55214i, -53502i, 25499i), vec3<i32>(-55082i, 0i, -22652i), vec2<bool>(false, false), vec2<f32>(630f, -1527f)), Struct_1(1000f, vec4<i32>(-35413i, i32(-2147483648), 39501i, 42842i), vec3<i32>(i32(-2147483648), -1122i, -1i), vec2<bool>(false, false), vec2<f32>(268f, -1664f)))), Struct_3(false, Struct_2(Struct_1(512f, vec4<i32>(-1i, 0i, 16152i, -35359i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec2<bool>(false, false), vec2<f32>(289f, 1163f)), Struct_1(282f, vec4<i32>(i32(-2147483648), -1i, -1i, 49161i), vec3<i32>(2147483647i, 0i, 23337i), vec2<bool>(false, false), vec2<f32>(-1021f, -1000f)))), Struct_3(false, Struct_2(Struct_1(-496f, vec4<i32>(34271i, i32(-2147483648), i32(-2147483648), -7285i), vec3<i32>(0i, 1i, i32(-2147483648)), vec2<bool>(true, false), vec2<f32>(-313f, 457f)), Struct_1(573f, vec4<i32>(0i, -38336i, -1i, 46403i), vec3<i32>(-59553i, -21396i, -47932i), vec2<bool>(false, false), vec2<f32>(-787f, -332f)))), Struct_3(true, Struct_2(Struct_1(124f, vec4<i32>(-28508i, -26883i, 2147483647i, -35207i), vec3<i32>(-47471i, 2147483647i, -12166i), vec2<bool>(true, false), vec2<f32>(243f, 207f)), Struct_1(846f, vec4<i32>(-4951i, 37344i, 1431i, -6595i), vec3<i32>(-40503i, -23601i, -40904i), vec2<bool>(false, false), vec2<f32>(-833f, -350f)))), Struct_3(false, Struct_2(Struct_1(-296f, vec4<i32>(28246i, 1i, i32(-2147483648), -7811i), vec3<i32>(11297i, i32(-2147483648), i32(-2147483648)), vec2<bool>(false, false), vec2<f32>(272f, -1284f)), Struct_1(986f, vec4<i32>(-32233i, 25768i, -1i, 42258i), vec3<i32>(-20426i, i32(-2147483648), 30878i), vec2<bool>(false, true), vec2<f32>(-498f, -824f)))), Struct_3(true, Struct_2(Struct_1(-1000f, vec4<i32>(-1i, 0i, 0i, 2147483647i), vec3<i32>(0i, 1734i, 0i), vec2<bool>(true, false), vec2<f32>(1000f, 670f)), Struct_1(-527f, vec4<i32>(-1i, 6889i, 2147483647i, 2495i), vec3<i32>(-1i, -34230i, -1i), vec2<bool>(true, true), vec2<f32>(1466f, -932f)))), Struct_3(false, Struct_2(Struct_1(-2391f, vec4<i32>(2147483647i, 2147483647i, 2147483647i, 15730i), vec3<i32>(-39736i, 32170i, 2147483647i), vec2<bool>(false, true), vec2<f32>(989f, -1963f)), Struct_1(-809f, vec4<i32>(1i, -29442i, 14202i, -12865i), vec3<i32>(23600i, -43674i, 232i), vec2<bool>(false, false), vec2<f32>(-1000f, -1426f)))), Struct_3(false, Struct_2(Struct_1(-1636f, vec4<i32>(-72199i, -1i, 0i, -1i), vec3<i32>(2147483647i, -47906i, 1i), vec2<bool>(false, false), vec2<f32>(466f, -716f)), Struct_1(1311f, vec4<i32>(i32(-2147483648), -32649i, 2147483647i, -1i), vec3<i32>(1i, -1i, 1i), vec2<bool>(false, false), vec2<f32>(-1471f, 212f)))), Struct_3(true, Struct_2(Struct_1(-783f, vec4<i32>(-37621i, 1934i, -15080i, 7069i), vec3<i32>(9136i, 48130i, 1i), vec2<bool>(false, true), vec2<f32>(223f, -765f)), Struct_1(313f, vec4<i32>(30068i, -26381i, 0i, 1i), vec3<i32>(1i, 37412i, 22443i), vec2<bool>(false, true), vec2<f32>(558f, 2504f)))), Struct_3(true, Struct_2(Struct_1(-1263f, vec4<i32>(58374i, 2147483647i, 47631i, -1i), vec3<i32>(-1i, 21874i, 2147483647i), vec2<bool>(false, true), vec2<f32>(-2090f, 1116f)), Struct_1(-393f, vec4<i32>(-1i, -71678i, -46069i, 0i), vec3<i32>(-6474i, 2147483647i, 1i), vec2<bool>(false, true), vec2<f32>(420f, -530f)))), Struct_3(true, Struct_2(Struct_1(144f, vec4<i32>(-13590i, 58070i, -3551i, i32(-2147483648)), vec3<i32>(2147483647i, 8276i, 13897i), vec2<bool>(true, true), vec2<f32>(-533f, -290f)), Struct_1(901f, vec4<i32>(1i, 35634i, 1i, 24044i), vec3<i32>(i32(-2147483648), 0i, -1i), vec2<bool>(true, false), vec2<f32>(-179f, 996f)))), Struct_3(true, Struct_2(Struct_1(1008f, vec4<i32>(9855i, -1i, -78291i, 27120i), vec3<i32>(i32(-2147483648), -37966i, -13674i), vec2<bool>(true, true), vec2<f32>(-278f, -105f)), Struct_1(-437f, vec4<i32>(-17620i, 0i, 37004i, i32(-2147483648)), vec3<i32>(-16252i, 12597i, 27065i), vec2<bool>(true, true), vec2<f32>(369f, -1000f)))), Struct_3(true, Struct_2(Struct_1(-400f, vec4<i32>(1i, 1i, -28367i, -23779i), vec3<i32>(-32792i, 3031i, 30434i), vec2<bool>(false, false), vec2<f32>(-1396f, -565f)), Struct_1(641f, vec4<i32>(i32(-2147483648), -42554i, -6363i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 11293i), vec2<bool>(false, false), vec2<f32>(475f, -1131f)))), Struct_3(false, Struct_2(Struct_1(1000f, vec4<i32>(1i, -1i, i32(-2147483648), -6479i), vec3<i32>(1i, 2147483647i, 1i), vec2<bool>(false, true), vec2<f32>(546f, 2089f)), Struct_1(1085f, vec4<i32>(i32(-2147483648), 37657i, i32(-2147483648), 5665i), vec3<i32>(0i, 1i, 0i), vec2<bool>(false, true), vec2<f32>(-598f, 655f)))), Struct_3(false, Struct_2(Struct_1(-1888f, vec4<i32>(-26594i, 1i, -1i, 53211i), vec3<i32>(31283i, 30759i, 1i), vec2<bool>(false, true), vec2<f32>(155f, -1390f)), Struct_1(-850f, vec4<i32>(i32(-2147483648), 49537i, -611i, i32(-2147483648)), vec3<i32>(27695i, 54374i, -64656i), vec2<bool>(false, false), vec2<f32>(-350f, -1141f)))), Struct_3(false, Struct_2(Struct_1(307f, vec4<i32>(51677i, -18690i, 27386i, 11092i), vec3<i32>(-1i, -6992i, -54601i), vec2<bool>(true, false), vec2<f32>(248f, -652f)), Struct_1(-122f, vec4<i32>(1i, -5999i, 1i, 1i), vec3<i32>(37293i, i32(-2147483648), 2147483647i), vec2<bool>(true, true), vec2<f32>(-102f, 1261f)))), Struct_3(false, Struct_2(Struct_1(729f, vec4<i32>(2147483647i, 26018i, -1i, 17790i), vec3<i32>(10445i, -46629i, -50127i), vec2<bool>(true, true), vec2<f32>(365f, -830f)), Struct_1(775f, vec4<i32>(20442i, i32(-2147483648), -37878i, -1i), vec3<i32>(1i, 11038i, 2147483647i), vec2<bool>(false, true), vec2<f32>(-1426f, -321f)))), Struct_3(false, Struct_2(Struct_1(2006f, vec4<i32>(-1i, 2147483647i, -14636i, -1i), vec3<i32>(0i, 42114i, 2147483647i), vec2<bool>(false, false), vec2<f32>(-1287f, 550f)), Struct_1(1323f, vec4<i32>(32917i, -1i, 0i, 2147483647i), vec3<i32>(36257i, -25887i, 82923i), vec2<bool>(true, false), vec2<f32>(947f, -108f)))), Struct_3(true, Struct_2(Struct_1(-498f, vec4<i32>(19893i, i32(-2147483648), 47120i, i32(-2147483648)), vec3<i32>(35614i, i32(-2147483648), 11857i), vec2<bool>(false, true), vec2<f32>(978f, -156f)), Struct_1(-1230f, vec4<i32>(-23881i, -1i, 2147483647i, 16150i), vec3<i32>(-47170i, -1i, 52838i), vec2<bool>(true, true), vec2<f32>(-110f, 524f)))), Struct_3(true, Struct_2(Struct_1(-1000f, vec4<i32>(i32(-2147483648), 0i, -6219i, 38422i), vec3<i32>(-40758i, -21284i, -26737i), vec2<bool>(true, true), vec2<f32>(694f, -888f)), Struct_1(-1686f, vec4<i32>(2147483647i, 11925i, -9227i, -29480i), vec3<i32>(-55630i, -41984i, i32(-2147483648)), vec2<bool>(true, false), vec2<f32>(-541f, -825f)))), Struct_3(false, Struct_2(Struct_1(-927f, vec4<i32>(0i, -8098i, 2147483647i, 1i), vec3<i32>(-1i, 15720i, 1i), vec2<bool>(false, true), vec2<f32>(1272f, -363f)), Struct_1(1596f, vec4<i32>(-17414i, i32(-2147483648), i32(-2147483648), 1i), vec3<i32>(-25837i, 2147483647i, 25935i), vec2<bool>(false, false), vec2<f32>(-631f, -375f)))), Struct_3(false, Struct_2(Struct_1(-1036f, vec4<i32>(-11453i, -34158i, 49916i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, -45314i), vec2<bool>(true, false), vec2<f32>(248f, 609f)), Struct_1(858f, vec4<i32>(31788i, 17716i, -1i, i32(-2147483648)), vec3<i32>(1468i, -17819i, 80383i), vec2<bool>(true, false), vec2<f32>(-140f, -1000f)))), Struct_3(true, Struct_2(Struct_1(-267f, vec4<i32>(-1i, 2147483647i, 0i, -1i), vec3<i32>(-1i, i32(-2147483648), -1i), vec2<bool>(true, true), vec2<f32>(-673f, 206f)), Struct_1(-532f, vec4<i32>(80499i, -1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, -20010i, 10307i), vec2<bool>(false, true), vec2<f32>(-225f, -1000f)))), Struct_3(true, Struct_2(Struct_1(2284f, vec4<i32>(0i, 0i, 37426i, -1i), vec3<i32>(-26949i, 21128i, -1582i), vec2<bool>(false, false), vec2<f32>(1486f, 1672f)), Struct_1(-352f, vec4<i32>(0i, 0i, -47704i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, -4764i), vec2<bool>(false, false), vec2<f32>(783f, 294f)))), Struct_3(true, Struct_2(Struct_1(167f, vec4<i32>(13328i, 11551i, 1i, 1i), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec2<bool>(false, false), vec2<f32>(565f, -1940f)), Struct_1(734f, vec4<i32>(41290i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, 2147483647i, 8756i), vec2<bool>(false, false), vec2<f32>(773f, -637f)))));

var<private> global4: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~18019u;
    global1 = ~vec3<i32>(~(-20096i), _wgslsmith_mod_i32(global1.x, -global1.x) << (71278u % 32u), global1.x);
    global2 = array<vec4<i32>, 21>();
    global3 = array<Struct_3, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-(~(-1i)), -2824i));
}

