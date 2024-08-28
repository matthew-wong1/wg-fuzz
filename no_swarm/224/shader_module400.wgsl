struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1055f + -523f) - _wgslsmith_f_op_f32(f32(-1f) * -2319f))), 494f), vec2<f32>(-1000f, -1867f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(103f, 949f, var_0.x, -1000f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1092f, var_1.x, var_1.x, -3083f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-954f, var_0.x, _wgslsmith_f_op_f32(471f - var_1.x), _wgslsmith_f_op_f32(trunc(var_1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 236f, var_1.x, 1557f)))))))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), true)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1042f * var_0.x), -652f))) + _wgslsmith_f_op_f32(-var_0.x));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-866f)), var_0.x, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1184f - var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -256f, _wgslsmith_f_op_f32(sign(var_1.x)))));
    return any(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), 1350f >= var_1.x), !((-379f == var_1.x) & true)));
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = Struct_1(vec2<bool>(false, false), abs(global0.x), vec3<bool>(!(func_3() | any(vec2<bool>(false, false))), all(vec4<bool>(all(vec2<bool>(true, true)), true, all(vec2<bool>(false, true)), false)), false));
    return !vec2<bool>(var_0.c.x, var_0.a.x);
}

fn func_1(arg_0: u32, arg_1: f32) -> f32 {
    let var_0 = arg_1;
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 + 627f)))) >= arg_1, 736f > arg_1, any(select(select(vec2<bool>(true, true), func_2(Struct_2(530f, vec4<f32>(-544f, arg_1, arg_1, arg_1))), func_2(Struct_2(var_0, vec4<f32>(-153f, 380f, arg_1, arg_1)))), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(var_0 + 1756f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 589f)), _wgslsmith_f_op_f32(-var_0), -244f))));
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(ceil(265f))), 1626f)), _wgslsmith_f_op_f32(sign(-399f)), _wgslsmith_f_op_f32(floor(1128f)))));
    global0 = vec3<i32>(~_wgslsmith_dot_vec4_i32((vec4<i32>(1i, 1i, global0.x, global0.x) >> (vec4<u32>(24542u, 79411u, arg_0, u_input.a.x) % vec4<u32>(32u))) << (~vec4<u32>(0u, 69906u, u_input.a.x, 27468u) % vec4<u32>(32u)), min(select(vec4<i32>(global0.x, 0i, global0.x, 44052i), vec4<i32>(-87730i, global0.x, global0.x, 13207i), var_1.x), vec4<i32>(16411i, global0.x, global0.x, global0.x))), global0.x, -10651i);
    return 895f;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: u32, arg_3: f32) -> Struct_2 {
    let var_0 = select(vec4<bool>(any(!select(vec3<bool>(false, arg_1.x, false), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), false)), arg_1.x, reverseBits(u_input.a.x) != 55830u, !arg_1.x), select(select(select(select(vec4<bool>(true, arg_1.x, true, true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), false), select(vec4<bool>(true, true, false, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), arg_1.x), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), arg_1.x, select(arg_1.x, arg_1.x, arg_1.x), func_3()), select(!vec4<bool>(false, arg_1.x, true, false), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), arg_1.x)), !(!select(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, true, arg_1.x, true))), vec4<bool>(!func_2(Struct_2(1961f, vec4<f32>(699f, -1179f, -357f, -336f))).x, (arg_1.x && arg_1.x) & func_3(), false, true)), select(!vec4<bool>(arg_1.x && true, true, all(arg_1), !arg_1.x), vec4<bool>(false, true, true, all(select(vec2<bool>(true, arg_1.x), arg_1, arg_1))), vec4<bool>(!(!arg_1.x), true, arg_1.x || all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), !(u_input.a.x >= 8648u))));
    var var_1 = true;
    var var_2 = vec4<f32>(arg_3, 951f, 154f, _wgslsmith_f_op_f32(f32(-1f) * -452f));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, -540f) + var_2.xy)))));
    let var_4 = vec3<bool>(true, select(!select(var_0.x, true, false) || var_0.x, arg_1.x, true), !var_0.x);
    return Struct_2(_wgslsmith_div_f32(-338f, _wgslsmith_f_op_f32(floor(var_3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(670f)), -149f, _wgslsmith_f_op_f32(select(arg_0, arg_0, var_4.x)), 980f), vec4<f32>(arg_3, 1791f, 1678f, _wgslsmith_f_op_f32(exp2(var_2.x))))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(any(vec3<bool>(false, true, true)), all(vec3<bool>(false, true, false))), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false)), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), true)), -1456i, vec3<bool>(2993i <= _wgslsmith_div_i32(abs(global0.x), 1i << (u_input.a.x % 32u)), !func_2(arg_0).x, true));
    let var_1 = arg_0.b.xxz;
    let var_2 = u_input.a;
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-228f + _wgslsmith_f_op_f32(-arg_0.a)), arg_0.b));
    var_0 = Struct_1(var_0.a, -(var_0.b & ~var_0.b), var_0.c);
    return Struct_2(_wgslsmith_div_f32(153f, arg_0.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_0.b + vec4<f32>(arg_0.a, arg_0.a, arg_0.a, -2038f))))), arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(1871f, vec2<bool>(true, true), ~u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -523f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(0u, 1895f)), _wgslsmith_div_f32(186f, 1177f))))));
    global0 = _wgslsmith_add_vec3_i32(max(vec3<i32>(global0.x, -1i, -1i), ~vec3<i32>(2147483647i, global0.x, global0.x) >> (select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 4203u, u_input.a.x), vec3<u32>(4294967295u, 40855u, 0u)), vec3<u32>(u_input.a.x, 1u, u_input.a.x) ^ vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), true) % vec3<u32>(32u))), vec3<i32>(global0.x, -22349i, global0.x));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a), var_0.a, true)) + var_0.b.x), vec4<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(-func_5(Struct_2(326f, vec4<f32>(-937f, var_0.a, var_0.a, 278f))).b.x), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(var_0.a * 720f)))));
    var_1 = Struct_3(Struct_2(var_1.a.b.x, var_1.a.b));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~u_input.a.x ^ ~1u, 0u), abs(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(0u, 4294967295u, 1u)), vec3<u32>(u_input.a.x, u_input.a.x, 76650u)) ^ _wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.a.x, 4294967295u, 63447u), vec3<u32>(u_input.a.x, 59328u, u_input.a.x), false), firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 60130u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(~max(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global0.x, 0i, 0i), vec4<i32>(26903i, -65755i, global0.x, global0.x)), -vec4<i32>(global0.x, global0.x, global0.x, 1i)), max(firstLeadingBit(vec4<i32>(global0.x, 19116i, global0.x, -25076i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global0.x, global0.x, global0.x), vec4<i32>(59829i, global0.x, -14726i, global0.x), vec4<i32>(-12399i, 28937i, -12456i, global0.x) >> (vec4<u32>(37526u, var_2, var_2, u_input.a.x) % vec4<u32>(32u))))), 2911f, vec3<f32>(_wgslsmith_f_op_f32(trunc(266f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-285f)) + _wgslsmith_f_op_f32(var_0.a - 298f)))), _wgslsmith_f_op_f32(var_1.a.a - _wgslsmith_div_f32(var_1.a.b.x, 604f))));
}

