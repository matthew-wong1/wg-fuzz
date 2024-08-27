struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: array<bool, 11> = array<bool, 11>(false, false, false, false, false, false, false, true, true, false, true);

var<private> global2: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(-1407f, 1039f), vec2<f32>(-188f, -623f), vec2<f32>(618f, -134f), vec2<f32>(615f, -182f), vec2<f32>(-576f, 945f), vec2<f32>(217f, 734f));

var<private> global3: array<i32, 8> = array<i32, 8>(-29792i, 11661i, -1i, -25432i, 1i, 2147483647i, 16523i, 0i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> StorageBuffer {
    global1 = array<bool, 11>();
    global0 = array<f32, 1>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(17249u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.c), ~vec3<u32>(1u, u_input.b.x, u_input.b.x)), u_input.c)), u_input.c), 1u)];
    global1 = array<bool, 11>();
    let var_1 = Struct_1(vec2<i32>(min(-firstTrailingBit(global3[_wgslsmith_index_u32(u_input.c, 8u)]), global3[_wgslsmith_index_u32(32042u, 8u)]), (u_input.a.x & _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global3[_wgslsmith_index_u32(106666u, 8u)]), vec2<i32>(20443i, u_input.a.x))) >> (u_input.c % 32u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1227f, -602f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-829f, 1543f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)]))), all(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 11u)], true, true)))))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x << (~u_input.b.x % 32u), 1u), 1u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~0u, 1u)] * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 1u)])))));
    return StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b.x, 4294967295u), 11u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(30845u, 1u)]) == _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(u_input.b.x)), 1u)] - -2299f), true && (global1[_wgslsmith_index_u32(u_input.b.x, 11u)] && global1[_wgslsmith_index_u32(0u, 11u)]), all(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 11u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], true), all(vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b.x, 11u)])))));
    global1 = array<bool, 11>();
    global3 = array<i32, 8>();
    let x = u_input.a;
    s_output = func_1();
}

