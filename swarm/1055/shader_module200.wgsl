struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8>;

var<private> global1: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-1000f, -156f), vec2<f32>(-1758f, 2211f), vec2<f32>(-215f, -839f), vec2<f32>(-928f, 1109f), vec2<f32>(1213f, -1000f), vec2<f32>(-2505f, 1057f), vec2<f32>(457f, 144f), vec2<f32>(1000f, 1782f), vec2<f32>(-498f, -1230f), vec2<f32>(642f, 1428f), vec2<f32>(626f, 1224f), vec2<f32>(-231f, -1911f), vec2<f32>(109f, -214f), vec2<f32>(-1433f, -471f));

var<private> global2: Struct_2;

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global4: u32 = 0u;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = global2.a.b;
    var var_1 = _wgslsmith_sub_i32(13333i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, -26125i, u_input.e.x, 1i), vec4<i32>(u_input.e.x, -91625i, -70147i, u_input.e.x)), firstTrailingBit(vec4<i32>(1i, u_input.d, u_input.e.x, u_input.e.x))), vec4<i32>(u_input.d, u_input.e.x >> (u_input.b % 32u), ~12i, _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(u_input.e.x, 36409i, -38804i)))), u_input.d, 1i));
    global1 = array<vec2<f32>, 14>();
    var_0 = all(global3.xx);
    var_0 = global2.a.b | !select(0i > (48969i & u_input.d), any(global3.xx), true == global2.a.b);
    return global2.a.a.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2, arg_3: vec2<i32>) -> u32 {
    let var_0 = Struct_4(1u);
    let var_1 = vec4<f32>(1577f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-455f + _wgslsmith_div_f32(global2.a.c.x, 651f)) - _wgslsmith_f_op_f32(func_3())))), 1159f, arg_1);
    global3 = vec4<bool>(false, global2.a.b, (~_wgslsmith_mod_i32(36049i, u_input.e.x) ^ _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.d, arg_3.x, u_input.e.x, 2147483647i)), vec4<i32>(arg_3.x, -1i, u_input.d, arg_3.x) ^ vec4<i32>(arg_3.x, arg_3.x, u_input.d, arg_3.x))) < u_input.e.x, !(!all(vec2<bool>(false, global3.x))));
    global2 = Struct_2(global2.a);
    global1 = array<vec2<f32>, 14>();
    return _wgslsmith_div_u32(67829u, ~_wgslsmith_dot_vec3_u32(u_input.c.www, abs(arg_0)) ^ 4294967295u);
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> bool {
    global4 = _wgslsmith_mult_u32(max(abs(~(~16541u)), global2.a.d), _wgslsmith_add_u32(19681u, 0u));
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(global2.a.c));
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(arg_2.a);
    global0 = array<vec3<bool>, 8>();
    var var_1 = arg_2;
    var_1 = Struct_2(arg_2.a);
    let var_2 = false;
    return var_0.a;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>) -> f32 {
    global2 = Struct_2(func_5(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-312f, global2.a.e, 1062f, 164f) * _wgslsmith_div_vec4_f32(vec4<f32>(227f, -112f, 244f, 424f), vec4<f32>(global2.a.e, global2.a.c.x, 524f, 405f))), func_4(func_2(u_input.c.xyx, -1000f, Struct_2(Struct_1(global2.a.c, true, global2.a.c, 4294967295u, -1341f)), u_input.e.xx), vec2<i32>(u_input.d, u_input.e.x)), global2.a.a, u_input.b, 525f), arg_1, Struct_2(Struct_1(global2.a.a, true, global2.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 61595u, global2.a.d), u_input.c.zwz), _wgslsmith_div_f32(-373f, global2.a.c.x)))));
    global4 = 1u;
    global1 = array<vec2<f32>, 14>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-483f, global2.a.e, global2.a.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global2.a.c.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a.e)))), -u_input.e.x <= -28380i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a.a.xxw))));
    var var_1 = -u_input.e;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(695f, 1000f), 809f, true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a.x) * 657f))), -1197f));
    var var_3 = global2.a.a.xzw;
    var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(func_1(Struct_4(u_input.c.x), vec2<i32>(u_input.e.x, u_input.e.x)))))), var_3.x, _wgslsmith_f_op_f32(-1476f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))))));
    let var_4 = vec2<u32>(7923u, 60119u);
    var var_5 = u_input.e;
    global0 = array<vec3<bool>, 8>();
    global3 = !select(select(select(!vec4<bool>(true, true, global3.x, false), vec4<bool>(true, true, false, true), !vec4<bool>(global3.x, false, false, true)), !vec4<bool>(true, true, global3.x, global2.a.b), select(select(vec4<bool>(global3.x, global3.x, global3.x, true), vec4<bool>(global2.a.b, true, global3.x, global2.a.b), vec4<bool>(global3.x, global2.a.b, true, global2.a.b)), !vec4<bool>(global2.a.b, global3.x, false, global3.x), select(vec4<bool>(false, global3.x, global3.x, global2.a.b), vec4<bool>(false, true, false, global3.x), vec4<bool>(global2.a.b, true, false, false)))), !select(select(vec4<bool>(global2.a.b, false, global3.x, false), vec4<bool>(global3.x, false, true, global3.x), false), select(vec4<bool>(global2.a.b, global3.x, global3.x, global3.x), vec4<bool>(true, global3.x, true, true), true), all(vec4<bool>(true, global3.x, true, global2.a.b))), !(!(!vec4<bool>(true, global2.a.b, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-1142f, countOneBits(~(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.d, var_1.x, var_1.x))), u_input.c.wyy, _wgslsmith_sub_u32(4294967295u, 99572u));
}

