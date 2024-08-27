struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = any(select(vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), true, any(vec2<bool>(true, true)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false), false)));
    var_0 = false;
    var var_1 = firstLeadingBit(abs(firstLeadingBit(global0.a.c.a.xxy)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(682f, 1000f, 338f, -218f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-550f, 744f, 1445f, 719f) - vec4<f32>(973f, 163f, -2284f, -1465f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-825f, -1077f, -1322f, -808f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1693f, -837f, 1156f, 446f) + vec4<f32>(-678f, 1089f, -984f, 532f))), vec4<bool>(true, arg_2.x > u_input.b, false, all(vec3<bool>(false, true, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, -256f, -733f, -1449f)), vec4<f32>(-423f, 1000f, -175f, 938f), vec4<bool>(false, false, true, false))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-194f, 444f, -1402f, -1171f)))))), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), global0.a.a.x > 2147483647i), true))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(627f, _wgslsmith_div_f32(1000f, -1015f), -1953f, -1000f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(482f, -1497f, 1291f, 781f), vec4<f32>(268f, -1159f, 1000f, -507f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-643f, 480f, -1748f, -1003f), vec4<f32>(-476f, 2139f, -748f, 360f))))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-214f, 2179f, 710f, 272f))), vec4<f32>(-612f, 564f, 1178f, 362f), select(true, false, false))), vec4<f32>(481f, -1000f, _wgslsmith_f_op_f32(-1324f + 368f), _wgslsmith_div_f32(-841f, 457f)))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)))));
    let var_3 = Struct_3(Struct_2(-min(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.x, 74114i, -51908i, arg_0.a.a.x), vec4<i32>(arg_2.x, 25256i, 29221i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -474i, arg_0.a.a.x, global0.a.a.x), vec4<i32>(arg_2.x, 69019i, 12806i, -52649i))), global0.b, arg_0.b, Struct_1(arg_0.a.b.a)), Struct_1(~arg_0.a.c.a));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.zzz + var_2.ywy));
}

fn func_2() -> vec4<f32> {
    var var_0 = max(~u_input.a.x, 1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(vec4<i32>(global0.a.a.x | u_input.b, -29971i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.a.a.x, 66966i), global0.a.a.wwz), -16928i), global0.b, Struct_1(vec4<u32>(1964u, global0.a.b.a.x, 51870u, 25000u)), Struct_1(vec4<u32>(u_input.a.x, 1u, 8845u, 0u))), global0.a.d), Struct_3(global0.a, global0.b), vec3<i32>(abs(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, -1i), 2147483647i)), u_input.b, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.a.a.x, 1i, u_input.b), vec3<i32>(global0.a.a.x, 37599i, u_input.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(47085i, u_input.b, global0.a.a.x), vec3<i32>(u_input.b, 15293i, u_input.b), global0.a.a.wwy)))), global0.a.c));
    global0 = Struct_3(global0.a, Struct_1(~_wgslsmith_add_vec4_u32(global0.a.c.a, global0.b.a)));
    let var_2 = Struct_2(abs(global0.a.a), Struct_1(countOneBits(vec4<u32>(19129u ^ global0.a.c.a.x, select(u_input.a.x, 6251u, true), _wgslsmith_add_u32(36481u, 17475u), 1u))), global0.a.b, Struct_1(global0.a.b.a));
    let var_3 = var_2.d;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(var_1.x)), -781f, var_1.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 927f, var_1.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-245f, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, 355f, 950f, var_1.x), vec4<f32>(1000f, -424f, 893f, var_1.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 1000f, 1383f)))) - vec4<f32>(-157f, 360f, _wgslsmith_f_op_f32(floor(-561f)), -320f))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(784f, -878f, -101f, 1422f)))) + _wgslsmith_f_op_vec4_f32(func_2())) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-598f * 327f) - -106f), -238f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-124f, 962f))), -1857f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(786f))), 1501f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -248f) + _wgslsmith_f_op_f32(-1000f * 1567f)), _wgslsmith_f_op_f32(trunc(-799f)))), !(firstTrailingBit(u_input.a.x) <= abs(0u))));
    global0 = Struct_3(global0.a, Struct_1(~abs(global0.a.b.a)));
    var var_1 = vec4<u32>(_wgslsmith_add_u32(max(~_wgslsmith_div_u32(14272u, 113889u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global0.b.a.zzz, global0.b.a.yww), ~global0.b.a.zzw)), u_input.a.x), max(61840u, 1u), ~(~(~(~global0.a.c.a.x))), 12963u);
    var var_2 = u_input.b;
    global0 = Struct_3(global0.a, global0.a.d);
    return _wgslsmith_f_op_f32(max(366f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1347f, -411f, 503f, 590f), vec4<f32>(-1219f, 1249f, -1274f, -3228f), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1637f, 476f, 220f, -129f))))), vec4<f32>(-808f, 1f, -2461f, -1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-734f, _wgslsmith_f_op_f32(abs(-1350f)), _wgslsmith_f_op_f32(trunc(1425f)), -417f))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -1471f) + _wgslsmith_f_op_f32(var_0.x * -195f)), _wgslsmith_f_op_f32(round(var_0.x)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2386f) * var_0.x))), _wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-910f - _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(vec4<i32>(55683i, -2147483647i, u_input.b, -2147483647i), global0.a.b, global0.b, global0.b), Struct_1(vec4<u32>(0u, 3737u, global0.b.a.x, u_input.a.x))), Struct_3(Struct_2(vec4<i32>(global0.a.a.x, u_input.b, global0.a.a.x, 0i), Struct_1(vec4<u32>(60570u, u_input.a.x, 18243u, u_input.a.x)), global0.a.c, Struct_1(vec4<u32>(1u, u_input.a.x, 4294967295u, 12556u))), global0.b), abs(global0.a.a.ywz), Struct_1(global0.a.d.a))).x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(var_0.zx, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, var_0.x))), var_0.yx)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(170f, _wgslsmith_f_op_f32(exp2(var_0.x))) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(715f - var_0.x), 8316i >= global0.a.a.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1332f, var_1.x, -1040f, -1000f) + vec4<f32>(var_0.x, -1969f, -1227f, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1537f, 1262f, var_1.x, -320f))))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-603f, _wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 1258f) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, var_0.x, true)) * 1000f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1623f, var_0.x, var_0.x, var_0.x) + vec4<f32>(var_0.x, 164f, var_1.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -1000f, var_1.x, -1275f)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_0.x, var_1.x, var_1.x)))))));
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(firstLeadingBit(0u), 0u ^ global0.b.a.x, u_input.a.x, ~global0.a.b.a.x), vec4<u32>(abs(_wgslsmith_dot_vec4_u32(global0.b.a, vec4<u32>(1744u, global0.b.a.x, 61313u, global0.a.b.a.x))), ~u_input.a.x, 36642u, ~(~4294967295u))) << (countOneBits((abs(global0.b.a.x) & u_input.a.x) ^ 1u) % 32u);
    var var_3 = var_1.x;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, var_1.x, -1000f);
    var var_4 = global0.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.a, vec4<f32>(-351f, 1034f, _wgslsmith_div_f32(1180f, -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1322f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.x))))))), ~vec2<i32>(~reverseBits(global0.a.a.x), i32(-1i) * -1i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -938f, 1216f, var_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), true)));
}

