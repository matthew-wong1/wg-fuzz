struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec2<bool> {
    let var_0 = Struct_1(vec2<bool>(select(!(arg_1.x < arg_1.x), arg_0.a.x, all(!arg_0.a)), !arg_0.a.x), vec2<u32>(1u, 1u));
    var var_1 = !(!(!select(select(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, false, arg_0.a.x), false), vec3<bool>(var_0.a.x, true, true), !vec3<bool>(false, true, var_0.a.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-122f, -539f), -1001f, 1f, -210f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(593f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(140f, 1097f, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -179f), var_1.x | arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -412f)), -171f)))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-950f, _wgslsmith_f_op_f32(f32(-1f) * -677f), _wgslsmith_f_op_f32(floor(681f)), var_2.x)))));
    var var_3 = arg_0;
    return select(!select(!var_3.a, vec2<bool>(!arg_0.a.x, select(var_0.a.x, arg_0.a.x, false)), var_3.a), select(select(arg_0.a, arg_0.a, true), select(!select(vec2<bool>(var_3.a.x, false), vec2<bool>(arg_0.a.x, true), var_0.a.x), !(!var_0.a), !select(vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(var_1.x, false), true)), arg_0.a.x), var_3.a);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(select(select(vec2<bool>(true, true), func_3(Struct_1(vec2<bool>(true, true), u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u))), vec2<bool>(select(true, false, true), false)), vec2<bool>(u_input.c > -19407i, !all(vec3<bool>(true, true, true))), all(vec2<bool>(true, true))), vec2<u32>(8227u, _wgslsmith_sub_u32(u_input.a, 66590u)));
    let var_1 = (((vec2<u32>(26225u, u_input.a) ^ u_input.b) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(96808u, u_input.a), abs(vec2<u32>(7835u, 0u))) % vec2<u32>(32u))) >> (firstTrailingBit(~var_0.b) % vec2<u32>(32u))) ^ vec2<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_mult_vec2_u32(vec2<u32>(1966u, var_0.b.x), _wgslsmith_mult_vec2_u32(u_input.b, u_input.b))));
    let var_2 = var_0;
    var var_3 = var_0;
    var_3 = Struct_1(var_3.a, max(var_1, abs(select(u_input.b, var_3.b, var_2.a))));
    return -654f;
}

fn func_1(arg_0: f32, arg_1: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(748f, arg_0), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(f32(-1f) * -1932f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1120f * 1000f), _wgslsmith_f_op_f32(arg_0 + 772f), any(vec4<bool>(arg_1, true, true, arg_1))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - arg_0), arg_0, arg_0, 136f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, 425f, arg_0, arg_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1340f, -321f, 655f, arg_0)))))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1831f))), true);
}

