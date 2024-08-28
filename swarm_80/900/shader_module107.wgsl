struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    return !vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1576f, arg_0))) > _wgslsmith_f_op_f32(-1000f + arg_0), false);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    let var_0 = countOneBits(abs(countOneBits(min(arg_1.a, 1i) << (~arg_3 % 32u))));
    let var_1 = select(vec4<bool>(!all(vec2<bool>(true, true)), any(!func_1(arg_2.x)), select(firstTrailingBit(arg_0.x) == ~69162u, true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), false))), any(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false))), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), any(vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, true)), 112f > _wgslsmith_f_op_f32(arg_2.x * arg_2.x), false, true)), select(vec4<bool>(true, func_1(_wgslsmith_f_op_f32(step(1410f, arg_2.x))).x, all(vec4<bool>(true, true, true, true)), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), 1603u < arg_3), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), vec4<bool>(_wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(1i, u_input.a.x)) >= u_input.a.x, true, true, false)));
    var var_2 = Struct_1(max(var_0, -61206i), vec4<u32>(_wgslsmith_div_u32(min(_wgslsmith_mod_u32(arg_3, u_input.b), 120866u), _wgslsmith_mult_u32(22496u << (arg_3 % 32u), select(u_input.b, arg_1.b.x, var_1.x))), arg_3, _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, u_input.b), arg_0.yz), 25087u), _wgslsmith_div_u32(arg_3, 1u)), ~(~1101u)), var_0);
    let var_3 = max(var_2.c, -2147483647i);
    var var_4 = min(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, arg_1.b.x, 1u, u_input.b)), var_2.b), firstLeadingBit(~4294967295u));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-506f)) + 444f), 246f));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-450f * _wgslsmith_f_op_f32(ceil(710f)));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) + _wgslsmith_div_f32(-2621f, -501f))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(u_input.c.wz, u_input.c.zy), 45402u), Struct_1(u_input.d >> (4294967295u % 32u), ~vec4<u32>(u_input.b, u_input.b, u_input.c.x, u_input.c.x), u_input.d & -14270i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1.x, var_1, var_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(486f, arg_1.x, 1006f, -976f) * vec4<f32>(1791f, arg_1.x, -365f, -361f)))), u_input.b)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -383f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1094f)), 327f, true)), var_1) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + -1664f)), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1859f - 1341f) + -836f))), !select(arg_0.ww, !vec2<bool>(false, arg_0.x), arg_0.x), var_1, !func_1(_wgslsmith_f_op_f32(var_1 + 1053f)).x);
    var var_3 = abs(vec2<u32>(_wgslsmith_add_u32(~(~0u), u_input.b), u_input.b));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1 + -1000f), _wgslsmith_f_op_f32(max(1000f, arg_1.x)))))) + arg_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1, -1496f, 899f), var_2.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b * var_2.b), _wgslsmith_f_op_vec3_f32(-var_2.b))))), vec2<bool>(any(arg_0.yy) != false, !(var_2.e | !arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(524f)) * var_1), true);
    return Struct_1(u_input.d, u_input.c, ~firstTrailingBit(u_input.a.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1114f * -921f)) + -389f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-1261f + 605f), _wgslsmith_f_op_f32(583f + 1274f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1490f, 1198f, -1426f))))), select(func_1(-1739f), vec2<bool>(true, !all(vec4<bool>(false, false, true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_1(_wgslsmith_f_op_f32(-1209f + -135f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1741f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(821f, 574f)), _wgslsmith_f_op_f32(-768f - -929f)))), _wgslsmith_f_op_f32(sign(1758f)), !(func_1(-776f).x & true))), true);
    let var_1 = var_0;
    let var_2 = Struct_2(528f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a, -788f, -177f), vec3<f32>(796f, -1000f, 892f))))), var_0.c.x)), var_0.b), select(!select(var_0.c, select(var_0.c, var_0.c, vec2<bool>(var_0.e, true)), !var_1.c), vec2<bool>(var_0.c.x, var_1.c.x && true), select(var_1.c, vec2<bool>(arg_1.b.x >= 4294967295u, !var_0.c.x), vec2<bool>(var_0.e, all(vec4<bool>(true, false, true, var_0.e))))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(round(-1538f))), _wgslsmith_f_op_f32(trunc(155f))), !(!all(vec3<bool>(true, true, true))));
    var var_3 = var_2;
    let var_4 = -vec3<i32>(-3391i, 2147483647i, -abs(_wgslsmith_clamp_i32(-2147483647i, 12799i, arg_1.c)));
    return _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_4.x, 12814i, -1i, -26583i) | min(vec4<i32>(u_input.d, 1i, u_input.d, 2147483647i), vec4<i32>(arg_0.x, var_4.x, var_4.x, arg_1.a)), abs(vec4<i32>(var_4.x, -1i, -1i, var_4.x))), max(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_0.x, -2147483647i, -1i), vec4<i32>(-12883i, 0i, arg_1.c, var_4.x)) | _wgslsmith_mod_vec4_i32(vec4<i32>(-7751i, 24441i, u_input.d, arg_1.a), vec4<i32>(arg_1.a, 54193i, -12988i, arg_0.x)), vec4<i32>(-22030i << (1u % 32u), arg_0.x << (arg_1.b.x % 32u), 13579i, arg_1.a)), vec4<i32>(~min(-1i, 7668i), var_4.x, -2147483647i, abs(1i))), vec4<i32>(-_wgslsmith_mult_i32(-arg_0.x, 2147483647i), max(i32(-1i) * -43923i, select(arg_1.c, ~2147483647i, any(vec4<bool>(var_3.e, false, var_2.e, var_0.c.x)))), ~_wgslsmith_sub_i32(var_4.x, var_4.x | -4582i), 35774i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.d, vec4<u32>(~u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), countOneBits(1i));
    var var_1 = u_input.a.x;
    var var_2 = ~var_0.b.x;
    var var_3 = select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), !func_1(1000f), vec2<bool>(true, all(vec2<bool>(true, true)))), all(vec4<bool>(true, true, true, true))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(461f + 389f)))).x);
    let var_4 = _wgslsmith_mult_vec4_i32(~firstTrailingBit(countOneBits(~vec4<i32>(2147483647i, 0i, 65290i, u_input.a.x))), func_4(_wgslsmith_clamp_vec2_i32(u_input.a.yx, u_input.a.zy, _wgslsmith_div_vec2_i32(u_input.a.zx | u_input.a.zz, reverseBits(u_input.a.yx))), func_2(!(!vec4<bool>(false, var_3.x, false, var_3.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1581f), vec2<f32>(1000f, 203f), select(vec2<bool>(var_3.x, false), vec2<bool>(false, true), vec2<bool>(false, var_3.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-828f, -953f))))))), u_input.c.x);
}

