struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = u_input.c.x;
    let var_1 = ~_wgslsmith_div_u32(1u, select(var_0, ~1u, arg_1.b));
    let var_2 = ~var_0;
    let var_3 = ~u_input.a.zy;
    let var_4 = vec4<bool>(select(!(1360i <= arg_1.a.x) && arg_1.b, true, all(vec4<bool>(arg_1.b, false, true, arg_1.b))), false, any(vec2<bool>(true, !arg_1.b & true)), any(select(vec3<bool>(arg_1.b, arg_1.b, all(vec3<bool>(true, arg_1.b, false))), !vec3<bool>(arg_1.b, arg_1.b, arg_1.b), select(!vec3<bool>(false, arg_1.b, arg_1.b), !vec3<bool>(true, arg_1.b, arg_1.b), select(vec3<bool>(true, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, true, arg_1.b), vec3<bool>(true, false, false))))));
    return _wgslsmith_f_op_vec3_f32(arg_1.c * vec3<f32>(arg_3.x, arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(arg_0 * arg_1.c.x)))))));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = Struct_1(select(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -54861i, -8808i), vec3<i32>(-13283i, -3896i, 0i)) | select(vec3<i32>(1i, -25683i, -1i), vec3<i32>(27218i, -2147483647i, 0i), vec3<bool>(true, true, arg_0))), ~reverseBits(vec3<i32>(1i, 1i, 1i)), true), arg_0 | all(vec4<bool>(true, all(vec2<bool>(false, arg_0)), false && arg_0, any(vec4<bool>(false, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(286f, -546f, 1000f))), _wgslsmith_f_op_vec3_f32(func_3(-927f, Struct_1(vec3<i32>(2147483647i, 2147483647i, 36069i), arg_0, vec3<f32>(-228f, -489f, 1555f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(954f, 822f, 306f, 233f)), vec2<f32>(-482f, -897f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(724f, -915f, -1966f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-573f, -1115f, 1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-778f, -1066f, -885f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-884f, -1079f, -152f)))))));
    var_0 = Struct_1(abs(var_0.a), (var_0.a.x < (~var_0.a.x << (u_input.c.x % 32u))) | false, _wgslsmith_f_op_vec3_f32(-var_0.c));
    var var_1 = Struct_1(_wgslsmith_mod_vec3_i32(var_0.a, vec3<i32>(_wgslsmith_mult_i32(-18340i, var_0.a.x), abs(_wgslsmith_add_i32(1i, 0i)), -var_0.a.x)), select(!(!all(vec3<bool>(var_0.b, var_0.b, false))), true, all(select(select(vec4<bool>(false, var_0.b, arg_0, var_0.b), vec4<bool>(arg_0, arg_0, false, var_0.b), vec4<bool>(arg_0, arg_0, true, var_0.b)), vec4<bool>(arg_0, arg_0, var_0.b, arg_0), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.c))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(1000f, -741f), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_vec3_f32(func_3(406f, Struct_1(var_0.a, true, var_0.c), vec4<f32>(1060f, -951f, var_0.c.x, -586f), vec2<f32>(-697f, -1183f))).x)))));
    let var_2 = vec3<bool>(false, !var_1.b && any(select(!vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), !vec2<bool>(true, arg_0))), any(select(vec4<bool>(!arg_0, arg_0, true, true), vec4<bool>(true, arg_0, var_0.b || var_0.b, var_1.b), true)));
    var var_3 = u_input.b.x <= _wgslsmith_div_u32(1u, ~reverseBits(20301u));
    return false & !(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 11624u, u_input.a.x), vec4<u32>(u_input.c.x, 40878u, 1u, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, 1u, 4294967295u), vec4<u32>(0u, u_input.b.x, 1u, u_input.a.x))) == countOneBits(u_input.a.x));
}

fn func_1() -> Struct_1 {
    let var_0 = ~u_input.b.x;
    var var_1 = func_2(true);
    let var_2 = reverseBits(_wgslsmith_add_u32(u_input.b.x, countOneBits(7150u)));
    var_1 = false;
    var_1 = all(!select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    return Struct_1(max(abs(firstLeadingBit(vec3<i32>(1i, 56482i, -2147483647i))) >> (u_input.c % vec3<u32>(32u)), ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(17191i, 2147483647i, -87586i)), _wgslsmith_sub_i32(-2147483647i, -50302i), 1i)), -8687i == min(-_wgslsmith_mod_i32(-25633i, 22985i), _wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, -1i), firstTrailingBit(22388i))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1521f, -1516f, 495f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-347f, -819f, 1600f))) * vec3<f32>(1f, 1f, 1f)))));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.c.x, arg_2, arg_2, -354f), vec4<f32>(arg_2, arg_2, -1053f, -446f))), vec4<f32>(arg_2, -1676f, arg_2, -1938f)) + vec4<f32>(-340f, _wgslsmith_f_op_f32(abs(-578f)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_3.c.x - arg_2)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1578f, arg_3.c.x, -559f, 1018f) - vec4<f32>(-436f, -1326f, -1141f, arg_2))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.x, -1000f, 399f, 1000f) + vec4<f32>(arg_2, -397f, arg_2, arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_3.c.x, arg_2))), arg_3.b)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(732f, arg_3.c.x, false)) - -1354f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.x - arg_2)), -912f, 1000f)));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1244f, _wgslsmith_div_f32(-1018f, 350f), -1857f, _wgslsmith_f_op_f32(arg_2 + -867f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3.c.x, 465f, arg_2, 582f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 432f, arg_2, 2464f))), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(536f, var_0.x), arg_3.c.x, arg_3.c.x, _wgslsmith_f_op_f32(383f - -293f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1319f, -536f, -714f, -1946f))))), false));
    var var_1 = true;
    var var_2 = 1000f;
    var_2 = -2094f;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1684f, _wgslsmith_f_op_f32(var_0.x * 141f))), 1689f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-(countOneBits(vec3<i32>(2147483647i, 1i, 42193i)) << (vec3<u32>(45491u, u_input.b.x, u_input.c.x) % vec3<u32>(32u))) >> (~min(u_input.c, vec3<u32>(1u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(func_4(false, _wgslsmith_mult_vec2_i32(~vec2<i32>(2147483647i, -95916i), vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2198f))), func_1())) > 1256f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_1 = ~551u & u_input.c.x;
    let var_2 = var_0.b;
    var var_3 = var_0.a.x | _wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(1i, 713i, 2147483647i, 8166i)), vec4<i32>(var_0.a.x, -8123i, 0i, var_0.a.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(17205i, var_0.a.x, var_0.a.x)), abs(var_0.a.x), 1i, -43860i)));
    var_3 = max(var_0.a.x, func_1().a.x >> (var_1 % 32u));
    let var_4 = Struct_1(var_0.a | _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.x ^ 32791i, 0i, var_0.a.x & 1525i), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.a, vec3<i32>(var_0.a.x, -57447i, 1i)), ~vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x))), var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c + _wgslsmith_div_vec3_f32(var_0.c, vec3<f32>(var_0.c.x, var_0.c.x, 873f))) * var_0.c)));
    var_3 = abs(firstTrailingBit(0i));
    var var_5 = vec4<i32>(-1i, 14022i, var_0.a.x, var_4.a.x);
    var var_6 = select(vec2<bool>(true, !(_wgslsmith_f_op_f32(-var_4.c.x) >= _wgslsmith_f_op_f32(-908f + -928f))), select(vec2<bool>(var_4.b, true), vec2<bool>(true, var_0.b), any(vec3<bool>(false, true, !var_4.b))), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, min(~vec2<u32>(countOneBits(u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(var_1, 1u, var_1))), vec2<u32>(4294967295u, 0u)), var_4.c.yx, -281f, (firstTrailingBit(u_input.b.x) ^ max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, u_input.c.x, var_1), vec3<u32>(var_1, u_input.c.x, u_input.c.x)), var_1)) & _wgslsmith_add_u32(countOneBits(u_input.b.x) & ~u_input.a.x, 56913u));
}

