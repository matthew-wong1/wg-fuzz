struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> vec2<f32> {
    var var_0 = !(!arg_0.e.e.x);
    var var_1 = !(!(!any(!vec4<bool>(false, arg_0.e.e.x, false, false))));
    var var_2 = Struct_5(arg_0, Struct_4(32381u, vec2<u32>(~_wgslsmith_mult_u32(arg_0.c.x, 0u), 13640u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.d.x, -213f)), _wgslsmith_f_op_f32(arg_0.e.a.x * arg_0.a.x), -2508f, -1426f)), vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(804f + arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1161f) * _wgslsmith_f_op_f32(trunc(-352f))), 178f), all(vec2<bool>(arg_0.e.e.x, arg_0.e.e.x))), Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.e.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.e.a, vec3<f32>(1733f, arg_0.a.x, arg_0.e.a.x), arg_0.e.d.x)))), u_input.b, u_input.d, arg_0.e.e.yzw, !arg_0.e.e));
    return arg_0.a;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f));
    let var_1 = Struct_4(abs(58179u), u_input.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1000f, var_0, var_0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2859f, -1242f, -1000f, 759f)))))), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(753f + var_0), _wgslsmith_f_op_f32(var_0 + var_1.d.x)), -962f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-767f, 175f)) + vec2<f32>(1341f, var_1.d.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-556f, -1443f) - vec2<f32>(var_0, -1120f)), var_1.d.xx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.c.x, var_1.d.x))) - vec2<f32>(var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(306f, -1744f))))), false));
    var_2 = _wgslsmith_f_op_vec2_f32(select(var_1.d.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.yx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec2<f32>(656f, var_2.x), -16820i, vec4<u32>(u_input.c.x, 22665u, 4294967295u, var_1.b.x), var_1.c.yzw, Struct_1(var_1.c.zzx, u_input.e, u_input.d, vec3<bool>(var_1.e, false, var_1.e), vec4<bool>(true, var_1.e, var_1.e, true))), u_input.e))))), true));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(var_1.d.xz, var_1.c.wx, !select(!vec2<bool>(var_1.e, true), !vec2<bool>(var_1.e, var_1.e), !(true || var_1.e))));
    return _wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(-324f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.d.x)) - _wgslsmith_div_f32(var_0, var_3.x)) * _wgslsmith_f_op_f32(-588f * _wgslsmith_div_f32(var_2.x, var_3.x)))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_4(73938u, vec2<u32>(u_input.c.x, ~firstLeadingBit(u_input.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1198f, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, 1000f, -1220f), false))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1268f, arg_0.x, arg_0.x, 519f) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)), arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-271f + _wgslsmith_f_op_f32(floor(arg_0.x))))), max(1u, 11112u) != min(min(~u_input.c.x, u_input.c.x & 12911u), max(select(33662u, u_input.c.x, false), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x))));
    var var_1 = Struct_1(var_0.c.ywx, ~(u_input.d.wyz & vec3<i32>(1i, u_input.a.x, u_input.d.x)), vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, ~u_input.e.x, u_input.a.x, 0i), max(max(vec4<i32>(-2259i, -2147483647i, u_input.b.x, 0i), vec4<i32>(2147483647i, 0i, 16426i, 4944i)), max(u_input.d, u_input.d))), _wgslsmith_clamp_i32(max(2915i & u_input.e.x, -u_input.d.x), u_input.b.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, -2348i, 0i, 1i), -vec4<i32>(2147483647i, 33929i, u_input.d.x, u_input.e.x))), ~_wgslsmith_mult_i32(firstTrailingBit(u_input.d.x), 0i)), vec3<bool>(var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-892f - arg_0.x)), var_0.e), select(!vec4<bool>(var_0.e | true, true, true, !var_0.e), select(select(!vec4<bool>(var_0.e, false, var_0.e, var_0.e), select(vec4<bool>(var_0.e, false, false, true), vec4<bool>(var_0.e, false, true, false), vec4<bool>(var_0.e, true, true, false)), var_0.e), select(vec4<bool>(var_0.e, false, var_0.e, var_0.e), select(vec4<bool>(true, true, false, var_0.e), vec4<bool>(true, var_0.e, false, false), false), !vec4<bool>(false, var_0.e, var_0.e, var_0.e)), var_0.e), false));
    var_1 = Struct_1(arg_0, max(var_1.c.xzw, ~(~(var_1.b << (vec3<u32>(58567u, 1u, 30233u) % vec3<u32>(32u))))), -var_1.c, vec3<bool>(select(abs(var_0.b.x) >= 1u, !all(var_1.d.zy), var_1.e.x | false), true, !var_1.e.x), vec4<bool>(!all(!var_1.d.xx), true, select(true, var_0.e, false), !(abs(2147483647i) >= (0i >> (var_0.b.x % 32u)))));
    var var_2 = Struct_2(var_1.a.xx, firstLeadingBit(-1i), _wgslsmith_mod_vec4_u32(~(~reverseBits(vec4<u32>(1u, var_0.b.x, 50344u, var_0.b.x))), vec4<u32>(~select(1u, 1u, var_1.e.x), ~u_input.c.x, ~(4020u >> (u_input.c.x % 32u)), 89127u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, var_0.b.x)) % 32u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.c.zyy, vec3<f32>(210f, -122f, var_0.c.x)))))), Struct_1(_wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(_wgslsmith_f_op_f32(max(var_1.a.x, -779f)), 1000f, _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_mult_vec3_i32(firstLeadingBit(u_input.b), var_1.b), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, u_input.b.x, u_input.a.x, -2147483647i), var_1.c), -vec4<i32>(1i, var_1.c.x, var_1.b.x, 28735i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, u_input.e.x, var_1.c.x, u_input.d.x), vec4<i32>(-8202i, u_input.a.x, -1i, u_input.a.x)), 1i, -var_1.b.x, u_input.e.x << (1u % 32u))), var_1.d, var_1.e));
    var var_3 = !(!(!(var_1.d.x & var_2.e.d.x)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.d.xz) - _wgslsmith_f_op_vec2_f32(floor(arg_0.zy))), -select(var_2.e.b.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, var_1.c.x, -93030i, 0i), u_input.d)), false), ~var_2.c, _wgslsmith_f_op_vec3_f32(arg_0 - var_1.a), var_2.e);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool, arg_3: i32) -> Struct_4 {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x - _wgslsmith_div_f32(246f, -1524f))), arg_0.e.a.x), _wgslsmith_div_i32(1i, 27040i), arg_0.c, arg_0.e.a, arg_0.e);
    let var_1 = u_input.c.x;
    let var_2 = vec2<u32>(~reverseBits(abs(~4294967295u)), 1142u);
    var var_3 = Struct_5(func_4(var_0.d), Struct_4(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c.x, var_0.c.x, u_input.c.x, 4294967295u)), abs(var_0.c)), countOneBits(vec2<u32>(_wgslsmith_mod_u32(var_1, 4294967295u), u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(954f, arg_0.a.x, 2410f, 2662f))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(var_0.a.x, -283f), 664f, _wgslsmith_f_op_f32(f32(-1f) * -1395f), _wgslsmith_f_op_f32(abs(633f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -2488f, 1569f, var_0.d.x) + vec4<f32>(var_0.d.x, 1151f, 1173f, var_0.a.x))), arg_0.e.e)), false), func_4(_wgslsmith_f_op_vec3_f32(-var_0.e.a)).e);
    return Struct_4(10693u, vec2<u32>(abs(func_4(vec3<f32>(var_3.b.c.x, var_3.c.a.x, 399f)).c.x | max(var_3.a.c.x, 54282u)), ~u_input.c.x), var_3.b.c, var_3.b.c, !arg_2);
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = func_5(func_4(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-834f + -759f))), _wgslsmith_f_op_f32(-2602f - _wgslsmith_f_op_f32(ceil(-104f))), _wgslsmith_f_op_f32(-460f - _wgslsmith_f_op_f32(func_2())))), vec4<i32>(_wgslsmith_sub_i32(-(~arg_0), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 37384i), u_input.b.xx))), -21167i, abs(_wgslsmith_div_i32(43584i, -44422i)) >> (u_input.c.x % 32u), _wgslsmith_add_i32(abs(firstLeadingBit(-7923i)), ~30657i)), !all(vec4<bool>(true, true, true, true)) && true, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-reverseBits(u_input.d), _wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(1i, u_input.a.x, -30206i, arg_0))), ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-47026i, arg_1, arg_1), u_input.a), _wgslsmith_sub_i32(-38335i, arg_1), arg_1, 0i ^ u_input.d.x)));
    let var_1 = var_0.d.x;
    var var_2 = (select(~vec4<u32>(66055u, u_input.c.x, var_0.a, 4294967295u) ^ ~vec4<u32>(0u, 43217u, 0u, 1u), vec4<u32>(func_4(var_0.d.yyw).c.x, 1u, ~9766u, 15141u), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-208f, 1197f, 380f))).e.e) ^ vec4<u32>(~var_0.a, 4294967295u, reverseBits(~55846u), ~var_0.a)) >> (vec4<u32>((~48530u | var_0.b.x) & 1u, 0u, abs(4294967295u), _wgslsmith_clamp_u32(~1u, var_0.b.x, _wgslsmith_mod_u32(4294967295u, func_4(vec3<f32>(-1348f, var_0.d.x, 172f)).c.x))) % vec4<u32>(32u));
    var_2 = vec4<u32>(~(~(var_2.x | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 306u), vec2<u32>(0u, var_2.x)))), _wgslsmith_dot_vec3_u32(~((vec3<u32>(u_input.c.x, var_2.x, u_input.c.x) & var_2.wyw) >> (vec3<u32>(4294967295u, var_2.x, u_input.c.x) % vec3<u32>(32u))), vec3<u32>(u_input.c.x, abs(_wgslsmith_div_u32(var_0.b.x, 0u)), 13278u)), u_input.c.x, 4294967295u);
    let var_3 = ~arg_1;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.c.x, 748f)))) * var_0.c.yxw)), func_4(vec3<f32>(var_0.d.x, -1003f, var_0.d.x)).e.c.yzy, u_input.d, !select(vec3<bool>(!var_0.e, any(vec4<bool>(var_0.e, false, true, var_0.e)), func_4(var_0.c.wxz).e.d.x), vec3<bool>(var_0.e, var_0.b.x == var_2.x, !var_0.e), !vec3<bool>(var_0.e, true, true)), func_4(var_0.c.xxz).e.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-firstLeadingBit(_wgslsmith_sub_i32(max(u_input.e.x, u_input.a.x), _wgslsmith_add_i32(22258i, 1i))), max(~u_input.d.x, countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.d.yx), -u_input.d.x))));
    let var_1 = select(true, var_0.e.x, ~u_input.c.x != 39916u);
    var var_2 = -(~var_0.b.x);
    var_2 = -var_0.b.x;
    var var_3 = func_5(Struct_2(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec2<f32>(1000f, -1000f), var_0.b.x, vec4<u32>(u_input.c.x, u_input.c.x, 0u, 0u), var_0.a, Struct_1(var_0.a, vec3<i32>(2147483647i, var_0.c.x, u_input.d.x), var_0.c, vec3<bool>(var_0.e.x, false, var_1), var_0.e)), u_input.d.xxx)).x * _wgslsmith_f_op_f32(trunc(-606f)))), -33879i, select(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), ~vec4<u32>(u_input.c.x, u_input.c.x, 70584u, 49901u)), vec4<u32>(~0u, 1u, 1u, 4294967295u), _wgslsmith_f_op_f32(var_0.a.x - 1000f) <= -512f), func_4(vec3<f32>(183f, func_1(-11090i, u_input.d.x).a.x, _wgslsmith_f_op_f32(floor(var_0.a.x)))).d, var_0), select(var_0.c, vec4<i32>(~var_0.c.x, _wgslsmith_sub_i32(u_input.b.x, 0i), ~25666i, -17451i), true) ^ u_input.d, !all(vec2<bool>(true, !var_0.e.x)), ~var_0.c.x);
    let var_4 = Struct_4(4294967295u, ~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(_wgslsmith_div_u32(33125u, u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1560f, var_0.a.x, var_0.a.x, 463f)) + _wgslsmith_f_op_vec4_f32(step(var_3.d, var_3.d)))))), var_3.d, func_1(~countOneBits(97i), _wgslsmith_div_i32(~(-37138i), _wgslsmith_sub_i32(-45053i, var_0.b.x))).e.x);
    var var_5 = var_0.a.x;
    var var_6 = _wgslsmith_add_u32(4294967295u, var_4.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(745f, 18004i, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_4.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-788f - 1820f), var_1)), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1699f - var_3.c.x) - var_0.a.x)), vec4<f32>(-1694f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-214f - var_3.d.x))), func_4(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(134f, -1920f, var_4.c.x)))).d.x, var_0.a.x))), _wgslsmith_f_op_vec2_f32(-var_4.c.yy));
}

