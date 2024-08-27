struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32 = -327f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_div_i32(1i, u_input.a);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1492f, -305f)))))), -2082f);
    var var_2 = true;
    return (u_input.b | ~(~select(6809u, u_input.b, true))) >> ((u_input.b & ~u_input.b) % 32u);
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) * arg_0.x), -2173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_add_i32(31641i, u_input.a), vec2<i32>(u_input.a, 23737i) ^ _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, 2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 12041i), vec2<i32>(u_input.a, -2147483647i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_0, _wgslsmith_f_op_vec4_f32(round(arg_0))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.yxz * arg_0.yww))), u_input.a, vec2<i32>(countOneBits(~(-13525i)), max(select(1i, 29871i, true), 1i))));
    var var_1 = ~vec2<u32>(firstLeadingBit(~u_input.b | ~50926u), func_3());
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.zxy), _wgslsmith_div_vec3_f32(arg_0.wyz, arg_0.xxw)))), -2147483647i, ~(-vec2<i32>(-26539i, u_input.a) << (vec2<u32>(u_input.b, var_1.x) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(827f, 438f, arg_0.x, -735f))))))), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1432f, 919f, 1133f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, var_0.c.a.x, -1712f)))), vec3<f32>(-1050f, -1000f, var_0.c.a.x))), _wgslsmith_div_i32(u_input.a, var_0.a.c.x), vec2<i32>(i32(-1i) * -21792i, ~firstTrailingBit(var_0.c.b))));
    let var_3 = false;
    var var_4 = -1i;
    return Struct_1(vec3<f32>(-605f, _wgslsmith_f_op_f32(abs(-205f)), var_0.a.a.x), _wgslsmith_mod_i32(var_2.a.c.x, _wgslsmith_dot_vec2_i32(var_0.c.c, var_2.a.c)), -var_2.c.c);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = vec4<u32>(4294967295u, _wgslsmith_div_u32(u_input.b, 1u), u_input.b, 9953u);
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(-arg_1.b));
    var var_2 = _wgslsmith_f_op_f32(sign(var_1.a.x));
    var var_3 = firstLeadingBit(var_0.x);
    global0 = arg_0;
    return func_2(vec4<f32>(-793f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1575f) + _wgslsmith_f_op_f32(-arg_1.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.a.x)), -2396f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.c.a.x)) - -1557f)))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    var var_1 = -167i;
    var var_2 = ~vec3<u32>(~max(u_input.b, u_input.b), u_input.b, abs(~min(u_input.b, u_input.b)));
    var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(arg_3.a.x)), var_0.a.x, _wgslsmith_f_op_f32(select(arg_1.b.x, -865f, true)), _wgslsmith_div_f32(arg_3.a.x, var_0.a.x)))) * arg_1.b)).b;
    let var_3 = false;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~_wgslsmith_mod_u32(firstLeadingBit(1u), ~u_input.b)));
    var_0 = ~(~func_4(true, Struct_2(func_1(true, Struct_2(Struct_1(vec3<f32>(-1177f, 261f, -1002f), 48176i, vec2<i32>(12876i, u_input.a)), vec4<f32>(-963f, -1000f, -511f, -1000f), Struct_1(vec3<f32>(-398f, 1111f, -1012f), -35564i, vec2<i32>(u_input.a, -55655i))), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1083f, -480f, 779f, -1634f) * vec4<f32>(1068f, 997f, 363f, -2238f)), Struct_1(vec3<f32>(1000f, -1000f, -1000f), u_input.a, vec2<i32>(-1i, u_input.a))), ~u_input.a, func_1(true, Struct_2(Struct_1(vec3<f32>(-733f, -725f, -652f), u_input.a, vec2<i32>(-20946i, u_input.a)), vec4<f32>(-269f, -124f, 160f, -1000f), Struct_1(vec3<f32>(-293f, -901f, 770f), -2147483647i, vec2<i32>(24175i, u_input.a))), true)));
    let var_1 = func_1(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true)) & true, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1009f, -851f, -1370f), vec3<f32>(-1061f, 250f, -797f)))), u_input.a, ~(-vec2<i32>(-64410i, 10762i))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1158f, 159f, -283f, 1872f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1095f, -621f, 465f, -1424f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1381f, 761f, 495f, 1000f)))), _wgslsmith_clamp_i32(-886i, 2147483647i, u_input.a) != firstLeadingBit(u_input.a))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(278f, 222f, 1273f)), func_1(false, Struct_2(Struct_1(vec3<f32>(108f, -976f, -1839f), 84692i, vec2<i32>(0i, 6683i)), vec4<f32>(-1579f, 1378f, -326f, -779f), Struct_1(vec3<f32>(1327f, 110f, 335f), 53141i, vec2<i32>(u_input.a, u_input.a))), true).a), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)), firstTrailingBit(vec2<i32>(-1i, u_input.a) << (vec2<u32>(u_input.b, 6045u) % vec2<u32>(32u))))), any(select(vec4<bool>(true, all(vec4<bool>(true, true, false, true)), all(vec2<bool>(false, false)), false), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true)), all(vec2<bool>(false, true)) == false))).c;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1258f + 425f))), 1557f, select(any(vec3<bool>(false, false, true)), false, true)))) - 1036f);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2, var_2, var_2))))), 2147483647i, -var_1), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_2)), _wgslsmith_f_op_f32(f32(-1f) * -433f))), 492f)), var_2, -384f, _wgslsmith_div_f32(-264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + -1281f)))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, var_2, -695f, -1580f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2, 1417f, 1798f, var_2))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 731f, -1212f, 196f) - vec4<f32>(-1161f, -848f, 1204f, var_2)), vec4<bool>(true, true, true, true))))));
    let var_4 = 416f;
    let var_5 = !(!((-4985i | (24112i ^ var_1.x)) != 12288i));
    let var_6 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2, var_3.a.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.a.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.a.x + var_4) * -689f)));
    var_0 = 1u ^ _wgslsmith_dot_vec4_u32(select(vec4<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), ~4294967295u, 43636u, ~u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 15285u, 1u), firstLeadingBit(vec4<u32>(0u, u_input.b, u_input.b, 0u))), !(!vec4<bool>(true, var_5, false, false))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_mult_u32(24171u, u_input.b), abs(47712u), ~u_input.b), firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_1.x, ~firstTrailingBit(25227i), countOneBits(var_3.c.b) ^ var_3.a.b) >> (~vec3<u32>(reverseBits(26551u), 2554u, _wgslsmith_mult_u32(0u, 0u)) % vec3<u32>(32u)));
}

