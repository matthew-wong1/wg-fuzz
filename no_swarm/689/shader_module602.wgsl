struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -126f;
    let var_0 = Struct_1(_wgslsmith_mult_i32(46805i, u_input.b), (firstTrailingBit(_wgslsmith_add_i32(u_input.a, 28661i)) > 2147483647i) & all(vec3<bool>(all(vec2<bool>(false, false)), all(vec2<bool>(false, false)), true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1408f, -285f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -100f) * -1240f)), 1f, -495f));
    global1 = u_input.c.x;
    var var_1 = Struct_1(0i >> (~u_input.c.x % 32u), select(!all(select(vec4<bool>(true, true, false, var_0.b), vec4<bool>(var_0.b, false, var_0.b, var_0.b), vec4<bool>(false, var_0.b, var_0.b, var_0.b))), !(u_input.c.x != _wgslsmith_mult_u32(u_input.c.x, 74423u)), !(any(vec3<bool>(var_0.b, false, false)) | true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c * vec3<f32>(var_0.c.x, -2575f, var_0.c.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2187f, var_0.c.x, -1334f) - var_0.c)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x)), vec3<f32>(var_0.c.x, 654f, 534f)), _wgslsmith_f_op_vec3_f32(step(var_0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-848f, 1373f, var_0.c.x))))))));
    let var_2 = ~(1i | var_0.a);
    let var_3 = var_0;
    let var_4 = var_3;
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(31407u, -19774i, _wgslsmith_div_f32(var_5.c.x, 982f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_5.c.xx)))));
}

