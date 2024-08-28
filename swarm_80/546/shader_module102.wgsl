struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
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

var<private> global0: array<i32, 6>;

var<private> global1: array<u32, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(0u << (_wgslsmith_add_u32(abs(global1[_wgslsmith_index_u32(27870u, 19u)]), global1[_wgslsmith_index_u32(~5723u, 19u)]) % 32u)) >= u_input.a.x;
    global0 = array<i32, 6>();
    var_0 = true;
    let var_1 = 2147483647i | abs(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b, 40135u), 6u)], min(global0[_wgslsmith_index_u32(4294967295u, 6u)], -48708i) << (0u % 32u)));
    global1 = array<u32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1583f * 187f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-472f)), _wgslsmith_f_op_f32(-814f + -316f)))))), ~(~6297u));
}

