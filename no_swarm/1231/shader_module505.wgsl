struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
    e: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<bool>, 29>;

var<private> global2: i32;

var<private> global3: array<vec3<i32>, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 19>();
    var var_0 = -(~(~_wgslsmith_sub_i32(-u_input.a, u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1040f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1021f, 1103f))) * _wgslsmith_f_op_f32(f32(-1f) * -122f))));
    global0 = true;
    var_0 = -u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-u_input.d.x, u_input.a));
}

