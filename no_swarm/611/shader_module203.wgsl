struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec4<f32>) -> vec2<f32> {
    var var_0 = Struct_3(Struct_1(-arg_1, arg_2.x, !(!arg_0)));
    var var_1 = Struct_3(var_0.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(-arg_2.x), 899f, var_1.a.b))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(arg_2)), vec4<f32>(var_1.a.b, 152f, 539f, -507f))), arg_2, !(!vec4<bool>(var_1.a.c, false, true, var_1.a.c)))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -124f) - var_1.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)), 813f, 192f))), arg_0));
    var var_3 = var_0.a;
    var_3 = var_1.a;
    return arg_2.zz;
}

fn func_4(arg_0: vec2<f32>) -> vec4<u32> {
    var var_0 = arg_0.x;
    var_0 = arg_0.x;
    var var_1 = Struct_2(arg_0.x);
    let var_2 = all(vec4<bool>(all(vec4<bool>(true, true, true, false)) || true, true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)) || true, true));
    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - arg_0.x) * _wgslsmith_div_f32(-990f, 303f)));
    return ~max(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, _wgslsmith_mod_u32(~318u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 16404u))), abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(80120u, 0u, 34414u, 43510u), vec4<u32>(1u, 1u, 1u, 1u))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    let var_0 = -vec3<i32>(1i, 2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.a, 1i, u_input.a, 0i) | vec4<i32>(-61523i, arg_3.a, arg_3.a, arg_3.a), -vec4<i32>(2147483647i, -1i, 0i, arg_3.a)));
    var var_1 = arg_3;
    var var_2 = false;
    var var_3 = ~_wgslsmith_sub_vec2_u32(~(~vec2<u32>(arg_2.x, arg_0.x)) & vec2<u32>(_wgslsmith_mod_u32(25446u, 5189u), _wgslsmith_mod_u32(4294967295u, arg_1.a.x)), firstTrailingBit(~(~vec2<u32>(92223u, arg_0.x))));
    let var_4 = Struct_3(Struct_1(~var_0.x | ~(-2147483647i >> (arg_1.a.x % 32u)), arg_3.b, select(!all(vec2<bool>(var_1.c, false)), false || (arg_3.b >= var_1.b), (arg_3.a >> (arg_1.a.x % 32u)) <= (var_1.a | arg_3.a))));
    return true;
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = -(i32(-1i) * -max(u_input.a, -2147483647i)) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(~30899u, ~1u, _wgslsmith_div_u32(0u, 4294967295u)), vec3<u32>(countOneBits(1u), 1u, abs(36537u)) | select(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 86734u), vec3<u32>(69736u, 0u, 20406u)), vec3<u32>(10632u, 21925u, 18283u), true)) % 32u);
    var var_1 = Struct_1(1i, 2341f, !func_5(vec3<u32>(_wgslsmith_mod_u32(1u, 5986u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 22384u, 1u), vec3<u32>(52139u, 19282u, 0u)), ~4294967295u), Struct_4(~vec2<u32>(12480u, 33830u)), func_4(_wgslsmith_f_op_vec2_f32(func_3(false, -1i, arg_0))), Struct_1(_wgslsmith_add_i32(23079i, var_0), _wgslsmith_f_op_f32(-arg_0.x), true)));
    var_1 = Struct_1(-(0i ^ reverseBits(_wgslsmith_sub_i32(u_input.a, var_0))), -821f, _wgslsmith_mult_i32(-(var_0 << (4294967295u % 32u)), var_0) != u_input.a);
    var var_2 = Struct_2(-761f);
    var var_3 = _wgslsmith_f_op_f32(abs(-410f));
    return Struct_3(Struct_1(var_0, 228f, false));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: vec4<u32>) -> vec4<bool> {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1307f, -1000f, 890f, 412f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1042f, 1244f, -1289f, -180f)))))));
    let var_1 = 1u;
    let var_2 = var_0;
    var var_3 = ~(0i & abs(u_input.a ^ -269i)) <= min(-(~(-20999i | u_input.a)), 2147483647i >> (~reverseBits(arg_0.a.x) % 32u));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(min(-1002f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.b)) - _wgslsmith_f_op_f32(var_0.a.b - var_0.a.b)))), 1173f);
    return vec4<bool>(max(~_wgslsmith_div_i32(-70679i, 52135i), 2147483647i) == ~arg_1, true, 0i >= _wgslsmith_mult_i32(-2147483647i, arg_1), var_0.a.c);
}

fn func_6(arg_0: vec4<bool>) -> Struct_4 {
    var var_0 = abs(u_input.a);
    var_0 = _wgslsmith_add_i32(min(firstLeadingBit(-4996i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-38923i, -2147483647i, u_input.a)), vec3<i32>(u_input.a, 22197i, u_input.a)), countOneBits(~vec3<i32>(u_input.a, -77751i, -28234i)))), u_input.a);
    var var_1 = Struct_4(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1098f, 1219f) - vec2<f32>(-286f, 228f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-577f, 558f) + vec2<f32>(-1099f, -1041f))))).zx);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1296f, 125f)) - vec3<f32>(888f, 1151f, -521f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-847f, 644f, 917f) * vec3<f32>(-294f, 1042f, -822f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2200f, 163f, -674f), vec3<f32>(-1000f, 502f, 555f))))))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-110f, _wgslsmith_f_op_f32(-1523f - -807f), _wgslsmith_f_op_f32(step(-425f, -1538f)))))));
    var_0 = _wgslsmith_mod_i32(~u_input.a, 23761i << (0u % 32u));
    return Struct_4(var_1.a);
}

fn func_7(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.a.b, -937f, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(619f * _wgslsmith_f_op_f32(arg_3.a.b * -597f)), arg_3.a.b), arg_3.a.b)).a;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-arg_3.a.b)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, arg_3.a.b) - vec2<f32>(var_0.b, arg_3.a.b))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.a.b, var_0.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.a.b, arg_3.a.b), vec2<f32>(-1348f, -865f), vec2<bool>(false, arg_3.a.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-539f, arg_3.a.b)))))));
    var var_2 = vec3<i32>(i32(-1i) * -(~var_0.a | _wgslsmith_div_i32(arg_3.a.a, var_0.a)), abs(_wgslsmith_div_i32(var_0.a, -(~4210i))), var_0.a);
    let var_3 = firstLeadingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(select(~vec3<u32>(4294967295u, 8428u, 35454u), ~vec3<u32>(arg_0.a.x, arg_0.a.x, 1u), func_5(vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), Struct_4(arg_0.a), vec4<u32>(arg_0.a.x, arg_0.a.x, 13315u, 1u), Struct_1(-2147483647i, arg_3.a.b, var_0.c))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(34009u, 33040u, 4294967295u), vec3<u32>(2746u, arg_0.a.x, arg_0.a.x)), vec3<u32>(arg_0.a.x, 61000u, arg_0.a.x))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<u32>(arg_0.a.x, arg_0.a.x, 1u), vec3<u32>(0u, arg_0.a.x, arg_0.a.x)) >> (((vec3<u32>(13026u, 4294967295u, 12079u) << (vec3<u32>(27010u, arg_0.a.x, 57579u) % vec3<u32>(32u))) | max(vec3<u32>(0u, 39208u, 16969u), vec3<u32>(arg_0.a.x, 28289u, 4294967295u))) % vec3<u32>(32u))));
    var var_4 = -max(_wgslsmith_div_vec4_i32(firstLeadingBit(-vec4<i32>(37451i, u_input.a, -9810i, 1i)), firstTrailingBit(vec4<i32>(15948i, arg_3.a.a, 16606i, 0i)) & -vec4<i32>(1i, 0i, arg_3.a.a, -35218i)), firstTrailingBit(vec4<i32>(-var_0.a, -29577i, 2147483647i, reverseBits(0i))));
    return Struct_1(_wgslsmith_dot_vec4_i32(~(-min(vec4<i32>(16574i, arg_3.a.a, -10527i, u_input.a), vec4<i32>(-7458i, arg_1.x, -17055i, var_2.x))), vec4<i32>(reverseBits(-var_0.a), var_0.a, arg_3.a.a, var_4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, arg_3.a.b)))) * arg_3.a.b), !(func_5(~vec3<u32>(52276u, var_3.x, var_3.x), arg_0, vec4<u32>(1u, arg_0.a.x, 0u, 1u) ^ vec4<u32>(15320u, var_3.x, 75933u, var_3.x), func_2(vec4<f32>(265f, -921f, -807f, var_0.b)).a) || any(arg_2.xxw)));
}

fn func_8(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, 0u), vec2<u32>(0u, 2613u)) ^ (~arg_1.yz & min(vec2<u32>(48321u, 4294967295u), arg_1.xy)), _wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(arg_1.yz, arg_1.xx), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 83679u), arg_1.yx) ^ vec2<u32>(arg_1.x, 0u), min(vec2<u32>(1u, 1u), select(arg_1.zx, vec2<u32>(arg_1.x, 24626u), vec2<bool>(arg_0.c, arg_2.a.c))))), arg_1.zx);
    var var_1 = var_0.x;
    let var_2 = vec4<i32>(_wgslsmith_mod_i32(arg_2.a.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-26086i, 1i, arg_0.a, -2147483647i), -vec4<i32>(-2147483647i, arg_2.a.a, 20421i, arg_2.a.a))) << (30826u % 32u), 1i, 15194i, u_input.a);
    let var_3 = Struct_2(1000f);
    var_1 = ~countOneBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.x, select(4294967295u, var_0.x, false)), var_0.x));
    return Struct_2(1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(func_7(func_6(func_1(Struct_4(vec2<u32>(4294967295u, 1u)), u_input.a, vec4<u32>(1u, 1u, 1u, 1u))), -min(vec2<i32>(u_input.a, 1i), ~vec2<i32>(-53836i, -14359i)), func_1(Struct_4(~vec2<u32>(1u, 4294967295u)), _wgslsmith_add_i32(u_input.a, u_input.a ^ -20224i), reverseBits(~vec4<u32>(0u, 1220u, 1108u, 0u))), func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1122f, -185f, 1873f, -171f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-839f, 1023f, 1422f, 2181f)))))), ~select(abs(vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(4294967295u, 1387u, 44436u) << (func_4(vec2<f32>(-415f, 1768f)).wzz % vec3<u32>(32u)), vec3<bool>(true, true, true)), Struct_3(Struct_1(-(u_input.a ^ -8142i), _wgslsmith_f_op_f32(abs(-1000f)), all(vec4<bool>(true, true, true, true)))));
    let var_1 = vec3<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(42342u, 28154u), vec2<u32>(6245u, 1u)), vec2<u32>(1u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(32535u, 30884u), 4294967295u, 0u, ~4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), 38687u) | ~reverseBits(vec3<u32>(1u, 1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(var_1.x ^ var_1.x, ~var_1.x)) >> (_wgslsmith_mult_u32(abs(1u), 32378u) % 32u), vec4<i32>(reverseBits(-11456i), u_input.a | ~(~2147483647i), _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.a, u_input.a, -36997i) & vec3<i32>(-1i, -2147483647i, u_input.a)), vec3<i32>(-1i, 0i, func_7(Struct_4(vec2<u32>(4294967295u, var_1.x)), vec2<i32>(u_input.a, 2147483647i), vec4<bool>(true, false, true, true), Struct_3(Struct_1(-10012i, var_0.a, false))).a)), u_input.a), _wgslsmith_mult_u32(var_1.x << (_wgslsmith_mod_u32(1u, 20709u) % 32u), var_1.x), _wgslsmith_f_op_f32(-862f + var_0.a));
}

