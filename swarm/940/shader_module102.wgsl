struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(904f, -1088f);

var<private> global1: Struct_2 = Struct_2(1i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = ~arg_0.yz;
    global1 = Struct_2(global1.a >> (reverseBits(reverseBits(u_input.a.x)) % 32u));
    var var_1 = Struct_3(any(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), vec3<bool>(var_0.x > 1i, global0.x <= 377f, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -126f) - vec2<f32>(global0.x, global0.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-833f, global0.x) - vec2<f32>(global0.x, global0.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1305f) - vec2<f32>(-1000f, -1339f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-432f, -181f) + vec2<f32>(-358f, 457f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -921f))))), ~(~u_input.d.x), global1.a);
    var var_2 = var_1.a;
    var var_3 = arg_0.x;
    return ((var_1.a || var_1.a) | (_wgslsmith_f_op_f32(-global0.x) >= global0.x)) | !(!var_1.a);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: vec2<i32>) -> vec3<u32> {
    let var_0 = select(select(!select(vec2<bool>(true, arg_2.a), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(false, false)), select(arg_2.a, arg_1, arg_1)), vec2<bool>(true, arg_1), false), select(select(vec2<bool>(true, arg_2.a == true), select(vec2<bool>(false, false), vec2<bool>(arg_2.a, false), vec2<bool>(arg_2.a, false)), any(select(vec4<bool>(true, arg_2.a, false, arg_1), vec4<bool>(false, arg_1, false, arg_2.a), vec4<bool>(arg_2.a, arg_1, true, arg_1)))), vec2<bool>(true, arg_2.a), vec2<bool>(func_3(vec3<i32>(arg_3.x, 2147483647i, arg_2.d) | vec3<i32>(global1.a, arg_2.d, arg_2.d)), true)), all(!vec3<bool>(true, arg_2.a, false)));
    let var_1 = Struct_3(true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0.x)), arg_2.b.x))), ~min(_wgslsmith_mod_u32(83844u, ~23927u), _wgslsmith_dot_vec4_u32(vec4<u32>(16515u, u_input.a.x, arg_0.a.x, u_input.a.x) << (vec4<u32>(u_input.b.x, 30433u, 56350u, 1u) % vec4<u32>(32u)), reverseBits(vec4<u32>(55946u, u_input.b.x, 4294967295u, arg_0.a.x)))), arg_2.d);
    var var_2 = Struct_2(global1.a << (14384u % 32u));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b))) * var_1.b));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-131f))) * _wgslsmith_f_op_f32(arg_2.b.x * -681f)), arg_2.b.x, arg_2.b.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.x, 301f, var_1.b.x), vec3<f32>(180f, -133f, global0.x), true)), vec3<f32>(arg_2.b.x, var_1.b.x, -265f), !vec3<bool>(false, arg_1, false)))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(682f, _wgslsmith_f_op_f32(min(206f, 127f)), -503f)))));
    return vec3<u32>(var_1.c, abs(abs(arg_0.b)), 12736u);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    global1 = Struct_2(1i);
    let var_0 = 0u;
    let var_1 = arg_3;
    var var_2 = i32(-1i) * -(i32(-1i) * -1i);
    let var_3 = -1i;
    return Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(~19109u, _wgslsmith_dot_vec3_u32(~arg_1, reverseBits(vec3<u32>(var_1.c, u_input.b.x, var_1.c))), 18439u, _wgslsmith_add_u32(1u, u_input.a.x)), vec4<u32>(func_2(Struct_1(vec4<u32>(0u, arg_1.x, 4294967295u, 6048u), u_input.a.x), arg_2 < arg_2, Struct_3(true, arg_3.b, 0u, 818i), vec2<i32>(-62469i, var_3)).x, countOneBits(~var_0), (var_0 ^ 65052u) ^ u_input.b.x, abs(~58321u)), vec4<u32>(56552u, ~arg_3.c, _wgslsmith_dot_vec2_u32(arg_1.yx, vec2<u32>(var_0, 1u)), u_input.b.x) | _wgslsmith_add_vec4_u32(~vec4<u32>(arg_1.x, arg_3.c, arg_1.x, 2461u), vec4<u32>(31877u, 1u, 114714u, 4294967295u))), 0u);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    var var_0 = 1000f;
    let var_1 = Struct_3(true, vec2<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, 1000f)) - _wgslsmith_div_f32(global0.x, -695f)), global0.x)), arg_1.a.x, -1i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) * 243f), global0.x);
    var var_3 = vec4<bool>(var_2 <= _wgslsmith_f_op_f32(-605f - _wgslsmith_f_op_f32(-1786f * var_2)), true, true, all(vec4<bool>(all(select(vec2<bool>(arg_3, false), vec2<bool>(false, var_1.a), true)), true, var_2 == 1548f, arg_3)));
    return arg_2;
}

fn func_1(arg_0: vec3<i32>) -> bool {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(global0.x * -1000f), _wgslsmith_div_f32(-588f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), 527f, false))))));
    var var_0 = func_5(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 24546i, global1.a, -2147483647i), vec4<i32>(12413i, -23394i, global1.a, global1.a)) & vec4<i32>(-37539i, global1.a, 34679i, -32440i)) << (abs(max(vec4<u32>(43007u, 20313u, u_input.c.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 4707u)) & min(vec4<u32>(u_input.b.x, 37786u, 47671u, u_input.c.x), vec4<u32>(0u, u_input.d.x, u_input.a.x, 1u))) % vec4<u32>(32u)), func_4(-global1.a, ~reverseBits(u_input.b) | func_2(Struct_1(vec4<u32>(32024u, u_input.a.x, u_input.b.x, u_input.a.x), 16575u), true, Struct_3(true, vec2<f32>(global0.x, -2684f), u_input.d.x, 1i), reverseBits(vec2<i32>(global1.a, 2147483647i))), 0i & -(global1.a << (4294967295u % 32u)), Struct_3((0u == u_input.b.x) && true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-286f, global0.x) + vec2<f32>(global0.x, -1000f)), vec2<f32>(global0.x, -201f)), u_input.c.x << (~u_input.a.x % 32u), max(select(49194i, arg_0.x, false), global1.a))), Struct_2(-15785i), true);
    let var_1 = Struct_3(~reverseBits(u_input.c.x) > u_input.c.x, vec2<f32>(494f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x - 1005f))) - global0.x)), abs(min(u_input.c.x, ~abs(23100u))), var_0.a);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.b, var_1.b))), _wgslsmith_f_op_vec2_f32(var_1.b * var_1.b))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1146f, _wgslsmith_f_op_f32(-1251f + 347f), _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1494f, -127f, global0.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, -326f), vec3<f32>(var_1.b.x, global0.x, -1519f), vec3<bool>(var_1.a, var_1.a, var_1.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -549f), global0.x) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1029f, global0.x, -212f))))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.d.x), u_input.d) >= var_1.c)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-288f, -1011f), _wgslsmith_f_op_f32(1000f + var_1.b.x)))), _wgslsmith_f_op_f32(484f - _wgslsmith_f_op_f32(-794f + _wgslsmith_f_op_f32(trunc(-349f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1008f)))));
    return all(select(select(select(vec2<bool>(false, true), select(vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, true), vec2<bool>(false, false)), vec2<bool>(false, var_1.a)), vec2<bool>(true, true), vec2<bool>(global1.a >= var_1.d, var_1.a)), vec2<bool>(any(vec3<bool>(true, true, true)), true), global0.x > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-819f)), _wgslsmith_f_op_f32(-var_2.x), var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(39986i);
    let var_0 = Struct_2(global1.a);
    global0 = vec2<f32>(-333f, _wgslsmith_f_op_f32(f32(-1f) * -1369f));
    global0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -1000f)) + _wgslsmith_f_op_f32(abs(-441f))), -188f)));
    var var_1 = select(!(!vec3<bool>(global0.x > -1775f, true, true)), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), func_1(vec3<i32>(var_0.a, global1.a, -4842i))), vec3<bool>(false, false, all(vec4<bool>(false, false, false, false))), vec3<bool>(true, true, any(vec2<bool>(false, true)))), select(any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), true, false));
    let var_2 = max(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(global1.a, global1.a, var_0.a, 0i)), ~(vec4<i32>(-2147483647i, 1i, 4516i, 1i) ^ vec4<i32>(1i, global1.a, -21609i, 3083i))), vec4<i32>(firstLeadingBit(var_0.a) << (u_input.a.x % 32u), firstTrailingBit(_wgslsmith_sub_i32(21030i, 29763i)), 1i ^ (global1.a << (u_input.b.x % 32u)), -_wgslsmith_clamp_i32(34281i, -37600i, global1.a))), countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(2147483647i, var_0.a, global1.a, global1.a)), vec4<i32>(-20035i, 35760i, global1.a, -11957i), select(vec4<i32>(var_0.a, -53517i, -20199i, -1i), vec4<i32>(50314i, global1.a, 34900i, var_0.a), var_1.x)), select(min(vec4<i32>(0i, -49698i, 0i, var_0.a), vec4<i32>(var_0.a, 2147483647i, 2147483647i, var_0.a)), -vec4<i32>(var_0.a, global1.a, global1.a, -1i), vec4<bool>(var_1.x, true, false, true)))));
    var_1 = !(!(!select(!vec3<bool>(true, true, var_1.x), !vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, var_1.x, true))));
    var var_3 = func_4(global1.a >> (~u_input.c.x % 32u), u_input.d, _wgslsmith_sub_i32(3406i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.a, 0i, global1.a), vec4<i32>(var_2.x, 2147483647i, -52466i, 43704i)), ~16371i)) & _wgslsmith_dot_vec3_i32(firstTrailingBit(countOneBits(var_2.wyx)), var_2.yxx), Struct_3(all(select(!vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, true)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false), vec3<bool>(true, true, var_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1062f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 669f) - vec2<f32>(global0.x, -1000f)))), ~_wgslsmith_div_u32(~u_input.d.x, ~u_input.c.x), var_0.a ^ (global1.a >> ((u_input.b.x | 0u) % 32u))));
    let var_4 = func_5(vec4<i32>(abs(abs(i32(-1i) * -1i)), var_2.x, -(-2147483647i ^ var_0.a), global1.a & global1.a), func_4(var_2.x, _wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(1u, 93805u, u_input.d.x)), var_3.a.xxw, var_3.a.xzy), countOneBits(countOneBits(~(-2147483647i))), Struct_3(var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(367f, global0.x), vec2<f32>(1564f, -417f))), ~(~38686u), _wgslsmith_div_i32(-35774i, var_0.a))), var_0, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xx, -27762i, ~(~(-17569i)));
}

