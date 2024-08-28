struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: u32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 43255u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = u_input.a;
    var_1 = ~_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 9735u), vec3<u32>(1015u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 104289u, u_input.a)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(min(vec3<u32>(114700u, 4294967295u, 4294967295u), vec3<u32>(1u, 7108u, u_input.a)), ~vec3<u32>(0u, u_input.a, 63362u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 0u), ~vec3<u32>(4294967295u, u_input.a, 72803u))));
    global0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-var_0.x, min(~1i, ~_wgslsmith_mod_i32(-2147483647i, u_input.b.x))), var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-879f, 1000f, 687f, -785f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(368f, 232f, -1000f, 1000f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-327f - -906f), -434f, _wgslsmith_f_op_f32(1000f * -1100f), _wgslsmith_f_op_f32(-825f - -237f)))));
}

