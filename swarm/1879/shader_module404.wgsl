struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> f32 {
    let var_0 = arg_0.c.a.a.zy;
    var var_1 = 1062f;
    let var_2 = arg_0.c.a;
    var var_3 = false;
    var var_4 = Struct_1(!arg_0.c.a.a);
    return -112f;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: f32) -> bool {
    var var_0 = u_input.e.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-821f, arg_2, 693f) * vec3<f32>(arg_2, -885f, 524f))) - vec3<f32>(1f, _wgslsmith_f_op_f32(arg_2 - arg_2), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(vec4<bool>(true, true, true, false)), -2147483647i, Struct_2(Struct_1(vec4<bool>(true, false, false, true)), vec2<f32>(arg_2, arg_2)), vec3<u32>(arg_1.x, 0u, 90577u)), arg_2)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(arg_2, -803f)), _wgslsmith_f_op_f32(f32(-1f) * -109f), _wgslsmith_f_op_f32(f32(-1f) * -585f)))))));
    let var_2 = 393f;
    let var_3 = u_input.d.x < ~(~1u);
    var_0 = -34895i;
    return !(!all(!vec2<bool>(var_3, true)));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: i32) -> u32 {
    let var_0 = Struct_4(Struct_2(Struct_1(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1996f, 292f)), _wgslsmith_f_op_f32(1000f * -1777f), func_2(u_input.d.x, arg_0, 617f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1404f))))), u_input.a, Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), arg_0.x <= 1u), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), true))));
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(abs(~1u), 27054u, 4294967295u), ~(~vec3<u32>(1u, 0u, u_input.c) >> (~vec3<u32>(4294967295u, 12201u, 1u) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, func_1(vec3<u32>(0u, 4511u, u_input.c), -1i, 19802i), u_input.c), ~(~vec3<u32>(4294967295u, u_input.c, u_input.d.x))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(728f, -249f, 540f, -2976f)))))), u_input.e.x);
}

