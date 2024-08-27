struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    return firstTrailingBit(116462u | u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(4294967295u, 70810u, 4294967295u);
    var_0 = ~(~(_wgslsmith_clamp_u32(_wgslsmith_add_u32(12097u, 27667u), u_input.a, 1u) ^ _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, u_input.c), u_input.c)));
    var_0 = u_input.a;
    var_0 = 1u;
    let var_1 = u_input.b;
    var_0 = 14344u;
    let x = u_input.a;
    s_output = StorageBuffer(min(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(544f, -1000f, 2058f, 1260f))))), select(~4294967295u, max(u_input.a, _wgslsmith_add_u32(u_input.d.x, 1u)), true)), countOneBits(var_1), firstLeadingBit(vec3<u32>(0u, _wgslsmith_dot_vec4_u32(u_input.e, u_input.e), _wgslsmith_sub_u32(~u_input.e.x, _wgslsmith_add_u32(u_input.e.x, u_input.a)))));
}

