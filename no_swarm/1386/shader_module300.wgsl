struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, true, true, false), 26610i, -481f, 13119i, vec2<u32>(0u, 38848u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = (i32(-1i) * -countOneBits(~(-1i))) >> (_wgslsmith_mult_u32(reverseBits(countOneBits(global2.e.x)), (arg_0.e.x << (arg_0.e.x % 32u)) << (max(15844u, global2.e.x) % 32u)) % 32u);
    var_0 = _wgslsmith_div_i32(-u_input.c, _wgslsmith_mult_i32(u_input.c, _wgslsmith_add_i32(arg_0.d, ~max(22988i, 52018i))));
    let var_1 = firstTrailingBit(max(~vec4<u32>(4294967295u, 6718u, ~arg_0.e.x, u_input.a), ~((vec4<u32>(0u, 0u, global2.e.x, 0u) & vec4<u32>(global2.e.x, 113249u, arg_0.e.x, global2.e.x)) >> ((vec4<u32>(arg_0.e.x, u_input.b, u_input.b, 1u) ^ vec4<u32>(u_input.b, arg_0.e.x, arg_0.e.x, 1u)) % vec4<u32>(32u)))));
    let var_2 = Struct_1(vec4<bool>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.e.x, 0u, u_input.b, u_input.b), var_1) < _wgslsmith_clamp_u32(7714u, arg_0.e.x, u_input.b), true, ~(~2147483647i) <= arg_0.d, -12378i == (~arg_0.b << (32553u % 32u))), -((select(global2.b, 0i, global2.a.x) | _wgslsmith_div_i32(22834i, arg_0.b)) << (~33125u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 36500i, ~abs(arg_0.e));
    let var_3 = any(select(global2.a.zwz, !global2.a.xyz, all(vec4<bool>(var_2.a.x, true, global2.a.x, any(vec3<bool>(true, false, false))))));
    return ~arg_0.e;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~max(~1u, arg_3.e.x), global2.e.x, 0u), 36026u);
    let var_1 = arg_1;
    var var_2 = ~(~(~arg_1.d));
    let var_3 = abs(65246u);
    var var_4 = !vec3<bool>(max(-2326i, arg_3.d) <= u_input.c, false, true);
    return Struct_1(global2.a, arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_1.b, var_1.e | func_3(var_1));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<bool> {
    global1 = arg_2.a.x;
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1095f))), _wgslsmith_f_op_f32(-func_2(true, arg_0, arg_2.a.x, arg_0).c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1338f - arg_2.c), -1485f, !arg_0.a.x)), _wgslsmith_f_op_f32(186f + _wgslsmith_f_op_f32(global2.c * global2.c))))), -626f);
    var var_1 = _wgslsmith_f_op_f32(min(arg_0.c, 150f));
    return arg_2.a.zwz;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> vec3<i32> {
    global0 = array<vec2<bool>, 17>();
    global1 = any(!arg_2.a.yy) || (true | (-global2.d >= u_input.c));
    let var_0 = !select(select(arg_0.a.xxy, func_4(Struct_1(vec4<bool>(arg_2.a.x, true, true, false), 3896i, 2458f, 1i, vec2<u32>(arg_2.e.x, global2.e.x)), arg_0.b, func_2(arg_0.a.x, arg_0, global2.a.x, arg_2), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 52086u, arg_0.e.x), vec3<u32>(5865u, 289u, 10465u))), func_4(Struct_1(arg_0.a, arg_2.b, global2.c, 0i, arg_0.e), arg_2.d, arg_2, ~vec3<u32>(37293u, 29534u, global2.e.x)).x), !(!(!arg_0.a.zyw)), func_2(true, Struct_1(func_2(false, arg_0, true, arg_0).a, global2.b, 990f, abs(-43633i), vec2<u32>(9791u, 0u) | vec2<u32>(u_input.b, 4294967295u)), false, Struct_1(select(arg_2.a, vec4<bool>(arg_2.a.x, arg_0.a.x, arg_1, true), true), -20193i, _wgslsmith_div_f32(294f, global2.c), -2147483647i, select(arg_2.e, vec2<u32>(21050u, 38531u), global2.a.x))).a.yzz);
    let var_1 = vec3<i32>(firstLeadingBit(_wgslsmith_mult_i32(~(-30160i), firstLeadingBit(func_2(true, Struct_1(vec4<bool>(arg_0.a.x, false, var_0.x, false), 37095i, 1723f, 1i, arg_0.e), false, Struct_1(vec4<bool>(arg_1, arg_1, true, var_0.x), 26098i, global2.c, 54454i, arg_0.e)).b))), -firstLeadingBit(14323i), 2147483647i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(105f, global2.c) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c, 164f), vec2<f32>(arg_2.c, 327f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-621f, 1307f)))))));
    return ~vec3<i32>(-12575i >> (_wgslsmith_mult_u32(global2.e.x >> (4294967295u % 32u), arg_3) % 32u), -arg_2.b, ~(~(~arg_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 17>();
    let var_0 = Struct_1(select(vec4<bool>(global2.a.x, global2.a.x, true, 20581u > global2.e.x), global2.a, any(vec4<bool>(false, global2.c <= 255f, true, global2.a.x))), _wgslsmith_mult_i32(countOneBits(min(2147483647i, u_input.c)) | global2.d, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(13981i, global2.b, -58006i), vec3<i32>(1i, 35363i, 7035i)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.c)) + _wgslsmith_f_op_f32(global2.c + 1452f))), 608f, global2.a.x)), global2.d | 55663i, global2.e);
    var var_1 = select(global2.a.xwy, global2.a.ywx, var_0.a.wzx);
    let var_2 = -_wgslsmith_sub_vec3_i32(vec3<i32>(~(-1i) & ~global2.d, 10071i, _wgslsmith_div_i32(-19137i, 1i) ^ min(1i, global2.d)), func_1(Struct_1(!vec4<bool>(var_0.a.x, false, false, false), _wgslsmith_mod_i32(var_0.b, 1i), _wgslsmith_f_op_f32(-var_0.c), countOneBits(1i), var_0.e), true != all(global2.a.yxz), Struct_1(select(vec4<bool>(true, true, false, global2.a.x), vec4<bool>(false, false, global2.a.x, true), var_1.x), 1i, _wgslsmith_f_op_f32(ceil(-951f)), 2147483647i, vec2<u32>(26294u, 0u)), 15527u));
    let var_3 = -max(vec4<i32>(global2.d, select(~var_0.b, u_input.c, var_1.x), 2147483647i, _wgslsmith_mod_i32(-1i, u_input.c) >> (~u_input.b % 32u)), _wgslsmith_mod_vec4_i32(min(-vec4<i32>(var_2.x, 0i, u_input.c, 27697i), ~vec4<i32>(2147483647i, var_0.b, u_input.c, 2147483647i)), select(vec4<i32>(var_2.x, global2.d, var_2.x, 9216i) ^ vec4<i32>(u_input.c, u_input.c, u_input.c, var_0.d), abs(vec4<i32>(var_2.x, var_0.b, var_2.x, -30243i)), func_2(false, Struct_1(vec4<bool>(false, global2.a.x, global2.a.x, global2.a.x), 311i, -745f, u_input.c, var_0.e), global2.a.x, Struct_1(var_0.a, var_0.d, var_0.c, -9408i, var_0.e)).a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(var_0.c + 1429f)), _wgslsmith_f_op_f32(select(1349f, _wgslsmith_f_op_f32(574f * global2.c), -516f < var_0.c)), -378f))), global2.e.x, 901f, 375f);
}

