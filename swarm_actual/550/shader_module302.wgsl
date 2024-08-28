struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 19>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    global1 = arg_3.x;
    let var_0 = u_input.a;
    var var_1 = !all(!select(vec2<bool>(true, true), select(vec2<bool>(true, arg_2.b), vec2<bool>(arg_0, arg_2.b), vec2<bool>(arg_2.b, arg_2.b)), false));
    global2 = array<Struct_1, 19>();
    global2 = array<Struct_1, 19>();
    return firstTrailingBit(15610i);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: f32) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(40715u), 9u)], 19u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.d.x, -278f)) * _wgslsmith_f_op_f32(-arg_2)), 2645f), vec2<f32>(-1088f, 466f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_div_f32(-189f, arg_2)));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-397f + 1396f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a + var_0.d.yy)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1034f, -582f)))) + _wgslsmith_f_op_vec2_f32(round(var_0.a)));
    var_1 = var_0.d.yy;
    global2 = array<Struct_1, 19>();
    return false;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(576f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_4(abs(1i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(0i, u_input.a, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-4275i, u_input.a, -17488i))), vec3<i32>(u_input.a, func_3(true, Struct_1(vec2<f32>(-1435f, -465f), false, -59643i, vec3<f32>(131f, 679f, 680f)), Struct_1(vec2<f32>(1167f, -138f), true, 44362i, vec3<f32>(310f, 571f, 286f)), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 4294967295u)), _wgslsmith_add_i32(2147483647i, u_input.a))), _wgslsmith_f_op_f32(select(-169f, -1523f, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 9u)] < select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75547u, 9u)], 9u)], global0[_wgslsmith_index_u32(64855u, 9u)], false)))), 14439i, vec3<f32>(1f, 355f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(280f - -1000f) * _wgslsmith_f_op_f32(sign(221f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(321f, 648f)))))));
    global0 = array<u32, 9>();
    global1 = _wgslsmith_mult_u32(45221u, ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)] >> (49547u % 32u)), 9u)], ~global0[_wgslsmith_index_u32(9770u, 9u)]));
    var var_1 = max(vec4<u32>(~80553u >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(6385u, 9u)], 32590u), ~global0[_wgslsmith_index_u32(1u, 9u)]) % 32u), select(reverseBits(20413u), global0[_wgslsmith_index_u32(~(0u & global0[_wgslsmith_index_u32(36263u, 9u)]), 9u)], var_0.b), 1u, select(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)] | 4294967295u, _wgslsmith_div_u32(9671u, 0u & global0[_wgslsmith_index_u32(4294967295u, 9u)]), var_0.b)), _wgslsmith_mod_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(51453u, 0u, global0[_wgslsmith_index_u32(1u, 9u)], 1u) << (vec4<u32>(13960u, 6211u, 0u, 42069u) % vec4<u32>(32u)), vec4<u32>(global0[_wgslsmith_index_u32(0u, 9u)], 0u, 1u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(30277u, 9u)], 1u, 0u, global0[_wgslsmith_index_u32(1u, 9u)]), vec4<u32>(1u, 3821u, 62692u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 9u)])))), max((vec4<u32>(62711u, 57311u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 9u)], global0[_wgslsmith_index_u32(6936u, 9u)]) & vec4<u32>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], 4294967295u, 50361u)) << (vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14231u, 9u)], 9u)], 9u)], global0[_wgslsmith_index_u32(0u, 9u)], 26551u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(889u, 4294967295u, 223u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51559u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)]) ^ vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9352u, 9u)], 9u)], global0[_wgslsmith_index_u32(5503u, 9u)], 39271u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]), vec4<u32>(2888u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], global0[_wgslsmith_index_u32(37199u, 9u)], 20652u)))));
    global1 = ~(~(~global0[_wgslsmith_index_u32(abs(var_1.x) | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, 0u, 1u, global0[_wgslsmith_index_u32(4294967295u, 9u)])), 9u)], 9u)]));
    return global2[_wgslsmith_index_u32(4294967295u, 19u)];
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = 14658u;
    let var_1 = ~0u;
    let var_2 = arg_3;
    var var_3 = _wgslsmith_f_op_f32(round(186f));
    let var_4 = var_1;
    return _wgslsmith_f_op_f32(floor(arg_3.d.x));
}

fn func_6(arg_0: vec2<bool>, arg_1: u32, arg_2: f32) -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(~82063u, 9u)];
    global1 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(firstLeadingBit(4294967295u), _wgslsmith_add_u32(arg_1, _wgslsmith_mod_u32(abs(72172u), _wgslsmith_mult_u32(arg_1, global0[_wgslsmith_index_u32(1u, 9u)])))), ~arg_1);
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(271f + arg_2), _wgslsmith_f_op_f32(-202f + arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -671f) + vec2<f32>(arg_2, arg_2)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-275f, -1439f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1161f, arg_2))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(abs(arg_2)))), var_0.x, -1085f, -1065f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-162f, arg_2, func_2().d.x, _wgslsmith_f_op_f32(sign(var_0.x)))));
    var var_2 = arg_2;
    return global2[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(min(57981u, ~(~30045u) & arg_1), 9u)], ~(~_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(arg_1, 9u)], global0[_wgslsmith_index_u32(88495u | arg_1, 9u)]))), 19u)];
}

fn func_1() -> u32 {
    var var_0 = func_6(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(!all(vec2<bool>(false, false)), false), vec2<bool>(true, true)), 44228u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2186i, u_input.a, -2147483647i, -1i), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)), -2147483647i, -4550i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1534f, -1469f, 2473f, -587f)) - vec4<f32>(1713f, -1199f, -1000f, 1000f)), func_2(), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(1u, 9u)]) << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(23237u, 9u)], 9u)], 9u)] % 32u), 9u)], 19u)]))));
    let var_1 = ~vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)], 10578u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]), ~vec3<u32>(global0[_wgslsmith_index_u32(16103u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 9u)], 9u)], global0[_wgslsmith_index_u32(5592u, 9u)]))), 4294967295u);
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1624f, -2779f, 698f, _wgslsmith_f_op_f32(-963f * var_0.d.x)))))));
    global1 = 4294967295u;
    return select(~(~var_1.x), var_1.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 9>();
    global1 = abs(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~func_1(), 9u)], 9u)], ~global0[_wgslsmith_index_u32(~29634u, 9u)]));
    let var_0 = u_input.a;
    global1 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~(~_wgslsmith_div_u32(4706u, 4294967295u))) | global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(~1u), global0[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)]) << ((1u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17200u, 9u)], 9u)]) % 32u)), 9u)], 50511u), 9u)], 9u)], 9u)], 9u)];
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20085u, 9u)], 9u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(func_1(), 9u)], global0[_wgslsmith_index_u32(39980u, 9u)])), 19u)];
    var var_2 = abs(global0[_wgslsmith_index_u32(28695u, 9u)]);
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a.x, ~(~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 58183u)) | _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 9u)], 4294967295u, global0[_wgslsmith_index_u32(18925u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50315u, 9u)], 9u)], 9u)]), ~vec4<u32>(42670u, global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(53874u, 9u)], 65427u))), _wgslsmith_f_op_f32(ceil(var_1.a.x)), 1u);
}

