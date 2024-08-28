struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<bool>,
    d: i32,
    e: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(56754u, 7672u, 7745u), 10234u, vec4<bool>(false, false, false, true), vec3<u32>(0u, 72493u, 150590u), vec4<u32>(36778u, 41034u, 4294967295u, 19695u));

var<private> global1: array<u32, 25> = array<u32, 25>(5941u, 1u, 0u, 1u, 4294967295u, 13658u, 1u, 51120u, 0u, 1u, 4294967295u, 64075u, 68758u, 4294967295u, 27017u, 1185u, 1u, 4294967295u, 0u, 1u, 0u, 67474u, 40835u, 19416u, 77187u);

var<private> global2: array<vec2<f32>, 11>;

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec3<i32>(-21182i, -1i, 47055i), true, 35123i, vec2<bool>(true, true)), Struct_2(vec3<i32>(2874i, -12528i, 2579i), true, -5634i, vec2<bool>(true, true)), Struct_2(vec3<i32>(4525i, 2147483647i, 0i), false, 1i, vec2<bool>(false, false)), Struct_2(vec3<i32>(-45467i, -26137i, 0i), false, 35684i, vec2<bool>(true, true)), Struct_2(vec3<i32>(1i, i32(-2147483648), 2147483647i), false, 2147483647i, vec2<bool>(true, true)), Struct_2(vec3<i32>(2147483647i, 9181i, 29887i), false, 26044i, vec2<bool>(true, true)), Struct_2(vec3<i32>(-18966i, 0i, 7430i), true, 2147483647i, vec2<bool>(true, true)), Struct_2(vec3<i32>(i32(-2147483648), -9451i, 74407i), true, 0i, vec2<bool>(false, false)), Struct_2(vec3<i32>(-1i, -42111i, -1i), false, 1i, vec2<bool>(false, false)), Struct_2(vec3<i32>(2147483647i, 2147483647i, 1i), true, 0i, vec2<bool>(false, true)), Struct_2(vec3<i32>(0i, 3667i, i32(-2147483648)), true, -15282i, vec2<bool>(false, true)), Struct_2(vec3<i32>(0i, 2147483647i, 23693i), false, 2147483647i, vec2<bool>(false, false)), Struct_2(vec3<i32>(2147483647i, 33359i, -1i), true, -14479i, vec2<bool>(false, false)), Struct_2(vec3<i32>(-50512i, 28163i, -18293i), true, -9769i, vec2<bool>(true, false)), Struct_2(vec3<i32>(1i, i32(-2147483648), -14377i), false, 28713i, vec2<bool>(true, false)), Struct_2(vec3<i32>(2147483647i, 11610i, -9312i), true, i32(-2147483648), vec2<bool>(true, false)), Struct_2(vec3<i32>(5703i, 2147483647i, 0i), false, -760i, vec2<bool>(true, false)), Struct_2(vec3<i32>(-1i, 12006i, i32(-2147483648)), true, 0i, vec2<bool>(false, true)), Struct_2(vec3<i32>(26445i, -1i, -27115i), false, i32(-2147483648), vec2<bool>(true, false)), Struct_2(vec3<i32>(0i, -1i, 34764i), false, i32(-2147483648), vec2<bool>(true, false)), Struct_2(vec3<i32>(-1i, -1i, 1280i), false, 0i, vec2<bool>(false, true)), Struct_2(vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), true, 17641i, vec2<bool>(true, false)), Struct_2(vec3<i32>(41987i, i32(-2147483648), 26949i), false, -1i, vec2<bool>(false, false)), Struct_2(vec3<i32>(-1i, 0i, -7931i), true, 2147483647i, vec2<bool>(false, true)), Struct_2(vec3<i32>(17280i, 2147483647i, -27359i), false, 15359i, vec2<bool>(false, false)), Struct_2(vec3<i32>(2147483647i, 0i, i32(-2147483648)), false, -2243i, vec2<bool>(true, true)), Struct_2(vec3<i32>(0i, 1i, -50514i), false, 2147483647i, vec2<bool>(false, true)), Struct_2(vec3<i32>(-3128i, 6976i, 1i), false, -8620i, vec2<bool>(true, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = Struct_3(u_input.d < -(~25710i));
    global1 = array<u32, 25>();
    var var_1 = vec4<u32>(0u, abs(40691u) >> (min(u_input.c.x, ~reverseBits(global0.b)) % 32u), ~global1[_wgslsmith_index_u32(abs(16334u), 25u)], 7294u);
    let var_2 = Struct_5(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~_wgslsmith_dot_vec4_u32(global0.e, vec4<u32>(61061u, arg_1.d.x, u_input.c.x, 4294967295u)), ~(1u >> (u_input.b % 32u))), var_1.zxy, _wgslsmith_clamp_vec3_u32(var_1.zyy, abs(vec3<u32>(arg_1.d.x, 1u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.c.x, 24832u), arg_1.d)) | abs(global0.e.yyy)), arg_0, vec4<f32>(_wgslsmith_f_op_f32(777f - -288f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1285f, -255f)))))), -2358f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-519f, 1160f))))), Struct_1(~abs(countOneBits(global0.a)), ~_wgslsmith_mult_u32(global0.b, 4294967295u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(64920u, u_input.a.x, 60765u, var_1.x) ^ vec4<u32>(global1[_wgslsmith_index_u32(10285u, 25u)], global1[_wgslsmith_index_u32(var_1.x, 25u)], 4294967295u, 1u), ~vec4<u32>(arg_1.d.x, var_1.x, 4713u, 1u)) % 32u), vec4<bool>(var_0.a, global0.c.x, any(select(arg_1.c, global0.c, var_0.a)), true), min(~countOneBits(u_input.c), global0.d), _wgslsmith_div_vec4_u32(~(~u_input.a), firstLeadingBit(~global0.e))));
    let var_3 = ~select(4294967295u, ~(~firstLeadingBit(global0.e.x)), any(!select(vec2<bool>(true, var_0.a), var_2.d.c.zx, true)));
    return abs(~abs(vec2<u32>(~25410u, 0u)));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-15986i, _wgslsmith_sub_i32(1i, u_input.d))), -vec2<i32>(~arg_1, _wgslsmith_mod_i32(abs(arg_1), _wgslsmith_dot_vec4_i32(vec4<i32>(2291i, 4032i, arg_1, arg_1), vec4<i32>(2147483647i, -25399i, arg_1, 12749i)))));
    var var_1 = _wgslsmith_add_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32((vec2<i32>(u_input.d, u_input.d) | vec2<i32>(arg_1, 35296i)) | firstTrailingBit(vec2<i32>(44694i, u_input.d)), vec2<i32>(~arg_1, _wgslsmith_clamp_i32(-15743i, 27677i, -31926i)))), (vec2<i32>(-10222i, -7598i) | ~(-vec2<i32>(arg_1, -2147483647i))) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xz, func_3(vec3<i32>(6416i, arg_1, u_input.d), Struct_1(vec3<u32>(u_input.c.x, 0u, 123945u), 0u, global0.c, global0.a, vec4<u32>(global0.e.x, global1[_wgslsmith_index_u32(global0.b, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], 0u)))), vec2<u32>(countOneBits(19817u), global1[_wgslsmith_index_u32(22255u, 25u)])) % vec2<u32>(32u)));
    var var_2 = -reverseBits(~vec3<i32>(-7859i, -1i, u_input.d) ^ firstLeadingBit(vec3<i32>(-21751i, var_1.x, arg_1) | vec3<i32>(var_1.x, -44569i, arg_1)));
    let var_3 = Struct_1(~vec3<u32>(abs(_wgslsmith_clamp_u32(global0.d.x, u_input.b, 42562u)), 0u, firstLeadingBit(_wgslsmith_mod_u32(0u, 70450u))), 21342u, select(select(global0.c, select(global0.c, select(vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), vec4<bool>(global0.c.x, true, false, true), global0.c.x), !vec4<bool>(global0.c.x, true, global0.c.x, arg_0.a)), global0.c), select(select(select(vec4<bool>(true, global0.c.x, arg_0.a, true), global0.c, true), global0.c, arg_0.a), vec4<bool>(any(vec4<bool>(arg_0.a, false, arg_0.a, false)), true, select(arg_0.a, true, false), select(global0.c.x, false, arg_0.a)), global0.c), !(false || all(global0.c))), u_input.c, firstTrailingBit(vec4<u32>(1u, 50218u, 35314u, ~max(57970u, 0u))));
    let var_4 = var_3.c;
    return vec4<bool>(any(select(var_3.c.wxy, global0.c.xyx, !select(var_4.zwx, global0.c.zwz, var_3.c.x))), select(false, true, true), !(!global0.c.x), global0.c.x);
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(Struct_3(true), u_input.d >> (global1[_wgslsmith_index_u32(~(reverseBits(global1[_wgslsmith_index_u32(9461u, 25u)]) >> ((u_input.c.x >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72115u, 25u)], 25u)] % 32u)) % 32u)), 25u)] % 32u));
    var var_1 = Struct_5(vec3<u32>(4294967295u, 1u, ~countOneBits(_wgslsmith_clamp_u32(11232u, 0u, 4294967295u))), ~firstTrailingBit(~(vec3<i32>(u_input.d, u_input.d, u_input.d) >> (global0.e.wyy % vec3<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -228f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-967f)), _wgslsmith_f_op_f32(665f * 142f)))), -951f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -441f), -289f, select(-63891i, u_input.d, true) < u_input.d))), Struct_1(vec3<u32>(~(4294967295u << (global1[_wgslsmith_index_u32(u_input.b, 25u)] % 32u)), global0.e.x, ~(global0.a.x >> (global1[_wgslsmith_index_u32(global0.d.x, 25u)] % 32u))), 0u, var_0, reverseBits(~global0.d), vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(143284u << (global1[_wgslsmith_index_u32(4294967295u, 25u)] % 32u), global1[_wgslsmith_index_u32(0u, 25u)]), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0.a, vec3<u32>(4294967295u, 4294967295u, 43804u)), 25u)], ~global0.b & 53985u)));
    let var_2 = !vec4<bool>(firstTrailingBit(-4921i) < _wgslsmith_add_i32(1i, i32(-1i) * -1i), false, !global0.c.x, global0.c.x);
    var var_3 = Struct_5(select(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.b, var_1.a.x) << (u_input.c % vec3<u32>(32u)), vec3<u32>(~7447u, ~u_input.c.x, u_input.c.x)), vec3<u32>(u_input.a.x, global0.e.x, u_input.c.x), var_1.d.c.zxy), ~min(~(vec3<i32>(var_1.b.x, var_1.b.x, var_1.b.x) << (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(71772u, 25u)], 25u)], 104858u, global0.b) % vec3<u32>(32u))), ~vec3<i32>(48532i, u_input.d, var_1.b.x) ^ -vec3<i32>(2147483647i, -3967i, var_1.b.x)), _wgslsmith_f_op_vec4_f32(-var_1.c), var_1.d);
    let var_4 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u) | 0u, _wgslsmith_dot_vec2_u32(var_1.a.yy, ~var_3.d.a.zx), _wgslsmith_sub_u32(var_3.a.x, 34160u) >> ((1u | var_1.d.e.x) % 32u), (2778u << (var_3.d.a.x % 32u)) >> (~u_input.a.x % 32u)), vec4<u32>(var_3.d.b, global1[_wgslsmith_index_u32(16171u, 25u)], _wgslsmith_div_u32(~7509u, 21115u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(74281u, 25u)], 25u)])), u_input.a.x, 4294967295u, _wgslsmith_add_u32(func_3(~var_3.b, Struct_1(~var_3.d.a, _wgslsmith_dot_vec2_u32(var_1.d.a.zz, u_input.c.zx), !vec4<bool>(var_1.d.c.x, var_0.x, var_1.d.c.x, true), u_input.a.xzy, vec4<u32>(var_1.a.x, 59536u, var_3.a.x, global0.e.x))).x, 4294967295u >> (countOneBits(var_3.a.x) % 32u)));
    return Struct_3(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = ~(39722u >> (~u_input.a.x % 32u)) << (4294967295u % 32u);
    var var_2 = var_1;
    let var_3 = false;
    let var_4 = select(~(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, global0.a.x), vec4<u32>(4294967295u, 28447u, 0u, 0u)) & vec4<u32>(global1[_wgslsmith_index_u32(67313u, 25u)], global0.d.x, 1u, global1[_wgslsmith_index_u32(27144u, 25u)])), firstTrailingBit(u_input.a), global0.c) >> (_wgslsmith_div_vec4_u32(~u_input.a, firstTrailingBit(global0.e)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~57119u, 25u)] & min(var_4.x, 23685u), global0.a.x >> (_wgslsmith_add_u32(var_1, var_4.x) % 32u), 1u), abs(~global0.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(-u_input.d), abs(u_input.d), u_input.d, u_input.d), -firstTrailingBit(~vec4<i32>(u_input.d, 0i, -3464i, -39447i))), ~vec3<i32>(firstTrailingBit(u_input.d), ~(~(-1i)), -max(u_input.d, u_input.d)), _wgslsmith_div_vec2_f32(vec2<f32>(-736f, _wgslsmith_f_op_f32(abs(-2955f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-735f)), _wgslsmith_f_op_f32(1342f + -1000f)))));
}

