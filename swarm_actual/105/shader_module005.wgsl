struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: f32) -> i32 {
    let var_0 = vec4<i32>(reverseBits(arg_0), 958i, 14034i, arg_0);
    let var_1 = Struct_4(~0u, Struct_3(Struct_2(_wgslsmith_f_op_f32(trunc(340f))), vec3<u32>(u_input.d, u_input.e.x | u_input.a, abs(abs(u_input.c)))), true);
    let var_2 = false;
    let var_3 = ~countOneBits(~u_input.e.zx);
    let var_4 = var_0.x;
    return _wgslsmith_clamp_i32(~abs(-1997i), select(_wgslsmith_mult_i32(var_0.x, arg_0), -2147483647i, (_wgslsmith_clamp_i32(37284i, arg_0, arg_0) | -23133i) < _wgslsmith_clamp_i32(abs(-1i), -20241i, 63510i)), _wgslsmith_add_i32(-21424i, arg_0));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_5(-_wgslsmith_div_vec3_i32(abs(-vec3<i32>(arg_0.x, 17944i, arg_1)), vec3<i32>(arg_1, -arg_0.x, arg_1)), Struct_2(-1042f), _wgslsmith_f_op_f32(-2276f + _wgslsmith_f_op_f32(792f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -3251f), 1048f))), func_3(-19207i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1731f) * -1155f)));
    var var_1 = Struct_3(Struct_2(var_0.c), ~_wgslsmith_mod_vec3_u32(u_input.e | u_input.e, vec3<u32>(72044u >> (u_input.a % 32u), ~0u, 1u)));
    let var_2 = Struct_1(vec2<bool>((arg_1 >> ((var_1.b.x ^ u_input.b) % 32u)) == -60797i, ~var_1.b.x <= ~var_1.b.x), firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, var_1.b.x, 60256u, 1u) | vec4<u32>(u_input.d, u_input.e.x, 4619u, var_1.b.x), countOneBits(vec4<u32>(u_input.e.x, 4294967295u, var_1.b.x, 4294967295u)), vec4<u32>(1u, 4294967295u, u_input.a, u_input.b)), ~vec4<u32>(1u, 4294967295u, var_1.b.x, u_input.b) << (select(vec4<u32>(var_1.b.x, var_1.b.x, 46211u, 2205u), vec4<u32>(79576u, var_1.b.x, 41544u, 1u), vec4<bool>(false, false, false, false)) % vec4<u32>(32u)))), !(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), all(vec3<bool>(false, false, true)))), vec3<f32>(_wgslsmith_div_f32(297f, _wgslsmith_f_op_f32(-var_1.a.a)), -1000f, 657f));
    let var_3 = var_2;
    var_1 = Struct_3(Struct_2(-1253f), u_input.e);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-299f, _wgslsmith_div_f32(2229f, -461f)))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = !((~4294967295u < (abs(u_input.b) >> (select(1u, u_input.b, false) % 32u))) | all(vec4<bool>(select(false, true, false), true, all(vec4<bool>(false, true, false, false)), true)));
    return Struct_3(func_2(-abs(-vec2<i32>(2147483647i, -32803i)), _wgslsmith_clamp_i32(-1i, -5630i, -(7018i << (1u % 32u)))), u_input.e);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_add_vec2_u32(arg_0.b.yy, u_input.e.zx);
    var var_1 = vec4<i32>(~(~_wgslsmith_div_i32(-10809i, firstTrailingBit(-1508i))), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, _wgslsmith_div_i32(-27518i, -1i), 1i, 1i), vec4<i32>(countOneBits(i32(-1i) * -1i), _wgslsmith_sub_i32(abs(0i), ~61892i), -select(1i, 32868i, true), -43792i)), max(firstTrailingBit(-1i), i32(-1i) * -3438i), 18105i);
    var var_2 = Struct_1(!(!vec2<bool>(any(vec3<bool>(true, true, true)), true)), firstTrailingBit(1u), !select(vec4<bool>(true, true, any(vec2<bool>(false, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true)), vec4<bool>(true, true, select(true, true, false), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.a, arg_1.a.a, -468f) - vec3<f32>(-1042f, -553f, 785f)), vec3<f32>(arg_1.a.a, -428f, arg_0.a.a)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a, arg_0.a.a, 1329f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.a, 1747f, arg_1.a.a) * _wgslsmith_div_vec3_f32(vec3<f32>(-359f, 1877f, arg_0.a.a), vec3<f32>(arg_0.a.a, arg_0.a.a, arg_1.a.a))))));
    var_1 = vec4<i32>(44842i, _wgslsmith_mult_i32(~reverseBits(-var_1.x), _wgslsmith_dot_vec3_i32(min(var_1.yww, select(var_1.zxz, var_1.zzz, var_2.c.x)), vec3<i32>(16324i, var_1.x, var_1.x))), ~_wgslsmith_clamp_i32(-2147483647i, firstLeadingBit(23397i), 1i) ^ _wgslsmith_div_i32(~_wgslsmith_clamp_i32(-44322i, -13431i, 0i), var_1.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(select(var_1.x, 107933i, !var_2.a.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), var_1.xx), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, 0i), vec4<i32>(0i, var_1.x, var_1.x, var_1.x)))), ~_wgslsmith_mult_i32(var_1.x | 450i, -20468i)));
    var var_3 = -1822f;
    return Struct_3(func_2(vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(34286i), 59756i), var_1.x), select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, var_1.x) | vec3<i32>(var_1.x, var_1.x, -2147483647i), countOneBits(vec3<i32>(11793i, var_1.x, 2147483647i))), 1i & (var_1.x | 1i), any(vec2<bool>(var_2.c.x, false)) | (var_2.d.x < arg_1.a.a))), vec3<u32>(~firstTrailingBit(abs(1u)), countOneBits(var_0.x), abs(min(0u, arg_0.b.x >> (var_2.b % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(ceil(-1018f))), vec3<u32>(u_input.a, max(u_input.e.x, _wgslsmith_add_u32(32764u, u_input.d)), min(_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a), ~u_input.d))), func_1(u_input.a));
    var var_1 = !vec3<bool>(false, true & any(vec2<bool>(true, true)), true);
    let var_2 = _wgslsmith_mod_i32(58340i, -2027i);
    var_1 = vec3<bool>(all(select(vec3<bool>(!var_1.x, select(true, true, false), false), select(select(vec3<bool>(false, var_1.x, true), vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, false, false)), vec3<bool>(false, var_1.x, var_1.x), false && var_1.x), var_1.x)), var_1.x, !var_1.x);
    let var_3 = Struct_1(!vec2<bool>(var_1.x && true, _wgslsmith_div_f32(388f, 1871f) < func_4(Struct_3(var_0.a, u_input.e), Struct_3(Struct_2(var_0.a.a), vec3<u32>(56822u, var_0.b.x, 4294967295u))).a.a), _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(var_0.b.x & var_0.b.x), ~min(49141u, 4294967295u)), ~(u_input.e.zx >> (vec2<u32>(16561u, var_0.b.x) % vec2<u32>(32u))) ^ vec2<u32>(~55927u, ~u_input.b)), select(!vec4<bool>(!var_1.x, var_1.x, any(vec4<bool>(var_1.x, false, var_1.x, var_1.x)), var_1.x), !select(!vec4<bool>(false, true, true, var_1.x), !vec4<bool>(var_1.x, false, false, false), select(vec4<bool>(true, var_1.x, false, false), vec4<bool>(false, false, false, var_1.x), var_1.x)), !select(vec4<bool>(var_1.x, true, var_1.x, true), !vec4<bool>(false, var_1.x, true, true), any(vec3<bool>(var_1.x, false, var_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, var_0.a.a, var_0.a.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(var_2, _wgslsmith_mod_i32(min(var_2, 1i), -1i), _wgslsmith_clamp_i32(reverseBits(-2147483647i), 2885i << (var_3.b % 32u), 0i), ~(-46132i)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(971f, -288f), _wgslsmith_f_op_f32(var_3.d.x * 2087f))))));
}

