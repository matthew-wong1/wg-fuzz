struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: u32,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> vec2<bool> {
    var var_0 = arg_0.x;
    var_0 = 1u;
    var var_1 = arg_1;
    var_1 = Struct_1(_wgslsmith_clamp_i32(~1235i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3, 15396i, 1i, u_input.d.x) ^ vec4<i32>(var_1.a, -1i, 0i, -4917i), vec4<i32>(-47132i, u_input.e, var_1.a, -1404i) & u_input.d), u_input.b), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~(-18346i), -12683i), _wgslsmith_mod_i32(firstTrailingBit(var_1.a), u_input.d.x), -var_1.a >> (4294967295u % 32u))), vec3<bool>(arg_1.b.x, !(all(vec4<bool>(false, false, true, true)) && all(vec3<bool>(var_1.b.x, var_1.b.x, true))), !any(vec4<bool>(true, arg_1.b.x, arg_1.b.x, true))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(8436u << (firstLeadingBit(4294967295u) % 32u), arg_0.x), 4294967295u), vec3<f32>(arg_1.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-723f + arg_1.d.x))), -1000f));
    let var_2 = Struct_1(_wgslsmith_mult_i32(var_1.a, _wgslsmith_dot_vec3_i32(reverseBits(u_input.d.zyw), vec3<i32>(u_input.b.x, -15343i, reverseBits(-7977i)))), var_1.b, 60091u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(437f + var_1.d.x), -313f, _wgslsmith_f_op_f32(arg_1.d.x - 1000f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.d.x, var_1.d.x, _wgslsmith_div_f32(-602f, var_1.d.x))))));
    return !(!vec2<bool>(all(var_1.b.zx), arg_1.b.x));
}

fn func_2() -> Struct_1 {
    var var_0 = false;
    var_0 = !(!(reverseBits(_wgslsmith_mult_u32(2175u, 1u)) <= countOneBits(firstTrailingBit(4294967295u))));
    let var_1 = any(!func_3(abs(~vec2<u32>(19845u, 63968u)), Struct_1(u_input.d.x, vec3<bool>(false, true, true), 0u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(356f, 1476f, 1485f), vec3<f32>(589f, 1652f, 1250f), vec3<bool>(false, true, true)))), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), true), -30815i));
    var_0 = all(vec2<bool>(true, var_1));
    var_0 = !(!any(vec3<bool>(all(vec4<bool>(false, true, var_1, var_1)), any(vec2<bool>(true, var_1)), var_1)));
    return Struct_1(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-2147483647i >> (abs(0u) % 32u), u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d.x, u_input.b.x, u_input.b.x), _wgslsmith_mod_vec4_i32(u_input.d, u_input.d)), _wgslsmith_add_i32(-36738i, -u_input.c))), select(vec3<bool>(all(select(vec4<bool>(false, var_1, var_1, true), vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(var_1, var_1, false, var_1))), true, select(false, true, var_1) || true), select(select(select(vec3<bool>(false, var_1, true), vec3<bool>(var_1, var_1, false), vec3<bool>(false, true, var_1)), vec3<bool>(var_1, false, false), var_1), select(!vec3<bool>(var_1, var_1, var_1), select(vec3<bool>(var_1, true, true), vec3<bool>(var_1, false, false), vec3<bool>(true, false, var_1)), !vec3<bool>(true, var_1, var_1)), var_1), vec3<bool>(all(vec2<bool>(false, var_1)), any(!vec2<bool>(false, var_1)), var_1)), _wgslsmith_add_u32(1u, 62802u) | (1u >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 47274u), vec4<u32>(0u, 1u, 1u, 86156u)), abs(vec4<u32>(4294967295u, 41837u, 9272u, 71125u))) % 32u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f + -1072f), _wgslsmith_f_op_f32(f32(-1f) * -654f), -1368f)))));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> u32 {
    var var_0 = func_2();
    var var_1 = Struct_1(var_0.a, var_0.b, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(reverseBits(var_0.c), var_0.c >> (89996u % 32u), ~var_0.c)), abs(vec3<u32>(func_2().c, var_0.c, var_0.c))), var_0.d);
    var_0 = func_2();
    var var_2 = vec2<i32>(-1i) * -vec2<i32>(1350i, -23288i);
    let var_3 = _wgslsmith_sub_vec3_i32(arg_1.wxw, _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -2147483647i, 9820i), arg_1.yww), arg_1.zwy)) >> (vec3<u32>(~var_1.c, var_0.c, 0u) % vec3<u32>(32u));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.c, reverseBits(1u)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.c, 45423u), reverseBits(vec2<u32>(var_1.c, var_0.c))), ~vec2<u32>(4294967295u, var_1.c) & vec2<u32>(0u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1i, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), _wgslsmith_add_u32(_wgslsmith_div_u32(1042u, _wgslsmith_mult_u32(func_1(1132f, u_input.d), ~0u)), ~(~22952u) << (select(1u, ~1u, true) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2215f, 1451f, -647f) + vec3<f32>(-1032f, -1671f, -540f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -431f, 1151f) - vec3<f32>(885f, 729f, -741f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-579f, 492f, -163f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-115f, 1205f, 648f) + vec3<f32>(703f, -349f, -1000f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1599f, 1000f, -300f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(716f, -1384f, 1441f)))), true))));
    var var_1 = Struct_1(max(-5282i, max(~(-44133i ^ u_input.e), -1i)), select(!select(select(vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.b.x), var_0.b, var_0.b), !select(var_0.b, select(var_0.b, vec3<bool>(true, false, var_0.b.x), false), !var_0.b), true), _wgslsmith_mod_u32(~countOneBits(min(var_0.c, 1u)), var_0.c), vec3<f32>(365f, -281f, _wgslsmith_f_op_f32(-1217f + -1252f)));
    var_1 = Struct_1(max(abs(abs(u_input.a)), var_0.a ^ (-u_input.b.x << (var_0.c % 32u))), vec3<bool>(!all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, var_1.b.x, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, false, false))), var_1.a <= _wgslsmith_dot_vec3_i32(u_input.b.wxz, vec3<i32>(-5836i, var_0.a, 52283i)), var_1.b.x), var_0.c, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + var_1.d.x)))), var_0.d.x, _wgslsmith_f_op_f32(ceil(580f))));
    let var_2 = true;
    let var_3 = vec4<bool>(any(select(!select(vec3<bool>(true, var_1.b.x, var_0.b.x), vec3<bool>(false, false, false), var_0.b), !(!var_1.b), var_2)), var_1.b.x, false, true & var_1.b.x);
    let var_4 = Struct_1(38887i, vec3<bool>(var_3.x, false, func_3(abs(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.c, var_1.c), vec2<u32>(0u, var_1.c))), Struct_1(2147483647i >> (1u % 32u), vec3<bool>(var_1.b.x, var_0.b.x, var_3.x), ~var_1.c, var_0.d), !(!var_1.b.zy), u_input.b.x).x), ~(~4294967295u), var_1.d);
    let var_5 = Struct_1(var_0.a, func_2().b, ~3013u & _wgslsmith_clamp_u32(~1u, var_4.c, 14250u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(356f, 893f, 1831f)), _wgslsmith_f_op_vec3_f32(select(var_0.d, vec3<f32>(372f, -579f, -525f), false)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.d, vec3<f32>(var_1.d.x, var_1.d.x, -520f), true)) * vec3<f32>(-1409f, var_1.d.x, var_1.d.x))) - _wgslsmith_f_op_vec3_f32(exp2(var_1.d))));
    let x = u_input.a;
    s_output = StorageBuffer(-1164f, _wgslsmith_dot_vec4_u32(~select(~vec4<u32>(var_5.c, 0u, 0u, 0u), vec4<u32>(var_5.c, var_0.c, 67146u, var_1.c), var_4.b.x & true), firstTrailingBit(~select(vec4<u32>(var_4.c, 39186u, var_5.c, var_1.c), vec4<u32>(var_4.c, var_4.c, 7133u, var_0.c), vec4<bool>(false, false, true, var_1.b.x)))), -vec4<i32>(var_4.a ^ _wgslsmith_sub_i32(u_input.a, 43845i), i32(-1i) * -46720i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d.zy, u_input.d.zx), vec2<i32>(var_5.a, var_4.a) ^ vec2<i32>(var_4.a, 3004i)), -var_0.a), firstLeadingBit(~(~var_4.c)));
}

