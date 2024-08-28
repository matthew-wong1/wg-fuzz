struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: f32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = u_input.b;
    let var_1 = arg_2.wzx;
    var var_2 = Struct_2(508f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -379f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(684f)) * _wgslsmith_div_f32(-181f, 174f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2403f, _wgslsmith_f_op_f32(ceil(648f))))), arg_1.a, 194f, !select(!vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(any(vec2<bool>(true, arg_0.x)), arg_0.x, arg_0.x, !arg_0.x), vec4<bool>(arg_0.x, select(arg_0.x, false, arg_0.x), false, false & arg_0.x)));
    var var_3 = Struct_3(arg_0, abs(_wgslsmith_mod_i32(2147483647i, ~arg_3.x) << (max(u_input.b, arg_2.x | 61922u) % 32u)), 8997u, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d), 1594f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_2.b))), arg_1.a, 365f, !vec4<bool>(any(vec3<bool>(false, true, true)), all(vec2<bool>(false, arg_0.x)), !arg_0.x, all(arg_0.xw))), vec2<f32>(287f, var_2.d));
    var_2 = Struct_2(621f, vec2<f32>(_wgslsmith_f_op_f32(var_3.e.x + _wgslsmith_f_op_f32(exp2(var_2.a))), _wgslsmith_f_op_f32(var_3.e.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d * var_3.e.x) + _wgslsmith_f_op_f32(sign(-196f))))), Struct_1(1u), _wgslsmith_f_op_f32(921f - -501f), select(!var_2.e, arg_0, true));
    return 1000f;
}

fn func_2(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_4(Struct_1(~70125u));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true), Struct_4(var_0.a), abs(vec4<u32>(1u, firstTrailingBit(8475u), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), var_0.a.a)), arg_0.yy)), -830f, true));
    var var_2 = ~reverseBits(vec4<u32>(4294967295u, var_0.a.a, 5700u, 133u) & vec4<u32>(1u, u_input.a.x, u_input.b, 0u)) ^ vec4<u32>(49946u, var_0.a.a, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(39009u, var_0.a.a, var_0.a.a, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(15679u, var_0.a.a, 1u, var_0.a.a), vec4<u32>(27689u, 39145u, var_0.a.a, var_0.a.a), vec4<u32>(u_input.a.x, 0u, var_0.a.a, 3789u)), vec4<u32>(u_input.b, var_0.a.a, var_0.a.a, 22633u) ^ vec4<u32>(4294967295u, 1u, u_input.a.x, 16536u)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u), min(vec4<u32>(401u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, var_0.a.a, 4294967295u, 73389u)))), firstTrailingBit(~(u_input.a.x >> (u_input.b % 32u))));
    var_2 = ~vec4<u32>(firstLeadingBit(1u), _wgslsmith_mult_u32(21072u, abs(var_2.x)), _wgslsmith_clamp_u32(~var_0.a.a >> (var_0.a.a % 32u), u_input.a.x, _wgslsmith_clamp_u32(~1u, var_0.a.a, ~u_input.a.x)), ~33326u);
    var var_3 = 2147483647i > arg_0.x;
    return select(vec4<bool>(!(_wgslsmith_clamp_u32(24127u, var_0.a.a, u_input.a.x) != (var_0.a.a | 33194u)), all(vec2<bool>(true, true)), all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), false)), all(vec2<bool>(true, true))), select(select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, !all(vec4<bool>(false, true, true, true)), true), !vec4<bool>(true, any(vec2<bool>(false, false)), false, true)), false);
}

fn func_1() -> f32 {
    let var_0 = !vec3<bool>(any(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true), func_2(vec3<i32>(-1i, 15264i, u_input.c)))), all(vec4<bool>(all(vec2<bool>(true, true)), true, func_2(vec3<i32>(7384i, u_input.c, u_input.c)).x, true)), (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 17499u, 17079u), vec4<u32>(79500u, 1u, u_input.a.x, u_input.a.x)) >> (_wgslsmith_mod_u32(14195u, 58927u) % 32u)) <= abs(u_input.b));
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, max(u_input.b, ~u_input.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 68654u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 18952u, u_input.b, 33913u)), u_input.a.x), vec4<u32>(u_input.a.x, max(u_input.b, u_input.a.x), firstLeadingBit(38009u), u_input.a.x | u_input.b) >> (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, 6499u, 0u, 62236u)), firstLeadingBit(vec4<u32>(u_input.a.x, 63690u, u_input.b, u_input.a.x))) % vec4<u32>(32u))) << (firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.b), vec4<u32>(u_input.a.x, 0u, 8327u, u_input.a.x)), ~vec4<u32>(52212u, 1u, 0u, 38615u)) ^ reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 36296u, 4294967295u))) % vec4<u32>(32u));
    var var_2 = Struct_3(select(!select(func_2(vec3<i32>(u_input.c, u_input.c, 26015i)), vec4<bool>(false, true, true, var_0.x), !vec4<bool>(var_0.x, false, false, var_0.x)), !(!(!vec4<bool>(true, var_0.x, true, var_0.x))), false), _wgslsmith_add_i32(u_input.c, firstTrailingBit(-(6491i << (u_input.a.x % 32u)))), ~(u_input.b & ~(~23282u)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1948f), vec2<f32>(-997f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1059f * 1000f)))), Struct_1(_wgslsmith_dot_vec2_u32(var_1.yw, ~vec2<u32>(4294967295u, var_1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -323f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -736f))))), vec4<bool>(var_0.x, any(select(var_0.xy, var_0.xy, false)), !var_0.x, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-863f, 572f), vec2<f32>(1769f, -483f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1640f, -476f), vec2<f32>(1928f, 1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(273f, 2447f)))));
    var_2 = Struct_3(var_2.d.e, -2147483647i, 0u, Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_2.e.x, var_2.e.x)), var_2.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1023f))), var_2.d.b, Struct_1(~abs(1u)), var_2.e.x, var_2.d.e), var_2.e);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(723f, -295f), vec2<f32>(320f, var_2.d.d)))), _wgslsmith_f_op_vec2_f32(var_2.d.b - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e.x, var_2.e.x) + _wgslsmith_f_op_vec2_f32(-var_2.e))))) - var_2.d.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1118f, var_2.d.a, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(true && all(vec4<bool>(false, true, true, false)), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-366f + 975f))) != _wgslsmith_f_op_f32(func_1())));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(447f, _wgslsmith_f_op_f32(f32(-1f) * -1565f))));
    let var_2 = (!all(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, true), vec3<bool>(var_0, var_0, false))) == any(select(select(vec3<bool>(var_0, true, var_0), vec3<bool>(true, var_0, true), vec3<bool>(false, var_0, var_0)), !vec3<bool>(true, var_0, true), vec3<bool>(true, true, true)))) | any(vec4<bool>(true, false, var_0, all(vec4<bool>(var_0, var_0, false, var_0))));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-672f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-680f - -1432f), 1f)))));
    let var_3 = _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(0u << (0u % 32u), u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b), vec4<u32>(u_input.a.x, 18248u, u_input.a.x, 4294967295u))), ~(~1u)) > ~_wgslsmith_clamp_u32(0u, max(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 9330u, u_input.b, u_input.b), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 20850u))), u_input.b);
    let var_4 = u_input.a.zy;
    var_1 = _wgslsmith_f_op_f32(min(196f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-478f, -1000f) + _wgslsmith_div_f32(-1331f, -609f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -984f)))));
    var_1 = 714f;
    var_1 = 1314f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-987f, 1276f, -911f)) - vec3<f32>(-1000f, 284f, -740f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(194f, -1341f, -1311f), vec3<f32>(426f, -1327f, -744f), vec3<bool>(var_2, var_0, false))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(982f, 1878f, -946f) + vec3<f32>(-819f, -979f, -590f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1731f, -166f, 601f)))))), -1000f, ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, ~u_input.a), ~u_input.a), ~u_input.c, 4294967295u);
}

