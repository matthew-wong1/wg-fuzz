struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> u32 {
    global0 = -206f;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(505f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -216f)))))))));
    let var_0 = Struct_2(arg_0 << ((~arg_0 ^ u_input.b) % 32u), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~33297u, 1u, 4330u), countOneBits(u_input.a | 5642u), firstTrailingBit(4294967295u), ~(~arg_0)), max(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 1459u, 91118u, arg_0), select(vec4<u32>(u_input.b, u_input.b, 1u, arg_0), vec4<u32>(36910u, 0u, 12647u, u_input.b), true)), reverseBits(vec4<u32>(arg_0, arg_0, 28287u, 4364u)))), vec4<i32>(arg_1.x, 0i, _wgslsmith_dot_vec4_i32(arg_1, -(arg_1 & vec4<i32>(56721i, 17250i, -25847i, 2147483647i))), arg_1.x));
    var var_1 = var_0;
    var var_2 = Struct_3(25960u >> (u_input.a % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), ~(~vec4<u32>(46650u, arg_0, var_1.a, 17403u)) ^ ~(~_wgslsmith_mod_vec4_u32(var_0.b, var_1.b)), Struct_1(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(false, false, false), true), vec3<bool>(false, true, var_1.b.x >= u_input.b), vec3<bool>(true, all(vec2<bool>(false, true)), any(vec4<bool>(false, true, true, false))))));
    return ~(abs(_wgslsmith_mod_u32(var_2.c.x, 854u)) >> (~u_input.a % 32u)) << (~56881u % 32u);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: i32) -> u32 {
    let var_0 = Struct_2(74392u, ~vec4<u32>(arg_1, 4294967295u, u_input.b, _wgslsmith_mult_u32(reverseBits(0u), arg_1)), vec4<i32>(6992i, arg_2 ^ 1i, firstTrailingBit(arg_2), firstLeadingBit(-1i)) & ~abs(vec4<i32>(1i, arg_2, -1i, arg_2)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(305f, -389f, true)), -2082f))))));
    var var_1 = _wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(reverseBits(var_0.b.zyx), vec3<u32>(_wgslsmith_div_u32(67494u, var_0.b.x), 11193u, _wgslsmith_sub_u32(arg_1, 8135u))), ~var_0.b.xwy);
    var var_2 = Struct_2(var_0.a, vec4<u32>(arg_1, countOneBits(func_3(0u, var_0.c)), 4294967295u, abs(func_3(var_1.x, var_0.c))) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.b, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 18429u, 1u, 0u), vec4<u32>(arg_1, 39431u, 1u, 4294967295u))), ~vec4<u32>(0u, var_1.x, 4294967295u, var_1.x)) % vec4<u32>(32u)), vec4<i32>(0i, var_0.c.x, arg_2, -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c.x, var_0.c.x), var_0.c.xz), var_0.c.yw)));
    let var_3 = Struct_3(_wgslsmith_div_u32(~111283u, 9582u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(956f, -2185f))), vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2823f, -2727f))))), (vec4<u32>(_wgslsmith_sub_u32(26673u, var_2.b.x), ~0u, arg_0, arg_0) >> (var_0.b % vec4<u32>(32u))) >> (~(~var_2.b >> (select(vec4<u32>(1u, 0u, 25964u, var_1.x), vec4<u32>(0u, 1u, 22782u, 4294967295u), true) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_1(select(vec3<bool>(true, true, -37023i < arg_2), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)))));
    return ~(_wgslsmith_mod_u32(4294967295u, ~74714u) << (_wgslsmith_div_u32(reverseBits(arg_1), ~17299u) % 32u)) ^ _wgslsmith_mod_u32(4294967295u, reverseBits(1u));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(func_4(~8054u << (_wgslsmith_sub_u32(abs(u_input.b), u_input.b) % 32u), func_3(~u_input.b >> (1u % 32u), vec4<i32>(_wgslsmith_sub_i32(-15257i, -1i), 1i, 1i, i32(-1i) * -2147483647i)), firstTrailingBit(2147483647i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(570f, -513f) + vec2<f32>(-990f, 870f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-333f, 1467f), vec2<f32>(-134f, 630f), true)), vec2<bool>(true, true))) - vec2<f32>(_wgslsmith_div_f32(662f, 841f), 1f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-265f, -2406f)), vec2<f32>(1000f, 751f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-610f, -1422f) + _wgslsmith_div_vec2_f32(vec2<f32>(-387f, -1145f), vec2<f32>(-456f, -785f)))), vec2<bool>(any(vec4<bool>(false, true, true, true)), false))), ~(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 37119u, u_input.a, u_input.b), vec4<u32>(u_input.b, u_input.b, 0u, 69399u), vec4<u32>(24791u, 6189u, u_input.b, 0u)))), Struct_1(vec3<bool>(!select(false, false, false), !any(vec4<bool>(true, true, true, false)), true)));
    global0 = _wgslsmith_f_op_f32(-var_0.b.x);
    global0 = var_0.b.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x * -454f));
    var var_2 = Struct_3(1u, _wgslsmith_f_op_vec2_f32(trunc(var_0.b)), (_wgslsmith_add_vec4_u32(countOneBits(var_0.c), abs(vec4<u32>(var_0.a, var_0.c.x, var_0.a, u_input.b))) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(33252u, var_0.c.x, 46938u, var_0.c.x), vec4<u32>(0u, var_0.c.x, var_0.c.x, u_input.a)) % vec4<u32>(32u))) | select(reverseBits(var_0.c), ~(~vec4<u32>(u_input.a, u_input.a, 37257u, var_0.a)), var_0.d.a.x & true), Struct_1(var_0.d.a));
    return Struct_4(!(!(!select(vec4<bool>(true, false, var_0.d.a.x, var_2.d.a.x), vec4<bool>(true, true, true, false), vec4<bool>(true, true, var_0.d.a.x, true)))), max(_wgslsmith_sub_u32(select(var_0.a, 28030u, true), _wgslsmith_dot_vec4_u32(var_2.c, var_2.c)), _wgslsmith_clamp_u32(u_input.b, _wgslsmith_add_u32(4294967295u, u_input.b), _wgslsmith_mult_u32(21046u, 28880u))) & var_2.a, _wgslsmith_div_i32(-2147483647i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(55654i, 15145i), select(vec2<i32>(-2147483647i, -20459i), vec2<i32>(55689i, 6903i), true)), -36778i), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - -1100f))), -476f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x))), var_1.x)));
}

fn func_5(arg_0: bool, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: vec2<bool>) -> bool {
    let var_0 = arg_2;
    var var_1 = arg_1.b.c;
    let var_2 = any(!arg_1.b.a);
    return any(arg_1.b.a);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - _wgslsmith_f_op_f32(select(-443f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x - arg_3.x)) + 1235f), true)));
    let var_1 = arg_1.d.a;
    var_0 = arg_1.b.x;
    var var_2 = func_5(true, Struct_5(2147483647i, func_2(), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_3.x, arg_1.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1842f, 1000f, arg_3.x)) * _wgslsmith_f_op_vec3_f32(arg_3 * arg_3)), arg_1.d.a.x))), _wgslsmith_mult_vec4_u32(select(arg_1.c | ~vec4<u32>(2516u, arg_2.x, arg_1.c.x, 72473u), ~_wgslsmith_mult_vec4_u32(arg_1.c, vec4<u32>(30567u, 11238u, 1u, arg_1.a)), true), arg_1.c), !var_1.zy);
    let var_3 = vec4<u32>(u_input.a, ~arg_1.a, arg_1.c.x, 4294967295u);
    return Struct_3(_wgslsmith_clamp_u32(0u, ~(~(arg_2.x | u_input.b)), ~arg_1.a), arg_1.b, vec4<u32>(abs(select(1u, 19152u, select(true, true, var_1.x))), u_input.a, 4294967295u, 127199u), arg_1.d);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_3) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1457f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-469f - arg_1.b.x))))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1277f * 848f)));
    return vec2<bool>(arg_1.d.a.x, arg_1.d.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(all(vec4<bool>(false, true, true, true)), false, any(vec2<bool>(true, true))));
    var var_1 = -_wgslsmith_dot_vec3_i32(~(-(~vec3<i32>(-5064i, -2147483647i, 4062i))), vec3<i32>(1i, 2147483647i, firstTrailingBit(1i)));
    var_1 = 1i;
    let var_2 = countOneBits(2147483647i << (u_input.a % 32u));
    let var_3 = -vec4<i32>(~firstLeadingBit(var_2), 1i, var_2, min(~(var_2 << (67462u % 32u)), -1i));
    let var_4 = select(vec3<bool>(var_0.a.x, any(func_6(vec3<i32>(-41953i, -2147483647i, var_2), func_1(14384i, Struct_3(43767u, vec2<f32>(-1458f, 513f), vec4<u32>(0u, 76369u, u_input.b, 53760u), Struct_1(vec3<bool>(false, false, var_0.a.x))), vec3<u32>(u_input.b, 13917u, 4294967295u), vec3<f32>(1474f, -1764f, -1120f)))), true), !vec3<bool>(true, var_0.a.x, true), !var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yx, _wgslsmith_clamp_vec3_u32(max(~vec3<u32>(13888u, 96805u, 77912u), _wgslsmith_mod_vec3_u32(vec3<u32>(25766u, u_input.a, 23482u) | vec3<u32>(u_input.b, 3358u, 4294967295u), select(vec3<u32>(u_input.a, u_input.b, u_input.b), vec3<u32>(u_input.a, u_input.a, u_input.b), var_0.a))), firstTrailingBit(select(~vec3<u32>(76462u, 51122u, 1u), ~vec3<u32>(u_input.b, 1u, 43445u), false)), ~(~(~vec3<u32>(11978u, u_input.a, u_input.b)))), _wgslsmith_f_op_f32(-407f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-662f, -2111f))))), max(_wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(1u), func_4(u_input.b, u_input.a, 17177i), u_input.a, ~1u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(46873u, u_input.a, 4294967295u, 0u), vec4<u32>(0u, 1u, u_input.a, u_input.a))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), max(u_input.a, 4294967295u), func_3(u_input.b, vec4<i32>(var_3.x, 1i, -2089i, var_2)), ~0u), ~(~vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a)))), ~vec4<i32>(_wgslsmith_div_i32(2147483647i, -56960i), select(1i, var_3.x, var_0.a.x), _wgslsmith_mult_i32(0i, 1i), -var_2) << (~select(vec4<u32>(u_input.b, u_input.a, u_input.b, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, 0u, 41628u), vec4<u32>(4294967295u, 4294967295u, 47812u, u_input.b)), any(vec3<bool>(false, var_0.a.x, var_4.x))) % vec4<u32>(32u)));
}

