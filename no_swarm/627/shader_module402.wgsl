struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<f32>(463f, 366f), Struct_1(2147483647i, -1093f, -300f, vec4<bool>(true, false, false, true)), vec2<f32>(544f, -1860f), Struct_1(6535i, -529f, 1000f, vec4<bool>(true, false, false, false))), Struct_2(vec2<f32>(535f, -1554f), Struct_1(i32(-2147483648), 587f, -987f, vec4<bool>(true, false, true, false)), vec2<f32>(1105f, 775f), Struct_1(i32(-2147483648), -1891f, 485f, vec4<bool>(true, false, false, false))), Struct_2(vec2<f32>(-335f, -846f), Struct_1(33511i, 2278f, 1000f, vec4<bool>(false, true, true, false)), vec2<f32>(236f, -1000f), Struct_1(1i, 685f, -1057f, vec4<bool>(false, true, false, true))), Struct_2(vec2<f32>(-1582f, 611f), Struct_1(-1i, -1000f, -673f, vec4<bool>(true, false, true, true)), vec2<f32>(-1072f, -279f), Struct_1(-1i, -267f, 1752f, vec4<bool>(false, false, true, false))), Struct_2(vec2<f32>(-888f, -616f), Struct_1(-33365i, 968f, 1173f, vec4<bool>(false, true, true, false)), vec2<f32>(961f, -784f), Struct_1(2147483647i, 1000f, 912f, vec4<bool>(false, false, false, true))), Struct_2(vec2<f32>(1048f, 1263f), Struct_1(-3883i, -1271f, -517f, vec4<bool>(false, false, true, true)), vec2<f32>(306f, 1238f), Struct_1(1i, 301f, -608f, vec4<bool>(false, false, false, true))), Struct_2(vec2<f32>(-1609f, 454f), Struct_1(0i, -232f, -1312f, vec4<bool>(true, true, false, true)), vec2<f32>(435f, 442f), Struct_1(-15952i, 1426f, -208f, vec4<bool>(true, true, true, false))), Struct_2(vec2<f32>(100f, 1255f), Struct_1(-2071i, 461f, -1248f, vec4<bool>(false, false, true, true)), vec2<f32>(1000f, 401f), Struct_1(2147483647i, 1618f, 108f, vec4<bool>(false, true, false, true))), Struct_2(vec2<f32>(-2498f, -1250f), Struct_1(i32(-2147483648), -1137f, 1370f, vec4<bool>(true, true, false, false)), vec2<f32>(-1070f, 1714f), Struct_1(-1251i, -538f, 1675f, vec4<bool>(true, true, true, false))), Struct_2(vec2<f32>(1407f, 873f), Struct_1(31937i, -661f, 2124f, vec4<bool>(true, false, true, true)), vec2<f32>(-1339f, -713f), Struct_1(1i, 1354f, 1000f, vec4<bool>(true, false, false, false))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    return arg_2.d.d.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = min(-select(vec3<i32>(arg_0.x, -42214i, ~arg_1.a), vec3<i32>(120985i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a, -16595i), vec2<i32>(arg_0.x, -11844i)), arg_0.x), vec3<bool>(arg_1.d.x, arg_1.c == -306f, arg_1.a <= arg_0.x)), arg_0.yxx);
    var var_1 = abs(vec3<i32>(arg_0.x, ~_wgslsmith_mult_i32(var_0.x, arg_1.a), -2147483647i) ^ max(-(~vec3<i32>(arg_0.x, var_0.x, -2147483647i)), abs(~arg_0.wxy)));
    var var_2 = _wgslsmith_f_op_f32(1178f + arg_1.c);
    let var_3 = arg_1.b;
    var var_4 = true;
    return 212f;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a ^ 44745u, ~22717u, ~u_input.a, countOneBits(0u)), countOneBits(select(vec4<u32>(4294967295u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 9089u, 62076u, u_input.a), arg_1.d))), select(select(vec4<u32>(max(u_input.a, 102305u), 7939u | u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a), select(4294967295u, u_input.a, true)), ~vec4<u32>(u_input.a, u_input.a, 34773u, 1u), select(select(vec4<bool>(false, arg_0, false, arg_1.d.x), vec4<bool>(false, false, false, true), false), arg_1.d, false)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 46179u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 88050u, u_input.a)), arg_1.d));
    var_0 = vec4<u32>(select(u_input.a, ~firstLeadingBit(var_0.x), any(!arg_1.d.zx)), ~reverseBits(~_wgslsmith_div_u32(u_input.a, u_input.a)), _wgslsmith_clamp_u32(~21138u, var_0.x, 3235u), firstLeadingBit(~4294967295u));
    global0 = array<Struct_2, 10>();
    var var_1 = ~var_0.x;
    var_1 = 1u;
    return !arg_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1498f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1334f * _wgslsmith_f_op_f32(-1626f + 601f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-191f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-973f * 589f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-734f, 1478f)) + _wgslsmith_f_op_f32(198f - -107f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1414f))))), true)));
    global0 = array<Struct_2, 10>();
    let var_1 = vec2<i32>(_wgslsmith_sub_i32(1i, ~0i), 1i);
    let var_2 = vec3<f32>(587f, _wgslsmith_f_op_f32(select(-213f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, -1759f)), _wgslsmith_f_op_f32(min(-1075f, _wgslsmith_f_op_f32(f32(-1f) * -191f)))), all(vec3<bool>(u_input.a < u_input.a, true, func_1(2147483647i, var_1.x, global0[_wgslsmith_index_u32(8996u, 10u)], var_0.zx))))), var_0.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-375f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec4_i32(-vec4<i32>(var_1.x, 1i, -45824i, var_1.x), select(vec4<i32>(-39340i, 2147483647i, -5024i, 1i), vec4<i32>(15721i, 8536i, var_1.x, 8433i), false)), Struct_1(select(-1i, var_1.x, true), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1049f), vec4<bool>(true, true, true, true)))))));
    global0 = array<Struct_2, 10>();
    let var_4 = Struct_1(3057i, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(796f, _wgslsmith_f_op_f32(-var_0.x), -2147483647i > var_1.x))))), select(vec4<bool>(true, any(vec2<bool>(true, true)), !(var_2.x < 796f), true), vec4<bool>(func_3(false, Struct_1(-7133i, var_2.x, var_0.x, vec4<bool>(true, true, false, true))) | true, true, true && any(vec4<bool>(false, false, true, true)), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false)), true)));
    var var_5 = select(select(vec4<bool>(var_4.d.x, !(var_4.c == var_2.x), _wgslsmith_f_op_f32(-var_0.x) <= -902f, !(!var_4.d.x)), var_4.d, !(!(!vec4<bool>(var_4.d.x, var_4.d.x, false, false)))), vec4<bool>(false, 12335u > ~u_input.a, var_4.d.x, 1285f <= var_2.x), !(!all(!var_4.d.xw)));
    var_5 = vec4<bool>(true, var_5.x, false, false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1i, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a ^ u_input.a, u_input.a & u_input.a), vec3<u32>(u_input.a, _wgslsmith_add_u32(1u, u_input.a), u_input.a), _wgslsmith_mult_vec3_u32(~vec3<u32>(56229u, 0u, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 56857u, 92207u))));
}

