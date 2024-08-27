struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> vec2<u32> {
    global0 = array<vec3<f32>, 3>();
    global0 = array<vec3<f32>, 3>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-960f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-681f, 162f) * -152f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-603f, -963f)), _wgslsmith_f_op_f32(-228f - 1000f)))), -221f, 1064f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2457f)) * 690f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-806f, 1314f)) * _wgslsmith_div_f32(269f, -1000f))), -1821f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-297f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1311f)), -305f))))));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(countOneBits(countOneBits(vec4<i32>(u_input.b.x, 1i, u_input.b.x, 2147483647i))) & ~(-vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 0i)), vec4<i32>(-2147483647i, ~u_input.b.x, ~countOneBits(u_input.b.x), u_input.b.x)), u_input.b.x);
    return ~vec2<u32>(_wgslsmith_div_u32(~abs(u_input.c.x), ~u_input.c.x), firstLeadingBit(_wgslsmith_mod_u32(reverseBits(40711u), 1u)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = Struct_2(arg_1.a, arg_2.b);
    global0 = array<vec3<f32>, 3>();
    let var_1 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(618f, -811f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(-671f, 402f)), _wgslsmith_f_op_f32(f32(-1f) * -476f)))));
    var var_2 = ~(arg_1.a.b.x ^ _wgslsmith_add_i32(u_input.b.x, _wgslsmith_add_i32(firstTrailingBit(-30623i), arg_2.a.a)));
    global0 = array<vec3<f32>, 3>();
    return func_3(!(!(!(!vec3<bool>(arg_2.b.c, true, true)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -391f);
    var var_1 = u_input.a.yzx;
    let var_2 = max(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, select(29690u, 84611u, arg_1.c)), ~arg_1.d.wz, min(firstTrailingBit(arg_1.d.zz), func_2(true, Struct_2(arg_1, Struct_1(0i, vec4<i32>(arg_0.e.x, -2147483647i, u_input.b.x, -5539i), true, u_input.a, arg_1.b)), Struct_2(Struct_1(72778i, arg_0.e, arg_1.c, arg_1.d, vec4<i32>(arg_0.e.x, arg_0.b.x, 2147483647i, u_input.b.x)), arg_0)))), countOneBits(~arg_0.d.xz), abs(u_input.e)), vec2<u32>(_wgslsmith_div_u32(arg_1.d.x, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, arg_1.d.x), vec2<u32>(34628u, arg_0.d.x)))), _wgslsmith_div_u32(~14864u << (arg_0.d.x % 32u), 6878u)));
    var var_3 = Struct_2(arg_1, Struct_1(u_input.b.x, arg_0.b, !(true | arg_0.c), _wgslsmith_mult_vec4_u32(vec4<u32>(~var_1.x, 4294967295u, ~arg_0.d.x, 0u), min(vec4<u32>(var_1.x, 4294967295u, var_1.x, 1u), firstTrailingBit(arg_2))), max(-(vec4<i32>(arg_1.a, -1i, arg_1.b.x, -42114i) >> (arg_1.d % vec4<u32>(32u))), arg_0.e)));
    var var_4 = vec2<bool>(true, !(!any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, arg_1.c, true), vec4<bool>(arg_0.c, arg_1.c, var_3.b.c, true)))));
    return Struct_1(~_wgslsmith_add_i32(u_input.b.x | 60377i, _wgslsmith_add_i32(arg_1.b.x & var_3.b.e.x, -10574i & var_3.a.a)), (var_3.b.e & vec4<i32>(_wgslsmith_mult_i32(-1i, u_input.b.x), ~u_input.b.x, 0i, abs(u_input.b.x))) >> (firstLeadingBit(vec4<u32>(min(0u, arg_1.d.x), ~u_input.a.x, ~var_1.x, u_input.d.x | u_input.a.x)) % vec4<u32>(32u)), var_4.x, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(arg_1.d, vec4<u32>(var_2.x, var_1.x, arg_1.d.x, 1u)), (vec4<u32>(4294967295u, arg_1.d.x, u_input.c.x, 1u) >> (arg_0.d % vec4<u32>(32u))) & vec4<u32>(33823u, 38081u, 4294967295u, var_2.x)), ~(~arg_1.d)), vec4<i32>(1i, var_3.a.a, countOneBits(var_3.b.b.x), -22206i));
}

fn func_4(arg_0: Struct_2) -> i32 {
    global0 = array<vec3<f32>, 3>();
    var var_0 = Struct_1(max(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.e.x, 1i, u_input.b.x, -80376i), vec4<i32>(arg_0.a.e.x, 47025i, 0i, -42565i))) << ((_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) >> (select(arg_0.a.d.x, u_input.c.x, true) % 32u)) % 32u), -(i32(-1i) * -1i)), vec4<i32>(~arg_0.b.a, 1i, select(u_input.b.x, -(i32(-1i) * -2147483647i), arg_0.b.c), reverseBits(6157i)), func_1(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(18980i, arg_0.a.b.x, arg_0.a.b.x), vec3<i32>(u_input.b.x, -2147483647i, 43897i)) & 1i, vec4<i32>(_wgslsmith_mod_i32(-37284i, 1i), arg_0.b.b.x, 2147483647i ^ u_input.b.x, -15276i), true, u_input.a << (vec4<u32>(arg_0.a.d.x, 0u, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), arg_0.b.b), arg_0.b, arg_0.a.d).c, u_input.c, arg_0.b.e);
    var_0 = arg_0.b;
    var var_1 = arg_0.b;
    let var_2 = select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, false), select(vec2<bool>(arg_0.b.c, true), vec2<bool>(true, var_0.c), vec2<bool>(arg_0.b.c, var_0.c)), !vec2<bool>(arg_0.b.c, var_0.c)), select(select(vec2<bool>(arg_0.b.c, var_0.c), vec2<bool>(true, var_1.c), false), vec2<bool>(true, true), false), select(vec2<bool>(true, var_0.c), select(vec2<bool>(false, var_1.c), vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, false)), vec2<bool>(false, var_1.c))), !(!(!vec2<bool>(false, var_1.c))), !vec2<bool>(select(false, false, arg_0.b.c), true)), arg_0.b.c);
    return _wgslsmith_add_i32(firstLeadingBit(~(~arg_0.b.b.x)), _wgslsmith_clamp_i32(~var_1.e.x, ~2147483647i, _wgslsmith_div_i32(1i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_0.b.e.zz, vec2<i32>(-10017i, 2147483647i)), var_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(!(69908i > u_input.b.x), select(select(all(vec3<bool>(false, false, true)), false, true), !all(vec4<bool>(false, true, true, false)), false));
    let var_1 = Struct_1(u_input.b.x, vec4<i32>(1i, (~u_input.b.x | min(u_input.b.x, u_input.b.x)) ^ _wgslsmith_clamp_i32(firstTrailingBit(1i), -2147483647i, -36116i), func_4(Struct_2(func_1(Struct_1(u_input.b.x, vec4<i32>(1i, u_input.b.x, -2147483647i, u_input.b.x), false, u_input.a, vec4<i32>(u_input.b.x, u_input.b.x, 44918i, 0i)), Struct_1(0i, vec4<i32>(-1i, 0i, u_input.b.x, u_input.b.x), var_0.x, vec4<u32>(u_input.a.x, u_input.e.x, 70079u, u_input.d.x), vec4<i32>(-19148i, u_input.b.x, -12523i, u_input.b.x)), u_input.d), Struct_1(u_input.b.x, vec4<i32>(-1i, u_input.b.x, u_input.b.x, -19844i), false, u_input.c, vec4<i32>(u_input.b.x, u_input.b.x, 14117i, 12312i)))), 0i), true, countOneBits(abs(~(~vec4<u32>(0u, 8945u, u_input.e.x, u_input.a.x)))), -abs(vec4<i32>(15260i, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<i32>(-22048i, 47238i, 6630i, 2147483647i)) ^ select((vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x) ^ vec4<i32>(3273i, -37512i, -14649i, u_input.b.x)) | (vec4<i32>(-1i, -1i, 59402i, 47835i) & vec4<i32>(u_input.b.x, -2147483647i, 17941i, 1i)), ~vec4<i32>(-3711i, u_input.b.x, u_input.b.x, 66311i), vec4<bool>(var_0.x | false, any(vec3<bool>(false, var_0.x, false)), func_1(Struct_1(u_input.b.x, vec4<i32>(1i, 1i, u_input.b.x, 39705i), true, u_input.a, vec4<i32>(-1i, 13657i, -62526i, 9722i)), Struct_1(2147483647i, vec4<i32>(1i, u_input.b.x, u_input.b.x, -15198i), true, u_input.c, vec4<i32>(66252i, 63832i, u_input.b.x, u_input.b.x)), vec4<u32>(21274u, u_input.e.x, u_input.a.x, 0u)).c, !var_0.x)));
    var var_2 = u_input.d.x;
    global0 = array<vec3<f32>, 3>();
    var var_3 = ~func_1(func_1(func_1(func_1(Struct_1(0i, vec4<i32>(-1i, var_1.b.x, var_1.e.x, 5160i), var_1.c, var_1.d, vec4<i32>(44374i, -1i, -2147483647i, 4202i)), Struct_1(u_input.b.x, vec4<i32>(-13055i, var_1.b.x, var_1.e.x, var_1.e.x), var_0.x, u_input.c, var_1.b), u_input.c), var_1, ~vec4<u32>(4294967295u, 55927u, var_1.d.x, 4294967295u)), var_1, firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.d.x, u_input.c.x, 1u, var_1.d.x), var_1.d, u_input.d))), var_1, vec4<u32>(u_input.c.x, ~_wgslsmith_mod_u32(var_1.d.x, var_1.d.x), _wgslsmith_clamp_u32(var_1.d.x, 9108u, 13023u) ^ var_1.d.x, 1u)).d.xyw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-956f - _wgslsmith_f_op_f32(select(-1174f, 1454f, var_1.c | false))))), ~var_1.d.x, 1387f);
}

