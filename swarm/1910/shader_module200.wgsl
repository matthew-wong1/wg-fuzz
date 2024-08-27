struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(5263i, i32(-2147483648), -21373i, -21812i, -61973i, -75374i, i32(-2147483648), 1i, 0i, 12656i, 1533i, 3467i, i32(-2147483648), -65631i, -156i, 2147483647i, -10844i, i32(-2147483648), 2147483647i, 7281i, -1i, -1i, -1i, 0i, i32(-2147483648), 28905i);

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: Struct_4;

var<private> global3: array<u32, 21>;

var<private> global4: array<vec4<bool>, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(117f))));
    global3 = array<u32, 21>();
    global3 = array<u32, 21>();
    let var_1 = 0u;
    let var_2 = ~var_1;
    global4 = array<vec4<bool>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(var_0 + var_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 * -233f), _wgslsmith_f_op_f32(880f + 1051f), any(global4[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_f_op_f32(abs(var_0)), var_0)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -402f, var_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 375f) - vec3<f32>(var_0, var_0, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(962f, var_0, -245f) + vec3<f32>(-502f, -953f, var_0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 2263f, -1615f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -333f))))));
}

