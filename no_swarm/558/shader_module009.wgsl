struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1505f;

var<private> global1: f32;

var<private> global2: vec2<u32> = vec2<u32>(30347u, 0u);

var<private> global3: i32;

var<private> global4: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = u_input.a;
    global4 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1061f, _wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1140f, global4.x, true)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1011f - _wgslsmith_f_op_f32(-527f - -370f)) - _wgslsmith_f_op_f32(max(global4.x, -520f))), _wgslsmith_f_op_f32(ceil(global4.x)))));
    var var_1 = !((-1000f <= global4.x) || (false && select(true, true, all(vec4<bool>(false, false, false, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(519f, global4.x, global4.x, global4.x) - vec4<f32>(1000f, -1144f, 432f, -1998f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, global4.x, global4.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global4.x, global4.x)), _wgslsmith_f_op_f32(abs(960f)), -684f, 415f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-631f, 153f, -1729f, global4.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -879f), 473f, _wgslsmith_f_op_f32(f32(-1f) * -824f), _wgslsmith_div_f32(global4.x, 1232f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(global4.x)), global4.x, -626f, -1000f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-440f, 1000f, global4.x, -624f)))))), vec4<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(true, true)), false, true)))));
    let var_3 = !((true & !any(vec2<bool>(true, true))) && all(vec4<bool>(true, global2.x == 32374u, var_0.x < -22291i, true)));
    return var_0.x;
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)) * arg_0.x));
    global0 = arg_0.x;
    global2 = ~vec2<u32>(1u, 1u);
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(2147483647i, u_input.b), ((func_3() | _wgslsmith_div_i32(u_input.a.x, -17653i)) << (_wgslsmith_mod_u32(global2.x, 6724u) % 32u)) ^ u_input.d, u_input.b, (u_input.b | -14590i) ^ _wgslsmith_div_i32(u_input.c, (u_input.a.x ^ u_input.d) << ((26056u >> (global2.x % 32u)) % 32u)));
    var var_1 = ~var_0.x & 19592i;
    return vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global4.x)), global4.x)) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-1658f - global4.x), all(vec4<bool>(true, true, true, true)))), true);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.a.ww, max(~u_input.a.xw, select(~(-vec2<i32>(18525i, u_input.d)), vec2<i32>(u_input.c >> (arg_0.x % 32u), u_input.a.x), !func_2(vec4<f32>(-350f, -1594f, 1606f, -247f)))));
    global1 = _wgslsmith_f_op_f32(global4.x + global4.x);
    var var_1 = !vec2<bool>(!any(vec2<bool>(true, true)) | false, !any(vec4<bool>(false, false, false, true)));
    let var_2 = Struct_1(!any(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, true, false), vec3<bool>(false, false, var_1.x))) & (any(!vec4<bool>(var_1.x, false, false, var_1.x)) | false), vec3<f32>(global4.x, _wgslsmith_f_op_f32(min(global4.x, _wgslsmith_f_op_f32(abs(global4.x)))), _wgslsmith_f_op_f32(-1674f - 1221f)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_mult_i32(var_0, -2147483647i)), max(u_input.a.xx >> (vec2<u32>(4294967295u, arg_0.x) % vec2<u32>(32u)), vec2<i32>(u_input.b, var_0))), -u_input.b), false, ~arg_0.x);
    var var_3 = countOneBits(vec4<u32>(6113u, _wgslsmith_add_u32(~global2.x, 1u), 0u, var_2.e));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec3<f32> {
    global0 = 244f;
    let var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~abs(1u), arg_0.e, ~arg_1), ~min(~vec3<u32>(arg_0.e, arg_1, arg_1), vec3<u32>(arg_1, arg_1, global2.x))), vec3<u32>(global2.x, firstTrailingBit(_wgslsmith_add_u32(arg_1, global2.x)), arg_0.e));
    global4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(global4.x + 1531f))))));
    let var_1 = !(!(!select(select(vec2<bool>(arg_0.a, arg_0.d), vec2<bool>(arg_0.d, arg_0.a), vec2<bool>(arg_0.d, true)), vec2<bool>(false, arg_0.a), select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, false), false))));
    var var_2 = func_1(vec4<u32>(var_0.x, _wgslsmith_mult_u32(firstLeadingBit(arg_1), ~0u), ~1u, 4294967295u)).e;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-342f, global4.x, 268f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, global4.x) * vec3<f32>(global4.x, global4.x, -276f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b * vec3<f32>(1411f, arg_0.b.x, global4.x)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.x, 2348f, global4.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-690f == global4.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_1(~vec4<u32>(global2.x, global2.x, 1u, 92476u)), 1u))), vec2<i32>(_wgslsmith_add_i32(41765i, _wgslsmith_mod_i32(36492i ^ u_input.c, u_input.d)), max(u_input.a.x, -5104i)), false, 1u);
    let var_1 = var_0;
    var var_2 = var_0;
    let var_3 = var_0.c.x;
    var_2 = var_1;
    let var_4 = var_2.d;
    let var_5 = !select(!vec3<bool>(var_0.d & var_1.d, true, select(false, true, var_2.d)), select(select(select(vec3<bool>(var_1.d, var_2.d, true), vec3<bool>(false, true, var_1.a), vec3<bool>(var_2.d, var_2.a, var_0.a)), vec3<bool>(true, false, var_0.a), any(vec4<bool>(var_2.d, false, var_0.a, var_0.a))), vec3<bool>(var_1.b.x > 1136f, !var_2.d, false), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), !vec3<bool>(true, var_0.a, var_1.d))), any(vec4<bool>(true, false, true, true)));
    var var_6 = min(_wgslsmith_div_i32(-_wgslsmith_sub_i32(-var_0.c.x, 42716i), func_3()), -(~(func_1(vec4<u32>(0u, 1u, var_0.e, var_2.e)).c.x & (u_input.a.x ^ -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(var_1.e, global2.x), vec2<u32>(4294967295u, 73314u), var_5.xz), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.e, 1u), vec2<u32>(global2.x, var_0.e))), max(~vec2<u32>(1u, 71602u), vec2<u32>(1u, var_1.e))) << (countOneBits(vec2<u32>(~4294967295u, ~var_0.e)) % vec2<u32>(32u)), -891f);
}

