struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(~arg_1.b.x, arg_0.x);
    var var_1 = u_input.c.wyz;
    let var_2 = Struct_1(!select(!(!vec3<bool>(global0.x, false, true)), arg_1.a, arg_1.a), select(_wgslsmith_mod_vec3_i32(vec3<i32>(9466i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_0.x, 2147483647i), u_input.a.xzx), ~arg_0.x), _wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_0.x, -11870i), arg_0) ^ u_input.a.yzz), -vec3<i32>(_wgslsmith_div_i32(arg_0.x, u_input.a.x), u_input.b.x, u_input.a.x), all(arg_1.a)));
    var var_3 = -337f;
    var_0 = ~var_2.b.x;
    return arg_1;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> vec4<f32> {
    var var_0 = ~firstTrailingBit(abs(u_input.c.zyy) << (vec3<u32>(~arg_0, 19567u ^ u_input.c.x, 1u) % vec3<u32>(32u)));
    let var_1 = ~1u;
    var_0 = u_input.c.wyx;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(751f, 446f, 1137f), vec3<f32>(-776f, 1000f, 232f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(499f, 1910f, 1783f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1182f, -608f, -395f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(235f, -192f, -1054f), vec3<f32>(-623f, 925f, 327f), arg_1.a))))), vec3<f32>(649f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-953f + 1356f) * _wgslsmith_f_op_f32(abs(1215f))) - -583f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(702f, 2406f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1178f * 2292f), _wgslsmith_f_op_f32(f32(-1f) * -1158f))))));
    global0 = arg_1.a.yx;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(486f, var_2.x, 377f, var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1981f, -1043f, -285f, var_2.x) * vec4<f32>(156f, var_2.x, var_2.x, var_2.x))) - vec4<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(step(621f, 209f)), _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(max(1000f, var_2.x)))))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(659f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 773f), 434f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2029f)) * -851f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f)), _wgslsmith_f_op_f32(415f - 1f)));
    var var_1 = all(vec4<bool>(select(true, !arg_0.a.x, true) | !(0u != u_input.c.x), global0.x, any(!select(vec2<bool>(true, global0.x), vec2<bool>(true, global0.x), false)), false));
    let var_2 = arg_0.a.yy;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(0u, func_2(vec3<i32>(-18263i, arg_0.b.x, -1i), arg_0), ~u_input.c.yzy, max(-2147483647i, u_input.a.x)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1551f, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(439f, -588f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(198f, var_0.x, -716f, var_0.x))))));
    var var_3 = arg_0;
    return Struct_1(vec3<bool>(func_2(_wgslsmith_div_vec3_i32(-u_input.a.zwz, vec3<i32>(u_input.a.x, u_input.b.x, arg_0.b.x)), func_2(-vec3<i32>(2147483647i, -1i, arg_0.b.x), arg_0)).a.x, any(var_2), all(select(vec2<bool>(true, true), var_3.a.xy, var_2))), ~(-vec3<i32>(-var_3.b.x, var_3.b.x, _wgslsmith_mult_i32(arg_0.b.x, var_3.b.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !select(vec3<bool>(!(!global0.x), u_input.d >= 8274u, !(arg_0.x >= -214f)), func_1(arg_2).a, true);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(arg_0.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.zx, vec2<f32>(_wgslsmith_f_op_f32(step(1000f, arg_0.x)), -662f))))));
    global0 = !(!vec2<bool>(arg_2.a.x, true));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(291f - _wgslsmith_f_op_f32(sign(var_1.x))), 1383f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(1612f - var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_f32(-1000f * -228f), all(vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-340f, arg_0.x))), -1413f, 1000f)), true));
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_1.x, var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_2.x))) - var_2.yy), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(459f, var_1.x))))))));
    return Struct_1(vec3<bool>(arg_1.a.x, !(_wgslsmith_dot_vec3_i32(u_input.a.zxw, vec3<i32>(u_input.a.x, u_input.b.x, arg_1.b.x)) < u_input.a.x), any(vec2<bool>(false || global0.x, !arg_1.a.x))), _wgslsmith_clamp_vec3_i32(abs(max(vec3<i32>(59410i, arg_2.b.x, -3211i) & vec3<i32>(u_input.a.x, arg_1.b.x, arg_2.b.x), ~vec3<i32>(-10518i, arg_1.b.x, arg_2.b.x))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_1.b.x, 2147483647i), -arg_2.b.x), 7528i, -26279i), u_input.a.zwy));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global0 = arg_1.a.yy;
    var var_0 = 25419i;
    let var_1 = vec3<bool>(global0.x, (global0.x && true) || arg_1.a.x, !global0.x);
    let var_2 = _wgslsmith_f_op_f32(-1666f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1248f * -2089f)))));
    var_0 = 17356i;
    return vec4<bool>(arg_1.a.x && false, false, 2147483647i > arg_1.b.x, true);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 1000f, arg_3.x, arg_3.x)) + vec4<f32>(_wgslsmith_f_op_f32(666f - arg_3.x), _wgslsmith_f_op_f32(arg_3.x - -845f), arg_3.x, -848f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(317f, -366f, arg_3.x, 1220f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(430f, 626f, arg_3.x, 469f)))) - vec4<f32>(_wgslsmith_f_op_f32(step(arg_3.x, arg_3.x)), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(f32(-1f) * -1292f))));
    let var_1 = ~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1.b.x, u_input.b.x), firstTrailingBit(_wgslsmith_add_i32(u_input.b.x, 9795i))), 2147483647i, arg_0.b.x << (abs(1u) % 32u), u_input.a.x);
    var var_2 = Struct_1(!select(select(!arg_0.a, arg_1.a, global0.x), !select(arg_1.a, arg_1.a, arg_1.a.x), !all(arg_0.a.yx)), ~u_input.a.zxx);
    var_2 = arg_0;
    let var_3 = func_2(func_4(vec3<f32>(152f, _wgslsmith_f_op_f32(sign(217f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * arg_3.x) - 944f)), arg_1, arg_0).b, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3.x, arg_3.x, -662f))))), Struct_1(func_1(arg_1).a, _wgslsmith_div_vec3_i32(~vec3<i32>(1i, 0i, arg_0.b.x), vec3<i32>(var_1.x, 9249i, -3909i))), arg_0));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(vec3<bool>(true, true, true), vec3<i32>(~(-1i), 0i, min(36400i, _wgslsmith_div_i32(-2147483647i, -17284i)))), Struct_1(vec3<bool>(!global0.x, global0.x, true), vec3<i32>(countOneBits(-2147483647i), u_input.b.x >> (31150u % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 7127i, u_input.a.x), u_input.a.xzz), 1i >> (u_input.d % 32u), u_input.b.x << (37167u % 32u)))), all(func_5(Struct_1(!vec3<bool>(global0.x, true, false), _wgslsmith_clamp_vec3_i32(vec3<i32>(710i, u_input.a.x, u_input.a.x), u_input.a.wzz, vec3<i32>(u_input.a.x, 2147483647i, -13942i))), func_4(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -1000f, 931f), vec3<f32>(-1146f, 1530f, 885f))), func_1(Struct_1(vec3<bool>(false, false, global0.x), vec3<i32>(-55285i, u_input.a.x, u_input.a.x))), func_2(vec3<i32>(u_input.b.x, -2147483647i, 1i), Struct_1(vec3<bool>(global0.x, global0.x, false), vec3<i32>(-1i, u_input.b.x, u_input.a.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1625f, -955f, -433f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2332f, -970f, 330f) * vec3<f32>(1623f, -1052f, 1118f))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-269f * 115f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(321f, -1175f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-281f))))))));
    global0 = !vec2<bool>(func_6(var_0, Struct_1(var_0.a, _wgslsmith_sub_vec3_i32(u_input.a.wxw, u_input.a.xzz)), true || (global0.x & var_0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 556f, 330f))).a.x, all(vec2<bool>(false && global0.x, var_0.a.x)));
    let var_2 = var_0;
    var var_3 = false;
    global0 = !select(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(193f, 989f, -1000f), vec3<f32>(var_1, 1799f, -1126f), true)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-197f, 742f, 945f))), func_6(Struct_1(var_2.a, var_0.b), var_2, global0.x, vec3<f32>(498f, var_1, 2117f)), func_1(var_2)).a.yx, var_0.a.yx, !var_0.a.xy);
    var_3 = global0.x;
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mod_i32(1i, ~u_input.b.x), _wgslsmith_dot_vec3_i32(-var_4.b, firstTrailingBit(var_0.b)) ^ (i32(-1i) * -5674i), any(vec4<bool>(func_5(Struct_1(var_2.a, var_2.b), var_0).x, false, true, all(vec4<bool>(true, false, false, var_2.a.x))))), 1i, 0i);
}

