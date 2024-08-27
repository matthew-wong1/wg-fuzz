struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> vec4<bool> {
    var var_0 = arg_2;
    var_0 = all(select(select(select(arg_0.a.b, arg_0.a.b, arg_0.a.b.x), !arg_0.a.b, arg_0.a.b.x), select(!vec2<bool>(arg_2, true), !vec2<bool>(false, arg_2), arg_0.a.b), select(select(arg_0.a.b, arg_0.a.b, select(vec2<bool>(true, arg_2), arg_0.a.b, arg_0.a.b)), !(!vec2<bool>(arg_2, arg_2)), true)));
    global0 = array<Struct_3, 29>();
    let var_1 = !(!any(vec3<bool>(arg_0.a.b.x, arg_2, false)));
    return !select(vec4<bool>(true, arg_0.a.d.x < arg_0.a.e, true, false), !(!select(vec4<bool>(false, arg_0.a.b.x, false, false), vec4<bool>(false, var_1, true, arg_0.a.b.x), true)), vec4<bool>(all(!vec3<bool>(false, true, arg_2)), !var_1, false, true));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>) -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(arg_0.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-424f, arg_0.x)), !arg_1.wx)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-981f, -927f))), arg_1.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1079f, arg_0.x) - vec2<f32>(1000f, arg_0.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + vec2<f32>(1084f, arg_0.x))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-218f, -435f)))), arg_0.zx, false)));
    let var_2 = _wgslsmith_f_op_f32(-var_0.a.x);
    var var_3 = 1627f;
    let var_4 = _wgslsmith_f_op_f32(-var_2);
    return arg_1;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    global0 = array<Struct_3, 29>();
    let var_0 = !select(!(!(!vec4<bool>(false, arg_0.x, false, arg_0.x))), func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1475f, -225f, -1084f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1120f, -1485f, -1682f) + vec3<f32>(1028f, 561f, 532f)))), func_3(Struct_3(Struct_1(u_input.a, vec2<bool>(arg_0.x, arg_0.x), vec4<f32>(979f, 165f, 1000f, 1117f), vec3<i32>(1i, -2147483647i, -1i), 3447i)), Struct_2(vec2<f32>(326f, -796f)), true)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1162f, 1947f, -257f) * vec3<f32>(1264f, -1192f, 384f))), !func_3(Struct_3(Struct_1(-14938i, vec2<bool>(false, arg_0.x), vec4<f32>(1545f, 737f, 1000f, 688f), vec3<i32>(6197i, u_input.a, u_input.b.x), u_input.b.x)), Struct_2(vec2<f32>(-1637f, 112f)), false)));
    var var_1 = ~48845i;
    global0 = array<Struct_3, 29>();
    let var_2 = var_0.ww;
    return -511f;
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(22541u, _wgslsmith_mod_u32(~55350u, ~42348u) ^ _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(6934u, 4294967295u)), ~vec2<u32>(18172u, 0u))), select(~_wgslsmith_mod_vec2_u32(max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(33633u, 4294967295u), vec2<u32>(15250u, 0u))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(51595u, 1u))), !vec2<bool>(arg_0, arg_0 & arg_0)));
    global0 = array<Struct_3, 29>();
    let var_1 = _wgslsmith_div_f32(532f, _wgslsmith_f_op_f32(1564f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true)))) * 321f)));
    global0 = array<Struct_3, 29>();
    return all(!vec4<bool>(arg_0, arg_0 & func_4(vec3<f32>(-1766f, var_1, 1715f), vec4<bool>(arg_0, false, arg_0, true)).x, true, _wgslsmith_f_op_f32(-var_1) != _wgslsmith_f_op_f32(var_1 + var_1)));
}

fn func_5(arg_0: f32) -> Struct_1 {
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1569f, arg_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f + arg_0)), -354f)));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec2_f32(max(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a - var_0.a))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -1841f) + _wgslsmith_f_op_f32(min(-1889f, arg_0))), _wgslsmith_f_op_f32(-arg_0)))));
    return Struct_1(1357i, func_3(Struct_3(Struct_1(u_input.a, vec2<bool>(false, false), vec4<f32>(var_2.x, var_0.a.x, arg_0, 148f), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.b.x), vec3<i32>(1i, u_input.b.x, u_input.b.x)), -3405i)), Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(158f, 419f))))), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(-2274f, var_2.x)) == var_2.x).yx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, var_0.a.x, arg_0, -198f), vec4<f32>(1364f, 1193f, var_2.x, var_0.a.x), false)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_2.x)), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(447f, var_0.a.x)))), 329f)), vec3<i32>(~u_input.b.x, u_input.b.x, u_input.a), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-777f)) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(140f, -208f), _wgslsmith_f_op_f32(ceil(1085f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(138f * 971f)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), func_1(true))))));
    global0 = array<Struct_3, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(~func_5(var_0.c.x).e), 1i, -(~2147483647i)), -2147483647i, ~vec4<i32>(u_input.a, 22139i, firstLeadingBit(max(39657i, 2147483647i)), 8265i));
}

