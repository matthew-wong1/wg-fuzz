struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<u32>(33247u, 24872u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 6914u, 4294967295u), ~vec3<u32>(75842u, 116551u, 0u)), 13901u));
    let var_1 = Struct_2(var_0.a);
    var var_2 = 14619u;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1690f);
    var_3 = -449f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(var_0.a, _wgslsmith_mod_vec4_u32(~var_1.a, ~(vec4<u32>(var_0.a.x, var_1.a.x, var_1.a.x, var_1.a.x) | var_0.a))), max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-17726i, u_input.a)), -((0i | u_input.b) & u_input.c.x) << (var_0.a.x % 32u), vec4<u32>(min(~17788u, firstLeadingBit(firstTrailingBit(1u))), var_1.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(min(var_0.a, var_0.a), abs(vec4<u32>(37968u, var_0.a.x, 0u, var_0.a.x))), ~13268u), max(~1u, 4294967295u)));
}

