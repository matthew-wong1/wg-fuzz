struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(893f, 203f, false));
    var var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 47413u, u_input.b, 2264u)), select(vec4<u32>(1u, 0u, 50977u, 1u) | vec4<u32>(u_input.b, 14103u, u_input.b, u_input.b), vec4<u32>(u_input.b, 19165u, 1u, u_input.b) >> (vec4<u32>(u_input.b, 39480u, 26842u, u_input.b) % vec4<u32>(32u)), all(vec4<bool>(true, false, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-253f - -361f)))))), -(~(~(u_input.a ^ 13394i))), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, u_input.a, 0i, -20623i), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -2147483647i, u_input.a, 19125i), vec4<i32>(u_input.a, u_input.a, 2147483647i, 1i))) | _wgslsmith_add_i32(u_input.a, u_input.a), u_input.a));
}

