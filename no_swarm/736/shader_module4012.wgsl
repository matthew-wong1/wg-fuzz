struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: u32;

var<private> global2: bool = true;

var<private> global3: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e, 17u)], 797f, _wgslsmith_f_op_f32(f32(-1f) * -1171f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e, 17u)] + global0[_wgslsmith_index_u32(0u, 17u)])) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-521f, -880f, global0[_wgslsmith_index_u32(73278u, 17u)], global0[_wgslsmith_index_u32(u_input.e, 17u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.e, 17u)], global0[_wgslsmith_index_u32(u_input.e, 17u)], global0[_wgslsmith_index_u32(u_input.e, 17u)], -1020f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-839f, 1179f, -441f, global0[_wgslsmith_index_u32(31865u, 17u)]) * vec4<f32>(global0[_wgslsmith_index_u32(6207u, 17u)], 152f, 513f, 739f)))))), ~select(-16452i, ~min(2147483647i, -11272i), false), ~(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.e), vec2<u32>(u_input.e, 905u)) & _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 55852u), vec2<u32>(0u, u_input.e)), select(vec2<u32>(0u, 0u), vec2<u32>(23566u, 1u), true))));
}

