struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 23>;

var<private> global1: array<u32, 14> = array<u32, 14>(42975u, 1u, 6788u, 70794u, 14226u, 1837u, 35467u, 1u, 13048u, 4294967295u, 38709u, 24889u, 0u, 45690u);

var<private> global2: vec4<f32> = vec4<f32>(-421f, 1393f, -229f, -568f);

var<private> global3: array<i32, 3> = array<i32, 3>(0i, 1i, 52368i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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
    var var_0 = Struct_1(vec4<bool>(!(u_input.d.x == min(-14975i, u_input.d.x)), any(vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, u_input.c), abs(77360u)), 14u)] < abs(firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 14u)], 14u)], 14u)], 14u)])), false), _wgslsmith_f_op_vec3_f32(-global2.wwz), ~(~4294967295u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -839f)), 150f, 1448f, global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c, u_input.c, 0u, var_0.c), _wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 14u)], u_input.b, u_input.b, 42394u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 14u)], 42113u, u_input.b, 23775u))), var_0.c)), _wgslsmith_f_op_f32(-global2.x));
}

