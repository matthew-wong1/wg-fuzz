struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
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

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: vec2<f32> = vec2<f32>(-1126f, -820f);

var<private> global2: u32 = 76491u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a;
    global2 = u_input.a;
    let var_0 = abs(_wgslsmith_add_i32(0i, u_input.e));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - vec2<f32>(419f, global1.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -208f) + vec2<f32>(global1.x, 136f)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(716f, global1.x)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-551f, global1.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))));
    var var_1 = ~firstLeadingBit(vec2<u32>(abs(abs(u_input.a)), 11591u >> (~u_input.a % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

