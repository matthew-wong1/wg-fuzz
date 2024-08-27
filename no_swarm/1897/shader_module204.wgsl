struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: Struct_2;

var<private> global2: array<vec3<bool>, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 9>();
    var var_0 = -2147483647i;
    global2 = array<vec3<bool>, 9>();
    var var_1 = vec3<f32>(global0[_wgslsmith_index_u32(43412u, 23u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, abs(1u)), 23u)], global1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(~1i, ~abs(2147483647i), ~abs(0i), i32(-1i) * -2147483647i), _wgslsmith_div_vec4_i32(-firstLeadingBit(vec4<i32>(46376i, 1i, 0i, 2147483647i)), select(vec4<i32>(-2147483647i, 1i, -1i, 1i), vec4<i32>(-48564i, 2147483647i, 1i, 1i), false) >> (~vec4<u32>(u_input.a.x, u_input.b.x, 4294967295u, 11192u) % vec4<u32>(32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(21679u, 23u)])) + _wgslsmith_f_op_f32(-global1.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -219f)), -2147483647i, -11541i);
}

