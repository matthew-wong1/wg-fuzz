struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(vec3<f32>(1000f, 653f, 418f), vec3<u32>(0u, 4294967295u, 59774u), 72441u), Struct_1(vec3<f32>(310f, 1638f, 1176f), vec3<u32>(1u, 0u, 0u), 61236u), false, vec3<i32>(36436i, 10174i, 2147483647i), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<f32>(-303f, 846f, 661f), vec3<u32>(100692u, 50383u, 13654u), 77649u), Struct_1(vec3<f32>(163f, -510f, 158f), vec3<u32>(4294967295u, 13496u, 28644u), 32118u), false, vec3<i32>(2147483647i, 2147483647i, -1i), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(263f, -100f, -1982f), vec3<u32>(35317u, 4294967295u, 37239u), 4294967295u), Struct_1(vec3<f32>(160f, -938f, 1053f), vec3<u32>(4294967295u, 0u, 61056u), 5103u), false, vec3<i32>(46638i, 1i, 7461i), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(-1000f, 1000f, 645f), vec3<u32>(1u, 18346u, 0u), 0u), Struct_1(vec3<f32>(-849f, -452f, -793f), vec3<u32>(108306u, 28082u, 1u), 0u), true, vec3<i32>(2147483647i, 23696i, -1053i), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(-769f, 1195f, -935f), vec3<u32>(42987u, 0u, 0u), 0u), Struct_1(vec3<f32>(-1453f, -477f, 385f), vec3<u32>(49022u, 4294967295u, 4294967295u), 24885u), true, vec3<i32>(5194i, -27461i, 19325i), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec3<f32>(-1233f, 1776f, -855f), vec3<u32>(81385u, 1u, 1u), 12720u), Struct_1(vec3<f32>(-1178f, -691f, -497f), vec3<u32>(58885u, 80074u, 33587u), 1u), false, vec3<i32>(0i, -20508i, 12925i), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<f32>(277f, -890f, -562f), vec3<u32>(39665u, 17069u, 34162u), 4294967295u), Struct_1(vec3<f32>(1217f, -1000f, 937f), vec3<u32>(1u, 70188u, 26773u), 14405u), false, vec3<i32>(-1i, 11360i, 22461i), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<f32>(-560f, -842f, -1000f), vec3<u32>(4294967295u, 77309u, 33377u), 0u), Struct_1(vec3<f32>(-707f, -1607f, -160f), vec3<u32>(4822u, 0u, 4162u), 0u), true, vec3<i32>(i32(-2147483648), 1i, 11280i), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<f32>(-2490f, -903f, -265f), vec3<u32>(1u, 14750u, 1u), 4294967295u), Struct_1(vec3<f32>(636f, 715f, -404f), vec3<u32>(0u, 0u, 72992u), 0u), false, vec3<i32>(2147483647i, -10922i, -1i), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<f32>(456f, -838f, 2163f), vec3<u32>(0u, 28408u, 0u), 1u), Struct_1(vec3<f32>(802f, -425f, -147f), vec3<u32>(26216u, 1u, 49927u), 86457u), true, vec3<i32>(2147483647i, 23525i, 641i), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(-2198f, -1736f, -684f), vec3<u32>(7799u, 1u, 4294967295u), 18703u), Struct_1(vec3<f32>(-286f, 836f, -1623f), vec3<u32>(83595u, 4294967295u, 28673u), 66737u), false, vec3<i32>(1i, -1i, -1i), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<f32>(-494f, -142f, 1628f), vec3<u32>(4294967295u, 140668u, 0u), 22766u), Struct_1(vec3<f32>(935f, -1185f, 395f), vec3<u32>(61711u, 1u, 1u), 4294967295u), false, vec3<i32>(-33682i, 1i, -33946i), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<f32>(434f, -153f, -1591f), vec3<u32>(4294967295u, 112072u, 1038u), 1u), Struct_1(vec3<f32>(911f, 910f, -3297f), vec3<u32>(15215u, 40035u, 23781u), 1u), false, vec3<i32>(61270i, 24584i, -17289i), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec3<f32>(-1597f, -303f, -336f), vec3<u32>(4294967295u, 109567u, 34322u), 52495u), Struct_1(vec3<f32>(-422f, -1190f, 660f), vec3<u32>(0u, 0u, 6156u), 14020u), true, vec3<i32>(1i, 0i, 86171i), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<f32>(-588f, 1501f, -2123f), vec3<u32>(4294967295u, 0u, 117765u), 1u), Struct_1(vec3<f32>(589f, -759f, 412f), vec3<u32>(0u, 32075u, 1u), 53236u), false, vec3<i32>(i32(-2147483648), -1i, 1i), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec3<f32>(-350f, 1145f, 172f), vec3<u32>(13229u, 0u, 4294967295u), 4294967295u), Struct_1(vec3<f32>(1927f, 438f, -240f), vec3<u32>(73676u, 4294967295u, 0u), 109976u), true, vec3<i32>(-36703i, 14460i, 6109i), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(389f, -552f, 661f), vec3<u32>(4294967295u, 23571u, 36057u), 45679u), Struct_1(vec3<f32>(-279f, 1327f, -385f), vec3<u32>(0u, 0u, 1u), 1u), false, vec3<i32>(1i, 2147483647i, 19821i), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec3<f32>(986f, 517f, -680f), vec3<u32>(1u, 1380u, 28556u), 4294967295u), Struct_1(vec3<f32>(1208f, 1680f, -138f), vec3<u32>(0u, 1u, 112371u), 1u), true, vec3<i32>(28662i, 31791i, -35487i), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec3<f32>(691f, -507f, -1555f), vec3<u32>(1u, 4294967295u, 44460u), 4294967295u), Struct_1(vec3<f32>(398f, -769f, 380f), vec3<u32>(70630u, 4294967295u, 72259u), 10861u), true, vec3<i32>(-1i, 26222i, -23795i), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<f32>(-734f, -1303f, 636f), vec3<u32>(7332u, 21270u, 1164u), 182u), Struct_1(vec3<f32>(904f, 329f, -1130f), vec3<u32>(21887u, 36476u, 6108u), 1u), true, vec3<i32>(-8991i, i32(-2147483648), -45057i), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec3<f32>(308f, 434f, 300f), vec3<u32>(40176u, 35046u, 42737u), 13266u), Struct_1(vec3<f32>(-1329f, 1896f, 534f), vec3<u32>(39431u, 13849u, 89531u), 1u), true, vec3<i32>(-1i, 54751i, 0i), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<f32>(-154f, 322f, 1560f), vec3<u32>(0u, 4294967295u, 36169u), 1u), Struct_1(vec3<f32>(-768f, 302f, -322f), vec3<u32>(7482u, 61707u, 20527u), 17114u), false, vec3<i32>(39585i, i32(-2147483648), 0i), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec3<f32>(-697f, -1079f, -107f), vec3<u32>(4079u, 0u, 0u), 14054u), Struct_1(vec3<f32>(820f, -1000f, -501f), vec3<u32>(4294967295u, 1u, 0u), 32619u), true, vec3<i32>(i32(-2147483648), -8268i, 9656i), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(1286f, -1000f, -682f), vec3<u32>(0u, 77326u, 4294967295u), 74993u), Struct_1(vec3<f32>(-2013f, 2303f, 699f), vec3<u32>(4294967295u, 1u, 0u), 0u), true, vec3<i32>(2147483647i, -26241i, -2390i), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<f32>(1587f, -1000f, 519f), vec3<u32>(12753u, 39912u, 17099u), 28541u), Struct_1(vec3<f32>(-1211f, -646f, -1203f), vec3<u32>(4294967295u, 55129u, 0u), 0u), false, vec3<i32>(42254i, -45526i, 4675i), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<f32>(1991f, 1465f, -491f), vec3<u32>(22840u, 0u, 4294967295u), 0u), Struct_1(vec3<f32>(635f, -441f, -642f), vec3<u32>(1u, 4294967295u, 0u), 36430u), false, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec3<f32>(1880f, -399f, -876f), vec3<u32>(1u, 94698u, 0u), 24804u), Struct_1(vec3<f32>(-945f, 713f, -345f), vec3<u32>(4294967295u, 99140u, 47100u), 43370u), false, vec3<i32>(-15716i, -25646i, 3129i), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec3<f32>(-440f, -669f, -1032f), vec3<u32>(0u, 4294967295u, 22277u), 17706u), Struct_1(vec3<f32>(-729f, -1000f, -100f), vec3<u32>(2302u, 0u, 50432u), 1u), true, vec3<i32>(1i, 4993i, 8238i), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<f32>(483f, -1840f, 290f), vec3<u32>(141248u, 57810u, 2710u), 89527u), Struct_1(vec3<f32>(446f, -692f, 735f), vec3<u32>(1u, 43937u, 4294967295u), 29585u), false, vec3<i32>(0i, -19754i, -1i), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec3<f32>(-1283f, -1831f, 263f), vec3<u32>(1u, 7601u, 49921u), 0u), Struct_1(vec3<f32>(-2194f, 518f, -596f), vec3<u32>(34753u, 0u, 1u), 0u), true, vec3<i32>(2147483647i, -49229i, 0i), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<f32>(-1408f, -888f, 550f), vec3<u32>(26788u, 4294967295u, 19716u), 1u), Struct_1(vec3<f32>(-459f, 897f, -1000f), vec3<u32>(7786u, 0u, 4294967295u), 17805u), true, vec3<i32>(i32(-2147483648), -1i, -23748i), vec3<bool>(true, false, false)));

var<private> global1: vec4<u32> = vec4<u32>(0u, 62119u, 4294967295u, 4294967295u);

var<private> global2: Struct_1 = Struct_1(vec3<f32>(1061f, 833f, -2275f), vec3<u32>(1u, 0u, 16977u), 1u);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<f32>(-1000f, 1453f, 2386f), vec3<u32>(0u, 4294967295u, 0u), 22450u), Struct_1(vec3<f32>(-211f, 350f, -1373f), vec3<u32>(0u, 92800u, 81509u), 46666u), true, vec3<i32>(-47358i, i32(-2147483648), 1i), vec3<bool>(false, false, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<bool>) -> vec3<u32> {
    global2 = global3.b;
    var var_0 = global3.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_0.xwy - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global3.a.a * _wgslsmith_f_op_vec3_f32(floor(var_0.a))), vec3<f32>(_wgslsmith_f_op_f32(-2458f - global2.a.x), _wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(step(-825f, global3.a.a.x))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), arg_0.x, _wgslsmith_f_op_f32(trunc(global3.b.a.x))))));
    global2 = global3.b;
    var var_2 = global1.x << (79386u % 32u);
    return firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(select(_wgslsmith_mult_u32(67489u, global1.x), reverseBits(0u), true), _wgslsmith_sub_u32(1u, u_input.b) ^ var_0.c, ~reverseBits(arg_1)), global1.zxw));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    global3 = Struct_2(arg_3, arg_1, !global3.c && global3.e.x, vec3<i32>(arg_2, max(~20954i, u_input.a.x ^ (global3.d.x << (arg_3.c % 32u))), -u_input.a.x), !global3.e);
    global0 = array<Struct_2, 31>();
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(global2.a.x, _wgslsmith_f_op_f32(select(arg_0.a.x, -858f, true)))), -744f, _wgslsmith_f_op_f32(max(539f, arg_1.a.x))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1040f, _wgslsmith_f_op_f32(trunc(337f)), _wgslsmith_f_op_f32(step(arg_0.a.x, -1047f)))))), _wgslsmith_sub_vec3_u32(global1.zxw, firstLeadingBit(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2584f, -267f, -264f, arg_0.a.x)), _wgslsmith_mult_u32(arg_1.b.x, u_input.b), !vec4<bool>(true, false, global3.c, false)))), 12902u);
    let var_0 = global0[_wgslsmith_index_u32(~(~4294967295u), 31u)];
    var var_1 = ~global2.b.xz;
    return global0[_wgslsmith_index_u32(~(~arg_0.c), 31u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_2(func_2(arg_0, func_2(arg_0, arg_1.b, u_input.a.x, func_2(arg_0, Struct_1(vec3<f32>(arg_1.b.a.x, global2.a.x, global3.b.a.x), vec3<u32>(30891u, global2.b.x, 1u), global1.x), 21455i, func_2(arg_0, arg_1.a, -26831i, Struct_1(vec3<f32>(arg_0.a.x, global3.b.a.x, -2437f), arg_0.b, global1.x)).b).a).a, _wgslsmith_mult_i32(-_wgslsmith_div_i32(1i, arg_1.d.x), global3.d.x), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-466f, 669f, -730f))), func_3(vec4<f32>(1000f, arg_0.a.x, arg_0.a.x, global3.a.a.x), global2.b.x, vec4<bool>(arg_1.c, arg_1.e.x, false, false)), 77623u), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, global3.a.a.x, arg_0.a.x) * arg_1.a.a), ~vec3<u32>(arg_0.c, global1.x, 33196u), u_input.b), 1i, func_2(func_2(global3.b, Struct_1(vec3<f32>(-1990f, arg_0.a.x, -125f), vec3<u32>(23100u, global2.c, arg_1.a.b.x), global2.c), global3.d.x, arg_0).b, func_2(Struct_1(vec3<f32>(global3.b.a.x, arg_1.a.a.x, global3.a.a.x), vec3<u32>(global1.x, 0u, arg_0.b.x), 0u), Struct_1(vec3<f32>(1595f, 541f, 2121f), vec3<u32>(11767u, 1u, global3.b.c), global1.x), -6244i, Struct_1(vec3<f32>(291f, 640f, global3.a.a.x), vec3<u32>(arg_1.b.b.x, 15255u, arg_1.b.b.x), arg_1.b.b.x)).b, _wgslsmith_clamp_i32(0i, arg_1.d.x, -1i), func_2(global3.a, arg_0, -2147483647i, global3.b).a).b).a).a, func_2(func_2(Struct_1(vec3<f32>(662f, 254f, 288f), vec3<u32>(arg_0.c, global3.b.b.x, arg_1.b.c), _wgslsmith_sub_u32(0u, global1.x)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.a.x, -1245f, arg_0.a.x) * vec3<f32>(1829f, 1533f, 1471f)), max(vec3<u32>(4294967295u, global2.c, global3.b.c), global2.b), _wgslsmith_div_u32(arg_1.b.c, 36720u)), u_input.a.x, func_2(func_2(Struct_1(global3.b.a, vec3<u32>(global3.a.c, 19681u, 84500u), u_input.b), arg_0, arg_1.d.x, Struct_1(vec3<f32>(arg_1.b.a.x, -1239f, -458f), vec3<u32>(0u, arg_0.b.x, 9712u), 0u)).a, func_2(arg_0, Struct_1(arg_1.a.a, vec3<u32>(arg_0.b.x, 0u, u_input.b), 28789u), u_input.a.x, Struct_1(arg_1.a.a, global1.xww, global1.x)).a, 0i, Struct_1(vec3<f32>(arg_0.a.x, global3.b.a.x, -1246f), vec3<u32>(global1.x, 99138u, 108876u), global3.b.c)).a).b, arg_1.a, 2147483647i, func_2(arg_0, Struct_1(vec3<f32>(global3.b.a.x, global2.a.x, 433f), vec3<u32>(arg_1.a.c, u_input.b, u_input.b), min(0u, arg_1.a.b.x)), i32(-1i) * -2281i, func_2(Struct_1(global2.a, vec3<u32>(40825u, 8798u, 5861u), 53463u), arg_1.b, global3.d.x, Struct_1(global2.a, global2.b, 1u)).a).a).a, ~(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global3.d.x, u_input.a.x), firstTrailingBit(global3.d.x)) | 1i), func_2(func_2(func_2(Struct_1(arg_1.a.a, vec3<u32>(global1.x, 1u, u_input.b), global1.x), func_2(Struct_1(vec3<f32>(-701f, 1419f, 184f), vec3<u32>(51305u, 64135u, 4294967295u), global2.b.x), arg_1.a, 2147483647i, Struct_1(global3.a.a, global3.a.b, arg_1.b.c)).a, u_input.a.x, Struct_1(arg_1.b.a, vec3<u32>(arg_1.b.b.x, u_input.b, 1u), arg_0.c)).a, Struct_1(arg_1.b.a, vec3<u32>(1u, 1u, u_input.b) ^ global1.xxx, abs(1u)), select(arg_1.d.x, _wgslsmith_mult_i32(arg_1.d.x, arg_1.d.x), global3.e.x), func_2(func_2(arg_0, Struct_1(vec3<f32>(global2.a.x, arg_1.b.a.x, -1543f), vec3<u32>(0u, global1.x, global2.c), global2.c), arg_1.d.x, global3.b).a, func_2(arg_0, global3.a, 14343i, Struct_1(vec3<f32>(748f, arg_0.a.x, -290f), vec3<u32>(global3.b.c, 1u, global3.a.b.x), global2.c)).a, 12676i, arg_1.a).a).b, func_2(arg_0, global3.a, -2147483647i, arg_0).a, 1i, func_2(arg_0, func_2(func_2(arg_1.b, global3.b, u_input.a.x, arg_0).b, arg_1.a, func_2(Struct_1(arg_0.a, vec3<u32>(38556u, 4294967295u, u_input.b), 10529u), arg_0, arg_1.d.x, global3.b).d.x, func_2(Struct_1(arg_1.b.a, global1.xwy, 4917u), Struct_1(global2.a, arg_1.a.b, arg_1.b.c), u_input.a.x, global3.a).b).b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global3.d.x, 33988i) | vec3<i32>(-25385i, -11886i, arg_1.d.x), -global3.d), func_2(arg_1.a, func_2(global3.b, arg_0, u_input.a.x, arg_0).b, 0i, func_2(Struct_1(global3.a.a, vec3<u32>(677u, global1.x, 1u), 21268u), arg_0, -1i, Struct_1(arg_0.a, vec3<u32>(global3.b.b.x, 4294967295u, 39495u), global1.x)).b).b).a).a).a;
    global2 = global3.b;
    global3 = func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, global3.a.a.x, -225f))), var_0.b, 0u), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.b.a), global1.zxw, ~0u), -14852i, Struct_1(_wgslsmith_f_op_vec3_f32(global2.a + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global3.b.a)) * _wgslsmith_f_op_vec3_f32(-arg_0.a))), select(~(~global3.a.b), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, var_0.c, arg_0.c), ~global1.zxz), any(global3.e.yx)), _wgslsmith_sub_u32(abs(53509u) >> (_wgslsmith_dot_vec2_u32(var_0.b.yz, global2.b.yx) % 32u), min(0u & u_input.b, func_2(Struct_1(vec3<f32>(-101f, global2.a.x, 1923f), vec3<u32>(u_input.b, 0u, arg_1.a.b.x), 87140u), arg_1.b, 19614i, arg_0).a.c))));
    let var_1 = global0[_wgslsmith_index_u32(~94508u, 31u)];
    let var_2 = func_2(global3.a, arg_1.a, ~(~(~(-19671i))), arg_0).a;
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec2<u32>) -> Struct_2 {
    global2 = func_4(global3.a, func_2(global3.b, arg_0, u_input.a.x, arg_0));
    global0 = array<Struct_2, 31>();
    var var_0 = vec4<f32>(428f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1979f)))) - _wgslsmith_f_op_f32(round(arg_0.a.x))));
    global3 = Struct_2(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -196f, global2.a.x)), vec3<u32>(29756u, global1.x, global1.x), arg_2), arg_0, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, -30918i, -2147483647i, 577i), vec4<i32>(2147483647i, 1i, 14162i, -1i) ^ vec4<i32>(-1i, -2147483647i, global3.d.x, global3.d.x)), -vec4<i32>(-1i, 25990i, global3.d.x, -20133i)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global3.b.a.x, 335f))), global2.b, 74094u)).a, func_2(arg_0, func_4(arg_0, global0[_wgslsmith_index_u32(1u, 31u)]), _wgslsmith_dot_vec3_i32(global3.d ^ vec3<i32>(2147483647i, 28392i, u_input.a.x), global3.d) >> (func_4(func_4(Struct_1(var_0.wzz, vec3<u32>(u_input.b, 17098u, arg_0.c), 1u), Struct_2(global3.a, arg_0, global3.e.x, vec3<i32>(u_input.a.x, u_input.a.x, global3.d.x), vec3<bool>(arg_1, arg_1, arg_1))), Struct_2(arg_0, Struct_1(vec3<f32>(arg_0.a.x, -319f, -1467f), vec3<u32>(1u, global1.x, arg_0.c), 793u), false, vec3<i32>(-42824i, u_input.a.x, -30837i), global3.e)).b.x % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global2.a))), reverseBits(abs(arg_0.b)), func_2(func_2(arg_0, Struct_1(global3.a.a, vec3<u32>(58877u, global2.b.x, global2.b.x), global2.c), u_input.a.x, arg_0).b, arg_0, u_input.a.x, func_2(arg_0, Struct_1(global2.a, arg_0.b, 4294967295u), -12692i, arg_0).a).a.c)).a, false, _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(global3.d, global3.d) << (abs(reverseBits(global2.b)) % vec3<u32>(32u)), (global3.d >> (~global3.a.b % vec3<u32>(32u))) >> (global3.b.b % vec3<u32>(32u))), vec3<bool>(false, !(!global3.e.x && !global3.c), true));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-1031f + _wgslsmith_f_op_f32(step(1001f, _wgslsmith_f_op_f32(global3.b.a.x - var_0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(-1548f, global2.a.x), -1775f)))));
    return Struct_2(func_2(func_2(arg_0, Struct_1(vec3<f32>(631f, arg_0.a.x, 150f), ~arg_0.b, u_input.b >> (arg_3.x % 32u)), ~(~(-1i)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1157f, -576f, -571f) + arg_0.a), global2.b, 1u)).b, func_2(arg_0, arg_0, global3.d.x << (4294967295u % 32u), global3.b).b, ~0i, func_4(Struct_1(vec3<f32>(global2.a.x, global3.b.a.x, var_0.x), select(vec3<u32>(27066u, arg_3.x, arg_0.b.x), vec3<u32>(arg_3.x, arg_0.c, 32775u), global3.e), arg_3.x), func_2(Struct_1(var_0.yww, vec3<u32>(global2.b.x, 14898u, 23523u), global2.b.x), Struct_1(global3.a.a, global1.wzz, 15096u), -2147483647i, arg_0))).a, arg_0, true, _wgslsmith_div_vec3_i32(vec3<i32>(global3.d.x, global3.d.x, 1i), _wgslsmith_clamp_vec3_i32(global3.d, _wgslsmith_add_vec3_i32(-global3.d, -global3.d), vec3<i32>(select(-6205i, 42445i, arg_1), global3.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(47776i, global3.d.x, -20812i), global3.d)))), vec3<bool>(true, all(global3.e), true));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> StorageBuffer {
    global0 = array<Struct_2, 31>();
    global3 = arg_2;
    global2 = func_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 679f)), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(1394f * arg_0.a.x)), ~(~vec3<u32>(4294967295u, global3.a.b.x, 66215u)), abs(60847u)), Struct_2(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a.x, arg_2.a.a.x, 1083f), arg_2.a.a)), func_3(vec4<f32>(563f, 172f, 237f, -631f), 28277u, vec4<bool>(global3.c, arg_2.e.x, global3.e.x, true)), u_input.b), func_4(func_4(Struct_1(global3.a.a, vec3<u32>(global1.x, 0u, arg_1), global1.x), Struct_2(arg_2.a, arg_0, global3.e.x, vec3<i32>(arg_2.d.x, u_input.a.x, -2147483647i), global3.e)), func_2(Struct_1(global3.a.a, vec3<u32>(global2.b.x, 33919u, 44722u), 1u), Struct_1(vec3<f32>(global3.b.a.x, arg_2.a.a.x, global2.a.x), global1.zzx, 4294967295u), -44263i, Struct_1(vec3<f32>(global3.a.a.x, global2.a.x, -871f), vec3<u32>(arg_2.b.c, 1u, 4294967295u), 1885u))), ~_wgslsmith_mod_i32(-13002i, -2147483647i), Struct_1(vec3<f32>(global2.a.x, -562f, global3.a.a.x), global1.xxz, 0u)).b, func_2(global3.a, func_4(func_1(arg_0, arg_2.c, arg_1, vec2<u32>(1u, global3.b.c)).b, Struct_2(global3.b, Struct_1(vec3<f32>(-850f, arg_0.a.x, global2.a.x), global2.b, global1.x), true, vec3<i32>(5283i, u_input.a.x, global3.d.x), global3.e)), ~(~u_input.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1716f, -962f, global3.b.a.x) - vec3<f32>(2044f, 579f, -1644f)), _wgslsmith_mod_vec3_u32(global2.b, arg_0.b), arg_1)).a, select(true, true, true && global3.c), arg_2.d, global3.e));
    var var_0 = vec2<i32>(-arg_2.d.x, 43737i);
    let var_1 = ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, 11720u, 24645u, global1.x) & vec4<u32>(global1.x, 4294967295u, arg_2.b.c, 6807u), abs(vec4<u32>(1u, arg_0.c, global3.a.b.x, 13692u))) ^ select(countOneBits(vec4<u32>(global2.b.x, 23371u, arg_2.a.c, u_input.b)), vec4<u32>(arg_2.b.b.x, 1u, 66885u, arg_1) << (vec4<u32>(1u, 0u, arg_1, 1u) % vec4<u32>(32u)), any(vec4<bool>(false, false, global3.e.x, global3.c))), select(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.x, global2.c, 0u, 54082u) | vec4<u32>(u_input.b, global1.x, 0u, 7608u), firstLeadingBit(vec4<u32>(1u, 40610u, 1u, 71172u))), _wgslsmith_div_vec4_u32(~vec4<u32>(19253u, 0u, 4294967295u, 35835u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_2.a.b.x, 1u, 0u), vec4<u32>(u_input.b, u_input.b, 46036u, arg_0.b.x), vec4<u32>(u_input.b, 1u, arg_2.b.c, arg_0.c))), global3.c));
    return StorageBuffer(-arg_3 | 30470i, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 31>();
    global1 = vec4<u32>(_wgslsmith_mult_u32(1u, global1.x), max(_wgslsmith_dot_vec3_u32(global1.wwx & _wgslsmith_clamp_vec3_u32(vec3<u32>(10562u, global1.x, 13554u), vec3<u32>(global1.x, 4294967295u, 78210u), vec3<u32>(4294967295u, 13752u, global3.a.c)), abs(~global3.b.b)), _wgslsmith_dot_vec3_u32(global3.a.b, _wgslsmith_add_vec3_u32(vec3<u32>(12932u, 0u, u_input.b), global3.b.b)) ^ 83213u), _wgslsmith_add_u32(abs(~(~1u)), ~(~select(31432u, 85901u, false))), ~4294967295u);
    let var_0 = global3.e;
    let x = u_input.a;
    s_output = func_5(global3.a, reverseBits(~0u), func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-988f, -1533f, -1267f)), max(global2.b, vec3<u32>(48053u, 21021u, 36702u)), ~32972u), all(var_0.zz), 16221u, vec2<u32>(global3.a.b.x, ~1u)), _wgslsmith_clamp_i32(-9957i, func_1(global3.a, all(vec4<bool>(global3.e.x, true, global3.e.x, var_0.x)), 1u, global1.zy << (global1.wz % vec2<u32>(32u))).d.x & u_input.a.x, global3.d.x | -1i));
}

