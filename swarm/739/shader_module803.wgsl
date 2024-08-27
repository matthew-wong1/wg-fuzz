struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-886f)), 1896f, -2581f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(528f, 426f, 104f), vec3<f32>(-321f, -418f, 742f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(776f, 908f, -549f) + vec3<f32>(-607f, 1482f, -868f)) - vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(920f, 255f, -439f), vec3<f32>(2247f, -2477f, 561f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(981f, -1030f, 1299f))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, -101f) - _wgslsmith_f_op_vec3_f32(-var_0.a)))));
    let var_1 = vec2<i32>(reverseBits(abs(countOneBits(u_input.b))), ~u_input.b);
    var var_2 = vec2<bool>(true, !(!any(!arg_0.xz)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-468f, var_0.a.x, 548f), vec3<f32>(-1000f, -1261f, 267f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.x, var_0.a.x, -363f))))))));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, 1361f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1243f, 1598f, -746f, -1000f)))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = arg_0.zz;
    var var_1 = Struct_1(arg_0);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(2558f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_0.x) + _wgslsmith_f_op_f32(134f - 372f)))), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(280f + 1440f), _wgslsmith_f_op_f32(sign(661f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.a.x, -1937f, true)), arg_0.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_0.x, var_0.x)))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 661f)), var_2.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, arg_1.x, false))))))));
    let var_4 = Struct_1(var_3.zyx);
    return select(select(vec2<bool>(false, true), !(!select(vec2<bool>(arg_1.x, true), arg_1.yz, vec2<bool>(arg_1.x, true))), !arg_1.x), !select(!arg_1.zx, vec2<bool>(!arg_1.x, arg_1.x), !arg_1.yx), false);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = !select(vec4<bool>(!func_2(arg_2.a, vec3<bool>(false, arg_0.x, arg_0.x)).x, true, false, true), select(!(!vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), vec4<bool>(arg_1.x <= arg_1.x, true, false, true), any(vec3<bool>(false, false, true))), select(!vec4<bool>(arg_0.x, false, true, false), select(vec4<bool>(arg_0.x, arg_0.x, false, true), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, false, false), vec4<bool>(false, arg_0.x, arg_0.x, false))), vec4<bool>(arg_0.x, false == arg_0.x, !arg_0.x, arg_0.x && true)));
    let var_1 = !var_0.wzy;
    var var_2 = select(select(vec4<bool>(!(52359u > u_input.a.x), false, !(var_0.x | var_1.x), false), vec4<bool>(!any(vec3<bool>(true, var_1.x, true)), !select(true, false, false), (i32(-1i) * -2147483647i) <= (u_input.e | u_input.e), arg_0.x & select(var_1.x, false, var_0.x)), false), var_0, !(1u < (_wgslsmith_dot_vec4_u32(vec4<u32>(8963u, u_input.d.x, u_input.c, 84519u), vec4<u32>(u_input.d.x, 43236u, u_input.d.x, 93379u)) >> (countOneBits(0u) % 32u))));
    let var_3 = !var_0.wx;
    let var_4 = arg_2;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-780f, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(select(1662f, 1672f, true)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1797f), _wgslsmith_f_op_f32(var_4.a.x - arg_2.a.x)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_4.a))))), arg_2.a, !(!(true & var_1.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32, arg_3: bool) -> f32 {
    var var_0 = u_input.d.yyw;
    var_0 = max(max(vec3<u32>(~(~u_input.a.x), ~var_0.x | ~4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(22288u, u_input.c, var_0.x, 0u), u_input.d)), _wgslsmith_sub_vec3_u32(firstLeadingBit(~u_input.a.xwy), u_input.a.xzx)), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, _wgslsmith_div_u32(var_0.x, 65363u)), 81004u, ~_wgslsmith_mod_u32(u_input.c, var_0.x)) >> ((u_input.a.zww >> (vec3<u32>(var_0.x, var_0.x, 12180u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_2(vec3<f32>(arg_0.a.x, 1031f, -876f), vec3<bool>(false, false, arg_3)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -21749i, -2778i), vec3<i32>(-8120i, 1i, arg_2)), arg_0)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-863f, -2020f, arg_0.a.x), _wgslsmith_f_op_vec3_f32(-arg_0.a)))) * arg_0.a)));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_1.x * arg_0.a.x))), -542f, -1123f));
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_div_f32(var_2.a.x, arg_1.x)));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1507f, arg_2), _wgslsmith_f_op_f32(trunc(126f)), _wgslsmith_f_op_f32(min(1040f, 2524f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(139f, -377f, -1482f) - vec3<f32>(-686f, -1174f, -1962f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-457f, arg_2, arg_2))))))));
    var var_1 = 2147483647i;
    let var_2 = arg_0;
    var_1 = -_wgslsmith_mod_i32(arg_1, u_input.e);
    var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_clamp_i32(min(u_input.e, u_input.e), arg_1, -2147483647i)), 1i), -arg_1);
    return Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 + -244f))), arg_2), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(arg_0, arg_0, var_2))).x) * var_0.a.x)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x - -817f), _wgslsmith_f_op_vec4_f32(func_3(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(429f * 1129f));
    var var_2 = !((i32(-1i) * -2147483647i) == _wgslsmith_div_i32(-1i, u_input.b));
    var_2 = true;
    var var_3 = func_5(any(vec4<bool>(!all(vec4<bool>(true, false, false, false)), _wgslsmith_div_i32(6434i, 1i) < _wgslsmith_clamp_i32(10193i, u_input.e, u_input.b), true, true)), -1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.x))), ~4294967295u);
    return ~_wgslsmith_mod_u32(~17703u, ~_wgslsmith_div_u32(firstTrailingBit(4294967295u), u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(func_6(func_5(u_input.c == 4294967295u, u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<f32>(534f, 1000f, -263f)), vec2<f32>(-1449f, -791f), u_input.b, true)) * _wgslsmith_f_op_f32(118f * 166f)), ~u_input.d.x), func_5(true, u_input.b, -199f, ~u_input.a.x)), ~_wgslsmith_sub_u32(u_input.a.x, ~abs(u_input.c)));
    var_0 = _wgslsmith_div_vec2_u32(min(~vec2<u32>(var_0.x, ~u_input.c), ~(~u_input.d.xw)), ~u_input.d.wz);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-430f, -633f, 737f))))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(606f, -690f, -362f), vec3<f32>(677f, 546f, -347f)) * vec3<f32>(_wgslsmith_f_op_f32(round(-835f)), 1492f, _wgslsmith_f_op_f32(select(971f, 697f, true))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.yx * _wgslsmith_f_op_vec2_f32(-func_5(true, _wgslsmith_mult_i32(u_input.b, 2147483647i), 592f, ~56420u).a.yy)) * var_1.a.zz);
    var var_3 = true;
    var var_4 = any(vec3<bool>(true, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, var_2.x, var_1.a.x)))), vec3<bool>(true, true, false)).x, true | (u_input.e <= _wgslsmith_div_i32(u_input.b, 1i))));
    var var_5 = !select(select(vec4<bool>(any(vec3<bool>(false, false, false)), true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), any(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, true, true, false)), true, true, u_input.c != 0u), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)))), vec4<bool>(false, true, all(vec3<bool>(true, true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.c, 1u, 0u), 207f, _wgslsmith_mult_vec3_u32(u_input.a.wyx, ~(~(~u_input.d.xww))), _wgslsmith_f_op_f32(abs(-643f)));
}

