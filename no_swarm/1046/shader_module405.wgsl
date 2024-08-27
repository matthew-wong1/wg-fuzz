struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: Struct_3,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-476f, -1000f, -448f, 1415f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-772f, -158f, 580f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-400f, -893f, 434f, -1753f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-786f, -1709f, -1251f, 675f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-559f, 255f, -1017f, 1065f) - vec4<f32>(-1346f, -240f, -524f, -822f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-103f, -1458f, -371f, -137f) * vec4<f32>(-503f, 1111f, 292f, 1060f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1024f, -2191f, -1581f, 716f) + vec4<f32>(-1000f, 329f, -580f, 212f)))))));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(exp2(var_0.a)));
    var var_1 = Struct_1(vec4<bool>(false, true && any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true))), true || (var_0.a.x < _wgslsmith_f_op_f32(var_0.a.x + -825f)), all(vec2<bool>(true, true))), vec3<f32>(1788f, 1163f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(step(1352f, var_0.a.x))), var_0.a.x))), ~u_input.a.x | (reverseBits(~49060u) << (u_input.a.x % 32u)));
    return ~_wgslsmith_add_i32(_wgslsmith_mult_i32(-17365i, -16291i), u_input.b);
}

fn func_3(arg_0: f32) -> vec3<i32> {
    let var_0 = Struct_1(select(vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), true, true, true), select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(arg_0, 359f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_mod_u32(u_input.a.x >> (1u % 32u), ~(~u_input.a.x)));
    let var_1 = Struct_2(var_0.b, var_0.b.x, vec3<u32>(_wgslsmith_div_u32(34299u ^ _wgslsmith_sub_u32(var_0.c, 4294967295u), _wgslsmith_mod_u32(9929u, 1u)), ~var_0.c, firstLeadingBit(u_input.c.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-2407f, -796f), vec2<f32>(_wgslsmith_f_op_f32(-377f + _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-120f)))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x + 768f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(664f * 575f)), _wgslsmith_f_op_f32(max(-202f, -1000f))))));
    var var_2 = u_input.a;
    var_2 = ~vec2<u32>(_wgslsmith_mod_u32(~(~1u), var_2.x), ~(~26605u ^ ~u_input.a.x));
    var_2 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.c, ~(var_0.c << (1u % 32u))), var_0.c, u_input.a.x), _wgslsmith_add_u32(~_wgslsmith_add_u32(var_2.x, abs(u_input.c.x)), _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, select(29431u, 69144u, var_0.a.x)), ~u_input.a.x)));
    return -(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -22338i, 2147483647i), vec3<i32>(39317i, u_input.b, u_input.b)), firstTrailingBit(u_input.b), -2147483647i) ^ vec3<i32>(-min(u_input.b, u_input.b), ~(~u_input.b), ~(i32(-1i) * -35333i)));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1054f, _wgslsmith_f_op_f32(f32(-1f) * -502f), -548f, _wgslsmith_f_op_f32(1000f - -1000f)))));
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, max(u_input.b, u_input.b)), u_input.b), i32(-1i) * -2147483647i), vec2<i32>(40279i, func_2()));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a), vec4<f32>(var_0.a.x, 1191f, var_0.a.x, 358f)) * vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + 1000f), var_0.a.x, -159f, _wgslsmith_f_op_f32(-var_0.a.x))) - _wgslsmith_f_op_vec4_f32(-var_0.a)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.a.yyw), 1145f, _wgslsmith_sub_vec3_u32(min(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 4294967295u, 1503u), vec3<u32>(arg_0, 9154u, u_input.a.x)), arg_0 ^ 1u), ~vec3<u32>(u_input.a.x, u_input.a.x, 0u)), u_input.c.xyy), _wgslsmith_f_op_vec2_f32(vec2<f32>(-573f, _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(var_0.a.x, var_0.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.a.zy)))), var_0.a);
    let var_3 = func_3(-1164f);
    return Struct_3(_wgslsmith_f_op_vec4_f32(-var_0.a));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: bool) -> Struct_4 {
    let var_0 = select(!vec2<bool>(all(select(arg_2.a.a.xw, arg_2.a.a.wy, arg_2.a.a.x)), true), !(!arg_2.a.a.yx), false | (true || arg_3));
    var var_1 = ~(~4294967295u);
    var_1 = ~select(arg_2.a.c, ~(~_wgslsmith_mult_u32(1u, 31794u)), arg_2.a.a.x);
    let var_2 = arg_2.a;
    let var_3 = var_2.b.x;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(true, any(vec3<bool>(true, true, true)), true));
    var var_1 = ~u_input.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(340f, 476f, 904f)), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1253f, -335f, 1248f) - vec3<f32>(-382f, 1056f, 1000f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2188f, 313f, 242f))))));
    var var_3 = func_4(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1832f, var_2.x, var_2.x, var_2.x))), vec4<f32>(-368f, -1396f, var_2.x, 160f))) + vec4<f32>(1000f, -1948f, _wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(100f - 801f)))), vec2<u32>(u_input.c.x, 1u), Struct_4(Struct_1(!(!vec4<bool>(true, true, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(983f, -362f, var_2.x) - vec3<f32>(var_2.x, var_2.x, -1621f))), 4294967295u), _wgslsmith_f_op_f32(var_2.x - -698f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(942f)), _wgslsmith_f_op_f32(588f * 1691f), _wgslsmith_f_op_f32(var_2.x * -290f))), func_1(13274u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -302f, -918f, 553f)))), var_0.x);
    let var_4 = func_1(~max(countOneBits(22493u), ~reverseBits(u_input.c.x)));
    var_3 = func_4(var_3.d, u_input.c.wy, Struct_4(var_3.a, var_3.b, vec3<f32>(var_4.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_4.a.x)), var_2.x, true)), _wgslsmith_f_op_f32(abs(var_3.a.b.x))), func_1(38368u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d.a.x, -457f, func_4(Struct_3(vec4<f32>(-1115f, 1000f, 1598f, var_3.c.x)), vec2<u32>(31932u, 1u), Struct_4(Struct_1(var_3.a.a, var_4.a.ywx, 37672u), -333f, vec3<f32>(1330f, var_4.a.x, 550f), var_4, var_3.d.a), false).d.a.x, func_4(Struct_3(vec4<f32>(756f, var_4.a.x, 885f, -623f)), vec2<u32>(var_3.a.c, u_input.c.x), Struct_4(var_3.a, -738f, vec3<f32>(var_4.a.x, -305f, 180f), var_4, var_4.a), var_3.a.a.x).a.b.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_3.d.a, var_3.e)))), true);
    var var_5 = func_4(func_1(var_3.a.c), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, var_3.a.c), min(~u_input.c.x, var_3.a.c)), var_3.a.c), func_4(func_1(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 0u))), max(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)) | (~u_input.c.zy << (u_input.a % vec2<u32>(32u))), Struct_4(var_3.a, _wgslsmith_f_op_f32(select(1033f, _wgslsmith_f_op_f32(round(var_3.e.x)), true && var_3.a.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.a.wxw)), func_4(func_1(12369u), select(vec2<u32>(var_3.a.c, u_input.c.x), vec2<u32>(1u, u_input.a.x), var_3.a.a.x), Struct_4(Struct_1(vec4<bool>(true, var_3.a.a.x, var_0.x, false), var_3.d.a.yxy, 0u), 1496f, vec3<f32>(var_4.a.x, 1455f, var_4.a.x), var_4, vec4<f32>(var_3.a.b.x, -135f, -258f, var_4.a.x)), false).d, var_3.d.a), all(vec3<bool>(true, all(var_3.a.a), u_input.b < 0i))), !all(vec3<bool>(var_3.a.c >= 1u, false, !var_0.x))).a;
    var var_6 = var_3.a;
    var var_7 = Struct_2(var_6.b, var_2.x, select(min(countOneBits(~u_input.c.zyz), vec3<u32>(var_5.c, ~var_5.c, var_3.a.c)), select(vec3<u32>(~var_6.c, 68288u & u_input.c.x, 1u), abs(~vec3<u32>(var_6.c, 0u, 31629u)), var_0.x), !(!(!var_3.a.a.yxx))), vec2<f32>(var_4.a.x, var_2.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_5.b.x) + var_4.a.x)), var_3.c.x, -1012f));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a.c);
}

