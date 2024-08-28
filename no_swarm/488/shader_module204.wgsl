struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32>;

var<private> global2: vec2<i32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>) -> i32 {
    let var_0 = Struct_1(global0.d, -vec2<i32>(2147483647i, -1i), ~(~vec4<u32>(arg_1.x, arg_1.x, 1u, ~34464u)), arg_0.a, vec4<i32>(1i, abs(_wgslsmith_mult_i32(global2.x, global0.e.x)), _wgslsmith_mod_i32(global0.b.x, i32(-1i) * -global0.e.x), global0.e.x));
    return i32(-1i) * -(~(-64660i));
}

fn func_3() -> vec4<u32> {
    global2 = -max(vec2<i32>(1i, u_input.a) >> (_wgslsmith_add_vec2_u32(firstTrailingBit(global1.xy), vec2<u32>(4294967295u, 35325u)) % vec2<u32>(32u)), global0.e.xw);
    global1 = vec4<u32>(4294967295u, global0.c.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global0.c.x, 1u, 12329u), ~global0.c), ~(~countOneBits(u_input.b.x)));
    global2 = vec2<i32>(abs(u_input.a), u_input.a);
    global2 = countOneBits(vec2<i32>(i32(-1i) * -2147483647i, 8929i));
    global0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-927f + _wgslsmith_div_f32(493f, global0.a)) - -208f))), abs(~min(global0.e.yz, global0.e.yz) << (vec2<u32>(1u, 32039u) % vec2<u32>(32u))), max(firstTrailingBit(vec4<u32>(firstLeadingBit(0u), 1u, abs(37444u), abs(global1.x))), max(vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, global0.c.x), ~116648u, 4294967295u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, global0.c.x, 0u), vec4<u32>(global0.c.x, u_input.b.x, 0u, global0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(863f, global0.d) - -805f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d - global0.d) * _wgslsmith_f_op_f32(-global0.a)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1186f))))), ~select(global0.e, global0.e, vec4<bool>(true, false, true, false)));
    return firstLeadingBit(~firstTrailingBit(global0.c) | _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, 0u, global1.x, u_input.b.x), global0.c), vec4<u32>(13337u, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(0u, 87200u, u_input.b.x, 0u) % vec4<u32>(32u)))) >> (abs(vec4<u32>(1u, ~4294967295u, 1u, _wgslsmith_mult_u32(53072u, u_input.b.x))) % vec4<u32>(32u));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    var var_0 = -func_2(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-138f)) - global0.d)), ~select(global0.c.xy, _wgslsmith_clamp_vec2_u32(global0.c.zw, vec2<u32>(global0.c.x, 24295u), u_input.b.yz), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = func_3();
    var_0 = -2147483647i;
    var var_2 = select(global0.e >> (var_1 % vec4<u32>(32u)), firstTrailingBit(~(global0.e >> (~vec4<u32>(33239u, global1.x, 71571u, global0.c.x) % vec4<u32>(32u)))), all(!vec3<bool>(global0.d == -1145f, true, true)));
    var_0 = var_2.x;
    return all(!vec4<bool>(!all(vec4<bool>(false, true, false, false)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), true, true));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_4) -> vec3<bool> {
    global0 = Struct_1(134f, ~(vec2<i32>(-1i) * -vec2<i32>(140i, arg_2.d.b.x)), _wgslsmith_mult_vec4_u32(global0.c, ~(~vec4<u32>(u_input.b.x, 4294967295u, 1u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-arg_2.a.d))))), ~firstLeadingBit(select(global0.e, global0.e, 4294967295u < global0.c.x)));
    let var_0 = arg_3.a;
    let var_1 = vec4<bool>(!any(select(select(vec4<bool>(arg_3.a, true, true, true), vec4<bool>(true, arg_1, true, arg_1), false), !vec4<bool>(false, arg_1, false, arg_3.a), select(vec4<bool>(false, arg_2.b.x, true, false), vec4<bool>(var_0, arg_3.a, var_0, arg_3.a), vec4<bool>(arg_2.b.x, true, arg_1, arg_2.b.x)))), !arg_2.b.x, arg_1 != (arg_1 & true), func_1(countOneBits(select(firstLeadingBit(arg_2.a.b), global0.e.xw | vec2<i32>(global2.x, u_input.a), !vec2<bool>(arg_1, arg_3.a)))));
    var var_2 = arg_2.b;
    var var_3 = global1.ywy;
    return select(select(vec3<bool>(!arg_1, true, arg_3.a), vec3<bool>(false, !(arg_2.d.a < -567f), !(!var_1.x)), select(vec3<bool>(false, true, arg_3.a), vec3<bool>(false, arg_1, func_1(vec2<i32>(-1i, u_input.a))), !var_0 & arg_2.b.x)), vec3<bool>(false, var_2.x, -select(13708i, 0i, var_1.x) != _wgslsmith_sub_i32(2147483647i, -global2.x)), !any(vec3<bool>(select(var_0, var_0, true), true, any(vec4<bool>(var_0, arg_2.b.x, true, var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global1.x, func_1(global0.b), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-503f, global0.d)) - global0.a), global0.e.zx, firstTrailingBit(~global0.c), 165f, select(countOneBits(global0.e), global0.e, true)), vec3<bool>(true, true, true), vec4<u32>(min(43379u, _wgslsmith_mod_u32(global1.x, global0.c.x)), _wgslsmith_add_u32(20587u, 14036u) << (_wgslsmith_clamp_u32(u_input.b.x, global0.c.x, global0.c.x) % 32u), global0.c.x, firstTrailingBit(abs(4294967295u))), Struct_1(global0.a, -vec2<i32>(global0.e.x, 21148i), ~countOneBits(vec4<u32>(32747u, 33748u, global1.x, global1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global0.d)), 1084f)), global0.e)), Struct_4(!(!select(false, false, true)), global0.c.x));
    var var_1 = Struct_3(global0.d);
    let var_2 = Struct_1(global0.d, _wgslsmith_add_vec2_i32(min(abs(vec2<i32>(2147483647i, global0.e.x)) & ~vec2<i32>(42918i, u_input.a), vec2<i32>(u_input.a, -1i)), -(~_wgslsmith_sub_vec2_i32(global0.b, vec2<i32>(global0.e.x, u_input.a)))), _wgslsmith_mod_vec4_u32(func_3(), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, u_input.b.x, 1u, 34203u), vec4<u32>(global0.c.x, u_input.b.x, 46285u, 60401u), false), vec4<u32>(42529u, global0.c.x, 63200u, 25700u))), -640f, min(countOneBits(firstLeadingBit(-global0.e)), global0.e));
    let var_3 = var_0.x;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-912f * var_2.a) * _wgslsmith_f_op_f32(abs(global0.d)))))), -vec2<i32>(~12369i, u_input.a), vec4<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(48321u, 4294967295u, global0.c.x, 0u), vec4<u32>(var_2.c.x, global1.x, 32667u, global1.x))), ~max(var_2.c.x, global0.c.x), global0.c.x, 0u), 476f, global0.e);
    let var_5 = _wgslsmith_mod_vec2_i32(vec2<i32>(abs(~var_4.b.x), 1i), _wgslsmith_add_vec2_i32(~vec2<i32>(abs(var_2.b.x), 1i), select(firstTrailingBit(global0.e.zy), _wgslsmith_add_vec2_i32(var_2.b, var_2.e.zz), vec2<bool>(false, false)) | -_wgslsmith_mult_vec2_i32(var_4.e.yx, vec2<i32>(u_input.a, global0.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1012f, 1883f, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1165f, 1307f, var_1.a) - vec3<f32>(914f, var_1.a, -423f)) - _wgslsmith_div_vec3_f32(vec3<f32>(829f, var_1.a, var_2.d), vec3<f32>(113f, var_2.d, -1405f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1426f, global0.a, global0.d)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.a, global0.d, var_1.a), vec3<f32>(var_1.a, global0.d, var_4.a)))) - vec3<f32>(377f, -1532f, global0.a))), vec4<u32>(max(_wgslsmith_add_u32(global1.x, 72201u), ~u_input.b.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b.x), u_input.b) & ~1u, 1u), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(var_4.c.wxy, global1.wwy), abs(~vec3<u32>(4294967295u, 4294967295u, var_2.c.x))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_2.c.xwx, vec3<u32>(global0.c.x, 11475u, global0.c.x)) | _wgslsmith_mult_vec3_u32(var_4.c.xxx, var_2.c.zwy), vec3<u32>(~1u, firstTrailingBit(9472u), max(var_4.c.x, 0u)))));
}

