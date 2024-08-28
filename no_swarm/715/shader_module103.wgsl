struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5>;

var<private> global1: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

var<private> global2: vec4<i32>;

var<private> global3: Struct_1;

var<private> global4: array<u32, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-917f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1113f) + -344f), -557f, 205f), -941f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2652f - -1020f)), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-251f, 153f)))), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(11744u, 76388u, 1u, global4[_wgslsmith_index_u32(u_input.d.x, 8u)]), select(vec4<u32>(global4[_wgslsmith_index_u32(u_input.d.x, 8u)], global4[_wgslsmith_index_u32(u_input.d.x, 8u)], 4294967295u, 22913u), global0[_wgslsmith_index_u32(1u, 5u)], vec4<bool>(true, global3.b, global3.b, false))), firstTrailingBit(~(~vec4<u32>(76991u, 58489u, u_input.b, 8469u)))));
}

