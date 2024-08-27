struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: f32;

var<private> global2: vec3<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_2) -> bool {
    var var_0 = 1i >> (u_input.c % 32u);
    var var_1 = arg_3.c;
    global0 = vec4<f32>(_wgslsmith_div_f32(849f, global0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_1.a.x)))), _wgslsmith_f_op_f32(-1061f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.c.a.x), _wgslsmith_f_op_f32(753f * -350f), all(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)))), -1410f))), _wgslsmith_f_op_f32(trunc(-689f)));
    var var_2 = !(!any(vec2<bool>(arg_3.b, arg_3.b)));
    let var_3 = vec3<u32>(1u, _wgslsmith_mult_u32(~(~_wgslsmith_add_u32(u_input.d, arg_0.x)), 0u), arg_0.x);
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> bool {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -894f)));
    global2 = !select(select(!select(vec3<bool>(global2.x, false, true), vec3<bool>(arg_1.b, false, arg_1.b), true), vec3<bool>(func_3(vec2<u32>(9799u, 8642u), arg_0.x, vec4<bool>(arg_1.b, false, true, global2.x), Struct_2(arg_1.c.b.xx, true, Struct_1(global0.xxy, vec3<i32>(arg_1.c.b.x, -2147483647i, 22808i)))), true, any(global2.zz)), !(!vec3<bool>(arg_1.b, false, arg_1.b))), select(select(!vec3<bool>(arg_1.b, true, global2.x), select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, arg_1.b, true), false), arg_1.b), select(vec3<bool>(global2.x, true, false), select(vec3<bool>(true, arg_1.b, arg_1.b), vec3<bool>(global2.x, true, global2.x), false), 1000f < global0.x), !any(vec4<bool>(global2.x, arg_1.b, true, false))), all(select(!vec3<bool>(global2.x, arg_1.b, true), vec3<bool>(global2.x, false, global2.x), select(vec3<bool>(arg_1.b, global2.x, false), vec3<bool>(arg_1.b, global2.x, arg_1.b), vec3<bool>(false, arg_1.b, true)))));
    var var_0 = vec2<i32>(24555i | _wgslsmith_dot_vec3_i32(arg_1.c.b, vec3<i32>(arg_1.a.x, abs(arg_1.a.x), arg_0.x)), 0i);
    global2 = vec3<bool>(arg_1.b, global2.x, true);
    global2 = !select(vec3<bool>(true, true, true), !vec3<bool>(global2.x, any(vec2<bool>(arg_1.b, false)), true), vec3<bool>(false, arg_1.b, false));
    return true;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global2 = !select(select(vec3<bool>(global2.x, all(vec2<bool>(global2.x, global2.x)), true), select(!vec3<bool>(global2.x, global2.x, global2.x), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, global2.x, false), false), vec3<bool>(global2.x, true, true)), vec3<bool>(false, 983f < global0.x, !global2.x)), vec3<bool>(func_2(vec2<i32>(30266i, -1i), Struct_2(vec2<i32>(u_input.a, -2147483647i), true, Struct_1(vec3<f32>(3202f, -906f, arg_0), vec3<i32>(1i, u_input.a, 1i)))) || !global2.x, global2.x, global2.x), _wgslsmith_mult_i32(-1i, -1i) > u_input.a);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1693f)) + _wgslsmith_f_op_f32(-518f - 590f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(f32(-1f) * -781f), u_input.a == u_input.a)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1697f)))))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-498f + _wgslsmith_div_f32(550f, 1316f)) - global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 763f)))));
    var var_0 = global2.x;
    var var_1 = any(global2.zx) != (global2.x | true);
    return Struct_1(global0.zyy, -_wgslsmith_mod_vec3_i32((vec3<i32>(-2147483647i, 51789i, u_input.a) << (vec3<u32>(1u, 0u, u_input.b) % vec3<u32>(32u))) >> ((vec3<u32>(u_input.d, 4902u, u_input.d) << (vec3<u32>(32206u, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(0i, -2147483647i, u_input.a) ^ vec3<i32>(u_input.a, 44861i, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-global0.x));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(global0.x))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(185f + 1218f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -1082f) - var_0.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)))))), (_wgslsmith_mult_vec3_i32(var_0.b, _wgslsmith_sub_vec3_i32(var_0.b, var_0.b)) | var_0.b) & (firstLeadingBit(var_0.b) | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i) << (vec3<u32>(u_input.b, u_input.c, 4294967295u) % vec3<u32>(32u)), ~var_0.b)));
    global0 = vec4<f32>(-740f, _wgslsmith_div_f32(-1000f, var_0.a.x), _wgslsmith_f_op_f32(310f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-118f * -1762f), _wgslsmith_f_op_f32(var_1.a.x * global0.x))))), var_1.a.x);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, var_1.a.x, global0.x, -873f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.x, var_1.a.x, global0.x, var_1.a.x)))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))), global2.x))), global0.x, -1032f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(select(~var_1.b.yx, var_0.b.yy, true), vec2<i32>(-48339i, 0i), -(~var_0.b.yx)) | _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(11324i, -30413i), -28980i), ~var_0.b.zz | var_0.b.xx, vec2<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(u_input.a, 1i))), -124f, -vec4<i32>(firstTrailingBit(var_1.b.x), -(13228i << (u_input.b % 32u)), firstTrailingBit(26085i), -26781i), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(46723u, u_input.c), ~4294967295u), abs(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(1u, u_input.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(u_input.d, u_input.b)), _wgslsmith_add_vec2_u32(vec2<u32>(25534u, 4294967295u), vec2<u32>(u_input.d, u_input.b))))));
}

