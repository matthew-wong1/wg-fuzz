struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: u32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true));

var<private> global1: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false));

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_2(131537u, Struct_1(288f, false, vec3<f32>(1035f, 515f, -595f), vec4<i32>(-3679i, -3488i, 49255i, -5162i)), false, 56442u, vec3<f32>(201f, -2006f, 256f)), 0u, true, Struct_2(4294967295u, Struct_1(2185f, false, vec3<f32>(-847f, -699f, 2024f), vec4<i32>(15258i, -8756i, 1i, 1i)), true, 4294967295u, vec3<f32>(527f, -1370f, 1618f)), Struct_2(4294967295u, Struct_1(-986f, true, vec3<f32>(-297f, -2229f, 669f), vec4<i32>(42794i, 28502i, 1i, -33837i)), true, 4294967295u, vec3<f32>(1183f, 1349f, -695f))), Struct_3(Struct_2(4294967295u, Struct_1(1000f, true, vec3<f32>(-671f, 164f, -114f), vec4<i32>(-19012i, 2457i, 49723i, 27802i)), false, 17594u, vec3<f32>(328f, 213f, 479f)), 1u, true, Struct_2(0u, Struct_1(2836f, false, vec3<f32>(-533f, -1764f, -244f), vec4<i32>(-1805i, 2147483647i, 0i, 1i)), true, 0u, vec3<f32>(-882f, -1369f, -376f)), Struct_2(4294967295u, Struct_1(1123f, false, vec3<f32>(-475f, -467f, 336f), vec4<i32>(0i, 32159i, 1i, 1i)), true, 4294967295u, vec3<f32>(-1469f, -246f, 269f))), Struct_3(Struct_2(21395u, Struct_1(-305f, false, vec3<f32>(166f, 1000f, -636f), vec4<i32>(46260i, i32(-2147483648), 0i, -929i)), false, 0u, vec3<f32>(-1000f, -1000f, -1311f)), 10969u, false, Struct_2(4294967295u, Struct_1(809f, false, vec3<f32>(488f, 248f, 1143f), vec4<i32>(-40637i, 0i, -20317i, -1i)), true, 4294967295u, vec3<f32>(-1066f, -383f, 1721f)), Struct_2(4294967295u, Struct_1(-510f, true, vec3<f32>(-1694f, 2673f, 776f), vec4<i32>(0i, 2147483647i, 5764i, -2887i)), true, 1u, vec3<f32>(-733f, 255f, 362f))), Struct_3(Struct_2(0u, Struct_1(-211f, true, vec3<f32>(-656f, -310f, -594f), vec4<i32>(2147483647i, 2147483647i, 11397i, -19168i)), false, 1u, vec3<f32>(721f, -1000f, 1000f)), 0u, true, Struct_2(18305u, Struct_1(-567f, true, vec3<f32>(341f, 307f, 523f), vec4<i32>(47382i, 22200i, -1i, i32(-2147483648))), true, 42574u, vec3<f32>(560f, 1080f, -1389f)), Struct_2(4294967295u, Struct_1(-2757f, true, vec3<f32>(-393f, -674f, -1613f), vec4<i32>(6216i, i32(-2147483648), 40152i, -30326i)), true, 4294967295u, vec3<f32>(278f, 740f, -739f))), Struct_3(Struct_2(0u, Struct_1(-1000f, false, vec3<f32>(540f, 1050f, 336f), vec4<i32>(1i, 8306i, i32(-2147483648), i32(-2147483648))), true, 14593u, vec3<f32>(-147f, 1376f, -1292f)), 66008u, false, Struct_2(16578u, Struct_1(738f, true, vec3<f32>(1000f, 997f, -1250f), vec4<i32>(-685i, i32(-2147483648), -14028i, 0i)), true, 33215u, vec3<f32>(365f, 2940f, -772f)), Struct_2(0u, Struct_1(695f, false, vec3<f32>(1017f, 1294f, 1233f), vec4<i32>(i32(-2147483648), 2147483647i, 9892i, 14857i)), true, 0u, vec3<f32>(757f, -626f, 702f))), Struct_3(Struct_2(0u, Struct_1(-210f, false, vec3<f32>(1000f, -518f, -309f), vec4<i32>(-87587i, i32(-2147483648), -24705i, 1i)), false, 1u, vec3<f32>(-222f, -514f, 2879f)), 63681u, false, Struct_2(1u, Struct_1(401f, true, vec3<f32>(-1000f, 711f, 669f), vec4<i32>(-1i, 28902i, 30495i, -31538i)), true, 4294967295u, vec3<f32>(-871f, 1597f, 1000f)), Struct_2(4294967295u, Struct_1(105f, true, vec3<f32>(1169f, 901f, 699f), vec4<i32>(1i, 0i, 2147483647i, 2147483647i)), false, 89179u, vec3<f32>(-2051f, -1576f, -632f))), Struct_3(Struct_2(4294967295u, Struct_1(-1652f, false, vec3<f32>(1274f, 1180f, -1041f), vec4<i32>(2147483647i, 0i, -54464i, -15158i)), true, 52776u, vec3<f32>(-1238f, 443f, 801f)), 9584u, false, Struct_2(0u, Struct_1(470f, true, vec3<f32>(2452f, -714f, 1287f), vec4<i32>(32014i, -1i, -10557i, 20874i)), true, 1u, vec3<f32>(1335f, 163f, -1097f)), Struct_2(0u, Struct_1(-1823f, true, vec3<f32>(-524f, 1601f, 732f), vec4<i32>(-13022i, i32(-2147483648), 61768i, 1i)), false, 1u, vec3<f32>(-192f, 634f, 798f))), Struct_3(Struct_2(78490u, Struct_1(722f, true, vec3<f32>(116f, 527f, -1236f), vec4<i32>(35437i, i32(-2147483648), 0i, -20185i)), true, 0u, vec3<f32>(309f, -1327f, -576f)), 1u, false, Struct_2(96661u, Struct_1(1000f, false, vec3<f32>(965f, 674f, -1354f), vec4<i32>(22445i, 68031i, 8969i, 1i)), true, 23107u, vec3<f32>(-1727f, 893f, 195f)), Struct_2(32745u, Struct_1(619f, true, vec3<f32>(678f, 319f, -1266f), vec4<i32>(-1i, 1i, 2147483647i, 2147483647i)), false, 0u, vec3<f32>(-784f, -2560f, 1215f))), Struct_3(Struct_2(59682u, Struct_1(1000f, false, vec3<f32>(461f, -1568f, 131f), vec4<i32>(-3803i, 14955i, 0i, 1i)), true, 55231u, vec3<f32>(702f, 1413f, -729f)), 24333u, true, Struct_2(85107u, Struct_1(-1000f, true, vec3<f32>(601f, -238f, 1000f), vec4<i32>(i32(-2147483648), 0i, 66664i, 35943i)), true, 54630u, vec3<f32>(140f, 411f, -586f)), Struct_2(27293u, Struct_1(1876f, true, vec3<f32>(860f, -399f, -2394f), vec4<i32>(1i, -53023i, 3560i, 26131i)), true, 9625u, vec3<f32>(714f, -1650f, -294f))));

var<private> global3: Struct_1;

var<private> global4: array<Struct_2, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> Struct_3 {
    global3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-269f)) - -949f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.x) + 308f)), u_input.e.x >= abs(-select(arg_0, 2147483647i, false)), _wgslsmith_f_op_vec3_f32(select(global3.c, vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), global3.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.a * 246f), _wgslsmith_f_op_f32(trunc(global3.c.x)), arg_1.x))), false)), global3.d);
    let var_0 = i32(-1i) * -global3.d.x;
    global3 = Struct_1(global3.a, true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.c)))) * vec3<f32>(117f, global3.a, 1f)), ~(-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 0i, global3.d.x, -2147483647i), vec4<i32>(var_0, global3.d.x, u_input.d, u_input.d))));
    let var_1 = global3.d.x;
    global2 = array<Struct_3, 9>();
    return global2[_wgslsmith_index_u32(1u, 9u)];
}

fn func_1() -> bool {
    global2 = array<Struct_3, 9>();
    var var_0 = func_2(global3.d.x, vec4<bool>(all(!vec3<bool>(true, global3.b, global3.b)), (_wgslsmith_f_op_f32(max(-545f, global3.c.x)) == global3.c.x) & true, global3.b, any(!vec2<bool>(global3.b, false))));
    global4 = array<Struct_2, 5>();
    let var_1 = global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 1u, u_input.c.x, u_input.b.x), vec4<u32>(var_0.a.a, var_0.b, var_0.e.a, 29513u)), u_input.a.x) ^ (13616u << (1u % 32u)), 5u)];
    global0 = array<vec4<bool>, 5>();
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(abs(~(_wgslsmith_mult_vec4_i32(global3.d, global3.d) | abs(global3.d))), max(_wgslsmith_sub_vec4_i32(~global3.d, global3.d), global3.d), global3.b);
    global4 = array<Struct_2, 5>();
    var var_1 = 15314i;
    global3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.c.x)))) - -247f), global3.b || any(select(!vec2<bool>(global3.b, false), select(vec2<bool>(global3.b, true), vec2<bool>(false, global3.b), global3.b), any(vec3<bool>(global3.b, true, global3.b)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.x, -458f, global3.c.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-617f, global3.c.x, 2193f), vec3<f32>(global3.a, 477f, -642f))) * global3.c))), vec4<i32>(-(_wgslsmith_div_i32(u_input.e.x, u_input.e.x) << (21326u % 32u)), u_input.e.x, -global3.d.x, global3.d.x));
    global1 = array<vec4<bool>, 22>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1574f, -347f));
    global1 = array<vec4<bool>, 22>();
    var var_3 = countOneBits(vec3<u32>(firstTrailingBit(_wgslsmith_mod_u32(4294967295u << (u_input.b.x % 32u), ~1u)), u_input.c.x, _wgslsmith_div_u32(~u_input.c.x, ~1u >> (1u % 32u))));
    var var_4 = global3.c.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(f32(-1f) * -570f), func_1())), (~_wgslsmith_mult_u32(76446u, u_input.c.x) & u_input.c.x) >> (~var_3.x % 32u), ~1i);
}

