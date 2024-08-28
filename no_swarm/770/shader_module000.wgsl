struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, 0u, -12993i);

var<private> global1: array<u32, 12>;

var<private> global2: array<u32, 13>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(global0.c > -9178i) | false));
    global2 = array<u32, 13>();
    global1 = array<u32, 12>();
    var var_1 = Struct_1(~_wgslsmith_dot_vec3_u32(max(abs(vec3<u32>(4294967295u, 0u, 10437u)), firstTrailingBit(vec3<u32>(global0.a, 38314u, 4294967295u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, global0.b, 1u), vec3<u32>(global0.b, 4294967295u, global1[_wgslsmith_index_u32(global0.b, 12u)]))), u_input.a, u_input.b >> (4294967295u % 32u));
    let var_2 = Struct_1(countOneBits(41331u), ~0u, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -607f), vec2<u32>(global0.b | 1u, ~(_wgslsmith_mod_u32(18325u, 4294967295u) & _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(var_2.a, 12u)], 34120u, global1[_wgslsmith_index_u32(95787u, 12u)], global2[_wgslsmith_index_u32(var_2.a, 13u)]), vec4<u32>(1u, 4294967295u, 1u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 13u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(844f)) - _wgslsmith_f_op_f32(f32(-1f) * -1102f))))), 941f);
}

