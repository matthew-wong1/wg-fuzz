struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec4<bool>,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    return !all(vec2<bool>(false, true)) || false;
}

fn func_2(arg_0: vec3<u32>) -> vec3<bool> {
    let var_0 = u_input.c.x;
    var var_1 = 2147483647i;
    var_1 = -7642i;
    var var_2 = min(~vec3<u32>(_wgslsmith_div_u32(u_input.c.x, 31846u), _wgslsmith_dot_vec3_u32(u_input.c, max(u_input.c, vec3<u32>(45961u, u_input.c.x, var_0))), arg_0.x), firstTrailingBit(~abs(countOneBits(vec3<u32>(arg_0.x, 1944u, arg_0.x)))));
    let var_3 = arg_0.x;
    return vec3<bool>(!(!(!func_3())), !all(vec2<bool>(true, false)), !any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: i32) -> f32 {
    let var_0 = arg_0.c.x;
    let var_1 = select(arg_0.e.yz, max(firstLeadingBit(vec2<i32>(2147483647i, arg_2)), -(~u_input.a.xz & max(vec2<i32>(0i, arg_1.x), u_input.a.xy))), any(!select(func_2(vec3<u32>(u_input.b, 35306u, u_input.c.x)), !arg_0.c.yxy, arg_0.c.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1567f * arg_0.b.x) + _wgslsmith_f_op_f32(-arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a.x, Struct_1(vec4<u32>(u_input.b, ~(u_input.b << (1u % 32u)), ~(u_input.c.x ^ u_input.c.x), 20285u), vec4<f32>(_wgslsmith_f_op_f32(select(-1147f, _wgslsmith_f_op_f32(round(-986f)), true)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(398f, 1200f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -124f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1446f - 651f))), select(vec3<u32>(u_input.b ^ u_input.b, ~7698u, 4294967295u), u_input.c, select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), true)), u_input.a.x != -u_input.a.x, 1227f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1583f)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(Struct_3(-997f), vec3<f32>(-519f, 286f, 813f), vec4<bool>(false, true, false, true), Struct_2(-21535i, Struct_1(vec4<u32>(u_input.b, 14315u, 0u, u_input.b), vec4<f32>(-332f, -1614f, 592f, 880f), vec3<u32>(u_input.c.x, 4294967295u, u_input.b), true, 818f), -629f), u_input.a), vec4<i32>(-27095i, u_input.a.x, 0i, u_input.a.x), u_input.a.x)))))));
    var var_1 = vec3<i32>(-2147483647i, ~(-reverseBits(2147483647i)), ~min(-var_0.a << (u_input.b % 32u), _wgslsmith_clamp_i32(2147483647i, -2147483647i, u_input.a.x) ^ firstLeadingBit(-1i)));
    var var_2 = (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.b.a.x, 4294967295u, u_input.c.x), var_0.b.a) & ~_wgslsmith_dot_vec4_u32(abs(var_0.b.a), var_0.b.a)) ^ ~19197u;
    var_1 = u_input.a;
    var var_3 = Struct_2(23078i, Struct_1(var_0.b.a, var_0.b.b, var_0.b.c, true, var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f) * var_0.b.b.x) * -1260f));
    var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a, ~1983u | abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, var_3.b.c.x, 1u), ~vec4<u32>(var_0.b.c.x, 4294967295u, 60352u, u_input.c.x))), 0i);
}

