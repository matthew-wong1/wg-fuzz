struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(323f, 1000f), vec2<f32>(-508f, 161f), vec2<f32>(-823f, -315f), vec2<f32>(-473f, 228f), vec2<f32>(170f, -199f), vec2<f32>(2147f, 464f), vec2<f32>(316f, -1000f));

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_1(true, -37387i, vec4<f32>(366f, 519f, 354f, -901f)), Struct_2(18748i), Struct_1(true, 1i, vec4<f32>(-155f, -2255f, -1000f, -1654f)), Struct_2(2147483647i), -1229f), Struct_3(Struct_1(true, -1i, vec4<f32>(-937f, -377f, -967f, -2075f)), Struct_2(i32(-2147483648)), Struct_1(false, 984i, vec4<f32>(-496f, 1128f, -1037f, -1385f)), Struct_2(17078i), 686f), Struct_3(Struct_1(false, 0i, vec4<f32>(410f, -386f, -370f, -1578f)), Struct_2(0i), Struct_1(false, 34037i, vec4<f32>(-898f, -1144f, -1996f, -619f)), Struct_2(49334i), -373f), Struct_3(Struct_1(false, -8621i, vec4<f32>(274f, 320f, -1185f, 1567f)), Struct_2(2147483647i), Struct_1(true, 25434i, vec4<f32>(-1443f, -803f, 345f, -373f)), Struct_2(i32(-2147483648)), 723f), Struct_3(Struct_1(false, 2147483647i, vec4<f32>(-728f, -1401f, 1451f, -494f)), Struct_2(-69026i), Struct_1(false, -34828i, vec4<f32>(-937f, 850f, 1068f, 861f)), Struct_2(-31667i), 1737f), Struct_3(Struct_1(true, i32(-2147483648), vec4<f32>(373f, 1000f, 1000f, 1021f)), Struct_2(i32(-2147483648)), Struct_1(false, -35148i, vec4<f32>(934f, 560f, 891f, 636f)), Struct_2(13828i), 440f), Struct_3(Struct_1(false, 4353i, vec4<f32>(564f, -1721f, -512f, -254f)), Struct_2(201i), Struct_1(false, -34621i, vec4<f32>(440f, 554f, -392f, 1013f)), Struct_2(-1i), 918f), Struct_3(Struct_1(true, 0i, vec4<f32>(-1082f, -1283f, -998f, -399f)), Struct_2(-50236i), Struct_1(false, 22532i, vec4<f32>(1805f, -1000f, -730f, -466f)), Struct_2(-1i), -898f), Struct_3(Struct_1(false, 1i, vec4<f32>(1016f, -1000f, -391f, 1886f)), Struct_2(2147483647i), Struct_1(false, -11878i, vec4<f32>(-2169f, 195f, 472f, -892f)), Struct_2(1i), 1000f), Struct_3(Struct_1(true, 2183i, vec4<f32>(-714f, -739f, -311f, -703f)), Struct_2(1i), Struct_1(true, 1i, vec4<f32>(482f, -1118f, -2865f, -1467f)), Struct_2(37441i), -1280f), Struct_3(Struct_1(false, 2147483647i, vec4<f32>(578f, 1077f, -1084f, 1116f)), Struct_2(13802i), Struct_1(true, 36709i, vec4<f32>(559f, -1183f, 1543f, 1325f)), Struct_2(9601i), 227f), Struct_3(Struct_1(true, 1i, vec4<f32>(-677f, -451f, 679f, -128f)), Struct_2(-60324i), Struct_1(false, 51627i, vec4<f32>(-895f, -377f, -949f, -608f)), Struct_2(i32(-2147483648)), -1299f), Struct_3(Struct_1(false, 1i, vec4<f32>(1040f, -392f, -846f, -102f)), Struct_2(-71407i), Struct_1(false, -1i, vec4<f32>(-762f, 631f, 139f, 1228f)), Struct_2(-1i), -2956f));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> i32 {
    global3 = array<Struct_3, 13>();
    return global0.a.b;
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: vec4<bool>) -> vec4<bool> {
    let var_0 = -_wgslsmith_div_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, arg_0.b.a, -10952i, -2147483647i) & vec4<i32>(-2147483647i, -1i, 2147483647i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, arg_0.a.b, -44910i, -50508i), vec4<i32>(-1671i, global0.d.a, 2147483647i, 0i)))), -vec4<i32>(_wgslsmith_clamp_i32(1i, 2147483647i, u_input.a), func_3(-237f, vec3<i32>(u_input.a, 0i, -600i), Struct_1(arg_0.c.a, -12129i, arg_0.c.c)), -arg_1, _wgslsmith_clamp_i32(0i, 1i, 5606i)));
    var var_1 = arg_0.a;
    var_1 = global0.a;
    var_1 = global0.c;
    var var_2 = abs(max(_wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(u_input.c), u_input.c, u_input.b, ~4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.c), ~vec4<u32>(12609u, 51480u, u_input.b, 60498u))), ~(~(vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.c) ^ vec4<u32>(u_input.c, 133582u, u_input.b, 80375u)))));
    return !select(select(!(!vec4<bool>(arg_0.c.a, global0.c.a, true, true)), arg_3, true), select(!(!vec4<bool>(true, arg_2, false, global0.c.a)), select(arg_3, arg_3, select(arg_3, arg_3, false)), any(select(vec4<bool>(arg_3.x, global0.a.a, true, arg_0.c.a), arg_3, true))), !(arg_0.c.a == true) & !(arg_0.c.a | true));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = global0.c.c.yx;
    global3 = array<Struct_3, 13>();
    var var_1 = arg_1;
    global3 = array<Struct_3, 13>();
    global1 = array<vec2<f32>, 7>();
    return global0.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(4294967295u, 99922u))), max(~vec2<u32>(1u, ~u_input.b), ~_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(16997u, 46346u)))));
    var var_1 = func_4(vec3<u32>(4294967295u, var_0.x, var_0.x), !select(func_2(Struct_3(arg_1, Struct_2(-13158i), arg_1, global0.b, 1000f), _wgslsmith_add_i32(global2.x, 0i), !arg_1.a, !vec4<bool>(true, false, arg_1.a, arg_1.a)), !vec4<bool>(global0.a.a, true, false, arg_1.a), select(any(vec4<bool>(false, false, true, true)), false, false)));
    var var_2 = ~var_0.x;
    let var_3 = func_4(select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, _wgslsmith_clamp_u32(4294967295u, 1u, 0u), 1u), ~(~vec3<u32>(u_input.b, 27386u, var_0.x))), vec3<u32>(33950u, 0u, ~u_input.c) & vec3<u32>(countOneBits(48560u), var_0.x, 26701u), !(true || !arg_1.a)), select(!vec4<bool>(var_1.a, global0.e <= global0.e, true, any(vec2<bool>(false, true))), vec4<bool>(all(!vec4<bool>(var_1.a, true, global0.c.a, var_1.a)), false, all(vec4<bool>(false, true, var_1.a, arg_1.a)), global0.a.a), true & arg_1.a));
    var var_4 = Struct_2(_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(min(vec4<i32>(-2147483647i, u_input.a, global2.x, -2724i), vec4<i32>(global2.x, 0i, global2.x, 2147483647i)), vec4<i32>(var_3.b, 0i, var_3.b, arg_1.b)), vec4<i32>(-1i, var_1.b, -(-1i << (u_input.c % 32u)), -2674i)));
    return Struct_1(!(!(!global0.c.a)) != var_3.a, -1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e, arg_0.x, var_3.c.x, 265f))) - _wgslsmith_div_vec4_f32(global0.c.c, _wgslsmith_f_op_vec4_f32(round(var_3.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(8015i, -2147483647i << (u_input.b % 32u), ~(-9338i << (~4294967295u % 32u))), (-(~vec3<i32>(40683i, -2147483647i, u_input.a)) & _wgslsmith_div_vec3_i32(vec3<i32>(global0.c.b, 1i, u_input.a), ~vec3<i32>(u_input.a, global2.x, u_input.a))) | ~firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, global0.a.b, u_input.a), vec3<i32>(0i, global0.b.a, global0.b.a))));
    var var_1 = func_1(global0.c.c, global0.a);
    let var_2 = vec3<bool>(_wgslsmith_clamp_u32(~reverseBits(12268u), ~20303u, u_input.c) > (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, 5208u)), max(0u, 1u)) >> (u_input.c % 32u)), var_1.a, func_1(global0.c.c, Struct_1(true, -2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c.c + global0.a.c)))).a);
    var_0 = -(~(~countOneBits(vec3<i32>(2147483647i, 48235i, u_input.a))));
    let var_3 = -(_wgslsmith_div_vec2_i32(~firstTrailingBit(var_0.zy), vec2<i32>(u_input.a, -25561i) & ~vec2<i32>(2147483647i, global2.x)) >> (vec2<u32>(_wgslsmith_sub_u32(u_input.b ^ u_input.b, u_input.b), select(1u, 74579u, false)) % vec2<u32>(32u)));
    var var_4 = Struct_2(max(_wgslsmith_mult_i32(3811i, reverseBits(~2147483647i)), global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.c, 46455u << (~u_input.c % 32u), u_input.b, reverseBits(1u)));
}

