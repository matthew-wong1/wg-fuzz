struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = Struct_2(select(vec3<bool>(false, !any(vec3<bool>(false, true, true)), false || any(vec3<bool>(false, false, true))), vec3<bool>(!any(vec4<bool>(true, false, false, false)), arg_0.x > 1000f, any(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, false)), true, u_input.a, Struct_1(arg_0.x, !(!(u_input.a > 11438u))));
    var var_1 = var_0.d;
    var_1 = var_0.d;
    var_0 = Struct_2(vec3<bool>(!(!(var_0.d.b == var_1.b)), all(vec3<bool>(true, select(var_1.b, var_1.b, var_0.a.x), var_0.d.b)), false), var_1.b, _wgslsmith_mult_u32(countOneBits(countOneBits(u_input.a)), 44687u) ^ (min(max(u_input.a, 18208u), max(var_0.c, u_input.a)) ^ u_input.a), var_0.d);
    var_0 = Struct_2(select(var_0.a, select(vec3<bool>(all(vec2<bool>(true, true)), all(var_0.a.xz), 0u != var_0.c), !var_0.a, !var_1.b), vec3<bool>(_wgslsmith_f_op_f32(-arg_0.x) != -143f, 40790u >= (var_0.c ^ 15703u), true)), true, u_input.a, Struct_1(154f, u_input.a == select(~0u, var_0.c, true)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1731f + var_0.d.a))))), -252f);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> Struct_3 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(arg_0.x, arg_0.x, -725f)) - _wgslsmith_f_op_vec3_f32(-arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-827f, 706f, arg_0.x) * vec3<f32>(-613f, 2101f, arg_0.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(vec2<f32>(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(391f - arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-696f, 172f, 1319f), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), true))))))));
    let var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(countOneBits(-2147483647i), _wgslsmith_mod_i32(1i, -6446i), _wgslsmith_add_i32(36165i, 0i), i32(-1i) * -2411i), -((vec4<i32>(-2147483647i, 1i, -9664i, 17419i) >> (vec4<u32>(arg_1, arg_1, 0u, 4294967295u) % vec4<u32>(32u))) << (max(vec4<u32>(arg_1, 26025u, 24744u, arg_1), vec4<u32>(u_input.a, arg_1, u_input.a, 0u)) % vec4<u32>(32u))), ~(~min(vec4<i32>(1i, 0i, -2147483647i, 0i), vec4<i32>(-23163i, 0i, -9484i, 0i)))), min(_wgslsmith_mod_vec4_i32(~max(vec4<i32>(1i, -1i, -37480i, 0i), vec4<i32>(-36297i, 1i, -2147483647i, 1i)), vec4<i32>(1i, -1i, min(9878i, 50339i), ~1i)), vec4<i32>(select(1i, select(-12900i, -2147483647i, true), all(vec2<bool>(false, true))), 1i, firstTrailingBit(0i) & 1i, _wgslsmith_clamp_i32(-2147483647i, -9576i, 1i >> (u_input.a % 32u)))), (reverseBits(countOneBits(vec4<i32>(-24043i, 1i, -1i, 1i))) ^ select(vec4<i32>(-29018i, 7617i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i), true)) | _wgslsmith_add_vec4_i32(vec4<i32>(31514i, 1i, 0i, 1i), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-13576i, 50374i, -77710i, -2147483647i), vec4<i32>(17106i, -30307i, 1840i, 0i), vec4<i32>(-23046i, -58183i, -1i, -65605i)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -213f, var_1.x, arg_0.x), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, true, false))))))));
    var var_4 = ~_wgslsmith_dot_vec4_i32(~(~var_2) | abs(~var_2), var_2);
    return Struct_3(~52688u, abs(select(~abs(vec2<u32>(u_input.a, 1u)), ~min(vec2<u32>(arg_1, 1u), vec2<u32>(arg_1, arg_1)), true)), Struct_1(arg_0.x, arg_0.x <= _wgslsmith_f_op_f32(select(-719f, 1000f, true))), ~(~select(vec2<u32>(18986u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1, 39833u), vec2<u32>(10154u, 0u)), false)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    var var_0 = -_wgslsmith_mod_i32(firstTrailingBit(~26642i), ~min(22890i, 2147483647i)) & (_wgslsmith_mod_i32(0i, 20522i) << (max(_wgslsmith_mod_u32(u_input.a, 1u >> (0u % 32u)), arg_1.b.x) % 32u));
    var_0 = 52820i;
    let var_1 = _wgslsmith_f_op_f32(-arg_0.a);
    let var_2 = _wgslsmith_dot_vec3_i32(countOneBits(select(min(abs(vec3<i32>(1i, -14047i, 0i)), min(vec3<i32>(21796i, -60825i, 2621i), vec3<i32>(-48670i, -1i, 25669i))), firstTrailingBit(vec3<i32>(1i, 1i, 1i)), arg_0.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(min(-44993i, 0i) >> ((u_input.a | 1u) % 32u), abs(-1i), 58397i), vec3<i32>(1i, 1i, 1i) << (vec3<u32>(_wgslsmith_mod_u32(28469u, 13519u), _wgslsmith_mult_u32(arg_1.d.x, 56414u), _wgslsmith_sub_u32(u_input.a, arg_1.a)) % vec3<u32>(32u))));
    var_0 = var_2;
    return Struct_1(_wgslsmith_f_op_f32(var_1 - -949f), arg_0.a == -827f);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(-1483f, arg_1.b);
    let var_1 = _wgslsmith_sub_i32(-33748i, 1i << (arg_3.c % 32u));
    var var_2 = !(!vec4<bool>(false, arg_3.d.b, !arg_0, arg_3.b));
    var_2 = !select(vec4<bool>(func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.d.a, 1000f, -494f))), u_input.a << (u_input.a % 32u)).c.b, all(!vec3<bool>(false, arg_1.d.b, false)), (arg_1.c | 0u) < _wgslsmith_dot_vec2_u32(vec2<u32>(21820u, u_input.a), vec2<u32>(1u, 0u)), var_2.x), !vec4<bool>(any(vec4<bool>(var_0.b, arg_3.a.x, arg_0, arg_1.a.x)), true, var_0.b, all(vec4<bool>(arg_3.b, arg_1.b, false, var_0.b))), !any(var_2.yw));
    var var_3 = Struct_2(!(!var_2.zzy), arg_3.a.x, _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, arg_1.c, 4294967295u), vec4<u32>(arg_1.c, u_input.a, 4294967295u, u_input.a)) & 25444u, ~_wgslsmith_mod_u32(4294967295u & arg_1.c, 38835u >> (arg_3.c % 32u))), Struct_1(var_0.a, !(~u_input.a < 32188u)));
    return func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(306f, arg_3.d.a, -1684f)))) - _wgslsmith_f_op_vec3_f32(-arg_2.wzy)), _wgslsmith_dot_vec3_u32(select(max(vec3<u32>(51424u, arg_1.c, 1u), vec3<u32>(var_3.c, u_input.a, 4294967295u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(0u, 0u, 0u)), !var_2.wxz), _wgslsmith_mult_vec3_u32(vec3<u32>(29723u, arg_3.c, u_input.a) ^ vec3<u32>(1u, arg_3.c, 26296u), vec3<u32>(arg_1.c, 1u, arg_1.c)) & ~(~vec3<u32>(var_3.c, u_input.a, arg_1.c)))).c;
}

fn func_6(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = func_5(true, Struct_2(!(!select(vec3<bool>(arg_2.b, arg_0, false), vec3<bool>(true, arg_0, arg_2.b), true)), !(!arg_2.b), u_input.a, arg_2), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, _wgslsmith_f_op_f32(var_0.a - var_0.a), 170f, -743f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_0.a - var_0.a), _wgslsmith_f_op_f32(min(915f, 257f)), -551f, -891f)))), Struct_2(vec3<bool>(any(vec2<bool>(false, var_0.b)), true, !var_0.b != select(var_0.b, false, arg_2.b)), !(arg_2.b & true), 42746u, Struct_1(1009f, _wgslsmith_div_u32(u_input.a, 40665u) <= u_input.a)));
    var var_2 = var_0;
    var_2 = func_4(func_2(vec3<f32>(_wgslsmith_f_op_f32(-957f + _wgslsmith_f_op_f32(f32(-1f) * -528f)), 388f, -3102f), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(24203u, u_input.a)), ~_wgslsmith_sub_u32(3209u, 0u))).c, func_2(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), var_0.a, var_2.b)), var_1.a, -1945f), u_input.a));
    var var_3 = u_input.a;
    return Struct_2(select(select(vec3<bool>(all(vec4<bool>(true, var_1.b, false, true)), var_2.b, false), vec3<bool>(all(vec2<bool>(arg_0, true)), any(vec3<bool>(var_0.b, false, false)), false), !select(vec3<bool>(arg_2.b, var_2.b, arg_2.b), vec3<bool>(var_0.b, arg_0, false), vec3<bool>(var_2.b, false, var_2.b))), !vec3<bool>(func_4(Struct_1(-612f, var_1.b), Struct_3(u_input.a, vec2<u32>(4294967295u, u_input.a), Struct_1(180f, arg_0), vec2<u32>(u_input.a, u_input.a))).b, true, true), !var_0.b), any(vec3<bool>(true, true, true)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~22076u, ~u_input.a), u_input.a), Struct_1(_wgslsmith_f_op_f32(-func_2(vec3<f32>(1487f, -2049f, -759f), ~u_input.a).c.a), false));
}

fn func_1() -> f32 {
    var var_0 = func_6(false, vec2<i32>(-1i, _wgslsmith_sub_i32(~(-14616i), 1i)), func_5(true, Struct_2(vec3<bool>(true, true, true), false, _wgslsmith_dot_vec4_u32(vec4<u32>(99904u, u_input.a, 78497u, u_input.a) ^ vec4<u32>(0u, 1368u, u_input.a, 73786u), vec4<u32>(2162u, u_input.a, 0u, u_input.a) | vec4<u32>(u_input.a, u_input.a, 3169u, u_input.a)), func_4(Struct_1(-600f, false), func_2(vec3<f32>(1387f, 1006f, 1000f), u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), Struct_2(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true), true, u_input.a, Struct_1(_wgslsmith_div_f32(525f, -697f), true))));
    var_0 = func_6(true, ~vec2<i32>(-16865i, firstLeadingBit(_wgslsmith_sub_i32(-2147483647i, 1i))), Struct_1(_wgslsmith_f_op_f32(-var_0.d.a), true));
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, -40611i, ~0i, _wgslsmith_mult_i32(-4999i, 0i)), select((~vec4<i32>(0i, -53695i, 6674i, 54984i) << (vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) % vec4<u32>(32u))) >> (firstLeadingBit(max(vec4<u32>(1u, 7044u, u_input.a, 45575u), vec4<u32>(4294967295u, u_input.a, 0u, var_0.c))) % vec4<u32>(32u)), max(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), !func_6(false, _wgslsmith_div_vec2_i32(vec2<i32>(11097i, 22869i), vec2<i32>(-1i, -43230i)), Struct_1(var_0.d.a, false)).d.b));
    var_0 = func_6(all(vec4<bool>(var_0.a.x, var_0.d.a >= var_0.d.a, !var_0.a.x, true)) || any(!select(vec2<bool>(false, true), vec2<bool>(true, var_0.b), false)), _wgslsmith_mult_vec2_i32(var_1.zw, ~vec2<i32>(var_1.x, ~var_1.x)), func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(597f, -1351f, -425f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(931f, var_0.d.a, -1036f), vec3<f32>(var_0.d.a, var_0.d.a, var_0.d.a))))))), u_input.a).c);
    var_0 = Struct_2(vec3<bool>(any(func_6(false, firstLeadingBit(vec2<i32>(var_1.x, var_1.x)), Struct_1(1417f, true)).a), _wgslsmith_div_u32(~var_0.c, 4294967295u) == ~(~0u), var_0.c < (~4294967295u & (u_input.a << (47123u % 32u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-767f)), 777f)))) <= var_0.d.a, var_0.c, Struct_1(var_0.d.a, all(vec4<bool>(true, false, var_0.c == var_0.c, u_input.a != 79508u))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1270f, 699f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 2147483647i, 1i, 23531i), _wgslsmith_mult_vec4_i32(vec4<i32>(32420i, 1i, -1i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i))));
    let var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1486f, -698f, 156f, 907f) + vec4<f32>(1000f, 128f, 104f, -1463f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-706f - _wgslsmith_f_op_f32(f32(-1f) * -1440f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(-1625f - -1127f))), _wgslsmith_f_op_f32(func_1()), -625f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), -924f, 325f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 742f))))))));
    var var_3 = abs(20288i) >= min(select(48104i, _wgslsmith_sub_i32(firstTrailingBit(2147483647i), _wgslsmith_sub_i32(var_0, 2147483647i)), true), firstLeadingBit(-9657i));
    let var_4 = _wgslsmith_mod_i32(1i, ~var_0);
    let var_5 = Struct_3(~(~4294967295u | (u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1, var_1, 57164u), vec4<u32>(var_1, u_input.a, 0u, var_1)) % 32u))), func_2(_wgslsmith_f_op_vec3_f32(-var_2.xxy), max(~u_input.a, ~var_1)).b, func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(var_2.x, var_2.x)))), var_2.x > _wgslsmith_div_f32(var_2.x, var_2.x)), Struct_3(1u, select(vec2<u32>(u_input.a, 10184u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_1), vec2<u32>(var_1, 0u)), true), func_4(func_2(var_2.xxx, 0u).c, Struct_3(4294967295u, vec2<u32>(var_1, u_input.a), Struct_1(-1293f, false), vec2<u32>(var_1, 13500u))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1, u_input.a), vec2<u32>(1u, 106261u)))), vec2<u32>(137u, 6608u));
    var var_6 = vec3<bool>(!select(!any(vec4<bool>(var_5.c.b, var_5.c.b, false, var_5.c.b)), var_5.c.b, func_2(vec3<f32>(var_2.x, -123f, 260f), var_1).c.b), var_5.c.b, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.x - 425f), vec4<f32>(var_2.x, 715f, -1367f, _wgslsmith_f_op_f32(f32(-1f) * -1650f)), ~firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 1u, var_1), vec3<u32>(40583u, var_1, 27560u)), var_5.b.x, 5276u)));
}

