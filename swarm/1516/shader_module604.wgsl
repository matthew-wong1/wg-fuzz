struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(432f, -284f, 370f, -1439f);

var<private> global1: u32;

var<private> global2: array<vec4<u32>, 1>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(-global0.xwz), any(vec2<bool>(true, true)), vec2<u32>(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(~1u, 1u)] & vec4<u32>(1u, 77164u, u_input.a, 1552u), global2[_wgslsmith_index_u32(u_input.a << (4294967295u % 32u), 1u)]), u_input.a), vec2<bool>(false, select(false, !all(vec3<bool>(false, true, false)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~40925u, _wgslsmith_mod_u32(~(~u_input.a), u_input.a)));
}

