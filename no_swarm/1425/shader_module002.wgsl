struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(-1i, 1i, 40207i, 0i, 2147483647i, 52799i, 0i, -1274i, i32(-2147483648), 44879i, 12228i, 9117i, 0i, -1i, 2147483647i, 59194i, 40201i, 2147483647i, 2147483647i, 0i, 19463i, i32(-2147483648), 2147483647i, 1i, -1i, -23322i, i32(-2147483648), -46573i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(-599f)), -177f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1354f, -1231f))))))));
    var var_1 = _wgslsmith_mod_u32(~(~abs(26838u)), ~3645u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -607f)))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~1u, 68663u, 67037u), vec4<u32>(1u, 0u, ~(~1u), min(countOneBits(1u), ~0u))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(1524f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1047f * -331f)), 795f))));
}

