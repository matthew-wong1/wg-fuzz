struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    var var_0 = 28959u;
    return 1i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-1165f * -518f);
    var var_1 = arg_0;
    var_1 = arg_2;
    var var_2 = ~vec2<u32>(0u, abs(~85310u)) & vec2<u32>(1u, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1.a.x, arg_1.a.x), ~21567u), countOneBits(~26872u)));
    var var_3 = Struct_1(max(vec2<u32>(var_1.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.a.x, u_input.a.x), u_input.a)), u_input.a.xy), arg_1.b, vec4<bool>(true, true, _wgslsmith_f_op_f32(var_0 - -2021f) < -348f, any(vec3<bool>(false, false, var_1.c.x)) && !all(var_1.c)), true, arg_0.b.x && ((-154f >= _wgslsmith_div_f32(var_0, 1000f)) && arg_2.d));
    return ~(~(~var_3.a.x)) << (var_3.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(max(min(u_input.b, u_input.b) ^ ~vec4<i32>(u_input.b.x, 20090i, -19874i, u_input.b.x), u_input.b), u_input.b), vec4<i32>(min(abs(func_1(vec4<f32>(599f, -1449f, 415f, 227f))), ~1i), ~(~_wgslsmith_mod_i32(-7850i, u_input.b.x)), u_input.b.x, (_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) >> (_wgslsmith_mult_u32(1u, u_input.a.x) % 32u)) & u_input.b.x));
    var var_1 = u_input.b.zy;
    let var_2 = false;
    var var_3 = vec2<f32>(-184f, 377f);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec3<u32>(1u, 46153u, u_input.a.x) ^ select(abs(u_input.a), u_input.a, !vec3<bool>(var_2, false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-416f, 1000f, -360f, 1686f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_3.x, -321f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<f32>(var_3.x, var_3.x, var_3.x, 657f)))))), vec4<u32>(~_wgslsmith_clamp_u32(countOneBits(u_input.a.x), 17125u, func_2(Struct_1(u_input.a.xx, vec3<bool>(true, false, var_2), vec4<bool>(true, var_2, var_2, true), var_2, var_2), Struct_1(u_input.a.yy, vec3<bool>(false, false, var_2), vec4<bool>(var_2, false, true, var_2), true, var_2), Struct_1(vec2<u32>(1u, 1u), vec3<bool>(true, true, var_2), vec4<bool>(true, var_2, false, var_2), false, true), var_1.x)), min(countOneBits(6258u), firstTrailingBit(~u_input.a.x)), ~(~0u), ~(~(u_input.a.x & 22163u))));
}

