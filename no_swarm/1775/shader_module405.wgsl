struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: u32) -> i32 {
    var var_0 = Struct_1(vec4<i32>(abs(i32(-1i) * -1i), select(_wgslsmith_div_i32(arg_1.c.b, arg_1.a.b.b), 1i, false), -30912i, reverseBits(arg_1.c.b)) | -max(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c.b, arg_0.b.b, 0i, 30865i), vec4<i32>(48846i, 41399i, arg_0.b.b, -19819i)), -vec4<i32>(arg_1.c.b, arg_0.b.b, arg_0.c, arg_1.a.c)));
    let var_1 = true;
    var var_2 = Struct_5(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(488f + arg_1.a.a.x)), arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1635f));
    var_2 = Struct_5(arg_1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_2.b)), _wgslsmith_f_op_f32(-arg_1.d), var_1 & true)), Struct_3(arg_1.d, _wgslsmith_mod_i32(-min(var_0.a.x, -16960i), -22255i)), -1509f);
    var_2 = Struct_5(Struct_4(vec3<f32>(arg_0.b.a, _wgslsmith_f_op_f32(arg_0.b.a - _wgslsmith_f_op_f32(min(-845f, -524f))), _wgslsmith_f_op_f32(111f - -1305f)), var_2.c, var_2.a.b.b), 1286f, arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.b)) * 432f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.d * -1557f), _wgslsmith_f_op_f32(max(1000f, -762f)))))));
    return _wgslsmith_clamp_i32(1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(abs(0i), ~(-2147483647i)), 1i), arg_1.a.c);
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    var var_0 = Struct_1(-vec4<i32>(~(~(-26982i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-5324i, 9529i, 23657i, 2147483647i), vec4<i32>(2147483647i, 27340i, 2147483647i, 41278i)) & abs(9434i), -(~28305i), func_3(Struct_4(vec3<f32>(-1110f, 943f, 447f), Struct_3(519f, 1i), 1i), Struct_5(Struct_4(vec3<f32>(-397f, 860f, 1493f), Struct_3(-1283f, -9168i), -32531i), 298f, Struct_3(-626f, -1i), 1000f), 4294967295u) ^ _wgslsmith_add_i32(59619i, 26327i)));
    var var_1 = vec3<bool>(true, arg_0.x, !any(select(!vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), arg_0.x))));
    let var_2 = Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1061f, _wgslsmith_f_op_f32(round(982f)), _wgslsmith_f_op_f32(f32(-1f) * -302f))), Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-184f, 468f)), _wgslsmith_f_op_f32(f32(-1f) * -886f), true)), ~(-40528i)), ~var_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -484f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1487f + -819f) - _wgslsmith_f_op_f32(-1457f + -2334f))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1030f - _wgslsmith_f_op_f32(f32(-1f) * -511f))), -(var_0.a.x << (u_input.a % 32u))), _wgslsmith_div_f32(683f, -1000f));
    var var_3 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1332f, var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -414f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.a, var_2.d, _wgslsmith_f_op_f32(ceil(-1722f))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d + var_2.a.b.a))), var_0.a.x), -7528i);
    var_3 = var_2.a;
    return _wgslsmith_f_op_f32(f32(-1f) * -275f);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = false;
    var var_1 = 71068u;
    var_1 = _wgslsmith_mult_u32(reverseBits(select(arg_2, _wgslsmith_div_u32(arg_3.x, arg_3.x) >> (_wgslsmith_dot_vec2_u32(arg_3.xy, vec2<u32>(arg_3.x, arg_2)) % 32u), 752f > _wgslsmith_f_op_f32(func_2(vec2<bool>(var_0, true))))), 40746u);
    var var_2 = Struct_3(-341f, _wgslsmith_sub_i32(0i, _wgslsmith_mod_i32(0i, 1i)));
    var_2 = Struct_3(-684f, _wgslsmith_div_i32(var_2.b, var_2.b));
    return Struct_3(_wgslsmith_f_op_f32(731f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * _wgslsmith_f_op_f32(min(-363f, 583f)))))), -1i);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_add_vec2_i32(firstLeadingBit(_wgslsmith_sub_vec2_i32(countOneBits(-vec2<i32>(arg_1.b, arg_1.b)), min(vec2<i32>(-2147483647i, -16472i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(336i, 1i))))), vec2<i32>(reverseBits(i32(-1i) * -arg_1.b), -arg_1.b));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(710f, _wgslsmith_f_op_f32(-143f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -654f), _wgslsmith_f_op_f32(-488f - arg_1.a), true))), 612f, _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_1.a) + _wgslsmith_f_op_f32(arg_1.a - -679f)))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, arg_1.a, arg_1.a, 1070f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-187f, arg_1.a, arg_1.a, 565f) - vec4<f32>(var_2.x, 833f, 1089f, -998f))))));
    var_2 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1299f, -815f) * -254f) * var_2.x), _wgslsmith_f_op_f32(439f * _wgslsmith_f_op_f32(-var_2.x)), arg_1.a);
    return vec2<i32>(var_1.b, 11292i);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<u32>) -> Struct_5 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-644f, _wgslsmith_f_op_f32(128f - 2783f), 653f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(614f, -449f, 1517f))))), Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true))))), _wgslsmith_div_i32(0i, 54137i)), 40760i);
    var_0 = Struct_4(_wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(-var_0.a)), Struct_3(_wgslsmith_div_f32(var_0.b.a, var_0.a.x), _wgslsmith_add_i32(var_0.b.b, ~_wgslsmith_mod_i32(var_0.c, 29701i))), var_0.c);
    var var_1 = all(vec3<bool>(true, true, true));
    var_1 = true;
    let var_2 = Struct_2(arg_1.x);
    return Struct_5(Struct_4(vec3<f32>(_wgslsmith_f_op_f32(round(var_0.b.a)), -299f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(655f + 1361f)))), func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), 1u, vec3<u32>(firstLeadingBit(arg_1.x), var_2.a, 1u)), func_3(Struct_4(vec3<f32>(var_0.b.a, var_0.a.x, var_0.b.a), var_0.b, arg_0.x), Struct_5(Struct_4(var_0.a, var_0.b, var_0.c), 653f, func_1(vec3<bool>(true, false, false), vec3<bool>(true, true, true), 37780u, vec3<u32>(4294967295u, var_2.a, 29223u)), _wgslsmith_f_op_f32(sign(608f))), ~countOneBits(4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true))))), func_1(!vec3<bool>(var_0.b.a > var_0.a.x, true, true), select(vec3<bool>(var_0.b.a >= -1079f, all(vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), arg_1.x, ~abs(firstTrailingBit(arg_1))), 2101f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-36532i, 2147483647i) >> (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u), 1i), -func_4(vec3<u32>(u_input.a, u_input.a, 39682u) >> (vec3<u32>(41575u, u_input.a, u_input.a) % vec3<u32>(32u)), func_1(vec3<bool>(false, false, true), vec3<bool>(true, true, false), 46901u, vec3<u32>(19802u, u_input.a, u_input.a)))), ~vec3<u32>(1u, u_input.a, select(u_input.a, 10499u, false)) & ~(~abs(vec3<u32>(u_input.a, 35589u, u_input.a))));
    var var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(~1u), ~(~(~15137u))), vec2<u32>(u_input.a, 9308u));
    var_1 = vec2<u32>(min(var_1.x, ~select(8305u, ~84841u, all(vec2<bool>(true, false)))), ~select(~1u >> (1u % 32u), _wgslsmith_div_u32(1u, abs(4294967295u)), select(true, true, all(vec2<bool>(false, true)))));
    var var_2 = Struct_1(vec4<i32>(~(i32(-1i) * -20173i), i32(-1i) * -_wgslsmith_clamp_i32(var_0.a.b.b, var_0.c.b, var_0.a.b.b), func_3(func_5(vec2<i32>(var_0.a.b.b, -1i), vec3<u32>(3782u, 18952u, 0u)).a, Struct_5(var_0.a, 118f, func_1(vec3<bool>(false, false, false), vec3<bool>(true, true, true), var_1.x, vec3<u32>(0u, u_input.a, u_input.a)), _wgslsmith_f_op_f32(var_0.d - 224f)), countOneBits(abs(var_1.x))), -21907i));
    let var_3 = _wgslsmith_mod_vec3_u32(firstTrailingBit(~vec3<u32>(1u, 1u, 4294967295u << (u_input.a % 32u))), vec3<u32>(~_wgslsmith_div_u32(firstTrailingBit(1u), var_1.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(41046u, 12077u, 34515u, 4294967295u) >> (vec4<u32>(0u, 37782u, 4442u, var_1.x) % vec4<u32>(32u)), min(vec4<u32>(u_input.a, 83795u, 1u, 0u), vec4<u32>(var_1.x, u_input.a, 4294967295u, 9196u))), ~152768u));
    let var_4 = ~min(~var_3.xz, firstLeadingBit(_wgslsmith_mult_vec2_u32(var_3.yz, vec2<u32>(0u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec4<f32>(2069f, func_5(vec2<i32>(var_2.a.x, ~(-2147483647i)), ~var_3).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true)))))), 757f), vec2<f32>(_wgslsmith_f_op_f32(floor(-872f)), 527f));
}

