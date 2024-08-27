struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 495f;

var<private> global1: vec3<f32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> f32 {
    let var_0 = true;
    global1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 1129f, 1619f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-412f, _wgslsmith_f_op_f32(1032f + -408f), global1.x)))), vec3<f32>(-894f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1540f, global1.x) - _wgslsmith_f_op_f32(min(-974f, global1.x)))), _wgslsmith_f_op_f32(exp2(global1.x)))));
    let var_1 = _wgslsmith_sub_i32(-(~(~(~u_input.c))), u_input.b);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(step(-329f, 1f)), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1176f)), _wgslsmith_f_op_f32(global1.x * 733f)))));
    var var_2 = !vec3<bool>(!((u_input.d << (10916u % 32u)) > 35013u), false, var_0);
    return global1.x;
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    global1 = vec3<f32>(234f, _wgslsmith_f_op_f32(floor(276f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), 644f), global1.x));
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(-7764i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_0, arg_0, 45111i, arg_0)), vec4<i32>(-2848i, u_input.b, arg_0, u_input.b))), select(u_input.a, arg_0, all(vec4<bool>(false, false, false, false)))), _wgslsmith_mult_u32(u_input.d, ~u_input.d) == ~4294967295u, ~(~select(vec3<u32>(u_input.d, u_input.d, 11035u), vec3<u32>(4285u, 0u, 1u), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false))), -1504f, _wgslsmith_mod_i32(arg_0, u_input.a));
    var_0 = Struct_1(_wgslsmith_div_vec2_i32(var_0.a, ~_wgslsmith_mod_vec2_i32(var_0.a, ~var_0.a)), var_0.b, var_0.c, var_0.d, ~arg_0);
    let var_1 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(1i, ~(-84828i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), -vec2<i32>(-52164i, -2147483647i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b << (u_input.d % 32u), ~1i), _wgslsmith_mult_vec2_i32(-var_0.a, var_0.a), countOneBits(abs(vec2<i32>(u_input.b, -18350i))))), true, reverseBits(abs(vec3<u32>(u_input.d, 8217u, 1u)) | ~vec3<u32>(arg_1, var_0.c.x, 55026u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * var_0.d)), 1i);
    var_0 = Struct_1(vec2<i32>(min(arg_0, 1i), 4138i), true, ~var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, -642f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-601f))))), _wgslsmith_f_op_f32(floor(1000f)))), abs(max(-20789i, 0i)));
    return Struct_1(~(-_wgslsmith_sub_vec2_i32(var_0.a, var_1.a)), !select(var_0.b, !var_0.b | true, true), ~_wgslsmith_add_vec3_u32(~(vec3<u32>(arg_1, 17159u, arg_1) ^ vec3<u32>(var_0.c.x, u_input.d, var_0.c.x)), vec3<u32>(~var_0.c.x, max(u_input.d, arg_1), ~var_0.c.x)), var_0.d, 0i);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = func_2(arg_1.x, u_input.d | ~u_input.d);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global1.xy)));
    return func_2(arg_1.x, 19284u << (var_0.c.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = !select(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(false, any(vec3<bool>(true, true, false))), true);
    global0 = _wgslsmith_f_op_f32(exp2(global1.x));
    global0 = 325f;
    let var_2 = func_1(~var_0, countOneBits(countOneBits(~(~vec2<i32>(1i, u_input.b)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d - global1.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(var_2.d, _wgslsmith_f_op_f32(min(144f, var_2.d))), global1.x, var_2.d, var_2.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.d, -1682f, global1.x, 474f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, var_2.d, -866f, global1.x)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1428f, -602f, -1928f, -385f)))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(833f, var_2.d, var_2.d, 438f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -1683f, var_2.d) - vec4<f32>(1084f, -398f, var_2.d, global1.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, global1.x, var_2.d, global1.x), vec4<f32>(-1000f, -367f, 1406f, -1000f))))))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_3.wyz))) - _wgslsmith_f_op_vec3_f32(-var_3.xyw)) - vec3<f32>(var_2.d, global1.x, _wgslsmith_f_op_f32(abs(var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-683f, global1.x, u_input.c, 1u);
}

