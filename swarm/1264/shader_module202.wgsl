struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = !vec3<bool>(false & all(vec2<bool>(false, false)), true, true);
    let var_1 = 86423u;
    var var_2 = Struct_1(-1044f);
    var_2 = Struct_1(321f);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a))));
    return false;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.c;
    var var_1 = vec3<i32>(~u_input.a, _wgslsmith_sub_i32(u_input.b.x, -(~u_input.a)), 2147483647i);
    let var_2 = vec3<bool>(func_3(_wgslsmith_mod_i32(countOneBits(-1i), u_input.b.x << (u_input.c % 32u))), true, func_3(2147483647i | u_input.b.x));
    var_1 = ~vec3<i32>(var_1.x, -83314i, u_input.b.x);
    let var_3 = _wgslsmith_f_op_f32(step(-1810f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(235f, 496f)), _wgslsmith_div_f32(-1023f, _wgslsmith_f_op_f32(sign(944f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(781f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3086f * -612f))))));
    return Struct_1(_wgslsmith_f_op_f32(exp2(var_3)));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.b.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1000f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1f));
    var var_2 = vec2<u32>(max(u_input.c, u_input.c), 1u);
    var var_3 = _wgslsmith_f_op_f32(var_1.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1219f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, true || any(vec2<bool>(true, false)))))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1623f, _wgslsmith_f_op_f32(-var_0.a)) - var_0.a);
    var_0 = Struct_1(var_1.a);
    let var_4 = vec2<i32>(58632i, _wgslsmith_dot_vec3_i32(-vec3<i32>(33402i, u_input.a, -u_input.b.x), vec3<i32>(~u_input.b.x & (i32(-1i) * -2147483647i), _wgslsmith_add_i32(u_input.b.x, -2147483647i), 12413i)));
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_1.a, var_0.a) * vec3<f32>(var_1.a, -630f, var_0.a)), vec3<f32>(var_1.a, var_0.a, var_1.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_1.a), vec3<f32>(var_1.a, var_1.a, -1599f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 226f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-929f + 1701f), -1511f, _wgslsmith_f_op_f32(var_1.a + var_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1177f, -423f, 1000f))), vec3<bool>(all(vec2<bool>(true, true)), false, 0u <= ~var_2.x))), firstTrailingBit(vec4<i32>(u_input.a, _wgslsmith_clamp_i32(u_input.b.x, var_4.x, 45298i), var_4.x, ~2147483647i) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-56700i, -1i, var_4.x, var_4.x), vec4<i32>(-47924i, var_4.x, 30018i, 2147483647i), vec4<i32>(u_input.a, u_input.b.x, 18157i, 25232i))));
}

