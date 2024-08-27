struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<bool> {
    let var_0 = any(vec2<bool>(true, false));
    let var_1 = Struct_1(firstTrailingBit(_wgslsmith_div_vec3_u32(max(vec3<u32>(43263u, u_input.c, 4294967295u) << (vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u)), ~vec3<u32>(1u, u_input.c, 39379u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(54985u, 1u, 88658u), vec3<u32>(u_input.b, u_input.b, u_input.c)) ^ vec3<u32>(u_input.c, u_input.b, 50069u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(firstTrailingBit(u_input.b), 37135u), select(vec2<u32>(select(1u, 2988u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, u_input.b, 0u), vec4<u32>(1u, u_input.b, u_input.c, 50741u))), vec2<u32>(abs(37591u), firstTrailingBit(1u)), vec2<bool>(var_0 && false, !var_0))));
    let var_2 = Struct_2(~(_wgslsmith_sub_u32(13364u, select(var_1.a.x, 50050u, true)) << (max(firstTrailingBit(1u), 65288u) % 32u)), -214f, var_1, !select(select(!vec2<bool>(var_0, var_0), vec2<bool>(true, true), true & var_0), select(select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0)), vec2<bool>(true, true), !var_0), true));
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(-780f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(176f, var_2.b)))), false)), _wgslsmith_f_op_f32(step(-150f, var_2.b)), var_2.b)));
    var var_4 = var_1;
    return vec2<bool>(!(!(reverseBits(var_1.a.x) < ~var_2.a)), all(select(vec3<bool>(var_2.d.x, false, var_2.d.x), select(!vec3<bool>(var_0, false, var_2.d.x), select(vec3<bool>(var_2.d.x, var_2.d.x, true), vec3<bool>(true, false, false), var_2.d.x), !vec3<bool>(var_0, var_0, true)), select(vec3<bool>(var_2.d.x, var_0, false), !vec3<bool>(var_2.d.x, true, var_2.d.x), var_0))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, arg_0), ~vec3<u32>(0u, u_input.c, 985u)) >> (~vec3<u32>(arg_0, ~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 41306u, arg_0, arg_0), vec4<u32>(arg_0, u_input.b, u_input.c, arg_0))) % vec3<u32>(32u)), ~abs(select(~vec3<u32>(arg_0, u_input.b, arg_0), ~vec3<u32>(arg_0, 4294967295u, u_input.c), vec3<bool>(true, false, true))));
    var_0 = u_input.c;
    let var_1 = Struct_2(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-635f * 506f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(trunc(487f))))))), Struct_1(vec3<u32>(~4294967295u, _wgslsmith_sub_u32(arg_0, min(73859u, arg_0)), 0u), firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(100681u, 36315u, u_input.b), ~0u))), select(func_3(), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), false), vec2<bool>(true, true)));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1501f - var_1.b))) * _wgslsmith_f_op_f32(sign(1f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f)))))));
    var var_3 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b))), var_1.d.x, false);
    return var_1.c;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = (max(~select(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, 18493i, 23443i), true), -abs(vec3<i32>(1i, -11281i, 0i))) ^ ~(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 9219i, 2147483647i), vec3<i32>(7272i, u_input.a, 1i)))) ^ min(vec3<i32>(min(_wgslsmith_add_i32(u_input.a, u_input.a), reverseBits(u_input.a)), u_input.a, -u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(12589i, u_input.a))), ~(~vec3<i32>(1i, u_input.a, 30474i))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-178f * -794f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1929f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1020f - _wgslsmith_f_op_f32(floor(-1506f))), _wgslsmith_f_op_f32(sign(2450f))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(var_1 * -916f), -1607f))))));
    let var_4 = !(!select(!vec4<bool>(arg_1, false, arg_1, false), select(vec4<bool>(false, false, arg_1, false), select(vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(false, false, arg_1, true), vec4<bool>(arg_1, true, false, arg_1)), select(vec4<bool>(arg_1, false, false, true), vec4<bool>(arg_1, arg_1, false, arg_1), true)), !(var_0.x == u_input.a)));
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-256f, 832f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(762f, 1000f)), vec2<f32>(-1000f, 1966f))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1609f, 1168f) + vec2<f32>(-695f, 613f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1087f, -922f)), func_3()))))));
    var var_1 = Struct_1(vec3<u32>(~4294967295u, 4294967295u, ~1u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~arg_0.a, ~(arg_0.a >> (arg_0.a % vec3<u32>(32u)))), arg_0.a));
    let var_2 = Struct_2(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))) + _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), -1765f)), func_4(func_4(arg_0, false, func_4(func_2(29038u), false, func_2(36296u), Struct_1(vec3<u32>(92852u, 105574u, 947u), u_input.b)), arg_0), true, arg_0, arg_0), !select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, false)) && (var_0.x == var_0.x)));
    var_1 = Struct_1(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(~var_2.a, countOneBits(var_1.b), ~var_1.b), func_2(~var_2.a).a)), reverseBits(var_2.c.b));
    var var_3 = Struct_1(vec3<u32>(~(~(arg_0.a.x ^ var_2.a)), 0u, ~func_4(var_2.c, func_3().x, var_2.c, func_2(var_1.a.x)).b), var_2.c.b);
    return func_2(0u);
}

fn func_1() -> f32 {
    let var_0 = func_5(func_4(func_2(53588u), false, func_2(u_input.b), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(77129u, u_input.b, 8833u) & vec3<u32>(0u, u_input.c, 64125u), firstTrailingBit(vec3<u32>(15791u, u_input.b, 1u))), ~(u_input.c << (62788u % 32u)))), vec4<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(5553i, u_input.a, u_input.a)), -23809i, _wgslsmith_sub_i32(u_input.a, u_input.a)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, ~u_input.c, u_input.b << (u_input.c % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.b, 9679u, 1u), vec4<u32>(4294967295u, u_input.b, 4161u, u_input.c))), ~(~vec4<u32>(0u, u_input.b, u_input.b, 1u))) % vec4<u32>(32u)), vec4<i32>(~(~u_input.a), -21490i, u_input.a, -_wgslsmith_dot_vec2_i32(vec2<i32>(-26789i, -2516i), vec2<i32>(1i, -2147483647i))));
    var var_1 = max(u_input.a, -1i) >> (_wgslsmith_sub_u32(func_2((u_input.c & 21487u) ^ 0u).a.x, ~var_0.a.x | (var_0.a.x & ~u_input.b)) % 32u);
    var_1 = ~min(-u_input.a, -1i);
    var_1 = -(u_input.a | u_input.a);
    var var_2 = firstTrailingBit(countOneBits(51735u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1566f - _wgslsmith_f_op_f32(f32(-1f) * -1148f)), -976f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.c ^ reverseBits(~u_input.b >> (u_input.b % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-255f, 406f)))), func_5(Struct_1(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 30632u, u_input.b), vec3<u32>(38490u, 4294967295u, 1u))), u_input.b), vec4<i32>(-(u_input.a >> (u_input.c % 32u)), 1i, u_input.a, u_input.a), vec4<i32>(-1i) * -vec4<i32>(7757i, u_input.a, 1i, -11440i)), select(vec2<bool>(any(vec4<bool>(true, false, false, false)), true), func_3(), true && all(select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 850f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1089f, var_0.b), vec2<f32>(var_0.b, var_0.b), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1767f, var_0.b))))))), vec2<f32>(var_0.b, var_0.b), !all(vec4<bool>(select(var_0.d.x, var_0.d.x, false), any(vec4<bool>(true, false, var_0.d.x, false)), !var_0.d.x, true))));
    var var_2 = firstLeadingBit(1u);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * -1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1249f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -467f))));
    var_2 = var_0.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, ~4294967295u);
}

