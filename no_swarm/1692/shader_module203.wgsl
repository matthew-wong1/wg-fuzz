struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15>;

var<private> global1: array<bool, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, _wgslsmith_sub_i32(2147483647i, select(_wgslsmith_mult_i32(24666i, 1i), ~u_input.b, false)), ~(-2147483647i), u_input.a.x), vec4<i32>(-4915i, abs(1i >> (u_input.c % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(5866i, -44632i, -6653i), vec3<i32>(u_input.a.x, -1i, 34359i)), -3724i), _wgslsmith_clamp_vec2_i32(u_input.a, max(vec2<i32>(u_input.b, -69668i), u_input.a), abs(u_input.a))), ~u_input.d));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -970f, 1097f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1000f, 1287f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -2060f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, 136f, arg_0.x))))), vec3<bool>(!global1[_wgslsmith_index_u32(~0u, 15u)], !(-1i < var_0.x), !(!global1[_wgslsmith_index_u32(4294967295u, 15u)])))));
    global1 = array<bool, 15>();
    global1 = array<bool, 15>();
    var var_2 = Struct_1(firstTrailingBit(var_0.x), _wgslsmith_f_op_f32(max(-179f, arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -700f, var_1.x, arg_0.x) + vec4<f32>(var_1.x, 1107f, -203f, 693f))))), _wgslsmith_div_i32(var_0.x, var_0.x) << (1u % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) - 1000f))), _wgslsmith_f_op_f32(step(-576f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 1000f)))));
    return Struct_1(var_0.x, arg_0.x, var_2.c, _wgslsmith_sub_i32(~(i32(-1i) * -var_0.x), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-794f, var_1.x)))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(-2034f)), _wgslsmith_f_op_f32(-1158f + 717f), -1760f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1723f, -498f, 747f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1155f, 1510f, -137f), vec3<f32>(1993f, 499f, -743f), vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 15u)])))))) + vec3<f32>(-1000f, 969f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1133f, 553f) - -1000f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(275f, 327f)), _wgslsmith_f_op_f32(383f - -687f), _wgslsmith_f_op_f32(f32(-1f) * -2729f)) - vec3<f32>(_wgslsmith_f_op_f32(771f * 555f), 674f, _wgslsmith_f_op_f32(-529f * -841f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1522f, 1429f, -1230f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1815f, 304f, -435f))))));
    let var_1 = func_1(vec2<f32>(var_0.x, 826f), vec2<u32>(u_input.c, abs(4294967295u)));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(arg_0, arg_1.x, arg_1.x, arg_1.x) | vec4<i32>(arg_0, 2147483647i, var_1.d, -2147483647i)), vec4<i32>(1i, -46791i, 1i, arg_0)), arg_0, _wgslsmith_add_i32(abs(~firstTrailingBit(-1i)), -max(_wgslsmith_add_i32(-42353i, 2147483647i), -u_input.b)), ~(~1i >> (_wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(u_input.c, 4294967295u, 4294967295u)) % 32u)));
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(1i, func_1(vec2<f32>(757f, var_1.b), ~global0[_wgslsmith_index_u32(u_input.c, 15u)]).a), 26242i), firstTrailingBit(8750i));
    var var_4 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.c.x, 2014f, global1[_wgslsmith_index_u32(u_input.c, 15u)])) + -590f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_1.c), _wgslsmith_f_op_vec4_f32(trunc(var_1.c)))), _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(var_2.ww, var_2.zx), vec2<i32>(arg_0, arg_1.x)), ~var_2.ww), var_0.x);
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.c ^ 1u, 15u)];
    let var_1 = arg_0.d;
    global1 = array<bool, 15>();
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(select(select(vec2<i32>(-1i, 3841i), vec2<i32>(67212i, 5882i), true), reverseBits(u_input.a), true), -(~u_input.a), _wgslsmith_div_vec2_i32(min(u_input.a, vec2<i32>(-1i, arg_2.a)), select(u_input.a, vec2<i32>(arg_2.d, -2147483647i), true))), vec2<i32>(_wgslsmith_div_i32(abs(u_input.b), _wgslsmith_mod_i32(arg_2.d, var_1)), -_wgslsmith_mod_i32(u_input.a.x, -85222i))), _wgslsmith_f_op_f32(abs(-833f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.e, 123f, 1000f, 2092f), arg_0.c) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c.x, -433f, arg_2.c.x, arg_2.c.x), vec4<f32>(arg_3.x, arg_1, arg_1, arg_1)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, arg_1, arg_1) + _wgslsmith_f_op_vec4_f32(abs(arg_0.c))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(arg_0.c, vec4<f32>(694f, -1137f, arg_1, arg_0.b)))))), -26290i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) + _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_i32(~arg_2.d, 14071i, u_input.d), vec3<i32>(~arg_2.a, 2147483647i, ~40836i), 1i ^ var_1))));
    let var_3 = arg_2;
    return !select(vec4<bool>(false, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 15u)], true, false), false)), true || all(vec2<bool>(global1[_wgslsmith_index_u32(48605u, 15u)], true)), true), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(61750u, u_input.c), 15u)], arg_0.d > arg_0.d, all(vec2<bool>(true, global1[_wgslsmith_index_u32(25519u, 15u)]))), (global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 22132u), 15u)] || all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(u_input.c, 15u)]))) | true);
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = array<vec2<u32>, 15>();
    global1 = array<bool, 15>();
    let var_0 = vec3<f32>(arg_0.b, -1483f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b * arg_0.e), arg_0.c.x)));
    let var_1 = select(vec4<bool>(!(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 56344u), vec4<u32>(u_input.c, 28388u, u_input.c, 4294967295u)), 15u)] || select(false, false, global1[_wgslsmith_index_u32(39736u, 15u)])), any(func_4(Struct_1(-1i, 1246f, vec4<f32>(arg_0.b, 102f, -864f, 140f), 1i, -792f), _wgslsmith_f_op_f32(func_3(0i, vec3<i32>(u_input.b, -2147483647i, 2147483647i), -1i)), arg_0, vec2<f32>(var_0.x, 679f))), false, global1[_wgslsmith_index_u32(u_input.c, 15u)]), vec4<bool>(!(!global1[_wgslsmith_index_u32(0u, 15u)] || all(vec4<bool>(true, true, false, false))), !any(vec2<bool>(true, true)), select(false, 4294967295u >= abs(u_input.c), global1[_wgslsmith_index_u32(90u, 15u)]), !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c ^ u_input.c, ~u_input.c), 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(~u_input.c, 15u)], true, _wgslsmith_f_op_f32(-1266f * _wgslsmith_f_op_f32(-var_0.x)) >= 231f, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 10581u), 15u)]));
    global0 = array<vec2<u32>, 15>();
    return min(~(~_wgslsmith_mod_u32(15912u, u_input.c) << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, 92561u), vec4<u32>(263u, 0u, 1u, 4294967295u)), u_input.c, u_input.c) % 32u)), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 15>();
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1390f, 380f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-525f, -1205f)))))))), _wgslsmith_sub_vec2_u32(select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(66822u, u_input.c), 15u)], global0[_wgslsmith_index_u32(select(51720u, 45725u, false), 15u)], any(vec2<bool>(false, global1[_wgslsmith_index_u32(60273u, 15u)]))) | _wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(firstTrailingBit(64897u), 15u)], global0[_wgslsmith_index_u32(51355u, 15u)]), countOneBits(~(vec2<u32>(1u, 42151u) & vec2<u32>(25526u, u_input.c)))));
    let var_1 = -37147i;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b, -175f)) * var_0.e);
    global1 = array<bool, 15>();
    let var_3 = Struct_1((min(countOneBits(2147483647i), _wgslsmith_mod_i32(var_1, var_0.d)) | firstTrailingBit(~(-1i))) | -2566i, -1000f, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.c))), -1i, _wgslsmith_f_op_f32(-var_0.c.x));
    let var_4 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(45310u, u_input.c, 1u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(4070u, u_input.c, 1u, u_input.c), vec4<u32>(u_input.c, 35698u, u_input.c, u_input.c))), vec4<u32>(~u_input.c, 1u, u_input.c, 1u)), abs(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 14440u), vec4<u32>(u_input.c, 0u, 0u, u_input.c)))), ~vec4<u32>(u_input.c, 1u, func_2(var_3), firstLeadingBit(0u)));
    let var_5 = _wgslsmith_mod_vec3_i32(-(~firstTrailingBit(vec3<i32>(12772i, -2147483647i, -14569i))), _wgslsmith_mult_vec3_i32(reverseBits(max(vec3<i32>(u_input.b, var_1, -2147483647i), vec3<i32>(-1i, -2147483647i, -14368i))), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1, -2169i, u_input.b), vec3<i32>(u_input.a.x, -12527i, var_3.d)))) & vec3<i32>(var_0.a, 1i, max(_wgslsmith_sub_i32(var_0.d, var_3.a), var_3.a)));
    var var_6 = var_5.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec4_u32(~(~var_4), var_4, vec4<u32>(u_input.c, max(1u, 69959u), u_input.c, ~var_4.x))), _wgslsmith_f_op_f32(max(var_0.e, var_2)));
}

