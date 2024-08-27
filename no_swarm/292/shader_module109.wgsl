struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(Struct_3(Struct_1(vec2<u32>(4832u, 1u), false, vec3<u32>(1u, 0u, 28686u), 1i)), -144f), Struct_4(Struct_3(Struct_1(vec2<u32>(46682u, 4294967295u), true, vec3<u32>(13278u, 19576u, 7254u), 2147483647i)), -1006f), Struct_4(Struct_3(Struct_1(vec2<u32>(56457u, 41014u), false, vec3<u32>(35333u, 4294967295u, 47505u), 62701i)), -194f), Struct_4(Struct_3(Struct_1(vec2<u32>(0u, 68483u), false, vec3<u32>(4294967295u, 48580u, 24518u), 19965i)), -1000f), Struct_4(Struct_3(Struct_1(vec2<u32>(0u, 4294967295u), false, vec3<u32>(86667u, 2465u, 4294967295u), 20164i)), 1610f), Struct_4(Struct_3(Struct_1(vec2<u32>(22945u, 81406u), false, vec3<u32>(9675u, 1u, 4294967295u), -11444i)), 286f));

var<private> global1: Struct_3;

var<private> global2: array<i32, 13>;

var<private> global3: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, true, false, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(countOneBits(1u), _wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, 28398u, u_input.b.x, u_input.b.x) ^ vec4<u32>(4294967295u, 60953u, 4294967295u, global1.a.c.x)), firstTrailingBit(vec4<u32>(17081u, u_input.b.x, global1.a.c.x, 65797u)) ^ abs(vec4<u32>(global1.a.a.x, 1u, 4294967295u, 4294967295u)))), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.a.c.x), vec2<u32>(u_input.b.x, 1u)) & ~(~u_input.b.x))), 13u)];
    global1 = Struct_3(global1.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-545f + _wgslsmith_div_f32(-1091f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(674f)))))));
    global0 = array<Struct_4, 6>();
    global3 = array<vec4<bool>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(4294967295u, 13u)], 1i, -(~(-u_input.a)), vec4<u32>(21524u, 75220u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(8677u, u_input.b.x, 0u, 1795u), vec4<u32>(u_input.b.x, u_input.b.x, global1.a.c.x, global1.a.a.x)), vec4<u32>(global1.a.a.x, 49659u, global1.a.a.x, 45332u)), u_input.b.x), global1.a.d);
}

