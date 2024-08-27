struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15>;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - global1.a) - 2762f))));
    var var_0 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(u_input.b, ~(~u_input.b >> (u_input.b % vec3<u32>(32u))), ~vec3<u32>(u_input.b.x, u_input.a, countOneBits(u_input.b.x))), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.a, 41129u, u_input.a, u_input.a)), ~vec4<u32>(31159u, 4294967295u, u_input.b.x, u_input.b.x) | firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 0u, u_input.b.x))), u_input.c.x, global1.a);
}

