struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 7131i);

var<private> global1: bool = true;

var<private> global2: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> vec2<bool> {
    global1 = true;
    global2 = -u_input.e.x;
    var var_0 = _wgslsmith_div_u32(u_input.d.x, u_input.a.x);
    global1 = all(!select(vec4<bool>(any(vec3<bool>(false, false, true)), all(vec2<bool>(true, false)), true, true), vec4<bool>(u_input.b == 0i, true, all(vec2<bool>(true, true)), false), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), all(vec3<bool>(false, false, false)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1398f, arg_1.x, arg_1.x) + vec3<f32>(691f, 201f, arg_1.x)), vec3<f32>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, true, true)))), vec2<bool>(u_input.d.x <= ~u_input.d.x, _wgslsmith_clamp_i32(u_input.c, 1i, 4622i) >= 0i), -2147483647i, !(!(u_input.d.x == u_input.a.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1104f, 1255f, arg_0, arg_1.x))))));
    return var_1.a.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<i32>) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(1060f, _wgslsmith_f_op_f32(777f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(502f)), 1013f))))), _wgslsmith_f_op_f32(-arg_1.a.a.x));
    var var_1 = Struct_5(vec4<bool>(!(max(u_input.a.x, u_input.d.x) >= u_input.d.x), !arg_2, any(select(select(vec3<bool>(arg_2, false, true), vec3<bool>(arg_0.x, true, arg_1.a.d), arg_0.x), vec3<bool>(arg_0.x, arg_2, true), select(vec3<bool>(arg_1.a.b.x, false, arg_2), vec3<bool>(false, false, false), vec3<bool>(arg_0.x, arg_0.x, false)))), arg_2), u_input.a.x, _wgslsmith_div_vec4_u32(select(vec4<u32>(~42435u, 0u, 33631u, ~0u), vec4<u32>(u_input.d.x, u_input.a.x, u_input.d.x, _wgslsmith_div_u32(u_input.a.x, u_input.d.x)), !(!vec4<bool>(arg_2, true, false, arg_1.a.d))), vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 18941u, u_input.a.x, 1u))), abs(~0u), ~(41378u | u_input.d.x), 93801u)));
    var var_2 = Struct_3(any(select(var_1.a, select(var_1.a, select(var_1.a, vec4<bool>(false, arg_1.a.b.x, true, false), true), arg_1.a.b.x), !(!vec4<bool>(var_1.a.x, arg_2, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a.e) * arg_1.a.e)), select(!var_1.a.yzy, select(vec3<bool>(true, arg_0.x, false), vec3<bool>(var_1.a.x, select(true, arg_2, true), true), select(select(vec3<bool>(true, arg_0.x, arg_2), vec3<bool>(arg_2, true, true), var_1.a.yxw), vec3<bool>(true, false, arg_0.x), vec3<bool>(false, arg_1.a.d, arg_1.a.b.x))), !(!var_1.a.yzy)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.e.x, var_0.x, 1874f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.e.x, 2192f, 524f)) + _wgslsmith_f_op_vec3_f32(arg_1.a.a * vec3<f32>(var_0.x, 625f, 604f)))), vec2<bool>(true, any(arg_1.a.b)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_3.yy, arg_3.yx) ^ -5289i, arg_3.x), false, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(trunc(-744f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(sign(-1000f))), arg_1.a.e.x)));
    var_2 = Struct_3(!var_1.a.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_2.d.e, arg_1.a.e), vec4<f32>(640f, var_2.d.a.x, 126f, var_0.x), select(vec4<bool>(false, false, arg_2, true), vec4<bool>(true, arg_2, arg_2, false), vec4<bool>(true, true, var_1.a.x, arg_1.a.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(964f, -113f, arg_1.a.a.x, -848f)))))), var_1.a.zyx, var_2.d);
    let var_3 = Struct_4(true);
    return ~0i;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = ~func_4(func_3(_wgslsmith_f_op_f32(abs(-493f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1730f, 1055f)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(643f, 1821f, 431f), vec3<f32>(1972f, 1079f, -1938f))), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, false)), 1i, false, vec4<f32>(763f, -881f, -758f, -1002f))), arg_0, firstTrailingBit(-abs(vec3<i32>(global0.x, global0.x, 0i))));
    var_0 = -(u_input.b ^ ~abs(u_input.c));
    let var_1 = Struct_4(arg_0);
    var var_2 = abs(u_input.d.x);
    let var_3 = u_input.d.wzx;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(411f * 1351f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f) + -458f), 1f)), !func_3(_wgslsmith_f_op_f32(ceil(1518f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(888f, -308f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1872f)))), _wgslsmith_clamp_i32(~(-(u_input.e.x ^ -2147483647i)), 1i, ~(-global0.x) << (u_input.d.x % 32u)), !any(vec4<bool>(any(vec3<bool>(arg_0, false, arg_0)), arg_0 || true, var_1.a, all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1225f, -1957f, 1793f, -1725f)), vec4<f32>(1606f, -771f, 1868f, -1049f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-547f, -139f, -358f, 552f) - vec4<f32>(-1077f, 304f, -196f, 984f)) + vec4<f32>(-629f, 575f, 1303f, 1361f))))));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> f32 {
    global0 = -abs(max(-(vec2<i32>(global0.x, global0.x) ^ u_input.e.zy), vec2<i32>(~u_input.c, global0.x)));
    var var_0 = vec2<u32>(u_input.a.x, u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(max(arg_0.e.zw, arg_0.a.xy));
    global1 = true;
    let var_2 = func_3(arg_0.e.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-297f, 1137f) - var_1));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1366f))));
}

fn func_1(arg_0: Struct_5) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1643f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-933f, -540f))))));
    var var_1 = arg_0;
    global2 = -global0.x;
    var var_2 = var_1.b;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(func_2(var_1.a.x), u_input.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(f32(-1f) * -345f)))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2(all(vec4<bool>(false, true, arg_0.a.x, arg_0.a.x))).e.xzy), vec3<f32>(-249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(529f)) + 1f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-748f, -1690f, -1338f) * vec3<f32>(723f, -843f, 713f))), vec3<f32>(1f, 1f, 1f))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(439f, -300f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -151f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(vec2<i32>(max(~reverseBits(-44057i), 23299i), global0.x));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_1(Struct_5(vec4<bool>(false, false, true, true), 1u, u_input.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1429f, -259f, -217f)))), vec2<bool>(all(vec3<bool>(false, true, false)), false), 2147483647i, true, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(993f * -662f))), _wgslsmith_div_f32(862f, _wgslsmith_f_op_f32(-454f - 1689f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(vec3<f32>(-619f, -1534f, -1233f), vec2<bool>(true, false), -5965i, true, vec4<f32>(1042f, 189f, -925f, -2895f)), 2147483647i))), _wgslsmith_f_op_f32(max(-1797f, 904f)))));
    var var_1 = vec4<bool>(var_0.a.b.x, !func_2(any(!vec3<bool>(var_0.a.b.x, var_0.a.b.x, true))).d, ~28375i <= u_input.c, var_0.a.d);
    var_1 = !vec4<bool>(var_1.x, true, true, !(true && var_0.a.d));
    let var_2 = var_0.a.a.x;
    let var_3 = vec4<i32>(global0.x, 18873i, global0.x | _wgslsmith_add_i32(-29851i, 1i), _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(173i, 46921i, 2147483647i, 3720i), vec4<i32>(-20057i, 22108i, -47974i, u_input.c)) & firstTrailingBit(u_input.c), -(2147483647i << (u_input.a.x % 32u))), abs(-global0.x)));
    global0 = vec2<i32>(~12025i, -global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.a.e.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-154f)) + _wgslsmith_f_op_f32(max(var_2, 183f))) - _wgslsmith_f_op_f32(-var_0.a.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1235f, var_0.a.e.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, var_2)))), ~(i32(-1i) * -firstTrailingBit(2147483647i)));
}

