struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(~u_input.a, ~u_input.b.x, 1i, i32(-1i) * -2147483647i)), _wgslsmith_div_i32(-max(u_input.a, u_input.b.x), ~_wgslsmith_mod_i32(u_input.a, u_input.a)), abs(0i));
    let var_1 = 2147483647i;
    global0 = array<Struct_2, 25>();
    let var_2 = Struct_1(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), 1u), _wgslsmith_sub_i32(75765i, 1i | (_wgslsmith_dot_vec2_i32(var_0.xz, vec2<i32>(15141i, var_1)) | -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-264f, 1889f, -2638f), vec3<f32>(810f, -1974f, 2437f), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1906f, -146f, 2478f) + vec3<f32>(-1151f, 1665f, 1866f))) * vec3<f32>(_wgslsmith_f_op_f32(1540f - 687f), -1401f, -114f))));
    global0 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zy, ~(-u_input.b.wxy));
}

