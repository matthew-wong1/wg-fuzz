struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec3<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(Struct_2(vec3<f32>(-219f, -1294f, 285f), true, vec3<f32>(368f, -1012f, 1033f), 1u), 4294967295u, false, vec2<bool>(true, false), vec3<u32>(0u, 1u, 4294967295u)), Struct_3(Struct_2(vec3<f32>(-240f, -178f, -859f), false, vec3<f32>(230f, -318f, -304f), 0u), 1u, true, vec2<bool>(false, false), vec3<u32>(4294967295u, 46855u, 1u)), Struct_3(Struct_2(vec3<f32>(417f, 1000f, 379f), true, vec3<f32>(-1607f, 432f, -1000f), 1u), 1u, false, vec2<bool>(false, false), vec3<u32>(1805u, 1u, 33700u)), Struct_3(Struct_2(vec3<f32>(708f, -1192f, -253f), false, vec3<f32>(205f, -1361f, 1000f), 0u), 77838u, false, vec2<bool>(false, true), vec3<u32>(0u, 0u, 555u)));

var<private> global2: Struct_3;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>) -> vec4<u32> {
    let var_0 = -u_input.e << (firstLeadingBit(~_wgslsmith_sub_vec3_u32(global2.e, u_input.c & vec3<u32>(global2.a.d, global2.a.d, global2.a.d))) % vec3<u32>(32u));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(global2.a.a.x)), _wgslsmith_f_op_f32(sign(global2.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -548f)))), all(!global2.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1054f, global2.a.a.x)) * -1000f))), firstTrailingBit(43947u));
    var var_2 = 1032f;
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-28028i, ~(-4257i), -1i, -5895i), ~vec4<i32>(max(_wgslsmith_div_i32(var_0.x, -1895i), 1i), 74830i, arg_0.x, 0i));
    var_2 = global2.a.c.x;
    return vec4<u32>(~76158u >> (_wgslsmith_add_u32(global2.a.d, ~var_1.d) % 32u), abs(var_1.d), _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global2.e.zx) << (~var_1.d % 32u), ~(~30020u)), 1u), global2.b);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_3) -> u32 {
    global1 = array<Struct_3, 4>();
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_1.d, _wgslsmith_mult_u32(abs(arg_3.b), ~u_input.b)), arg_2.x), arg_0.ww);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.c.x * _wgslsmith_f_op_f32(max(-688f, 147f)))) + arg_1.a.x);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_1.a * vec3<f32>(arg_3.a.c.x, _wgslsmith_f_op_f32(max(184f, arg_3.a.a.x)), _wgslsmith_f_op_f32(-global2.a.a.x))))), true & all(!select(vec4<bool>(arg_3.a.b, false, false, global2.a.b), vec4<bool>(false, false, true, arg_1.b), global2.c)), arg_3.a.a, global2.a.d);
    var var_3 = vec4<bool>(arg_3.a.b, any(!(!(!vec3<bool>(arg_3.a.b, true, global2.a.b)))), true, !global2.c);
    return global2.b;
}

fn func_2() -> u32 {
    global2 = Struct_3(global2.a, global2.e.x, -25415i <= u_input.e.x, vec2<bool>(true, true), ~(vec3<u32>(global2.b, max(93773u, 12648u), ~4294967295u) & global2.e));
    var var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 4u)];
    let var_1 = (u_input.a & _wgslsmith_mult_i32(u_input.a, 1i)) >> (func_4(~(firstTrailingBit(vec4<u32>(34306u, 1u, 22375u, global2.a.d)) ^ func_3(u_input.e.yy)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.c.x + -1522f), _wgslsmith_f_op_f32(global2.a.c.x * var_0.a.a.x), 608f), min(u_input.a, u_input.d) == min(u_input.e.x, u_input.d), global2.a.a, 28671u), global2.e.yx, Struct_3(var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, var_0.a.d), min(u_input.c.yx, vec2<u32>(global2.a.d, 0u))), false, global2.d, u_input.c)) % 32u);
    var var_2 = var_0.a.b;
    let var_3 = _wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(~u_input.e, _wgslsmith_add_vec3_i32(u_input.e, ~u_input.e))), u_input.e);
    return _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b, 4294967295u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, global2.b, 12553u, 16581u)), ~reverseBits(vec4<u32>(u_input.c.x, global2.e.x, 11030u, var_0.a.d))) & countOneBits(~4294967295u), 99339u);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_0;
    var var_1 = 12223u;
    var_0 = _wgslsmith_sub_i32(1i, 90i);
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(632f, _wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(round(global2.a.a.x))))), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-143f, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global2.a.c * vec3<f32>(-241f, -1385f, global2.a.c.x))))), ~func_2()), 4294967295u, global2.c, select(select(vec2<bool>(true, !arg_2.b), select(!global2.d, global2.d, global2.d), !global2.d), vec2<bool>(global2.c, true), all(!select(vec4<bool>(true, false, global2.a.b, global2.c), vec4<bool>(arg_2.b, arg_2.b, arg_2.b, false), vec4<bool>(arg_2.b, false, false, true)))), ~global2.e);
    global0 = global2.b;
    return reverseBits(arg_2.a);
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(36936u, ~arg_1), countOneBits(~abs(arg_2.a)) << (1u % 32u));
    let var_1 = Struct_3(Struct_2(arg_2.c, arg_0.d.x, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.a.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -684f), -381f), _wgslsmith_f_op_vec3_f32(ceil(arg_2.d))), arg_1 << (arg_1 % 32u)), 85080u, arg_2.b, !vec2<bool>(true, any(vec2<bool>(false, arg_2.b))), global2.e);
    global2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(297f, global2.a.c.x, -544f)) * vec3<f32>(-428f, var_1.a.a.x, _wgslsmith_f_op_f32(global2.a.c.x - 719f))), arg_2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a.x, -536f, var_1.a.a.x))), 8988u), 42438u << (~4294967295u % 32u), any(select(!vec4<bool>(arg_0.a.b, global2.c, global2.c, true), !(!vec4<bool>(false, false, arg_0.d.x, global2.d.x)), true)), global2.d, _wgslsmith_sub_vec3_u32(vec3<u32>(~arg_1 & 6892u, 1u, ~global2.e.x), var_1.e));
    global2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.a.c)))), !all(vec3<bool>(false, arg_0.c, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.a.a + arg_0.a.c) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1545f, arg_0.a.c.x, global2.a.a.x), arg_2.d) + _wgslsmith_f_op_vec3_f32(arg_2.c + global2.a.c))), 44141u), max(select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, 4294967295u, arg_1), u_input.c) << (~4294967295u % 32u), 14413u, true), var_0), global2.a.b, arg_0.d, var_1.e);
    let var_2 = abs(-u_input.e.yy);
    return all(vec4<bool>(var_1.c, true, !(_wgslsmith_f_op_f32(383f - 1291f) <= _wgslsmith_f_op_f32(select(arg_0.a.c.x, 1765f, var_1.d.x))), arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.a.a.x, global2.a.a.x, global2.a.c.x, global2.a.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(204f, global2.a.a.x, global2.a.c.x, 518f)), select(vec4<bool>(global2.a.b, true, true, false), vec4<bool>(true, false, global2.a.b, global2.d.x), vec4<bool>(false, global2.d.x, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(437f, global2.a.a.x, 1530f, global2.a.c.x)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.a.c.x, 1089f, _wgslsmith_f_op_f32(-global2.a.a.x), _wgslsmith_f_op_f32(-global2.a.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-589f, -994f, global2.a.c.x, global2.a.c.x), vec4<f32>(-680f, 1041f, 1398f, -230f)))))), func_5(global1[_wgslsmith_index_u32(func_1(u_input.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.a.x, 568f, -186f) - global2.a.a), Struct_1(29209u, global2.d.x, global2.a.a, vec3<f32>(global2.a.c.x, -144f, 201f))), 4u)], 5443u, Struct_1(u_input.b >> (global2.b % 32u), true, global2.a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1184f, 256f, -253f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-905f, global2.a.c.x, -1000f, global2.a.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1576f, -902f, 376f, global2.a.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.c.x, global2.a.a.x, global2.a.c.x, global2.a.c.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.a.x, global2.a.c.x, -1213f, global2.a.a.x) * vec4<f32>(global2.a.a.x, -496f, -1000f, global2.a.a.x)))))), vec4<bool>(global2.a.b, any(select(vec3<bool>(global2.d.x, global2.a.b, true), select(vec3<bool>(false, true, global2.d.x), vec3<bool>(false, true, global2.d.x), vec3<bool>(global2.a.b, global2.d.x, global2.a.b)), global2.c)), !all(!vec4<bool>(true, global2.c, false, global2.d.x)), global2.a.a.x < -600f)));
    let var_1 = Struct_1(23930u, any(select(select(vec3<bool>(true, global2.c, global2.d.x), vec3<bool>(global2.c, global2.c, true), global2.d.x), !vec3<bool>(true, global2.c, false), vec3<bool>(global2.c, true, false))) & (u_input.c.x != (15070u ^ countOneBits(global2.a.d))), _wgslsmith_f_op_vec3_f32(-var_0.yzx), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global2.a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a.c))))));
    let var_2 = -_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_div_i32(u_input.e.x, 1i)), _wgslsmith_div_i32(u_input.d, _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.e.x, u_input.a), u_input.e.x | 1i)));
    global0 = 1u;
    var var_3 = select(firstTrailingBit(firstLeadingBit(firstTrailingBit(vec3<i32>(77344i, -2147483647i, -1i) ^ u_input.e))), vec3<i32>(~(-43751i), firstTrailingBit(u_input.a), max(var_2 << (~var_1.a % 32u), -firstLeadingBit(u_input.d))), (countOneBits(var_1.a) | u_input.b) == (~u_input.c.x << (~countOneBits(35885u) % 32u)));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-701f, 398f))) * _wgslsmith_f_op_vec2_f32(min(global2.a.c.xy, _wgslsmith_f_op_vec2_f32(-global2.a.a.yy))));
    var var_5 = _wgslsmith_mod_u32(~(~global2.a.d), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 59814u, var_1.a), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, global2.b, 4294967295u), vec4<u32>(43517u, var_1.a, 8040u, var_1.a))) ^ ~(~vec4<u32>(var_1.a, 41757u, var_1.a, global2.a.d)), _wgslsmith_clamp_vec4_u32(vec4<u32>(122509u, var_1.a, global2.a.d, var_1.a), ~vec4<u32>(36869u, 1u, u_input.c.x, global2.b), _wgslsmith_div_vec4_u32(vec4<u32>(global2.b, global2.a.d, global2.b, global2.b), vec4<u32>(global2.b, global2.b, u_input.c.x, u_input.c.x))) ^ reverseBits(vec4<u32>(var_1.a, 4294967295u, 1u, u_input.c.x))));
    var var_6 = !vec2<bool>(!(!(global2.c | false)), firstLeadingBit(var_3.x | var_3.x) > 0i);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -48655i, abs(_wgslsmith_div_i32(u_input.e.x >> (func_4(vec4<u32>(1u, 12236u, 1u, global2.e.x), global2.a, global2.e.zx, global1[_wgslsmith_index_u32(u_input.b, 4u)]) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -16636i, var_2, -1i), vec4<i32>(0i, u_input.d, u_input.a, u_input.a)), -vec4<i32>(u_input.e.x, var_2, 1i, var_3.x)))), 4294967295u);
}

