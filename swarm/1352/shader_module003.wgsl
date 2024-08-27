struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 19>;

var<private> global1: array<bool, 18> = array<bool, 18>(false, false, true, true, false, true, false, false, false, false, true, false, false, true, true, true, true, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x) | -15227i, ~u_input.b.x, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-145f, 1000f, 162f, 538f) + vec4<f32>(1239f, -1862f, 1498f, -711f))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -483f), -1939f, _wgslsmith_f_op_f32(-804f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1481f)), !(!vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)]))))));
}

