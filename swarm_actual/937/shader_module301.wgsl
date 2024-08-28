struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = !(!vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), false));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.b, 1099f, 459f, arg_0.b.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2278f, arg_0.b.b, arg_0.b.b, -891f) - vec4<f32>(arg_0.b.b, -624f, arg_0.b.b, arg_0.b.a.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.b, arg_0.b.a.x, arg_0.b.a.x, 1000f), vec4<f32>(-579f, arg_0.b.a.x, arg_0.b.b, arg_0.b.b)))))))), arg_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(114f * arg_0.b.a.x) - _wgslsmith_f_op_f32(abs(606f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b.a.x + arg_0.b.a.x)))))), Struct_1(~(-2147483647i), min(firstLeadingBit(~42782u), ~_wgslsmith_div_u32(arg_0.a.x, arg_0.a.x)), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.a.x | 1u, ~arg_0.a.x), ~arg_0.a.x), select(vec2<bool>(!var_0.x, all(vec4<bool>(false, var_0.x, var_0.x, var_0.x))), !(!vec2<bool>(var_0.x, var_0.x)), select(select(vec2<bool>(var_0.x, false), vec2<bool>(true, false), var_0.x), vec2<bool>(true, true), vec2<bool>(true, true))), abs(u_input.c)));
    let var_2 = var_1.b;
    var_0 = select(!var_1.d.d, select(select(var_1.d.d, vec2<bool>(true, true), vec2<bool>(u_input.c.x <= var_1.d.e.x, var_1.d.d.x)), !select(!vec2<bool>(false, var_0.x), var_1.d.d, true), false), select(vec2<bool>((var_1.d.d.x | var_0.x) && !var_0.x, any(!var_1.d.d)), !var_1.d.d, var_1.d.d.x));
    var_0 = select(select(!vec2<bool>(any(vec3<bool>(var_0.x, var_1.d.d.x, true)), all(var_1.d.d)), select(select(!var_1.d.d, var_1.d.d, !vec2<bool>(var_1.d.d.x, false)), select(select(vec2<bool>(true, var_1.d.d.x), var_1.d.d, var_1.d.d.x), vec2<bool>(true, true), !var_1.d.d.x), all(var_1.d.d)), !any(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_1.d.d.x, false, true, var_1.d.d.x)))), !select(select(vec2<bool>(false, var_1.d.d.x), select(vec2<bool>(false, var_0.x), var_1.d.d, false), vec2<bool>(true, true)), select(vec2<bool>(var_0.x, var_0.x), !var_1.d.d, vec2<bool>(var_1.d.d.x, false)), select(vec2<bool>(var_0.x, var_1.d.d.x), select(vec2<bool>(var_0.x, var_1.d.d.x), vec2<bool>(false, var_1.d.d.x), vec2<bool>(var_0.x, true)), vec2<bool>(var_1.d.d.x, true))), any(vec4<bool>(false, true, var_0.x, true)) & true);
    return var_2.b;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1074f, -750f)) - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_3(Struct_3(u_input.b, Struct_2(vec2<f32>(201f, 578f), 1160f)))))) + -1113f) - -156f);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: f32) -> u32 {
    var var_0 = select(vec3<bool>(any(vec4<bool>(true, !arg_0, arg_0, false)), true, true), select(vec3<bool>(true, u_input.b.x <= 4294967295u, (arg_0 && arg_0) | true), select(!vec3<bool>(arg_0, arg_0, false), !select(vec3<bool>(arg_0, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), false), !vec3<bool>(u_input.a <= u_input.c.x, true, true)), true);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(447f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(35613i, vec2<bool>(false, var_0.x))) - 747f))), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(u_input.b, Struct_2(arg_1.yy, arg_2)))))));
    var var_2 = !vec3<bool>(all(!(!vec3<bool>(false, arg_0, var_0.x))), !arg_0, var_0.x != arg_0);
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(260f, var_1.x, var_1.x, -346f) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, var_1.x, arg_1.x, -2403f), vec4<f32>(672f, arg_2, arg_2, var_1.x))))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_1.zw, arg_1.zz, var_2.xx)), arg_1.zz, !var_2.yz))), 191f), arg_2, Struct_1((~u_input.a | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 0i), vec2<i32>(u_input.a, u_input.a))) << (_wgslsmith_mult_u32(1u, u_input.b.x) % 32u), ((u_input.b.x >> (u_input.b.x % 32u)) ^ max(u_input.b.x, 4294967295u)) ^ ~max(0u, u_input.b.x), _wgslsmith_add_u32(15627u, ~82999u >> (_wgslsmith_dot_vec3_u32(u_input.b.zwx, u_input.b.xxw) % 32u)), var_0.yy, reverseBits(vec3<i32>(u_input.a ^ u_input.a, 71011i, ~(-1i)))));
    let var_4 = all(!vec4<bool>(all(!vec4<bool>(false, var_3.d.d.x, var_3.d.d.x, arg_0)), var_2.x, var_3.d.d.x && all(vec2<bool>(var_0.x, var_2.x)), all(vec2<bool>(var_2.x, var_0.x)) & var_0.x));
    return ~(_wgslsmith_dot_vec3_u32(u_input.b.ywz, ~(~u_input.b.zzy)) ^ ~(~(var_3.d.c | u_input.b.x)));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = ~vec4<i32>(min(u_input.a, ~0i), 1i, -1i, 0i);
    let var_1 = arg_1;
    let var_2 = Struct_4(vec4<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-arg_2.b.b)), _wgslsmith_f_op_f32(-784f - _wgslsmith_div_f32(-507f, -199f)), 582f), arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(268f, -162f, !all(vec3<bool>(false, true, false))))), Struct_1(u_input.a, max(arg_2.a.x, u_input.b.x), arg_2.a.x ^ arg_2.a.x, !select(vec2<bool>(true, false), vec2<bool>(true, true), false), ~_wgslsmith_add_vec3_i32(vec3<i32>(0i, var_0.x, var_0.x), vec3<i32>(var_0.x, 2147483647i, var_0.x)) & _wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(var_0.x, 33489i, u_input.c.x), -var_0.zyw)));
    var var_3 = Struct_5(var_2, _wgslsmith_f_op_f32(floor(var_2.c)), -(~_wgslsmith_mod_i32(15338i >> (var_2.d.b % 32u), -u_input.c.x)), vec4<bool>(var_2.d.d.x, true, false, true), u_input.b.x < 4965u);
    let var_4 = var_3.a.d.b;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(abs(_wgslsmith_mod_i32(u_input.a, 21353i)) <= -(u_input.a ^ 18105i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1986f, -3534f, 1000f)) + vec3<f32>(-1506f, -412f, -191f)))), _wgslsmith_f_op_f32(ceil(-229f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -855f) * -1093f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(-724f, -1078f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-553f * -2097f) * _wgslsmith_div_f32(-274f, 1416f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-338f * 857f))), _wgslsmith_f_op_f32(func_2(u_input.c.x, select(vec2<bool>(false, false), vec2<bool>(true, false), true)))))), Struct_3(~max(u_input.b, u_input.b) | (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u) >> (u_input.b % vec4<u32>(32u))), Struct_2(vec2<f32>(1f, 1f), -876f)));
    var_0 = Struct_3(select(vec4<u32>(1u, 45478u << (u_input.b.x % 32u), u_input.b.x, ~u_input.b.x), vec4<u32>(0u, ~4294967295u, 1u, ~var_0.a.x), any(vec2<bool>(true, true)) | true) >> (select(abs(abs(u_input.b)), ~vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, 21216u), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, false, false), any(vec2<bool>(false, true)))) % vec4<u32>(32u)), var_0.b);
    let var_1 = u_input.c.x;
    var var_2 = func_4(~(~1u), vec3<f32>(552f, _wgslsmith_f_op_f32(f32(-1f) * -709f), 931f), func_4(0u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.x, var_0.b.b, -1531f) + vec3<f32>(var_0.b.a.x, 619f, var_0.b.b)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.x, var_0.b.b, -525f)), vec3<f32>(var_0.b.b, 279f, var_0.b.a.x))))), func_4(var_0.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b.a.x, var_0.b.a.x, 256f)))), func_4(~108340u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-373f, -1075f, var_0.b.b)), Struct_3(u_input.b, var_0.b)))));
    var_0 = Struct_3(var_0.a >> (u_input.b % vec4<u32>(32u)), Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.b.a), _wgslsmith_f_op_f32(abs(-429f))));
    var var_3 = !vec4<bool>(true, any(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), -1523f <= var_2.b.a.x)), !(var_1 > u_input.c.x), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), false)));
    var_2 = func_4(~(_wgslsmith_mod_u32(4294967295u, 32993u) ^ (4294967295u ^ var_0.a.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.b.a.x, 1355f, var_0.b.a.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-784f, 126f, var_2.b.b))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.a.x, -1321f, 308f)))))), Struct_3((vec4<u32>(u_input.b.x, var_2.a.x, var_2.a.x, 1u) ^ vec4<u32>(4294967295u, 1u, 10304u, u_input.b.x)) >> (countOneBits(_wgslsmith_mult_vec4_u32(var_2.a, u_input.b)) % vec4<u32>(32u)), func_4(~_wgslsmith_dot_vec4_u32(var_2.a, u_input.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 710f, -755f))), func_4(~var_2.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b, -1153f, var_2.b.b) - vec3<f32>(var_2.b.a.x, 2603f, var_2.b.a.x)), func_4(0u, vec3<f32>(-1000f, -1516f, var_0.b.b), Struct_3(vec4<u32>(var_0.a.x, 104137u, 1u, u_input.b.x), var_2.b)))).b));
    var var_4 = Struct_1(_wgslsmith_sub_i32((i32(-1i) * -16946i) | _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.c.yx, vec2<i32>(-37423i, var_1)), -u_input.a), i32(-1i) * -1i), _wgslsmith_mult_u32(u_input.b.x, reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_2.a.x, u_input.b.x), var_0.a.zxz))), min(~0u, ~var_0.a.x), vec2<bool>(any(var_3.wwy), false), vec3<i32>(reverseBits(-u_input.c.x), 27148i, _wgslsmith_clamp_i32(u_input.a, -u_input.c.x, _wgslsmith_sub_i32(-2147483647i, -47078i))) << (vec3<u32>(~var_0.a.x, select(~1u, var_0.a.x, var_3.x && true), u_input.b.x) % vec3<u32>(32u)));
    var var_5 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a.x, 383f, var_2.b.a.x, var_0.b.a.x) - vec4<f32>(-152f, var_2.b.a.x, 901f, var_2.b.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.b.b, var_2.b.b, 1382f))))), func_4(var_4.c, vec3<f32>(349f, _wgslsmith_f_op_f32(var_0.b.b * var_0.b.b), _wgslsmith_f_op_f32(var_2.b.b - var_2.b.b)), Struct_3(_wgslsmith_add_vec4_u32(var_0.a, var_0.a), func_4(0u, vec3<f32>(1840f, -1103f, var_0.b.b), Struct_3(var_0.a, var_2.b)).b)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(187f + var_2.b.a.x))), Struct_1(-29368i, ~_wgslsmith_sub_u32(115u, u_input.b.x), ~26092u, select(select(var_4.d, vec2<bool>(true, var_3.x), var_3.yy), select(var_3.wx, var_3.xw, vec2<bool>(false, true)), var_4.d.x), vec3<i32>(var_1, -18925i, -6524i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_2.b.a.x, 2620f)), _wgslsmith_f_op_f32(1832f * var_0.b.b), true)))), var_4.e.x, select(vec4<bool>(false, false, _wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(var_1, var_4.a)) < (100364i >> (0u % 32u)), -707f >= _wgslsmith_f_op_f32(var_0.b.b * 1037f)), vec4<bool>(!select(var_3.x, false, false), false == var_4.d.x, var_3.x, -1000f < _wgslsmith_f_op_f32(-796f + var_0.b.a.x)), select(select(!vec4<bool>(false, true, var_3.x, var_3.x), select(vec4<bool>(false, false, true, false), vec4<bool>(var_4.d.x, false, true, false), vec4<bool>(var_3.x, false, var_3.x, var_3.x)), true), select(select(vec4<bool>(var_3.x, var_4.d.x, false, var_3.x), vec4<bool>(var_3.x, true, false, false), vec4<bool>(true, var_4.d.x, false, var_4.d.x)), !vec4<bool>(false, true, var_4.d.x, false), any(vec3<bool>(var_3.x, var_3.x, var_4.d.x))), (var_0.b.a.x <= -769f) == all(vec3<bool>(true, false, var_4.d.x)))), any(vec3<bool>(all(vec4<bool>(false, var_3.x, true, var_4.d.x)), var_3.x, !var_4.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(26683u, vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_2.b.a.x)), var_5.a.c, _wgslsmith_f_op_f32(f32(-1f) * -332f)), func_4(firstTrailingBit(0u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_5.a.a.zwx))), func_4(~u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.b, 679f, -115f)), func_4(25825u, vec3<f32>(293f, var_2.b.b, var_0.b.a.x), Struct_3(u_input.b, var_2.b))))).b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.x) * _wgslsmith_f_op_f32(-var_0.b.b)));
}

