struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> StorageBuffer {
    var var_0 = 0i;
    var_0 = arg_1;
    var var_1 = arg_0;
    var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(select(-1i, 39084i, false), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 1i), var_1.a.xy), -5994i, 39924i) << (~u_input.a % vec4<u32>(32u)), vec4<i32>(0i, countOneBits(_wgslsmith_sub_i32(-2147483647i, var_1.a.x)), (arg_0.a.x << (62736u % 32u)) | arg_1, ~var_1.a.x)), 1i);
    var_1 = arg_0;
    return StorageBuffer(_wgslsmith_add_u32(~reverseBits(u_input.a.x), _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_mod_u32(u_input.a.x, u_input.b.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-675f - 1799f), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-1277f - 661f), _wgslsmith_f_op_f32(step(-1190f, 1365f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1099f, _wgslsmith_f_op_f32(floor(-1069f)), -755f, -697f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = 46737i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -675f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(174f)))))));
    let x = u_input.a;
    s_output = func_1(Struct_1(~vec3<i32>(i32(-1i) * -27916i, -2147483647i, max(-12789i, 2395i))), ~(-1i << (0u % 32u)));
}

