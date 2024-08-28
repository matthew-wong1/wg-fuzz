struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec3<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1266f, 122f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 256f) * _wgslsmith_f_op_f32(global0.x - -1447f)) * global0.x), global0.x));
    let var_0 = Struct_1(vec2<bool>(false, reverseBits(1u) < (select(u_input.b.x, u_input.b.x, arg_0.x) & arg_1)), _wgslsmith_add_u32(arg_1, arg_1), arg_1);
    var var_1 = any(select(select(arg_0, !arg_0, arg_0), arg_0, vec3<bool>(false == arg_0.x, arg_0.x, false)));
    var var_2 = Struct_4(var_0, Struct_2(4294967295u, select(select(var_0.a, vec2<bool>(false, arg_0.x), vec2<bool>(var_0.a.x, false)), !vec2<bool>(arg_0.x, var_0.a.x), var_0.a.x), vec2<f32>(_wgslsmith_f_op_f32(341f + -160f), _wgslsmith_f_op_f32(-global0.x)), Struct_1(vec2<bool>(true && var_0.a.x, arg_0.x && false), firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 9756u, 0u, arg_1), vec4<u32>(0u, var_0.c, var_0.b, var_0.c)), vec4<u32>(var_0.c, arg_1, 3677u, 55095u)))), vec4<i32>(abs(_wgslsmith_clamp_i32(abs(27316i), max(u_input.e, 0i), ~0i)), _wgslsmith_mod_i32(u_input.a, 1i), 21126i, -1i), var_0);
    var var_3 = var_2.a;
    return reverseBits(countOneBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b), firstTrailingBit(u_input.b)), _wgslsmith_dot_vec2_u32(u_input.b.yy, abs(u_input.b.zx)))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32) -> i32 {
    var var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32((vec4<u32>(u_input.c, 4294967295u, 0u, 0u) ^ vec4<u32>(18102u, 23322u, 23355u, arg_2)) & ~vec4<u32>(97465u, 16701u, 63139u, 4294967295u), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_2, 14844u, u_input.c, u_input.b.x), vec4<u32>(u_input.b.x, 50242u, 4294967295u, arg_2) ^ vec4<u32>(arg_2, 59886u, arg_2, 4294967295u)), vec4<u32>(func_3(vec3<bool>(false, arg_1, arg_0), 0u), reverseBits(u_input.b.x), 29430u, u_input.b.x)), ~vec4<u32>(~arg_2, 0u, abs(56022u), u_input.c));
    global0 = vec2<f32>(_wgslsmith_div_f32(-776f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(820f + 1729f))))), -629f);
    var_0 = u_input.b.x;
    let var_1 = !vec3<bool>(arg_1, !arg_0, arg_0);
    let var_2 = Struct_1(select(select(vec2<bool>(!arg_1, false), !select(vec2<bool>(var_1.x, true), vec2<bool>(arg_1, true), false), !vec2<bool>(arg_0, false)), !select(!var_1.xz, vec2<bool>(true, true), true), false), 4294967295u, 1u);
    return abs(_wgslsmith_add_i32(-22861i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 17063i, -16681i), vec3<i32>(u_input.a, 2147483647i, u_input.d) ^ vec3<i32>(u_input.d, -2147483647i, u_input.a))) ^ (reverseBits(u_input.e ^ u_input.d) | -(i32(-1i) * -2147483647i)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> vec3<u32> {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(sign(791f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -1210f))));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1038f, -147f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1696f, -209f))), arg_0.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) + vec2<f32>(1220f, global0.x))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f * 410f), _wgslsmith_f_op_f32(-global0.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1043f)), select(all(vec4<bool>(arg_0.a.x, arg_2, arg_2, true)), u_input.c > _wgslsmith_mod_u32(0u, u_input.c), all(!vec3<bool>(arg_2, true, arg_0.a.x))) | arg_0.a.x));
    var var_0 = Struct_3(Struct_1(vec2<bool>(true, true), arg_0.c, _wgslsmith_sub_u32(arg_0.b >> (_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(1u, u_input.c)) % 32u), u_input.c)), arg_2, abs(~1908u));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1703f), -155f), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 774f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1113f, 836f, 1127f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -307f, -1000f) - vec3<f32>(global0.x, -378f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1235f, 1146f))))), !(!select(vec3<bool>(var_0.a.a.x, false, arg_0.a.x), vec3<bool>(var_0.b, var_0.a.a.x, arg_0.a.x), false))))));
    return ~vec3<u32>(~arg_0.c, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b), u_input.b), _wgslsmith_dot_vec3_u32(min(u_input.b, u_input.b), u_input.b)), select(func_3(select(vec3<bool>(var_0.a.a.x, false, var_0.b), vec3<bool>(arg_2, arg_0.a.x, arg_2), var_0.b), 8046u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, 0u, u_input.b.x, var_0.c), vec4<u32>(u_input.c, 23922u, u_input.c, 0u)), any(!vec4<bool>(true, false, arg_0.a.x, var_0.a.a.x))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = !(!any(!(!vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x))));
    global0 = _wgslsmith_f_op_vec2_f32(trunc(arg_2.c));
    var var_1 = true;
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_2.c), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(arg_2.c, vec2<f32>(arg_2.c.x, global0.x))))) * arg_2.c)))));
    let var_2 = min(~select(max(u_input.b, u_input.b), u_input.b, select(vec3<bool>(true, false, arg_0.a.x), select(vec3<bool>(var_0, arg_0.a.x, arg_2.b.x), vec3<bool>(false, false, true), vec3<bool>(arg_0.a.x, false, var_0)), arg_0.a.x)), func_4(arg_0, reverseBits(vec3<i32>(arg_1 ^ 1i, func_2(true, var_0, u_input.c), _wgslsmith_div_i32(arg_1, -2147483647i))), all(arg_0.a)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1171f;
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1573f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 - -1000f)))), global0.x) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(var_0, global0.x)), -583f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1034f, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2130f, var_0)), func_1(Struct_1(vec2<bool>(true, false), 15747u, u_input.b.x), u_input.e, Struct_2(u_input.c, vec2<bool>(true, false), vec2<f32>(-1000f, global0.x), Struct_1(vec2<bool>(false, true), 12458u, u_input.c)))))), vec2<f32>(_wgslsmith_f_op_f32(floor(-274f)), _wgslsmith_f_op_f32(min(var_0, 572f))), true | func_1(Struct_1(vec2<bool>(false, false), u_input.b.x, u_input.b.x), 1i ^ u_input.e, Struct_2(u_input.c, vec2<bool>(false, false), vec2<f32>(659f, var_0), Struct_1(vec2<bool>(false, false), u_input.c, 1u))))));
    var var_1 = u_input.c;
    let var_2 = Struct_3(Struct_1(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, false), all(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), true), any(vec2<bool>(true, false))), ~abs(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), u_input.b.x), any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true), _wgslsmith_f_op_f32(step(global0.x, -680f)) <= -357f)), _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), 0u, u_input.b.x, _wgslsmith_clamp_u32(u_input.c, 4294967295u, 29205u)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(90058u, 4294967295u, 55833u, u_input.b.x) >> (vec4<u32>(u_input.c, u_input.b.x, 37215u, u_input.b.x) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 4294967295u, u_input.c, u_input.b.x)), vec4<u32>(1u, ~4294967295u, 1u, u_input.c))));
    var var_3 = var_2;
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1105f + var_0) - _wgslsmith_div_f32(global0.x, var_0)), -297f) - vec2<f32>(_wgslsmith_f_op_f32(ceil(-1405f)), var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -647f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1175f, 1988f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -253f))))), !vec2<bool>(false && (true && var_2.a.a.x), var_2.b)));
    let var_4 = (~u_input.b >> (vec3<u32>(_wgslsmith_mult_u32(var_3.c, var_2.a.c), 17915u, 1u) % vec3<u32>(32u))) << (min(~(~vec3<u32>(4294967295u, 4294967295u, var_2.c)) | (vec3<u32>(u_input.c, 0u, 8700u) >> (~u_input.b % vec3<u32>(32u))), ~vec3<u32>(u_input.b.x, 0u, _wgslsmith_sub_u32(0u, var_2.a.c))) % vec3<u32>(32u));
    let var_5 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, -762f)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(975f + -636f), _wgslsmith_f_op_f32(var_0 * global0.x)), _wgslsmith_f_op_f32(-1004f * _wgslsmith_f_op_f32(219f + 2043f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1043f, var_0) - vec2<f32>(2825f, 329f)))) + vec2<f32>(var_0, global0.x))));
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, (~select(vec2<i32>(u_input.a, -5698i), vec2<i32>(u_input.d, u_input.e), var_3.a.a) >> (u_input.b.xy % vec2<u32>(32u))) | vec2<i32>(u_input.e, u_input.e), max(1i, ~(~u_input.d) & u_input.e), 0u, vec4<i32>(firstTrailingBit(-func_2(var_3.b, var_2.b, 1u)), 62913i, abs(_wgslsmith_sub_i32(69986i >> (0u % 32u), reverseBits(u_input.e))), _wgslsmith_sub_i32(u_input.a, firstTrailingBit(u_input.d)) ^ -select(u_input.a, u_input.d, var_3.a.a.x)));
}

