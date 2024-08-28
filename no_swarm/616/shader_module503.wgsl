struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<f32> {
    var var_0 = any(!(!vec3<bool>(all(vec2<bool>(true, false)), true, true)));
    return _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1232f, -2399f)))), 1000f), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(326f, -865f) + 928f), -1887f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-937f * -1510f), -228f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(827f, 1400f))), true)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.c.zy, arg_2.d)), _wgslsmith_f_op_vec2_f32(func_3())) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(ceil(-585f)), -1000f)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1127f)) * _wgslsmith_f_op_f32(-arg_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.a.x, arg_2.b)))));
    var var_1 = u_input.c;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1111f, -1000f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.x)), arg_2.b)))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.b, arg_2.a.x), _wgslsmith_f_op_f32(sign(arg_2.b))), vec4<f32>(328f, _wgslsmith_f_op_f32(select(var_0.x, 998f, all(arg_1.zx))), -433f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + -640f)))), arg_2.d);
    let var_3 = Struct_2(vec4<i32>(firstLeadingBit(1i), u_input.c.x | 75268i, reverseBits(-var_1.x), u_input.a), Struct_1(firstLeadingBit(vec4<i32>(var_1.x, -1i, u_input.a, -1i) & -vec4<i32>(-53413i, -13550i, var_1.x, var_1.x)), any(vec3<bool>(true, true, arg_1.x)), vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(max(-1997f, _wgslsmith_f_op_f32(sign(-306f)))), var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x - var_2.a.x) * _wgslsmith_f_op_f32(min(-742f, -628f))))), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) - _wgslsmith_f_op_vec2_f32(func_3()).x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.d.x, 251f))))));
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(650f, 135f)) * var_3.b.c.x) + _wgslsmith_f_op_f32(-938f + -1099f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a.x))))));
    return vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-229f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_3.b.c.x)))), arg_1.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1224f * 1541f))), -570f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(277f, var_3.b.c.x, any(select(vec3<bool>(true, arg_0.x, false), arg_1.ywz, arg_0.x))))), _wgslsmith_f_op_f32(round(arg_2.b)));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_1.a, Struct_1(arg_1.a, !arg_1.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-3030f, arg_0, 655f, -1000f) * arg_1.c), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(826f, 340f, 1602f, -406f), vec4<f32>(arg_1.c.x, -1981f, arg_1.c.x, arg_0)), _wgslsmith_f_op_vec4_f32(-arg_1.c)), !vec4<bool>(arg_1.b, arg_1.b, false, arg_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x) >= _wgslsmith_div_f32(1358f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.c.x)) * _wgslsmith_f_op_f32(arg_0 + 1000f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0, arg_1.c.x), _wgslsmith_f_op_f32(-arg_0))))))));
    var_0 = Struct_2(vec4<i32>(_wgslsmith_div_i32(~arg_1.a.x, -2147483647i), ~reverseBits(~arg_1.a.x), -2891i, min(15327i, ~arg_1.a.x)), arg_1, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-947f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f) - var_0.b.c.x)));
    return var_0.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = Struct_2(vec4<i32>(-arg_0.a.x, -12205i, arg_0.b.a.x, -arg_0.b.a.x), arg_0.b, all(vec3<bool>(false, arg_1.x || true, (arg_2 < 50491u) & true)), 496f);
    let var_1 = Struct_3(var_0.b.c.zx, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_3.x, _wgslsmith_f_op_f32(ceil(-936f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1358f - var_0.b.c.x)))))), _wgslsmith_f_op_vec4_f32(-var_0.b.c), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b.c.yy, arg_0.b.c.zx))))));
    let var_2 = var_1.d;
    let var_3 = vec3<u32>(~(~(~arg_2 & _wgslsmith_clamp_u32(0u, arg_2, 4294967295u))), arg_2, ~arg_2);
    let var_4 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.b.a, ~(arg_0.b.a | vec4<i32>(-2147483647i, -41959i, var_0.a.x, -2147483647i)) ^ firstTrailingBit(vec4<i32>(-1i, arg_0.b.a.x, var_0.b.a.x, 46177i))), ~(var_0.b.a & reverseBits(vec4<i32>(-32488i, arg_0.a.x, -44969i, 19319i) & vec4<i32>(var_0.a.x, var_0.a.x, -22746i, var_0.b.a.x))), vec4<i32>(u_input.c.x, ~(~2147483647i), _wgslsmith_mod_i32(0i, u_input.c.x), countOneBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c.x, var_0.b.a.x), arg_0.b.a.x))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_0.b.c.x)), _wgslsmith_f_op_f32(-arg_0.b.c.x))))), var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, -1052f, arg_3.x, arg_0.d)), arg_0.b.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.wy))) * _wgslsmith_f_op_vec2_f32(-arg_0.b.c.xz)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = func_5(Struct_2(max(vec4<i32>(2147483647i, ~u_input.b, -1i, u_input.b | -1i), vec4<i32>(u_input.c.x & 0i, 0i, -2147483647i, u_input.c.x)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1457f)), Struct_1(-vec4<i32>(-15547i, 17138i, 34713i, 2147483647i), select(true, false, false), _wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(false, true), vec4<bool>(true, true, true, true), Struct_3(vec2<f32>(467f, 1369f), -375f, vec4<f32>(733f, -1817f, 790f, 1849f), vec2<f32>(-869f, -1000f)))))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -598f) - _wgslsmith_div_f32(1286f, -2012f))), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(!all(vec4<bool>(false, false, true, false)), true, any(vec3<bool>(true, true, true)))), arg_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1483f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1069f), _wgslsmith_f_op_f32(1089f + 1345f), func_4(-826f, Struct_1(vec4<i32>(u_input.c.x, -2300i, u_input.b, u_input.b), false, vec4<f32>(304f, 307f, -1071f, 830f))).b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1509f - -1351f) + -854f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1105f), _wgslsmith_f_op_f32(1000f + -632f), _wgslsmith_f_op_f32(select(-1185f, -1203f, false))), vec3<f32>(_wgslsmith_f_op_f32(abs(438f)), _wgslsmith_f_op_f32(max(1000f, 964f)), _wgslsmith_div_f32(-598f, 169f)), any(vec2<bool>(true, true))))));
    var_0 = func_5(Struct_2(reverseBits(reverseBits(firstLeadingBit(vec4<i32>(-1i, u_input.a, -45282i, u_input.c.x)))), func_4(1f, Struct_1(select(vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.b), vec4<i32>(u_input.a, 2147483647i, u_input.a, 11050i), vec4<bool>(false, false, true, true)), true, var_0.c)), arg_0.x > _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.x, arg_0.x, 1u), vec4<u32>(90922u, arg_0.x, 72846u, arg_0.x)), 1000f), vec3<bool>(true, true, true), 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -248f, -440f))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d.x))), var_0.d.x, var_0.d.x)));
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f + var_0.d.x))) - _wgslsmith_f_op_f32(var_0.a.x + -1248f)), func_4(_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, 269f)))), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1180f), func_4(_wgslsmith_f_op_f32(step(469f, var_0.b)), Struct_1(vec4<i32>(-2147483647i, u_input.a, 2147483647i, u_input.b), true, var_0.c)))));
    var_1 = Struct_1(~vec4<i32>(var_1.a.x, u_input.c.x, _wgslsmith_sub_i32(2147483647i, var_1.a.x) << (~arg_0.x % 32u), ~63175i), !((var_1.c.x == 490f) | true) & (u_input.a != var_1.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.c.x, var_0.a.x, true))), _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(min(676f, var_1.c.x))), _wgslsmith_f_op_f32(-var_0.d.x)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2(!vec2<bool>(var_1.b, false), select(vec4<bool>(var_1.b, true, var_1.b, var_1.b), vec4<bool>(var_1.b, true, var_1.b, var_1.b), var_1.b), func_5(Struct_2(var_1.a, Struct_1(vec4<i32>(-13192i, 2147483647i, 4601i, var_1.a.x), false, vec4<f32>(var_1.c.x, 1000f, 1577f, -1000f)), var_1.b, var_0.c.x), vec3<bool>(var_1.b, var_1.b, true), 1u, var_0.c.zyx)))))));
    let var_2 = min(arg_0.x, _wgslsmith_sub_u32(arg_0.x, arg_0.x));
    return Struct_3(_wgslsmith_f_op_vec2_f32(min(var_1.c.yx, vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, func_5(Struct_2(vec4<i32>(u_input.b, 0i, 18289i, u_input.a), Struct_1(var_1.a, var_1.b, vec4<f32>(145f, 171f, -1182f, 958f)), true, var_1.c.x), !vec3<bool>(var_1.b, var_1.b, var_1.b), select(1u, 519u, true), var_0.c.zxz).b))), var_1.c.x, _wgslsmith_f_op_vec4_f32(floor(func_5(Struct_2(vec4<i32>(u_input.a, -2147483647i, 36988i, u_input.b) >> (vec4<u32>(4294967295u, 7443u, var_2, arg_0.x) % vec4<u32>(32u)), func_4(-283f, Struct_1(var_1.a, true, vec4<f32>(-845f, var_0.d.x, -330f, var_0.d.x))), var_1.b, var_0.b), !select(vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(true, true, false), vec3<bool>(true, true, var_1.b)), ~var_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(-422f, -1676f, var_0.a.x) * _wgslsmith_f_op_vec3_f32(-var_1.c.yyy))).c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * var_1.c.ww));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(_wgslsmith_sub_u32(~(~43060u), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 52925u), ~vec3<u32>(29200u, 27291u, 0u))));
    let var_1 = func_1(~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 22102u, 0u), vec4<u32>(1u, 1u, 17861u, 1u)), firstLeadingBit(51886u), reverseBits(1u))));
    let var_2 = !all(vec2<bool>(true, true));
    var_0 = ~_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_sub_u32(47133u, _wgslsmith_dot_vec4_u32(vec4<u32>(1502u, 0u, 0u, 1u), vec4<u32>(35295u, 36314u, 72082u, 30832u)))), ~firstLeadingBit(~1u));
    var_0 = abs(_wgslsmith_dot_vec4_u32(countOneBits(~select(vec4<u32>(31215u, 81597u, 1u, 4294967295u), vec4<u32>(0u, 0u, 65171u, 16599u), vec4<bool>(false, false, false, var_2))), vec4<u32>(1u, 1u, 1u, 1u)));
    var_0 = 3048u;
    var_0 = _wgslsmith_sub_u32(firstTrailingBit(select(~countOneBits(4294967295u), 0u, var_2)), ~(~_wgslsmith_mult_u32(2894u, 45030u)) << (0u % 32u));
    var var_3 = _wgslsmith_f_op_f32(1222f + func_4(2517f, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_f_op_f32(max(var_1.c.x, var_1.d.x))), Struct_1(vec4<i32>(0i, u_input.a, u_input.b, 1i), true, _wgslsmith_div_vec4_f32(vec4<f32>(167f, var_1.d.x, -349f, var_1.a.x), vec4<f32>(var_1.c.x, var_1.a.x, var_1.c.x, var_1.d.x))))).c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.x - 463f), _wgslsmith_f_op_f32(var_1.a.x * var_1.d.x)) + _wgslsmith_div_f32(-712f, 964f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b * var_1.c.x), _wgslsmith_f_op_f32(-252f * var_1.c.x)))), _wgslsmith_f_op_vec4_f32(round(var_1.c)));
}

