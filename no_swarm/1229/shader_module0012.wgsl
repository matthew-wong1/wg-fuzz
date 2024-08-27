struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(45204u, 26650u, 4294967295u);

var<private> global1: array<vec3<i32>, 29>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    global1 = array<vec3<i32>, 29>();
    global1 = array<vec3<i32>, 29>();
    global0 = array<u32, 3>();
    let var_0 = Struct_4(select(true, select(true, true, false), !(_wgslsmith_f_op_f32(-arg_0.a.x) == _wgslsmith_f_op_f32(2121f - arg_0.a.x))));
    global0 = array<u32, 3>();
    return arg_0.a.x;
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_4(select(true, true, !(-534f > _wgslsmith_f_op_f32(func_2(Struct_2(vec2<f32>(949f, 783f)), vec4<i32>(u_input.d, 18590i, u_input.c, u_input.d))))));
    global0 = array<u32, 3>();
    global1 = array<vec3<i32>, 29>();
    global0 = array<u32, 3>();
    let var_1 = Struct_3(firstLeadingBit(~(~(u_input.b.xxx >> (vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u))))));
    return var_1;
}

fn func_3(arg_0: Struct_1) -> bool {
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 29>();
    var var_0 = func_1();
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(abs(abs(~u_input.b.x)), 3u)], ~(~0u), ~(~select(1u, 0u, true))), vec3<u32>(_wgslsmith_clamp_u32(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(24841u, 3u)]), abs(~1u), var_0.a.x));
    let var_2 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, func_3(Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, var_0.a.x), false, vec2<f32>(1000f, -1780f)))), func_3(Struct_1(vec4<bool>(false, false, true, true), var_0.a.xz, false, vec2<f32>(763f, 1144f)))));
    var var_3 = Struct_4(var_2);
    var var_4 = !vec4<bool>(var_3.a, !var_3.a, true, true);
    var var_5 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-300f + 667f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(243f, -2054f), vec2<f32>(261f, -1000f), true)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(208f, -651f))))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(123f + -956f), 1018f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1775f - 1948f) * _wgslsmith_f_op_f32(591f - 746f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-561f, -1000f), vec2<f32>(-534f, -129f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1448f, -265f) + vec2<f32>(690f, 552f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-968f, -146f), vec2<f32>(-208f, 958f), var_4.xw)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1976f, 408f), vec2<f32>(114f, -1743f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1118f, -183f), vec2<f32>(-604f, 634f)))), select(!vec2<bool>(var_4.x, var_2), select(vec2<bool>(var_2, var_3.a), select(vec2<bool>(true, true), var_4.yw, var_4.yw), vec2<bool>(var_3.a, var_4.x)), select(vec2<bool>(true, true), vec2<bool>(var_4.x, var_2), var_3.a))))));
    global0 = array<u32, 3>();
    let var_6 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_5.x)) * _wgslsmith_f_op_f32(1201f + _wgslsmith_f_op_f32(-var_5.x))), var_5.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(872f + -1200f), -292f))));
}

