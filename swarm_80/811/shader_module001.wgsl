struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.xww;
    global0 = array<i32, 22>();
    let var_1 = reverseBits(u_input.a) >> (~_wgslsmith_sub_u32(~1u, 0u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))), ~abs(~vec3<u32>(22192u, 0u, 1u)), u_input.c, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(-1195f, -464f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(313f, -981f), _wgslsmith_f_op_f32(f32(-1f) * -664f), true)), 533f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(434f, -1687f, -1573f) - vec3<f32>(181f, -1488f, 175f)))))), _wgslsmith_dot_vec4_u32(~(~firstLeadingBit(vec4<u32>(0u, u_input.a, 51505u, u_input.a))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_1, var_1, u_input.a), vec4<u32>(32038u, 4294967295u, u_input.a, 2463u)))));
}

