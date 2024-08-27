struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<u32>, 2>;

var<private> global2: array<vec2<u32>, 8>;

var<private> global3: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = var_0.x;
    global2 = array<vec2<u32>, 8>();
    var var_2 = vec2<bool>(var_0.x, false);
    global0 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, 1f), vec2<u32>(~(~4294967295u), ~34682u), vec4<u32>(firstLeadingBit(1u), _wgslsmith_clamp_u32(select(~4294967295u, 1u, true), firstTrailingBit(59484u), 50184u), 1u | firstTrailingBit(~43495u), 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(65052u, _wgslsmith_mod_u32(~14808u, 1u)), global2[_wgslsmith_index_u32(31234u, 8u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1012f, -245f)))) - 321f));
}

