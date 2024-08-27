struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, -1i, -37867i);

var<private> global1: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(~u_input.a.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -833f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(649f, 916f, -234f, 1597f)))) + vec4<f32>(_wgslsmith_f_op_f32(-588f * -573f), 1f, _wgslsmith_f_op_f32(select(1569f, -697f, true)), _wgslsmith_div_f32(-226f, -691f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(167f, 232f, 371f, -1464f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1057f, 1000f, 496f, -1660f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2313f - -206f) - -681f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-543f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1646f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-464f, 899f)))))));
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(abs(0u), 10040u, 1u), select(~vec3<u32>(4294967295u, 4294967295u >> (var_0.a.x % 32u), var_0.a.x), ~firstTrailingBit(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a)), !all(vec4<bool>(true, false, false, true))));
    global0 = ~vec3<i32>(~(-24929i), ~global0.x | max(~u_input.b, ~4597i), _wgslsmith_clamp_i32(u_input.b, ~(-global0.x), u_input.b));
    var var_2 = 1i;
    global1 = all(select(vec3<bool>(true, true, true), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))))));
    return _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, var_0.a.x), var_0.a);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(func_3(), arg_0.e, arg_0.c, _wgslsmith_f_op_f32(sign(arg_0.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-159f * -1092f) - _wgslsmith_f_op_f32(trunc(arg_0.e))) + _wgslsmith_f_op_f32(ceil(551f))))));
    var var_1 = arg_0;
    var var_2 = i32(-1i) * -(abs(firstLeadingBit(global0.x)) & -34808i);
    let var_3 = abs(1i);
    let var_4 = any(!vec2<bool>(false, select(false, false, true) || false));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    global1 = arg_1.x;
    let var_0 = ~vec4<u32>(countOneBits(abs(arg_0.a.x) | 37918u), arg_0.a.x, arg_0.a.x, u_input.a.x);
    var var_1 = Struct_1(~firstTrailingBit(vec2<u32>(~arg_0.a.x, 4294967295u)), _wgslsmith_f_op_f32(-135f - 2002f), vec4<f32>(-552f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-548f - _wgslsmith_f_op_f32(529f - arg_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2508f * arg_0.e), -296f, any(arg_1.xw)))), _wgslsmith_f_op_f32(abs(arg_0.e))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f) - _wgslsmith_f_op_f32(floor(arg_0.e)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1082f, 393f)));
    var var_2 = var_0.x;
    var var_3 = reverseBits(0i | ~_wgslsmith_mod_i32(-7808i, global0.x)) == ~global0.x;
    return Struct_1(func_3(), _wgslsmith_f_op_f32(trunc(686f)), var_1.c, 2265f, _wgslsmith_f_op_f32(step(-398f, arg_0.d)));
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = vec4<u32>(40996u, _wgslsmith_sub_u32(select(arg_0.a.x << (arg_0.a.x % 32u), ~(0u & u_input.a.x), select(true, false, all(vec4<bool>(false, true, false, true)))), 12191u), u_input.a.x, arg_0.a.x);
    global1 = false;
    global0 = vec3<i32>(-_wgslsmith_mult_i32(41072i, u_input.b), -77336i, ~u_input.b >> (_wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(var_0.x >> (85062u % 32u), _wgslsmith_add_u32(0u, 23680u), select(var_0.x, arg_0.a.x, true))) % 32u));
    var var_1 = func_4(arg_0, select(vec4<bool>(true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true))), true, !all(vec4<bool>(true, true, true, true))), vec4<bool>(true, _wgslsmith_f_op_f32(round(arg_0.d)) < _wgslsmith_div_f32(arg_0.e, arg_0.e), select(false, true, true), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false))), false));
    var_1 = arg_0;
    return ~(-2147483647i);
}

fn func_1() -> f32 {
    global0 = vec3<i32>(func_5(func_4(func_2(Struct_1(u_input.a.zz, 755f, vec4<f32>(1469f, 2622f, 1466f, 375f), 689f, 1000f)), vec4<bool>(true, true, true, true))), -2147483647i, u_input.b);
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(440f, 213f, -1000f), vec3<f32>(-1269f, 186f, 441f)) * vec3<f32>(-816f, 1153f, -201f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-684f - -166f) + _wgslsmith_f_op_f32(f32(-1f) * -1257f)), func_2(func_4(Struct_1(vec2<u32>(27486u, 12160u), 1000f, vec4<f32>(-1312f, -605f, 128f, 710f), 346f, 173f), vec4<bool>(true, true, false, true))).c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -376f)))), vec3<bool>(false, true, any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-392f, func_4(Struct_1(vec2<u32>(0u, 51512u), -1359f, vec4<f32>(-1057f, -2861f, -770f, -1000f), -797f, 1885f), vec4<bool>(true, true, false, false)).b, _wgslsmith_f_op_f32(step(696f, -1663f))))));
    global1 = select(any(!vec4<bool>(u_input.a.x == u_input.a.x, select(false, false, true), 0u >= u_input.a.x, true)), select(true, !any(vec2<bool>(false, true)), true), !(abs(25710u) >= abs(u_input.a.x)));
    let var_1 = u_input.b;
    global1 = all(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), true), false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(498f, -1013f)))));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~u_input.b;
    var var_1 = !(false & (true || (true && (13168u == u_input.a.x))));
    let var_2 = ~func_2(arg_0).a;
    let var_3 = func_2(Struct_1(~(~(vec2<u32>(u_input.a.x, var_2.x) >> (vec2<u32>(6500u, arg_3.a.x) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), 111f)), _wgslsmith_f_op_f32(-func_4(Struct_1(u_input.a.yx, 1639f, arg_0.c, arg_2, -241f), vec4<bool>(true, true, false, false)).d))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, arg_1, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.c)), vec4<bool>(1u <= arg_3.a.x, true, false, 104716u >= arg_0.a.x))), arg_3.b, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1493f, arg_0.d))))));
    global1 = false;
    return arg_0;
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(~arg_0.a, arg_0.c.x, vec4<f32>(_wgslsmith_f_op_f32(func_1()), -303f, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(574f + _wgslsmith_f_op_f32(f32(-1f) * -1427f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1625f, 245f), arg_0.c.x, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.d, -470f, any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f))))));
    global0 = vec3<i32>(-1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(2147483647i), 1i, reverseBits(global0.x), u_input.b), -countOneBits(vec4<i32>(-2147483647i, u_input.b, -2147483647i, -2147483647i))), min(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0.x, -1i), vec3<i32>(global0.x, 30431i, global0.x))), _wgslsmith_add_i32(0i, -u_input.b) << (~4294967295u % 32u)));
    var var_1 = arg_0.c.zyy;
    let var_2 = func_2(arg_0);
    var var_3 = func_2(Struct_1(max(vec2<u32>(select(101454u, u_input.a.x, true), var_0.a.x), func_6(Struct_1(vec2<u32>(17908u, 13455u), var_2.c.x, var_2.c, 494f, -2236f), _wgslsmith_f_op_f32(arg_0.b * var_2.e), -226f, Struct_1(var_0.a, 254f, vec4<f32>(1843f, -307f, arg_0.c.x, 251f), var_0.b, -313f)).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -844f) - -433f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1041f), -1260f, _wgslsmith_f_op_f32(212f * _wgslsmith_f_op_f32(f32(-1f) * -829f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(447f))))), 1094f));
    return func_2(Struct_1(~(var_2.a & arg_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.e))), _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(select(var_3.c.x, 1100f, true)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -290f), 934f, var_0.b, _wgslsmith_f_op_f32(-var_2.c.x)), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1023f * 495f) - _wgslsmith_f_op_f32(arg_0.b - var_0.b)) + -1720f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec4<bool>(true, true, true, true & select(true, true, true))) | false;
    var_0 = any(vec3<bool>(all(vec2<bool>(all(vec4<bool>(true, false, true, true)), true)), true, false));
    var var_1 = func_7(func_6(Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 112491u), ~vec2<u32>(36106u, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-825f, -382f, -2380f, 1085f), vec4<f32>(-412f, 304f, -479f, 627f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1330f * -322f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1381f)) - _wgslsmith_div_f32(972f, -798f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(694f)) * -1294f) - _wgslsmith_f_op_f32(1661f * 1702f)), func_4(func_4(Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), 624f, vec4<f32>(229f, -347f, 1000f, 228f), 774f, -1010f), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), true)).b, Struct_1(_wgslsmith_add_vec2_u32(~u_input.a.yx, u_input.a.yy), -1053f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -2819f, -571f, -256f), vec4<f32>(-358f, -494f, -554f, 390f), vec4<bool>(true, true, false, false))))), func_2(func_2(Struct_1(vec2<u32>(0u, u_input.a.x), -1337f, vec4<f32>(-905f, 1322f, -540f, 1236f), -1000f, -132f))).b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-439f - 1000f), _wgslsmith_f_op_f32(862f - 871f))))));
    var var_2 = vec3<u32>(var_1.a.x, func_2(func_4(func_4(func_7(Struct_1(vec2<u32>(var_1.a.x, 1u), var_1.e, vec4<f32>(var_1.b, 505f, -1000f, var_1.c.x), var_1.b, -675f)), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true))).a.x, select(var_1.a.x, var_1.a.x, select(true, true, true) || all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    global0 = reverseBits(-firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 2147483647i, 7331i), vec3<i32>(7122i, 2147483647i, 56426i)) ^ vec3<i32>(u_input.b, global0.x, 67827i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(select(abs(vec3<i32>(1552i, u_input.b, 960i)) >> (~vec3<u32>(0u, 23573u, var_1.a.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(55167i, -32693i, u_input.b), vec3<i32>(16148i, u_input.b, global0.x) ^ vec3<i32>(global0.x, global0.x, u_input.b)), all(vec2<bool>(true, true))), reverseBits(~(vec3<i32>(1i, 14835i, u_input.b) & vec3<i32>(u_input.b, u_input.b, global0.x)))), var_1.a.x, min(vec4<u32>(46607u, ~(~7399u), 25860u, ~_wgslsmith_div_u32(u_input.a.x, var_1.a.x)), vec4<u32>((var_1.a.x | u_input.a.x) << ((var_2.x << (48169u % 32u)) % 32u), 26324u, u_input.a.x, 41525u)), vec4<u32>(~_wgslsmith_div_u32(var_1.a.x, 36621u), _wgslsmith_mult_u32(u_input.a.x & firstTrailingBit(var_1.a.x), 18093u), ~12937u, u_input.a.x));
}

