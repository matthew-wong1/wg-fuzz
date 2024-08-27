struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(1u, 11797u), vec2<u32>(0u, 1u), vec2<u32>(18603u, 15220u), vec2<u32>(2589u, 1u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec4<u32>, arg_3: vec4<u32>) -> i32 {
    global0 = array<vec2<u32>, 4>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(408f, -1112f)) <= _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-985f)), _wgslsmith_f_op_f32(f32(-1f) * -315f), any(vec2<bool>(true, arg_0))))), arg_1, arg_2.x);
    global0 = array<vec2<u32>, 4>();
    var var_1 = select(select(select(vec3<bool>(!var_0.a, arg_0, 0u >= var_0.c), vec3<bool>(all(vec4<bool>(false, var_0.a, var_0.a, false)), true, false), select(select(vec3<bool>(true, true, arg_0), vec3<bool>(true, false, arg_0), false), vec3<bool>(true, false, true), !vec3<bool>(arg_0, arg_0, false))), !select(select(vec3<bool>(var_0.a, true, true), vec3<bool>(arg_0, false, true), arg_0), !vec3<bool>(var_0.a, true, true), !arg_0), all(vec2<bool>(arg_0, all(vec2<bool>(false, false))))), !select(!select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, false, var_0.a), true), select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, false, true), !var_0.a), true), !arg_0);
    var var_2 = var_0;
    return -1i;
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(299f, _wgslsmith_f_op_f32(step(2168f, 741f))) * _wgslsmith_f_op_f32(1f + 469f));
    var var_1 = _wgslsmith_mod_i32(func_3(!any(vec3<bool>(false, true, true)), u_input.b, ~select(vec4<u32>(1u, 0u, 36685u, 4294967295u), vec4<u32>(4294967295u, 12846u, 2770u, 4294967295u), true), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 57900u, 4294967295u, 11910u), vec4<u32>(0u, 0u, 17371u, 1u), vec4<u32>(4294967295u, 56851u, 1u, 1u)) | select(vec4<u32>(60711u, 5897u, 47425u, 4294967295u), vec4<u32>(47089u, 1u, 1u, 1u), true)), min(-u_input.a, i32(-1i) * -2147483647i) & ~(-22173i)) >= arg_0.x;
    global0 = array<vec2<u32>, 4>();
    return -844f;
}

fn func_1(arg_0: vec4<u32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1152f - 607f), -1000f, _wgslsmith_f_op_f32(trunc(1330f)), _wgslsmith_f_op_f32(-755f * 1160f)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-122f, -550f) - -485f), _wgslsmith_f_op_f32(f32(-1f) * -546f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.b, 2147483647i, u_input.c.x))) + -865f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1080f * -613f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 4>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 762f, -1467f, -361f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec4<u32>(1u, 1u, 1u, 1u))) + vec4<f32>(383f, _wgslsmith_f_op_f32(abs(-597f)), _wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_f_op_f32(-260f + -667f)))));
    let var_1 = -7921i;
    let var_2 = 140f;
    global0 = array<vec2<u32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(-25115i);
}

