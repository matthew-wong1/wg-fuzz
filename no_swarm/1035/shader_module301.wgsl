struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = Struct_2(countOneBits(vec3<i32>(u_input.e.x & arg_0, u_input.e.x, arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-436f, -607f), vec2<f32>(-2135f, 1102f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2722f, -649f) * vec2<f32>(1259f, -313f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1692f, -1000f, 914f, -1582f)))))), _wgslsmith_mod_u32(abs(~u_input.a), u_input.d)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(294f, -810f)), _wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(592f - -498f) - -2054f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-137f, 552f), -1508f))), (select(4294967295u, 104721u, true) << (~0u % 32u)) << (_wgslsmith_mod_u32(1u, 1u) % 32u)));
    let var_1 = Struct_2(vec3<i32>(-33701i, -18585i, firstLeadingBit(~arg_0 ^ ~(-28790i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.a.x, var_0.c.a.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.c.a.x, -344f), var_0.d.a.wx))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(212f, 636f)) * var_0.d.a.xy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1457f, var_0.c.a.x), var_0.d.a.xy)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.a.x, -1126f)))))), var_0.c, Struct_1(var_0.c.a, abs(21076u)));
    var var_2 = var_1.a.x;
    var_2 = arg_0 & _wgslsmith_mult_i32(-reverseBits(_wgslsmith_mod_i32(var_0.a.x, arg_0)), 2147483647i);
    var var_3 = u_input.b;
    return 1000f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: i32) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_2.x, arg_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1.x, -111f, arg_2.x) * vec4<f32>(arg_1.x, 806f, -166f, arg_2.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_2.x, arg_2.x, -742f) - vec4<f32>(arg_2.x, arg_1.x, arg_2.x, -766f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, -962f, arg_2.x), vec4<f32>(-165f, 134f, -890f, 628f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-990f, -567f, arg_2.x, 796f))), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(arg_2.x * arg_2.x), arg_1.x, _wgslsmith_f_op_f32(func_3(-2459i))), true))), 4522u);
    var var_1 = select(vec2<bool>(true, false), select(vec2<bool>(var_0.a.x >= _wgslsmith_f_op_f32(-arg_2.x), any(vec4<bool>(true, true, true, true))), vec2<bool>(false, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, arg_3 >= 0i), false), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), any(vec3<bool>(true, true, true))), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), arg_1.x > arg_2.x))));
    var var_2 = select(select(!select(vec2<bool>(var_1.x, true), !vec2<bool>(var_1.x, var_1.x), !vec2<bool>(true, var_1.x)), select(vec2<bool>(var_1.x, all(vec2<bool>(var_1.x, var_1.x))), !(!vec2<bool>(false, var_1.x)), vec2<bool>(all(vec2<bool>(var_1.x, true)), var_1.x & true)), any(select(vec2<bool>(true, true), !vec2<bool>(var_1.x, false), !vec2<bool>(var_1.x, var_1.x)))), select(!select(!vec2<bool>(true, var_1.x), !vec2<bool>(true, var_1.x), var_1.x | var_1.x), select(!select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false)), vec2<bool>(any(vec4<bool>(true, true, var_1.x, true)), false), vec2<bool>(var_1.x, true)), !vec2<bool>(!var_1.x, true)), true);
    var var_3 = false;
    var var_4 = vec2<u32>(0u, countOneBits(~_wgslsmith_mult_u32(var_0.b, countOneBits(var_0.b))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.a)) - _wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(var_0.a.x, arg_2.x, arg_1.x, -249f))))) - var_0.a);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = true;
    var_0 = any(select(vec4<bool>(-1i == u_input.e.x, -1696f > _wgslsmith_f_op_f32(arg_2.a.x * arg_2.a.x), arg_1, arg_1), select(select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(false, arg_1, false, arg_1), select(vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(true, true, arg_1, false), true)), vec4<bool>(true, true, arg_1, all(vec2<bool>(arg_1, false))), select(!vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(false, true, true, true), !vec4<bool>(arg_1, false, true, false))), !all(vec3<bool>(arg_1, arg_1, true))));
    var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-136f, arg_0.a.x, -401f, arg_2.a.x) - vec4<f32>(1827f, arg_2.a.x, 524f, arg_0.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(min(vec3<u32>(arg_0.b, 59386u, arg_0.b), vec3<u32>(4294967295u, 1u, u_input.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_2.a.x)), arg_0.a.yy, -u_input.c))))), ~_wgslsmith_add_u32(max(_wgslsmith_mod_u32(arg_0.b, 34484u), ~arg_2.b), 61533u));
    var var_2 = Struct_2(max(-vec3<i32>(u_input.e.x, u_input.c, _wgslsmith_mult_i32(2147483647i, u_input.e.x)), -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -46888i, u_input.e.x), vec3<i32>(u_input.c, -2147483647i, u_input.e.x), vec3<i32>(u_input.c, u_input.e.x, -2147483647i)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a.xx) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a.x, arg_0.a.x)))))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(max(359f, 949f)), _wgslsmith_f_op_f32(f32(-1f) * -667f), 1160f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_2.a)))), ~(~(~1u))), arg_0);
    return _wgslsmith_f_op_vec3_f32(arg_0.a.xzy + arg_0.a.yzx);
}

fn func_1() -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-791f + -490f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1171f)))), ~(~u_input.d));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(18362u, var_0.b, 7570u), vec2<f32>(624f, -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(559f, 2584f) + vec2<f32>(var_0.a, 489f)), _wgslsmith_add_i32(1i, u_input.e.x)))), ~(~(~u_input.b))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(303f, var_0.a, var_0.a, var_0.a)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), var_0.a, _wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(0u, 27145u, 16810u), vec2<f32>(827f, -1216f), vec2<f32>(-259f, var_0.a), -2147483647i)).x)), u_input.d)));
    let var_2 = vec4<bool>(true, true, select((any(vec3<bool>(true, false, false)) & true) && true, false, (true & all(vec3<bool>(false, false, false))) & (all(vec3<bool>(true, false, false)) & false)), !(true || (true | (u_input.e.x > 2147483647i))));
    var var_3 = 0u >> (var_0.b % 32u);
    let var_4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(-308f)), _wgslsmith_f_op_f32(f32(-1f) * -435f), var_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(ceil(-162f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a)))))), u_input.b);
    return u_input.d & ~63456u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(-767f, 1220f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1625f)), 1073f)), -291f), 4294967295u);
    let var_1 = var_0;
    var var_2 = vec3<i32>(u_input.c, u_input.c, -4725i);
    var var_3 = any(vec2<bool>(true || (true & select(false, true, true)), any(vec2<bool>(false, true))));
    let var_4 = _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 9965u), ~u_input.d);
    let var_5 = min(~1u, func_1());
    var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(14000i, u_input.e.x, -1i), _wgslsmith_mod_vec3_i32(-firstLeadingBit(vec3<i32>(var_2.x, var_2.x, 36082i)), vec3<i32>(-var_2.x, -2147483647i, var_2.x | 47749i))), vec3<i32>(-1i, u_input.e.x, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(995f, vec2<u32>(~max(~var_4, var_5 ^ var_1.b), ~(~41995u)), abs(_wgslsmith_div_i32(firstLeadingBit(~var_2.x), 33570i)), vec2<u32>(var_0.b, min(_wgslsmith_clamp_u32(var_5 >> (0u % 32u), 1u, 61228u ^ var_4), 45322u)), vec2<i32>(-2147483647i, 0i));
}

