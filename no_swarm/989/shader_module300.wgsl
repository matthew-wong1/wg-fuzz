struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = vec2<u32>(~(~u_input.b), 4294967295u);
    var var_1 = select(~arg_0.b, vec2<u32>(u_input.b, 1u), all(!select(vec4<bool>(true, arg_0.d.x, arg_0.c.c.x, arg_0.d.x), select(vec4<bool>(false, arg_0.d.x, true, arg_0.d.x), vec4<bool>(arg_0.d.x, false, true, true), false), !vec4<bool>(arg_0.d.x, arg_0.c.c.x, arg_0.d.x, arg_0.d.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.a.yyz), arg_0.a.yyy));
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(~max(var_1.x, _wgslsmith_add_u32(var_1.x, 39869u)), ~firstTrailingBit(u_input.b)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(53067u, 73197u, 1u), vec3<u32>(4294967295u, 0u, var_1.x))));
    return firstLeadingBit(select(-select(u_input.d >> (vec4<u32>(var_3, var_0.x, arg_0.b.x, 1u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, -2147483647i, -12244i, u_input.c.x), all(vec4<bool>(true, false, true, arg_0.d.x))), -u_input.d, !select(select(vec4<bool>(arg_0.c.c.x, arg_0.c.c.x, true, true), vec4<bool>(arg_0.d.x, arg_0.d.x, false, false), arg_0.c.c.x), !vec4<bool>(arg_0.d.x, true, arg_0.c.c.x, arg_0.d.x), arg_0.c.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), true), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-func_1(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1287f, 881f, -961f, 995f) - vec4<f32>(-221f, 150f, -1065f, -400f)), ~vec2<u32>(u_input.b, 4294967295u), Struct_1(u_input.d.yx, 26195i, vec3<bool>(false, true, true)), vec2<bool>(false, true))), ~max(max(vec3<u32>(6576u, u_input.b, u_input.b), ~vec3<u32>(14184u, u_input.b, u_input.b)), ~vec3<u32>(u_input.b, u_input.b, u_input.b) | _wgslsmith_clamp_vec3_u32(vec3<u32>(21067u, 1u, 4294967295u), vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(0u, 19398u, 0u))), -1214f);
}

