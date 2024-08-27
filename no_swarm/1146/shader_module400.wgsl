struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(16534u, 19384i, false, vec2<bool>(false, true));

var<private> global1: vec2<i32> = vec2<i32>(34715i, 1i);

var<private> global2: array<i32, 30> = array<i32, 30>(43535i, 21571i, -13891i, 2147483647i, 1i, -21060i, 2147483647i, -17327i, -51068i, -83997i, -1i, -18715i, -21653i, -1971i, i32(-2147483648), 0i, -39425i, -13132i, i32(-2147483648), -49623i, 3990i, -14441i, 35422i, -14655i, 0i, -48548i, 22332i, 2147483647i, -1i, 71714i);

var<private> global3: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = Struct_1(vec2<bool>(global0.c, !any(select(vec2<bool>(global0.d.x, global0.c), global0.d, vec2<bool>(false, false)))), _wgslsmith_f_op_f32(1161f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(344f, -2590f)) - _wgslsmith_f_op_f32(sign(760f))) + _wgslsmith_f_op_f32(step(179f, _wgslsmith_f_op_f32(floor(-917f)))))));
    let var_1 = vec4<bool>(!var_0.a.x, any(global0.d), any(select(select(vec4<bool>(false, global0.d.x, global0.c, var_0.a.x), vec4<bool>(false, false, false, var_0.a.x), var_0.a.x), select(vec4<bool>(true, true, global0.d.x, global0.d.x), vec4<bool>(false, global0.c, global0.d.x, true), var_0.a.x), all(global3[_wgslsmith_index_u32(global0.a, 30u)]))) & (global0.a < max(~arg_0, 4294967295u)), var_0.a.x);
    var var_2 = Struct_2(Struct_1(vec2<bool>(any(var_1), !any(var_1.xzx)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(306f + var_0.b), 470f)), !global3[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(-473f, 2087f)), _wgslsmith_div_f32(-824f, 1430f), var_0.b, _wgslsmith_div_f32(var_0.b, var_0.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b, var_0.b, 265f, var_0.b))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b, 180f, var_0.b, var_0.b))))))));
    global3 = array<vec3<bool>, 30>();
    let var_3 = Struct_2(Struct_1(select(var_1.wy, vec2<bool>(true, !var_2.a.a.x), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x - var_0.b))))), !select(!(!var_2.b), var_2.b, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-275f, -866f, -426f, -1000f)))))));
    return true;
}

fn func_2() -> f32 {
    global0 = Struct_3(1u, countOneBits(max(-_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(63159u, 30u)], global0.b), countOneBits(1i))), select(global0.c, !global0.c, global0.d.x), !global0.d);
    let var_0 = Struct_2(Struct_1(!global0.d, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(848f)))), vec3<bool>(false, (25136i < global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.a, 21088u), 30u)]) | func_3(_wgslsmith_mod_u32(1u, 1u)), global0.d.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -435f), _wgslsmith_div_f32(381f, 229f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-438f, -282f)) + _wgslsmith_f_op_f32(round(-243f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + 458f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1408f, 1178f)))))));
    global3 = array<vec3<bool>, 30>();
    global3 = array<vec3<bool>, 30>();
    return var_0.c.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec4<i32>) -> vec2<f32> {
    global3 = array<vec3<bool>, 30>();
    var var_0 = select(select(arg_1, arg_1, arg_1.x || !(!global0.c)), vec4<bool>(true, all(select(!global3[_wgslsmith_index_u32(4294967295u, 30u)], select(arg_1.yzx, vec3<bool>(arg_1.x, arg_1.x, true), global0.d.x), vec3<bool>(true, true, true))), !(_wgslsmith_div_u32(global0.a, global0.a) <= firstLeadingBit(u_input.a.x)), any(select(!arg_1, !arg_1, select(arg_1, arg_1, true)))), select(!(!(!arg_1)), vec4<bool>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(10839u, 19956u, u_input.a.x)) == global0.a, !arg_1.x, arg_1.x, true), 0u >= u_input.a.x));
    let var_1 = true;
    var var_2 = 1u;
    global3 = array<vec3<bool>, 30>();
    return vec2<f32>(_wgslsmith_f_op_f32(ceil(191f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1620f - -788f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1439f + 623f) + _wgslsmith_f_op_f32(-1446f + 154f)))));
}

fn func_1() -> Struct_1 {
    global2 = array<i32, 30>();
    global1 = -_wgslsmith_div_vec2_i32(-select(~vec2<i32>(global0.b, 4694i), min(vec2<i32>(507i, 25575i), vec2<i32>(1i, global1.x)), true), -vec2<i32>(-1i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(42920u, 30u)])));
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x) ^ ~u_input.a.x, 4294967295u), 26154u, ~_wgslsmith_sub_u32(46506u, 28590u)), select(vec4<bool>(global0.d.x, global0.d.x, true, global0.c), vec4<bool>(all(select(global3[_wgslsmith_index_u32(global0.a, 30u)], vec3<bool>(global0.c, true, global0.d.x), global3[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_f_op_f32(f32(-1f) * -854f) < _wgslsmith_f_op_f32(func_2()), !all(vec4<bool>(global0.c, true, true, global0.d.x)), global0.d.x), !global0.c), ~abs(~vec4<i32>(-1i, -2147483647i, global2[_wgslsmith_index_u32(global0.a, 30u)], -34643i))));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 412f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(230f, var_0.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, -2888f))), true)), !global0.d))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(297f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.x, 893f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, -1865f))) * vec2<f32>(1000f, 939f)) + _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(46200u, 8889u, u_input.a.x), vec3<u32>(global0.a, global0.a, 1u)), !vec4<bool>(true, global0.c, global0.c, false), vec4<i32>(global1.x, global1.x, 2147483647i, 2147483647i) & vec4<i32>(global1.x, -15673i, -10053i, global0.b))))));
    return Struct_1(select(!global0.d, !select(global0.d, vec2<bool>(true, false), global0.d.x), vec2<bool>(_wgslsmith_f_op_f32(-var_1.x) >= _wgslsmith_div_f32(1000f, var_1.x), global0.d.x || global0.d.x)), _wgslsmith_f_op_f32(-var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(805f, -358f, true)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1952f), 2471f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -137f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(219f - -1000f), _wgslsmith_f_op_f32(1255f - 937f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1011f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -561f) + -1136f))) + -1508f));
    let var_1 = func_1();
    global2 = array<i32, 30>();
    let var_2 = var_1;
    var var_3 = vec2<i32>(2147483647i, _wgslsmith_div_i32(42925i | ~global1.x, 0i)) & countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global1.x) ^ vec2<i32>(1i, 1i), abs(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], global1.x))));
    var_3 = _wgslsmith_div_vec2_i32(select(~(~(~vec2<i32>(21345i, global2[_wgslsmith_index_u32(0u, 30u)]))), vec2<i32>(-1i) * -countOneBits(vec2<i32>(global1.x, 37338i)), firstLeadingBit(4294967295u) > (~u_input.a.x ^ firstLeadingBit(1u))), firstTrailingBit(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.x, var_3.x), vec2<i32>(global0.b, 2147483647i), vec2<i32>(global0.b, var_3.x))));
    var_3 = vec2<i32>(i32(-1i) * -min(-global1.x, _wgslsmith_mod_i32(global0.b, var_3.x)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(global2[_wgslsmith_index_u32(global0.a, 30u)]), 1i, ~global1.x, 1i >> (global0.a % 32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-15943i, 13055i)), -9011i, global2[_wgslsmith_index_u32(u_input.a.x, 30u)], 1i))));
    var var_4 = !var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~max(17511u, 1u >> (_wgslsmith_sub_u32(global0.a, 1u) % 32u)));
}

