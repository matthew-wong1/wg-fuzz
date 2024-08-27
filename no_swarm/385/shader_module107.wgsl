struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: u32,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> StorageBuffer {
    var var_0 = vec3<u32>(u_input.b, firstTrailingBit(abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 81811u, u_input.b, 0u), vec4<u32>(31928u, 0u, u_input.b, u_input.c.x)), 0u))), _wgslsmith_div_u32(9663u << (u_input.c.x % 32u), 47582u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-927f, -446f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(696f, 1946f))))) * vec2<f32>(1f, 1f)));
    var_0 = vec3<u32>(reverseBits(u_input.b >> (u_input.c.x % 32u)), u_input.b, _wgslsmith_sub_u32(_wgslsmith_sub_u32(~(u_input.c.x & var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), u_input.c) << (var_0.x % 32u)), ~(~4294967295u)));
    var_0 = ~vec3<u32>(~_wgslsmith_mult_u32(var_0.x, var_0.x), ~(~select(1u, 1u, true)), firstTrailingBit(4294967295u));
    let var_2 = true;
    return StorageBuffer(4294967295u, vec3<f32>(var_1.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-279f, _wgslsmith_f_op_f32(-1250f - var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + var_1.a.x)), var_1.a.x), firstTrailingBit(-6753i), u_input.c.x, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(1u << (u_input.b % 32u), 50911u, 52478u, 4294967295u);
    var var_1 = min(abs(~max(vec2<u32>(64315u, 37971u), var_0.ww)), select(u_input.c, var_0.yx, true)) | var_0.yx;
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1426f)), -341f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1481f, 584f), vec2<f32>(404f, 1621f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1030f, -268f), vec2<f32>(-1372f, 325f), false))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-409f, -1196f))))))));
    var_1 = ~(var_0.yy & _wgslsmith_mult_vec2_u32(vec2<u32>(max(u_input.c.x, var_0.x), select(var_0.x, 1u, false)), ~vec2<u32>(var_0.x, var_1.x)));
    let x = u_input.a;
    s_output = func_1();
}

