struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(vec3<f32>(-1352f, -1003f, -979f), 231f, Struct_2(-665f), 1173f), Struct_5(vec3<f32>(1540f, 1138f, 482f), 516f, Struct_2(1393f), -758f), Struct_5(vec3<f32>(-412f, -1675f, -1448f), -1000f, Struct_2(898f), -913f), Struct_5(vec3<f32>(747f, 744f, 2146f), -548f, Struct_2(316f), -2292f), Struct_5(vec3<f32>(488f, -3188f, 573f), -1000f, Struct_2(2537f), 748f), Struct_5(vec3<f32>(-1000f, 196f, 1360f), -723f, Struct_2(519f), -218f), Struct_5(vec3<f32>(-593f, -1000f, 287f), -457f, Struct_2(1342f), -695f), Struct_5(vec3<f32>(1109f, 600f, -139f), 1024f, Struct_2(-159f), 1000f), Struct_5(vec3<f32>(1000f, 450f, -616f), -1846f, Struct_2(466f), -848f), Struct_5(vec3<f32>(-355f, 1595f, -398f), -1895f, Struct_2(-1428f), -2064f), Struct_5(vec3<f32>(906f, -430f, -462f), 1419f, Struct_2(-972f), 1954f), Struct_5(vec3<f32>(-1000f, 1000f, -2113f), -373f, Struct_2(275f), -549f), Struct_5(vec3<f32>(-671f, -2090f, -119f), 524f, Struct_2(2238f), 106f), Struct_5(vec3<f32>(1095f, 409f, 1257f), -141f, Struct_2(1038f), 555f), Struct_5(vec3<f32>(-793f, 818f, 2402f), -1000f, Struct_2(-1092f), -2020f), Struct_5(vec3<f32>(-1514f, 128f, -279f), -419f, Struct_2(-1448f), 286f), Struct_5(vec3<f32>(-2372f, -543f, 182f), 1191f, Struct_2(-497f), 1503f), Struct_5(vec3<f32>(-289f, -1202f, -935f), 123f, Struct_2(192f), -736f), Struct_5(vec3<f32>(-2855f, 195f, 777f), 1000f, Struct_2(1000f), -277f), Struct_5(vec3<f32>(-639f, -1382f, -331f), -368f, Struct_2(-1375f), 1000f), Struct_5(vec3<f32>(-931f, -620f, -445f), 1000f, Struct_2(-2325f), 144f), Struct_5(vec3<f32>(-1000f, 998f, -919f), 177f, Struct_2(1000f), 363f));

var<private> global1: i32;

var<private> global2: array<Struct_3, 18>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = !all(!vec3<bool>(false, true, select(false, false, true)));
    var var_1 = true;
    var_1 = !all(vec2<bool>(true, any(vec2<bool>(true, true))));
    let var_2 = _wgslsmith_div_u32(~_wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.a, 49871u), 1u), u_input.d.x);
    global0 = array<Struct_5, 22>();
    return _wgslsmith_f_op_f32(-111f - -2114f);
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: Struct_5) -> bool {
    let var_0 = _wgslsmith_clamp_vec4_u32(countOneBits(u_input.e), countOneBits(vec4<u32>(u_input.d.x, min(~61384u, ~92091u), ~_wgslsmith_mod_u32(1u, u_input.d.x), u_input.d.x)), u_input.e);
    var var_1 = all(vec4<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.x == 0u)), all(vec2<bool>(true, true)), all(vec2<bool>(true, true))));
    global1 = countOneBits(u_input.b.x) & 2488i;
    var var_2 = Struct_4(firstLeadingBit(-31672i & ~_wgslsmith_sub_i32(u_input.b.x, u_input.c)), Struct_2(_wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), arg_1.c, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1948f))), _wgslsmith_f_op_f32(arg_1.b * arg_0))));
    var var_3 = Struct_3(Struct_1(vec2<bool>(true | select(true, false, false), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a)) + _wgslsmith_div_vec3_f32(arg_2.a, _wgslsmith_f_op_vec3_f32(floor(arg_1.a)))), -(vec4<i32>(var_2.a, u_input.b.x, u_input.c, -2147483647i) << (vec4<u32>(10033u, 0u, 1u, 38523u) % vec4<u32>(32u))), ~u_input.a), vec4<bool>(!any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false)), any(vec4<bool>(all(vec3<bool>(true, false, true)), true, 4148u == var_0.x, false)), select(select(true, true, true), any(vec2<bool>(false, false)), true), false), Struct_2(_wgslsmith_f_op_f32(min(var_2.d, _wgslsmith_f_op_f32(var_2.c.a - -301f)))));
    return var_3.b.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>) -> f32 {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1383f + 687f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -889f)))), Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), -1000f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), Struct_2(_wgslsmith_f_op_f32(-2136f * _wgslsmith_f_op_f32(-145f + -1779f))), _wgslsmith_f_op_f32(func_3())), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(u_input.e.x, u_input.d.x), 1u & ~(u_input.d.x >> (u_input.d.x % 32u))), 22u)]);
    var var_1 = !vec4<bool>(true, !((arg_0.x && arg_0.x) && select(true, arg_0.x, arg_0.x)), any(!vec3<bool>(true, arg_0.x, false)) | func_4(_wgslsmith_f_op_f32(926f - -157f), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d.x, 1u), 22u)], Struct_5(vec3<f32>(1000f, -1000f, 306f), 1473f, Struct_2(1334f), 829f)), all(arg_0) || arg_0.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(720f, 1526f))) * 1023f);
    let var_3 = Struct_4(-1i, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1680f - -932f))))), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-680f + _wgslsmith_f_op_f32(ceil(-2021f)))))), -378f);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1598f, _wgslsmith_f_op_f32(-var_3.d)) - var_3.c.a))));
    return var_3.b.a;
}

fn func_5(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_4(firstLeadingBit(_wgslsmith_clamp_i32(arg_2.x, u_input.c, _wgslsmith_div_i32(-1i, u_input.c))), arg_0.c, Struct_2(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.a, arg_1.a))))), arg_1.a);
    var_0 = Struct_4(-(i32(-1i) * -32024i), Struct_2(-1000f), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(462f - _wgslsmith_div_f32(arg_0.a.x, var_0.c.a)) - 2291f) * arg_0.c.a));
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(step(arg_0.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, arg_1.a, arg_0.b)))))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a, arg_1.a, true)) + arg_0.c.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1291f - arg_1.a))))))), Struct_2(var_0.c.a), -1115f);
    return Struct_2(_wgslsmith_f_op_f32(func_3()));
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_5, 22>();
    global1 = -20540i;
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-595f, -1155f)))))), -1115f));
    return func_5(Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-623f, _wgslsmith_f_op_f32(func_2(vec4<bool>(false, false, false, false), vec3<i32>(-1i, 12313i, u_input.c))), var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(true, false, true, false), vec3<i32>(31820i, u_input.c, u_input.b.x))))), Struct_2(_wgslsmith_f_op_f32(-289f * _wgslsmith_f_op_f32(ceil(var_0)))), var_0), Struct_2(-829f), _wgslsmith_add_vec2_i32(u_input.b, countOneBits(vec2<i32>(3506i, u_input.c)) & u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_5(Struct_5(vec3<f32>(528f, var_0.a, var_0.a), var_0.a, Struct_2(_wgslsmith_f_op_f32(round(-648f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(747f, 341f, true)))), func_5(Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, var_0.a, -1467f), vec3<f32>(var_0.a, var_0.a, 126f), vec3<bool>(false, true, false))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a, -483f, var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), func_5(Struct_5(vec3<f32>(1000f, var_0.a, 151f), 1191f, Struct_2(var_0.a), var_0.a), func_5(global0[_wgslsmith_index_u32(u_input.e.x, 22u)], Struct_2(-1293f), vec2<i32>(u_input.b.x, u_input.b.x)), ~vec2<i32>(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-100f)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * 395f)), u_input.b), u_input.b);
    var var_1 = vec4<bool>(true && ((_wgslsmith_f_op_f32(var_0.a + -104f) < _wgslsmith_f_op_f32(var_0.a + 1929f)) == select(any(vec3<bool>(false, true, false)), false, any(vec3<bool>(true, true, true)))), true, false, all(vec2<bool>(true, true)));
    let var_2 = !(!(!(false == var_1.x)) | var_1.x);
    let var_3 = global2[_wgslsmith_index_u32(25692u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

