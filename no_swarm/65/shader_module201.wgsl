struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(12223u, 72820u, 6674u);

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(6784i, _wgslsmith_mult_i32(global2.c.x, global3.x), max(_wgslsmith_sub_i32(global3.x, i32(-1i) * -14925i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(18119i, -2147483647i, -20930i), global3.wxx)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 687f, 1027f), vec3<f32>(382f, 754f, 571f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(904f, -587f, -1171f))))), vec3<f32>(-435f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-107f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(616f)) + _wgslsmith_f_op_f32(-528f + -1437f))), vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(global2.a, false), false)), true, all(vec2<bool>(true, true))))));
    let var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_i32(-34800i, u_input.a ^ -2147483647i)), global2.b);
}

