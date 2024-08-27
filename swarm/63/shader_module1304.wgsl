struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<i32>(countOneBits(max(1i, 0i)), -19901i, 26256i);
    let var_1 = Struct_1(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(true, true)));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(min(-var_0.zz, -vec2<i32>(var_0.x, -11813i)), firstLeadingBit(min(var_0.yy, var_0.xx))), var_0.yy), ~var_0.x);
    var var_3 = var_2;
    let var_4 = var_1;
    return var_4;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(true, !arg_3.a.x));
    var var_1 = _wgslsmith_clamp_i32(-31284i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(8994i, -1i), vec2<i32>(-58099i, -23005i)), vec2<i32>(46621i, 12460i)) >> (~vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), abs(vec2<i32>(~29944i, 1i))), select(abs(1i), 3153i, all(!var_0.a)));
    var var_2 = func_2();
    var_1 = -43319i;
    var_1 = -1i;
    return Struct_1(var_0.a);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = vec4<i32>(1i, 1i, 1i, 1i);
    var var_2 = Struct_1(var_0.a);
    var_0 = func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -255f) + vec2<f32>(291f, -485f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(522f, 625f) + vec2<f32>(-239f, arg_1)), func_2().a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, arg_1))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -424f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 380f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(694f, arg_1)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 295f) * vec2<f32>(2546f, arg_1))))), arg_0, 1065f, func_2());
    var var_3 = select(select(select(select(vec3<bool>(true, arg_0.a.x, true), select(vec3<bool>(true, var_2.a.x, false), vec3<bool>(arg_0.a.x, arg_2, arg_0.a.x), arg_2), vec3<bool>(false, true, false)), vec3<bool>(false, true, func_3(vec2<f32>(arg_1, arg_1), Struct_1(arg_0.a), arg_1, Struct_1(var_0.a)).a.x), select(true, true, var_2.a.x | var_0.a.x)), select(!select(vec3<bool>(false, var_0.a.x, true), vec3<bool>(var_0.a.x, true, false), var_0.a.x), !select(vec3<bool>(true, true, var_0.a.x), vec3<bool>(true, false, false), vec3<bool>(false, false, var_2.a.x)), true), arg_2), vec3<bool>(!(_wgslsmith_add_i32(var_1.x, 2147483647i) >= 2147483647i), var_0.a.x, true), false);
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = func_4(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1198f, -1643f) * vec2<f32>(513f, -1595f)))), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(263f, -158f)))), Struct_1(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-1047f - -973f), any(vec4<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))), true, true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)))));
    let var_1 = arg_0;
    let var_2 = vec4<i32>(_wgslsmith_div_i32(arg_1, -_wgslsmith_add_i32(-arg_1, arg_1)), -2147483647i, 43724i, 4289i);
    let var_3 = var_0;
    return var_0;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1483f)))), _wgslsmith_f_op_f32(step(549f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -118f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1072f + _wgslsmith_f_op_f32(f32(-1f) * -238f)) - _wgslsmith_f_op_f32(f32(-1f) * -1834f)) * -1809f), 1327f);
    var var_1 = 1i;
    let var_2 = func_4(Struct_1(vec2<bool>(arg_1.a.x, arg_1.a.x)), 511f, !(!any(vec2<bool>(arg_3.a.x, false))));
    var var_3 = func_1(~u_input.a.x, -25502i);
    var_3 = arg_2;
    return func_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2039f, 764f))), func_4(arg_1, var_0.x, var_0.x >= -1824f).a.x)))), Struct_1(func_3(var_0.zw, arg_1, 1465f, func_1(80579u, 0i)).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f)), Struct_1(vec2<bool>(false, (var_3.a.x == false) && all(vec3<bool>(arg_2.a.x, arg_2.a.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<bool>(true, true, true), func_1(max(~0u | u_input.a.x, _wgslsmith_add_u32(u_input.a.x, countOneBits(32448u))), -7066i >> (_wgslsmith_clamp_u32(0u, u_input.a.x, ~u_input.a.x) % 32u)), Struct_1(!vec2<bool>(false, func_3(vec2<f32>(-1315f, 409f), Struct_1(vec2<bool>(true, true)), -1206f, Struct_1(vec2<bool>(false, true))).a.x)), func_4(Struct_1(vec2<bool>(true, true)), -441f, true));
    let var_1 = !(!select(var_0.a, vec2<bool>(true, !var_0.a.x), func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(974f, 857f), vec2<f32>(-828f, -433f), var_0.a.x)), func_1(u_input.a.x, -12576i), -815f, func_3(vec2<f32>(-194f, -1000f), Struct_1(vec2<bool>(var_0.a.x, var_0.a.x)), -840f, Struct_1(var_0.a))).a));
    var_0 = Struct_1(var_0.a);
    var_0 = Struct_1(var_0.a);
    var_0 = func_5(!select(vec3<bool>(var_0.a.x, u_input.a.x == 26219u, var_1.x), !(!vec3<bool>(false, var_1.x, false)), select(!vec3<bool>(false, true, var_0.a.x), vec3<bool>(true, false, var_1.x), vec3<bool>(false, true, var_1.x))), Struct_1(!var_0.a), Struct_1(func_1(_wgslsmith_mult_u32(1u, 1u) & firstLeadingBit(u_input.a.x), -_wgslsmith_mult_i32(2147483647i, 1i)).a), Struct_1(var_1));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -131f), _wgslsmith_f_op_f32(abs(188f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1329f * -1557f)) * 1f));
    var_0 = func_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(60686u), 54846u, u_input.a.x), vec3<u32>(u_input.a.x | 1u, ~u_input.a.x, select(4294967295u, u_input.a.x, false))), -max(1i, 0i));
    var var_3 = u_input.a.yx >> (vec2<u32>(1u, ~30395u) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-1i), _wgslsmith_div_u32(~max(u_input.a.x, 1u), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, var_3.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_3.x), vec2<u32>(4294967295u, 40984u))) >> ((~4294967295u << ((51360u << (u_input.a.x % 32u)) % 32u)) % 32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1268f, -2087f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-240f * _wgslsmith_f_op_f32(select(607f, -100f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(906f, _wgslsmith_f_op_f32(min(645f, -584f)))))), vec4<u32>(4294967295u ^ (u_input.a.x >> (1u % 32u)), u_input.a.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, var_3.x), 125054u), 1u) << (countOneBits(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a.x, var_3.x, 69101u, var_3.x), vec4<u32>(var_3.x, u_input.a.x, u_input.a.x, 4294967295u), true), _wgslsmith_mult_vec4_u32(vec4<u32>(8661u, u_input.a.x, u_input.a.x, 55959u), vec4<u32>(u_input.a.x, 1u, 1u, var_3.x)))) % vec4<u32>(32u)));
}

