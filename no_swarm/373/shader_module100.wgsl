struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: f32) -> vec2<u32> {
    let var_0 = 24288u;
    return u_input.b;
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_2;
    var var_1 = Struct_1(select(select(select(vec3<bool>(arg_2.c.x, false, arg_2.c.x), select(vec3<bool>(false, true, arg_2.c.x), var_0.a, arg_2.c.x), select(arg_2.a, var_0.a, false)), var_0.a, vec3<bool>(true, true, true)), vec3<bool>(arg_2.b.x <= u_input.c, true, false), !(!vec3<bool>(false, var_0.a.x, arg_2.c.x))), vec4<u32>(~arg_2.b.x, ~_wgslsmith_add_u32(104022u, arg_0) ^ ~u_input.a, arg_0, u_input.c), vec2<bool>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 3344i, u_input.d.x, 0i), vec4<i32>(-38891i, 1i, u_input.d.x, -44589i))) != -1i, all(var_0.a)));
    let var_2 = true;
    let var_3 = ~4294967295u;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-688f, arg_1.x))))))));
    return select(vec4<u32>(var_0.b.x, var_1.b.x, 45359u, var_0.b.x), var_0.b, vec4<bool>(firstLeadingBit(u_input.d.x) != select(2147483647i, u_input.d.x >> (arg_2.b.x % 32u), true), any(!vec4<bool>(false, var_0.c.x, false, false)), all(!vec4<bool>(var_2, arg_2.a.x, var_0.c.x, false)), var_2));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = arg_0;
    var_0 = Struct_1(!select(vec3<bool>(u_input.d.x >= u_input.d.x, !var_0.a.x, -2147483647i < u_input.d.x), arg_1, !select(vec3<bool>(false, false, arg_0.c.x), vec3<bool>(var_0.c.x, false, true), vec3<bool>(arg_2.c.x, true, true))), arg_2.b, vec2<bool>(!(-1000f == _wgslsmith_f_op_f32(select(-445f, -706f, true))), arg_1.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1023f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -484f)))))));
    let var_2 = 1u;
    var var_3 = -12285i;
    return !(!select(select(select(arg_0.a, arg_1, false), !vec3<bool>(arg_1.x, arg_2.a.x, arg_0.a.x), !vec3<bool>(arg_1.x, var_0.c.x, arg_0.c.x)), arg_2.a, !all(vec4<bool>(true, arg_2.c.x, var_0.a.x, var_0.a.x))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(!func_4(Struct_1(vec3<bool>(true, true, true), vec4<u32>(u_input.b.x, 38522u, 33569u, 4294967295u), vec2<bool>(true, true)), vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, true, true), func_3(1u, vec2<f32>(-279f, 1805f), Struct_1(vec3<bool>(true, true, false), vec4<u32>(arg_0, 1u, u_input.c, u_input.a), vec2<bool>(true, false))), vec2<bool>(true, true))), _wgslsmith_add_vec4_u32(countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, u_input.b.x, arg_0), vec4<u32>(0u, arg_0, 4294967295u, arg_0))), _wgslsmith_mod_vec4_u32((vec4<u32>(u_input.b.x, 0u, u_input.b.x, 68529u) & vec4<u32>(u_input.c, u_input.a, 0u, 53281u)) ^ vec4<u32>(arg_0, u_input.c, 0u, 18073u), ~(vec4<u32>(78984u, 0u, arg_0, 19116u) ^ vec4<u32>(u_input.c, 33005u, u_input.c, u_input.c)))), vec2<bool>(all(vec3<bool>(true, true, any(vec3<bool>(true, true, true)))), any(vec2<bool>(true, true))));
    let var_1 = Struct_1(vec3<bool>((_wgslsmith_add_i32(u_input.d.x, arg_1.x) ^ ~arg_1.x) <= -arg_1.x, true, var_0.a.x), func_3(57963u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1017f * -658f), -257f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1290f, -721f) * vec2<f32>(-1228f, -774f)))), Struct_1(vec3<bool>(all(vec2<bool>(false, var_0.c.x)), false && var_0.c.x, var_0.c.x & false), select(_wgslsmith_add_vec4_u32(vec4<u32>(13014u, var_0.b.x, 1u, 40195u), var_0.b), ~vec4<u32>(u_input.c, 61660u, 1u, arg_0), var_0.c.x), vec2<bool>(arg_1.x > -6043i, var_0.c.x))), vec2<bool>(all(!(!vec4<bool>(var_0.c.x, var_0.a.x, var_0.c.x, false))), var_0.a.x));
    var_0 = var_1;
    var_0 = Struct_1(vec3<bool>(!(-1063f < _wgslsmith_f_op_f32(trunc(-835f))), select(true, reverseBits(arg_0) > 0u, var_0.c.x && false), true), ~(~(~(~var_1.b))), vec2<bool>(var_1.a.x, all(!vec4<bool>(false, var_0.c.x, var_0.a.x, true))));
    let var_2 = var_1;
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -382f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -618f), 521f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(514f + _wgslsmith_f_op_f32(358f * 1000f))) - 1388f));
    let var_1 = func_2(~_wgslsmith_div_u32(0u, 1u) << (u_input.c % 32u), _wgslsmith_clamp_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(54747i, 52623i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, 42171i)), ~(-44262i ^ u_input.d.x), 1i, ~(i32(-1i) * -8526i)), ~select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, -2147483647i, u_input.d.x), vec4<i32>(24486i, u_input.d.x, u_input.d.x, u_input.d.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-60830i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, -12690i, u_input.d.x, 1i)), !arg_0.a.x), vec4<i32>(-30073i, u_input.d.x & 1i, 19866i, u_input.d.x)));
    var var_2 = func_2((var_1.b.x >> (4294967295u % 32u)) & (arg_0.b.x & _wgslsmith_dot_vec2_u32(arg_0.b.xz, vec2<u32>(arg_1.b.x, 0u) << (var_1.b.wz % vec2<u32>(32u)))), vec4<i32>(_wgslsmith_add_i32(u_input.d.x, countOneBits(_wgslsmith_dot_vec2_i32(u_input.d, u_input.d))), ~u_input.d.x, -_wgslsmith_mult_i32(-2147483647i << (arg_1.b.x % 32u), ~2147483647i), _wgslsmith_sub_i32(u_input.d.x, -2147483647i)));
    var_2 = func_2(~(~(~var_2.b.x & 1u)), ~(~abs(~vec4<i32>(-2147483647i, -41016i, -18179i, 18095i))));
    let var_3 = u_input.d.x;
    return ~(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b.x, u_input.c)), func_1(-1449f)) >= 12664u, (44019i & u_input.d.x) > (_wgslsmith_mod_i32(u_input.d.x, 40586i) ^ 0i));
    var var_1 = vec2<i32>(max(30486i, 0i), abs(_wgslsmith_mult_i32(~1i, -(-17362i | u_input.d.x))));
    let var_2 = ~func_5(func_2(abs(0u), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, u_input.d.x)), max(vec4<i32>(-56393i, -8018i, 1i, -2147483647i), vec4<i32>(-2147483647i, 0i, var_1.x, u_input.d.x)))), Struct_1(vec3<bool>(var_0.x, var_0.x, false), abs(~vec4<u32>(u_input.b.x, 13020u, u_input.a, 18438u)), !vec2<bool>(var_0.x, false)));
    var_0 = vec2<bool>(var_0.x, any(vec2<bool>(u_input.d.x == 1i, var_0.x)));
    var_0 = select(!(!func_2(~var_2, vec4<i32>(-36274i, var_1.x, -31823i, u_input.d.x)).a.xy), select(!func_4(Struct_1(vec3<bool>(var_0.x, true, true), vec4<u32>(var_2, u_input.c, 4294967295u, var_2), vec2<bool>(var_0.x, false)), vec3<bool>(true, true, true), func_2(var_2, vec4<i32>(var_1.x, var_1.x, 24466i, -43326i))).xy, vec2<bool>(!any(vec2<bool>(var_0.x, var_0.x)), var_0.x), select(func_2(29739u, vec4<i32>(0i, var_1.x, -2147483647i, 1i) | vec4<i32>(u_input.d.x, 1i, 2147483647i, -14902i)).c, vec2<bool>(true, true), all(!vec3<bool>(false, true, var_0.x)))), select(vec2<bool>(all(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, false), vec4<bool>(true, false, var_0.x, true))), (false || var_0.x) & select(true, var_0.x, var_0.x)), !func_4(func_2(1u, vec4<i32>(var_1.x, 18464i, -1i, 2147483647i)), select(vec3<bool>(false, false, true), vec3<bool>(false, var_0.x, var_0.x), false), Struct_1(vec3<bool>(var_0.x, true, var_0.x), vec4<u32>(119248u, var_2, var_2, var_2), vec2<bool>(var_0.x, false))).zy, var_0.x));
    var_0 = !vec2<bool>(select(func_2(u_input.c, ~vec4<i32>(1i, 0i, var_1.x, 53133i)).a.x, var_0.x, true), false);
    var var_3 = Struct_1(select(vec3<bool>(select(all(vec2<bool>(true, true)), var_0.x || false, false || var_0.x), var_0.x, false), vec3<bool>(var_0.x, !all(vec4<bool>(false, false, var_0.x, var_0.x)), !var_0.x || false), vec3<bool>(true, var_0.x | true, all(select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, true, false))))), ~(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(70851u, var_2, 0u, 16034u), vec4<u32>(11716u, var_2, 4294967295u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 26176u, 4294967295u), vec4<u32>(var_2, var_2, u_input.a, u_input.a)))), !select(func_4(Struct_1(vec3<bool>(var_0.x, false, var_0.x), vec4<u32>(var_2, u_input.c, 4294967295u, var_2), vec2<bool>(var_0.x, var_0.x)), vec3<bool>(var_0.x, var_0.x, var_0.x), Struct_1(vec3<bool>(false, var_0.x, var_0.x), vec4<u32>(u_input.b.x, var_2, 32097u, var_2), vec2<bool>(var_0.x, var_0.x))).zx, vec2<bool>(any(vec4<bool>(var_0.x, true, false, true)), true), min(u_input.c, u_input.a) < 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1273f, 185f, true))), 196f)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1103f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))).x, u_input.a);
}

