struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 890f;

var<private> global1: bool;

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(-432f, 0u, -1000f, -1i), vec3<u32>(17736u, 53548u, 11511u), Struct_1(-735f, 19723u, -1534f, 53867i), vec4<bool>(true, false, false, false), vec3<f32>(-240f, 540f, -529f)), Struct_2(Struct_1(-1047f, 4294967295u, 797f, -1i), vec3<u32>(1u, 32504u, 40441u), Struct_1(-1422f, 1u, -387f, 2147483647i), vec4<bool>(true, false, true, true), vec3<f32>(1201f, -1973f, 242f)), Struct_2(Struct_1(171f, 4294967295u, -521f, i32(-2147483648)), vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(440f, 14362u, -150f, -3765i), vec4<bool>(false, true, true, false), vec3<f32>(-321f, 1402f, 1000f)));

var<private> global3: array<bool, 8> = array<bool, 8>(false, true, false, false, false, false, false, true);

var<private> global4: u32 = 54977u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, arg_2.b, arg_2.b) >> (countOneBits(min(vec4<u32>(90941u, 50215u, arg_0.b, arg_2.b), vec4<u32>(arg_0.b, arg_0.b, arg_2.b, u_input.a))) % vec4<u32>(32u)), vec4<u32>(arg_2.b, arg_2.b << ((24173u >> (0u % 32u)) % 32u), 38922u, ~arg_0.b)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, arg_2.b, 37123u, arg_0.b), vec4<u32>(u_input.b, arg_2.b, arg_0.b, 1u)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, arg_2.b, arg_0.b), vec3<u32>(1u, 4294967295u, 4294967295u)), min(vec3<u32>(arg_0.b, arg_2.b, 4294967295u), vec3<u32>(32562u, arg_2.b, 80797u))) % 32u)));
    var var_1 = !select(select(~2147483647i, abs(arg_1), global3[_wgslsmith_index_u32(~5755u, 8u)]) != 1i, true, global3[_wgslsmith_index_u32(arg_0.b, 8u)]);
    let var_2 = u_input.c.x;
    var_0 = u_input.b;
    let var_3 = 4294967295u;
    return 36155i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(147f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(371f, 548f)))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, 78641u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 0u, 5442u, 4294967295u), vec4<u32>(10523u, 1821u, 0u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(countOneBits(u_input.a), 4294967295u, ~u_input.c.x, reverseBits(u_input.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -556f), -866f, true)), _wgslsmith_f_op_f32(ceil(491f)), false)), -1i), ~_wgslsmith_add_vec3_u32(max(~vec3<u32>(4294967295u, 19927u, 67689u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 50996u, 8358u), vec3<u32>(1u, u_input.b, 0u))), vec3<u32>(firstLeadingBit(8992u), ~u_input.a, ~u_input.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -559f)))), min(abs(32826u), ~u_input.c.x ^ ~u_input.a), _wgslsmith_f_op_f32(min(-1335f, _wgslsmith_f_op_f32(f32(-1f) * -1109f))), ~1i), !select(vec4<bool>(true, global3[_wgslsmith_index_u32(~29012u, 8u)], all(vec4<bool>(global3[_wgslsmith_index_u32(31300u, 8u)], global3[_wgslsmith_index_u32(u_input.b, 8u)], true, global3[_wgslsmith_index_u32(47340u, 8u)])), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(54955u, u_input.c.x, 0u, 4294967295u), vec4<u32>(u_input.a, 4294967295u, 105589u, 1u)), 8u)]), !(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 8u)], global3[_wgslsmith_index_u32(u_input.c.x, 8u)], global3[_wgslsmith_index_u32(u_input.c.x, 8u)], true)), select(!vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(u_input.a, 8u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(62349u, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(u_input.a, 8u)], global3[_wgslsmith_index_u32(u_input.b, 8u)]), vec4<bool>(false, false, global3[_wgslsmith_index_u32(1u, 8u)], false), false), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-698f, 267f, false))), 845f)));
    let var_1 = Struct_1(1000f, _wgslsmith_add_u32(~var_0.b.x, ~(~(~4294967295u))), var_0.e.x, ~max(_wgslsmith_add_i32(~2147483647i, 0i ^ var_0.c.d), func_3(Struct_1(-1000f, u_input.a, 167f, var_0.a.d), -2147483647i, Struct_1(314f, u_input.c.x, var_0.a.a, 12592i))));
    global2 = array<Struct_2, 3>();
    global0 = -2382f;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.a))));
    return Struct_1(1184f, 14723u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(160f - var_1.a))))), var_0.c.d);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: u32) -> vec3<bool> {
    let var_0 = func_2();
    let var_1 = u_input.b;
    global3 = array<bool, 8>();
    global4 = 40622u;
    global0 = var_0.a;
    return vec3<bool>(arg_0.x <= ~min(50075i, reverseBits(6053i)), arg_2.x, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> vec4<f32> {
    global4 = u_input.b;
    var var_0 = arg_1;
    var var_1 = 655f;
    var_1 = _wgslsmith_f_op_f32(select(arg_1.b.x, var_0.b.x, select(~(~var_0.c.x) > 39391u, !global3[_wgslsmith_index_u32(~min(u_input.b, 4294967295u), 8u)], func_1(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-45440i, var_0.d), vec2<i32>(var_0.d, var_0.d))), vec4<f32>(_wgslsmith_div_f32(-1005f, arg_1.b.x), _wgslsmith_f_op_f32(-var_0.b.x), -1374f, _wgslsmith_f_op_f32(-arg_1.b.x)), vec2<bool>(arg_1.d == var_0.d, true), 3858u).x)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(trunc(var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * _wgslsmith_f_op_f32(-arg_1.b.x))))), min(~77193u, ~_wgslsmith_dot_vec2_u32(~arg_1.c, u_input.c)), -1719f, arg_1.d | _wgslsmith_sub_i32(~(0i >> (1u % 32u)), 30670i));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().c) + _wgslsmith_f_op_f32(arg_1.b.x + -442f)), -159f, var_0.b.x, var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(763f, 1156f, 1000f, _wgslsmith_f_op_f32(max(900f, _wgslsmith_f_op_f32(floor(-1000f)))));
    global0 = -409f;
    global0 = 309f;
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_4(func_1(vec2<i32>(-1i, 28919i) << (u_input.c % vec2<u32>(32u)), vec4<f32>(var_0.x, 585f, var_0.x, var_0.x), !vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.c.x, 8u)]), u_input.b), Struct_3(select(vec3<u32>(u_input.c.x, 4294967295u, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.c.x), global3[_wgslsmith_index_u32(u_input.c.x, 8u)]), _wgslsmith_f_op_vec3_f32(exp2(var_0.wyy)), ~vec2<u32>(17222u, u_input.b), i32(-1i) * -3682i), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(u_input.c.x, u_input.a, u_input.a)), 8u)], _wgslsmith_f_op_f32(trunc(685f)) >= func_2().a)))), vec4<f32>(-620f, _wgslsmith_f_op_f32(930f * 870f), var_0.x, -1532f)));
    var var_1 = !select(select(vec4<bool>(true, false, any(vec3<bool>(false, global3[_wgslsmith_index_u32(51386u, 8u)], false)), global3[_wgslsmith_index_u32(7210u, 8u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(55064u, 4294967295u), 8u)], global3[_wgslsmith_index_u32(reverseBits(5683u), 8u)], true), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 8u)], false, false)), !select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(26390u, 8u)], global3[_wgslsmith_index_u32(u_input.a, 8u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(32501u, 8u)], false, true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 8u)], global3[_wgslsmith_index_u32(u_input.c.x, 8u)], true, true), vec4<bool>(true, false, true, true)), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 8u)], global3[_wgslsmith_index_u32(u_input.c.x, 8u)], global3[_wgslsmith_index_u32(0u, 8u)], true)), vec4<bool>(!global3[_wgslsmith_index_u32(u_input.a, 8u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(10075u, u_input.a), u_input.c), ~u_input.a), 8u)], _wgslsmith_f_op_f32(var_0.x + -1308f) < _wgslsmith_f_op_f32(floor(-1000f)), false));
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(-vec2<i32>(68473i, 7781i), vec2<i32>(-9630i, 42181i)), true), vec4<u32>(max(_wgslsmith_add_u32(~54143u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, 35253u), ~vec4<u32>(1u, u_input.a, 4294967295u, u_input.b))), _wgslsmith_mod_u32(u_input.c.x, 53484u), _wgslsmith_dot_vec3_u32(vec3<u32>(22222u, _wgslsmith_mod_u32(u_input.c.x, u_input.b), u_input.c.x ^ 1u), vec3<u32>(_wgslsmith_mod_u32(11029u, u_input.c.x), 39221u, _wgslsmith_clamp_u32(14550u, 75324u, u_input.a))), 18618u), reverseBits(select(1i, -26709i, false)) & -(~8198i), ~firstTrailingBit(~(vec3<u32>(60150u, 1u, u_input.b) << (vec3<u32>(u_input.c.x, u_input.a, 50664u) % vec3<u32>(32u)))));
}

