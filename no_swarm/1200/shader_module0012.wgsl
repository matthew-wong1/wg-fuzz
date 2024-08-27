struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c, global0.x))), -1206f))));
    var var_1 = Struct_4(864f, true);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-196f - var_1.a)), var_0.x))) * _wgslsmith_f_op_f32(select(var_0.x, var_1.a, arg_1)));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0.c)))))), all(vec4<bool>(true, arg_0.a.a, var_1.b, !var_1.b)));
    let var_4 = arg_1;
    return arg_0.b.xw;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global1 = true;
    let var_0 = Struct_2(~(~func_3(Struct_3(arg_0, vec4<u32>(arg_0.b, arg_0.b, 1u, 0u), 737f), arg_0.a, u_input.a.x) >> (~(~vec2<u32>(0u, arg_0.b)) % vec2<u32>(32u))));
    var var_1 = any(select(select(select(vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), vec4<bool>(false, true, arg_0.a, arg_0.a), select(vec4<bool>(true, false, false, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, false, true), vec4<bool>(arg_0.a, arg_0.a, true, true))), !select(vec4<bool>(true, true, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, false, arg_0.a, true), true), vec4<bool>(arg_0.a, true, arg_0.a, true)), !select(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), !vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), vec4<bool>(arg_0.a, true, false, true)), vec4<bool>(false, arg_0.a, true, global0.x < 286f)));
    let var_2 = -1000f;
    let var_3 = max(_wgslsmith_dot_vec2_u32(var_0.a | firstLeadingBit(abs(vec2<u32>(4294967295u, arg_0.b))), var_0.a), var_0.a.x);
    return _wgslsmith_div_i32(~8993i, _wgslsmith_mod_i32(arg_0.c, -19623i));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    var var_0 = 1u;
    var var_1 = Struct_3(Struct_1(2147483647i < func_2(Struct_1(arg_3.x, arg_0.a.x, u_input.a.x)), arg_0.a.x, abs(1i)), _wgslsmith_mult_vec4_u32(~(~(vec4<u32>(arg_0.a.x, 43597u, arg_0.a.x, 1u) ^ vec4<u32>(arg_0.a.x, 99579u, arg_0.a.x, 60188u))), ~vec4<u32>(arg_0.a.x, countOneBits(31356u), min(72246u, arg_0.a.x), 6121u)), _wgslsmith_f_op_f32(max(-955f, -1000f)));
    global1 = all(!vec4<bool>(true, true, !(var_1.a.a && arg_3.x), false));
    var_0 = var_1.b.x | ~1u;
    let var_2 = 22871i;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_1(Struct_2(vec2<u32>(0u, 0u)), Struct_4(global0.x, true), global0.x, vec2<bool>(false, true)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-815f))))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -2014f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-global0.x));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(532f, 2004f)))));
    global1 = false;
    global0 = vec4<f32>(var_0, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<u32>(0u, 4294967295u)), Struct_4(-2340f, false), 2001f, vec2<bool>(true, false))) * _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(763f * _wgslsmith_f_op_f32(-1082f * var_0)), _wgslsmith_f_op_f32(f32(-1f) * -324f)))));
    let var_1 = ~u_input.a.x;
    let var_2 = Struct_2(abs(~vec2<u32>(1u, 1u)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(373f, global0.x, var_0, 1f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1405f, var_0, -1843f, var_0) + vec4<f32>(global0.x, 250f, 392f, global0.x))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0), 1000f, _wgslsmith_f_op_f32(-112f + 1000f), 636f)));
    let var_3 = !(!all(vec2<bool>(true, true)));
    global1 = all(select(!(!select(vec3<bool>(var_3, true, true), vec3<bool>(var_3, true, false), false)), select(vec3<bool>(true, var_3, !var_3), !select(vec3<bool>(true, false, var_3), vec3<bool>(var_3, var_3, var_3), false), select(vec3<bool>(var_3, var_3, var_3), !vec3<bool>(false, false, var_3), select(true, false, var_3))), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(max(311f, global0.x)))), -1187f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1292f - -1316f) + _wgslsmith_f_op_f32(var_0 * var_0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1282f - var_0) * -1167f))), -2147483647i, global0.x);
}

