struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 30>;

var<private> global1: bool = false;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 30>();
    var var_0 = select(4294967295u, _wgslsmith_mod_u32(u_input.b.x, 20325u), any(vec3<bool>(true, true, all(select(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)])))));
    let var_1 = _wgslsmith_f_op_f32(325f * 1f);
    let var_2 = vec3<bool>(any(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), !all(vec2<bool>(true, true)), firstTrailingBit(17441i) == select(u_input.a.x, u_input.a.x, false))), true, var_1 > var_1);
    var var_3 = 340f;
    global0 = array<vec3<bool>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.a.x)), -u_input.a.x, -max(_wgslsmith_clamp_i32(-1i, 2147483647i, u_input.a.x), ~2147483647i) >> (27117u % 32u), u_input.a.x, -14338i);
}

