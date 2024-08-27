struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = ~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, 44402u), u_input.a), abs(u_input.b.zz));
    var var_1 = vec4<i32>(arg_0, arg_0, 206i, -u_input.c.x);
    var_0 = ~vec2<u32>(reverseBits(~_wgslsmith_add_u32(15339u, u_input.b.x)), 79789u);
    let var_2 = ~var_0.x;
    var_0 = u_input.b.wz;
    return select(select(!(!vec3<bool>(false, true, arg_1.x)), select(select(!vec3<bool>(true, arg_1.x, arg_1.x), !vec3<bool>(false, false, arg_1.x), select(vec3<bool>(true, arg_1.x, true), vec3<bool>(false, arg_1.x, arg_1.x), arg_1.x)), vec3<bool>(true, true, all(vec3<bool>(arg_1.x, false, false))), all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), !(!vec3<bool>(arg_1.x, true, true))), vec3<bool>(false, arg_1.x, true & !(true & arg_1.x)), !vec3<bool>(true, !select(arg_1.x, true, arg_1.x), arg_1.x));
}

fn func_2() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-428f, 703f, 1245f, -1000f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-344f, 1280f))), _wgslsmith_f_op_f32(-149f * _wgslsmith_div_f32(-894f, -2127f)), _wgslsmith_f_op_f32(1483f * _wgslsmith_f_op_f32(f32(-1f) * -563f)), _wgslsmith_f_op_f32(floor(-527f))))));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1052f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -644f)), true | (u_input.b.x < 1u))), -463f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1056f))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -273f), all(func_3(-2147483647i, vec2<bool>(true, true)))), -2912i, Struct_1(var_0.x, false));
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-683f, var_1.d.a, -975f, var_0.x)))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -186f), true), ~0i, var_1.b);
    var var_2 = _wgslsmith_sub_i32(var_1.c, u_input.c.x) << (firstLeadingBit(u_input.a.x) % 32u);
    let var_3 = var_1.c;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -197f)), var_1.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.x, -461f)))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-186f + _wgslsmith_f_op_f32(abs(-376f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_1.d.a, -1000f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a)))))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> i32 {
    var var_0 = -477f;
    var var_1 = vec2<bool>(!(~(~arg_1) == ~_wgslsmith_mult_u32(54688u, 53822u)), 36978u > (_wgslsmith_div_u32(arg_1 ^ 65869u, 0u) | 1u));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, -843f) * vec4<f32>(-1225f, -689f, -328f, -1024f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 151f, arg_0.a, 2207f))), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, -2964f, arg_0.a)))), Struct_1(-464f, !func_3(abs(-38871i), !arg_2.xx).x), ~_wgslsmith_add_i32(u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.c.x, 19668i, 40751i), _wgslsmith_add_i32(u_input.c.x, u_input.c.x))), Struct_1(-124f, !((u_input.d.x > u_input.d.x) | false)));
    var_0 = var_2.a.x;
    var_1 = select(vec2<bool>(false, false), vec2<bool>(u_input.c.x < -11885i, var_1.x), true);
    return _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~u_input.d, abs(-u_input.d)), max(select(u_input.d | vec3<i32>(-51178i, u_input.d.x, u_input.c.x), u_input.d ^ vec3<i32>(18483i, u_input.c.x, -2147483647i), arg_2.zzw), u_input.d)) << (firstLeadingBit(abs(_wgslsmith_mod_u32(arg_1, _wgslsmith_dot_vec2_u32(u_input.b.wz, u_input.a)))) % 32u);
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -401f, -1167f, arg_0.x) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 462f, arg_0.x, arg_0.x), vec4<f32>(-1637f, -3737f, arg_0.x, -826f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 675f, arg_0.x, -1217f))))), Struct_1(_wgslsmith_f_op_f32(sign(-1303f)), true), -(1i & arg_1), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x))), func_3(_wgslsmith_add_i32(-u_input.d.x, 2147483647i), func_3(countOneBits(u_input.c.x), vec2<bool>(true, true)).yy).x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x * 560f), _wgslsmith_f_op_f32(-1493f + 440f))), -649f)), var_0.b.b == true);
    var_0 = Struct_2(var_0.a, var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -1i, _wgslsmith_add_i32(firstLeadingBit(var_0.c), u_input.d.x), 42814i), _wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, -1i, 0i, var_0.c), vec4<i32>(-5187i, 54388i, 0i, -2147483647i))), vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, var_0.c), select(arg_1, arg_1, true), ~u_input.c.x, u_input.c.x >> (u_input.b.x % 32u)))), var_1);
    var_0 = Struct_2(vec4<f32>(654f, -1091f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + 798f), _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(round(-471f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 864f))), Struct_1(-1000f, !(~u_input.b.x == ~0u)), _wgslsmith_mult_i32(0i, -_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, var_0.c, arg_1, arg_1), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, 1i, -1i, 0i), vec4<i32>(-2795i, -40788i, 1i, u_input.c.x)))), var_1);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d.a))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.a.x))))))), var_1.b);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(535f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1859f * -736f), 1083f))))));
    var_1 = _wgslsmith_f_op_f32(func_4(vec3<f32>(176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f) - _wgslsmith_f_op_f32(1796f - 148f))), 1f), max(_wgslsmith_sub_i32(-1870i, ~u_input.c.x), -func_1(Struct_1(652f, true), u_input.a.x, vec4<bool>(false, true, false, false))) ^ 2147483647i));
    var var_2 = Struct_1(-231f, true);
    var var_3 = select(vec4<bool>(!var_2.b, all(!(!vec2<bool>(false, var_2.b))), !any(vec4<bool>(true, var_2.b, var_2.b, false)), true), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_2.b, true, var_2.b), vec4<bool>(var_2.b, var_2.b, true, false), var_2.b), select(vec4<bool>(true, false, true, true), vec4<bool>(false, var_2.b, var_2.b, var_2.b), vec4<bool>(false, var_2.b, var_2.b, false)))), (var_2.b & var_2.b) != var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -1884f, var_2.a)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-141f, 1699f, -1551f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(235f, var_2.a, var_2.a), vec3<f32>(var_2.a, var_2.a, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-571f, 1000f, var_2.a) - vec3<f32>(var_2.a, var_2.a, var_2.a))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.a, -1159f, _wgslsmith_f_op_f32(trunc(-768f))))))), abs(u_input.d.x), -257f);
}

