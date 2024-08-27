struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: i32) -> vec3<bool> {
    let var_0 = -54809i;
    let var_1 = var_0;
    return vec3<bool>(!(arg_0 && !arg_0), true, (u_input.a.x & 56336u) <= ~(~4294967295u << ((1u ^ u_input.d.x) % 32u)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<bool>) -> i32 {
    var var_0 = Struct_2(Struct_1(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1400f)), u_input.c.x, vec2<u32>(u_input.b, u_input.a.x), !vec3<bool>(true, arg_2.x, arg_2.x));
    var var_1 = Struct_2(var_0.a, ~var_0.b, abs((_wgslsmith_mod_vec2_u32(u_input.a.zz, vec2<u32>(21836u, u_input.a.x)) >> (var_0.c % vec2<u32>(32u))) >> (firstTrailingBit(_wgslsmith_mod_vec2_u32(u_input.a.zx, vec2<u32>(var_0.c.x, var_0.c.x))) % vec2<u32>(32u))), select(select(vec3<bool>(var_0.a.a.x, var_0.d.x, var_0.d.x), !select(var_0.a.a, vec3<bool>(var_0.a.a.x, true, var_0.a.a.x), vec3<bool>(true, true, false)), select(arg_2, var_0.d, var_0.a.a.x || true)), arg_2, vec3<bool>(5597i < var_0.b, any(!arg_2), var_0.d.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-arg_1);
    let var_3 = Struct_2(var_1.a, var_1.b, var_1.c, !(!var_1.d));
    var var_4 = Struct_1(var_1.d, 1574f);
    return 2404i;
}

fn func_2() -> vec3<i32> {
    let var_0 = -2147483647i;
    let var_1 = Struct_2(Struct_1(!func_1(any(vec3<bool>(true, true, false)), 1i, -16279i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2128f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1800f * 1819f)))), ~(~_wgslsmith_div_i32(-var_0, func_3(u_input.d.x, vec4<f32>(-1987f, -330f, -1345f, 879f), vec3<bool>(false, true, true)))), u_input.d, vec3<bool>(true, true, true));
    return u_input.c.xzw;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    let var_0 = 1307f;
    let var_1 = 646f;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -134f) * _wgslsmith_f_op_f32(-var_0)), arg_2.x)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_f_op_f32(-var_1))) + _wgslsmith_div_f32(-487f, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(var_1, 1152f))))), 566f);
    var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 - vec3<f32>(2934f, -2038f, var_0)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(arg_2)))))));
    var var_3 = Struct_2(arg_1, _wgslsmith_mod_i32(u_input.c.x << (~select(u_input.a.x, 0u, false) % 32u), -_wgslsmith_div_i32(-u_input.c.x, -40025i)), vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(u_input.d.x, u_input.b), u_input.b, ~12498u), (~u_input.b << (u_input.a.x % 32u)) | (_wgslsmith_sub_u32(u_input.b, u_input.a.x) ^ u_input.b)), vec3<bool>(false, false, true));
    return var_3.a.a.x;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + -696f))))) - arg_1.b);
    return i32(-1i) * -21809i;
}

fn func_6(arg_0: i32) -> Struct_2 {
    var var_0 = -1000f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-641f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1420f))))))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1429f, -202f))))) - 1725f)));
    let var_2 = _wgslsmith_mod_vec3_i32(countOneBits(-_wgslsmith_div_vec3_i32(u_input.c.yzz, vec3<i32>(2147483647i, 2147483647i, u_input.e))), select(_wgslsmith_sub_vec3_i32(-u_input.c.wzy, vec3<i32>(arg_0, -23661i, 46874i)), u_input.c.ywx >> (reverseBits(u_input.a) % vec3<u32>(32u)), false)) << (_wgslsmith_div_vec3_u32(select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, u_input.b, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 79981u, u_input.a.x), u_input.a), vec3<u32>(u_input.d.x, 4294967295u, u_input.b)), select(u_input.a, u_input.a, true), select(true, true, true)), u_input.a) % vec3<u32>(32u));
    var var_3 = Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, var_1 <= 204f, true), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(sign(-1000f))), -((var_2.x | arg_0) | _wgslsmith_sub_i32(-1i, u_input.c.x)) ^ _wgslsmith_mod_i32(27795i, _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, arg_0), u_input.c.xz))), select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x & u_input.b, u_input.d.x), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.d.x), u_input.a.zx)), _wgslsmith_mod_vec2_u32(select(u_input.d, u_input.a.xz, true), u_input.a.zx) | ~abs(u_input.a.xy), !select(vec2<bool>(false, false), vec2<bool>(true, true), true)), func_1(any(vec3<bool>(all(vec2<bool>(false, false)), true, false)), 40404i, firstTrailingBit(func_3(~u_input.d.x, vec4<f32>(var_1, -229f, var_1, 518f), vec3<bool>(true, true, true)))));
    return Struct_2(var_3.a, abs(1i), vec2<u32>(1u, ~(_wgslsmith_sub_u32(u_input.b, var_3.c.x) >> (1u % 32u))), !select(var_3.a.a, !(!var_3.a.a), !(!var_3.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (u_input.c.x >= 1853i) && false;
    var var_1 = all(!select(vec3<bool>(true, true, true), func_1(true, 19803i, 9730i), true)) && func_1(!(-u_input.e <= 0i), select(-15258i, _wgslsmith_mult_i32(1i, u_input.c.x), ~u_input.b < u_input.b), -abs(select(u_input.c.x, u_input.c.x, false))).x;
    var var_2 = func_6(func_5(func_4(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, -1902i, 1i), u_input.c.wxz), func_2()), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), _wgslsmith_f_op_f32(2412f - 1002f)), vec3<f32>(-187f, _wgslsmith_f_op_f32(604f + -561f), _wgslsmith_div_f32(114f, -480f))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), 733f), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-353f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1f, -196f, 1707f)));
    var_2 = func_6(39738i);
    var var_3 = -(2147483647i << (~(~_wgslsmith_mod_u32(59590u, u_input.d.x)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2471f, 360f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.a.b, -634f)))))))), ~select(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.c.x, var_2.c.x, u_input.b, 1u), vec4<u32>(var_2.c.x, u_input.b, 4294967295u, var_2.c.x), vec4<u32>(53453u, 1414u, var_2.c.x, var_2.c.x)), vec4<u32>(73165u, var_2.c.x, 53459u, var_2.c.x)), ~select(vec4<u32>(0u, u_input.d.x, u_input.d.x, 43721u), vec4<u32>(var_2.c.x, var_2.c.x, u_input.d.x, var_2.c.x), vec4<bool>(false, true, var_2.a.a.x, true)), !vec4<bool>(var_2.a.a.x, true, var_2.a.a.x, false)), firstLeadingBit(~u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_2.a.b, var_2.a.b, var_2.a.a.x)), -1000f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(650f, 325f), vec2<f32>(var_2.a.b, -842f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a.b, -1727f), vec2<f32>(var_2.a.b, var_2.a.b), var_2.d.x))))));
}

