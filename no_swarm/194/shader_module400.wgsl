struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: u32;

var<private> global2: bool;

var<private> global3: array<Struct_1, 15>;

var<private> global4: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~((global0.x & global0.x) << (_wgslsmith_mult_u32(abs(4454u), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, global0.x, 1u, global0.x), vec4<u32>(global0.x, 0u, 1u, 19176u))) % 32u));
    var var_1 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-263f, 680f)), _wgslsmith_add_u32(reverseBits(~global0.x) | _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, 0u, 0u), vec4<u32>(38264u, global0.x, 1228u, 9348u) >> (vec4<u32>(33135u, 0u, 1u, global0.x) % vec4<u32>(32u))), global0.x), firstLeadingBit(u_input.b.yz));
}

