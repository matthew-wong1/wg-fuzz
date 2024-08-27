struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(0i, -56114i, 1i, -18557i), 2147483647i, vec4<f32>(140f, 984f, 1000f, 491f), -38825i);

var<private> global2: u32 = 1u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(_wgslsmith_add_u32(u_input.e, u_input.e), u_input.d.x)), ~(_wgslsmith_sub_vec2_u32(vec2<u32>(24638u, u_input.b.x) & vec2<u32>(u_input.b.x, u_input.d.x), ~u_input.b.xy) & ~u_input.b.yx));
    let var_0 = u_input.e ^ (min(firstTrailingBit(1u) & ~u_input.e, reverseBits(~u_input.d.x)) ^ 1u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c.xzy));
    let var_2 = ~global1.d >> (firstTrailingBit(_wgslsmith_div_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 67593u, var_0, 0u), u_input.d)), var_0)) % 32u);
    let var_3 = u_input.d.x;
    let var_4 = ~var_3;
    let var_5 = 410f;
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + global1.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, vec2<i32>(firstLeadingBit(0i) | u_input.a, var_2), global1.a.yz, abs(var_4), _wgslsmith_f_op_vec2_f32(-global1.c.wz));
}

