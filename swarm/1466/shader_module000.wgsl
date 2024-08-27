struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<Struct_1, 25>;

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(true, false, false, false), true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    global3 = arg_1;
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1798f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(396f))), 1000f))));
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(abs(countOneBits(1u)), ~1u), 25u)];
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1805f);
    global2 = _wgslsmith_f_op_f32(floor(-1000f));
    return abs(1u);
}

fn func_2(arg_0: bool, arg_1: f32) -> u32 {
    var var_0 = Struct_1(vec4<bool>(true, all(!global3.a.xxx), global3.b | true, (u_input.a | 0i) >= _wgslsmith_clamp_i32(u_input.a, -1i, _wgslsmith_mult_i32(u_input.a, 616i))), !arg_0);
    var var_1 = global1[_wgslsmith_index_u32(func_3(-vec4<i32>(u_input.a, abs(u_input.a | 2147483647i), _wgslsmith_div_i32(20394i, _wgslsmith_div_i32(u_input.a, u_input.a)), -1i), global0[_wgslsmith_index_u32(0u, 25u)], 19934i), 25u)];
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1))))), _wgslsmith_div_f32(1092f, 1403f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_1, -638f))))) + -412f), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(trunc(arg_1))));
    var var_3 = Struct_1(select(var_1.a, global3.a, !select(true, var_1.a.x, true)), true);
    var var_4 = -773f;
    return 0u;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> bool {
    var var_0 = 796f;
    let var_1 = !vec2<bool>(true & any(global3.a.ywx), false);
    global1 = array<Struct_1, 25>();
    var var_2 = -537f;
    var var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~4294967295u, 1u, 1u, ~35084u)), _wgslsmith_mult_u32(func_2(arg_3.a.x, -331f), ~1u) >> (0u % 32u)) >> (~abs(~24594u) % 32u);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 25>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(424f, 396f)))) + 910f));
    var_0 = -1300f;
    let var_1 = abs(4294967295u);
    global3 = Struct_1(vec4<bool>(true, global3.b, true, global3.a.x), _wgslsmith_f_op_f32(abs(1188f)) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-591f, -165f))), -947f, false)));
    var var_2 = Struct_1(!select(select(global3.a, vec4<bool>(true, global3.b, true, true), all(vec2<bool>(false, global3.a.x))), vec4<bool>(true & global3.b, true, true, any(vec3<bool>(true, false, false))), vec4<bool>(!global3.b, true, true, func_1(vec2<i32>(u_input.a, 17754i), global3.a.x, vec2<bool>(global3.b, true), Struct_1(global3.a, true)))), false);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1244f * -1000f), 1435f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -255f))))) - -405f);
    let var_3 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 0i, -1001i), vec3<i32>(u_input.a, u_input.a, -13618i)), vec3<i32>(_wgslsmith_clamp_i32(49300i, 1i, u_input.a), 1i, -36252i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a & u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(1i, u_input.a, -18635i)), 1i), vec3<i32>(1i, 1i, 1i))) & vec3<i32>(i32(-1i) * -(u_input.a ^ -37950i), -select(u_input.a, firstTrailingBit(u_input.a), false), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec3<i32>(-9816i, -17011i, _wgslsmith_div_i32(u_input.a, -9073i)), var_3, vec3<bool>(any(global3.a.wyy), !func_1(vec2<i32>(1i, 26265i), true, vec2<bool>(false, false), global0[_wgslsmith_index_u32(1u, 25u)]), var_2.a.x || all(vec3<bool>(var_2.b, var_2.a.x, true)))), -_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, -2147483647i, -15493i, -51243i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 21919i, -2147483647i, 16554i), vec4<i32>(22828i, u_input.a, -2147483647i, 19447i))), u_input.a, ~(~1i)));
}

