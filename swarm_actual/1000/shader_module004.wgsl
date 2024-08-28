struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(round(1345f));
    let var_1 = arg_3.a;
    let var_2 = ~(~_wgslsmith_mod_u32(arg_3.a.a, 2812u));
    var var_3 = abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.a.a, 0u, firstLeadingBit(93553u), ~arg_3.a.a) << (~(~vec4<u32>(arg_0.a.a, u_input.e, 11105u, arg_0.a.a)) % vec4<u32>(32u)), vec4<u32>(u_input.a, _wgslsmith_sub_u32(1u, var_2), arg_3.a.a, var_2), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.a, 4294967295u, 20090u, 4294967295u), ~abs(vec4<u32>(1u, 1u, u_input.e, 1u)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-338f, _wgslsmith_f_op_f32(round(-1855f)), 930f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-402f, arg_0.a.b, var_1.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.b, var_1.d, arg_0.a.d)))))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(605f + -1537f))), _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(f32(-1f) * -2374f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(663f + arg_0.a.d)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, 646f, 129f)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.d, -910f, -1977f) + vec3<f32>(1697f, arg_0.a.b, var_0)))))));
    return _wgslsmith_sub_u32(97146u, _wgslsmith_dot_vec2_u32(~(~var_3.zz), _wgslsmith_add_vec2_u32(~vec2<u32>(61996u, 1u), vec2<u32>(1u, 4294967295u) << (vec2<u32>(var_1.a, u_input.e) % vec2<u32>(32u))))) <= 0u;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> Struct_3 {
    let var_0 = Struct_1(4294967295u, -683f, vec4<bool>(true, (false && any(vec3<bool>(true, false, false))) | select(u_input.d < u_input.c, arg_1, func_3(Struct_2(Struct_1(0u, 1000f, vec4<bool>(false, false, false, arg_1), 2273f), true, u_input.b.x), vec2<bool>(arg_1, true), vec4<bool>(true, arg_1, true, arg_1), Struct_2(Struct_1(u_input.a, -565f, vec4<bool>(arg_1, arg_1, true, arg_1), 134f), true, -2147483647i))), arg_1, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2163f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(871f + -1309f)))));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(128f)))), var_0.b) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), var_0.b), _wgslsmith_f_op_f32(var_0.d - var_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1224f, -787f))));
    let var_3 = select(~(-u_input.c | 15949i), firstLeadingBit(_wgslsmith_add_i32(-47189i, _wgslsmith_mult_i32(-22486i, countOneBits(u_input.b.x)))), var_0.c.x);
    var var_4 = _wgslsmith_mod_vec3_u32(select(arg_0, ~arg_0, all(vec2<bool>(false, !var_0.c.x))), vec3<u32>(6198u << (countOneBits(76731u ^ u_input.e) % 32u), 48911u, var_0.a));
    return Struct_3(min(vec4<u32>(1u, 65012u, ~(~1u), var_1 ^ _wgslsmith_div_u32(var_0.a, var_4.x)), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~arg_0, _wgslsmith_div_vec3_u32(arg_0, vec3<u32>(1u, var_0.a, var_4.x))), select(120719u, var_1, true), ~max(var_4.x, arg_0.x))));
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    let var_0 = true;
    var var_1 = func_2(arg_0.a.www, any(vec3<bool>(false, -u_input.d > u_input.d, var_0)));
    var_1 = Struct_3(_wgslsmith_add_vec4_u32(abs(~vec4<u32>(u_input.e, u_input.a, 1u, var_1.a.x)) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(51715u, var_1.a.x, 76094u, var_1.a.x), arg_0.a), min(arg_0.a, arg_0.a)), countOneBits(~(~vec4<u32>(48202u, arg_0.a.x, var_1.a.x, arg_0.a.x)))));
    var var_2 = Struct_1(~_wgslsmith_add_u32(~(~var_1.a.x), arg_0.a.x), -1733f, select(!(!vec4<bool>(var_0, var_0, var_0, false)), !select(vec4<bool>(var_0, false, true, var_0), vec4<bool>(true, true, true, true), vec4<bool>(false, var_0, false, var_0)), select(!vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(!var_0, select(var_0, false, var_0), true, var_1.a.x >= arg_0.a.x), vec4<bool>(true, all(vec2<bool>(true, true)), func_3(Struct_2(Struct_1(0u, -867f, vec4<bool>(false, true, false, var_0), 843f), var_0, 2147483647i), vec2<bool>(var_0, var_0), vec4<bool>(true, false, var_0, true), Struct_2(Struct_1(1u, 1684f, vec4<bool>(false, false, false, var_0), -470f), var_0, 0i)), all(vec3<bool>(var_0, true, var_0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(253f))) + 549f), 309f));
    var var_3 = Struct_1(var_1.a.x, -652f, !(!(!var_2.c)), var_2.b);
    return Struct_4(21565u, var_2.d);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = Struct_1(u_input.e, _wgslsmith_f_op_f32(sign(arg_3)), arg_0.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f) - 350f), arg_3, _wgslsmith_f_op_f32(-1249f * 127f) > _wgslsmith_f_op_f32(arg_0.a.d + arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(438f, 805f))))));
    var var_1 = func_4(func_2(vec3<u32>(max(1u, 79549u ^ var_0.a), ~var_0.a, firstTrailingBit(var_0.a)), false));
    var_1 = Struct_4(~u_input.e, _wgslsmith_f_op_f32(-arg_0.a.b));
    var_1 = func_4(func_2(vec3<u32>(_wgslsmith_mult_u32(reverseBits(22773u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.e, var_1.a), vec3<u32>(32512u, var_0.a, 1u))), 43231u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 37598u), abs(vec3<u32>(31042u, var_0.a, 1u)))), any(!select(vec3<bool>(true, false, true), arg_0.a.c.yww, true))));
    let var_2 = u_input.b;
    return ~(~func_4(func_2(firstLeadingBit(vec3<u32>(1u, 32181u, u_input.a)), !arg_1)).a);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = arg_0.a;
    let var_1 = Struct_3(~vec4<u32>(~countOneBits(10361u), func_2(vec3<u32>(1u, 69646u, 0u), var_0.c.x).a.x ^ u_input.e, select(arg_0.a.a, countOneBits(u_input.e), true), ~arg_0.a.a >> (u_input.e % 32u)));
    let var_2 = Struct_3(~countOneBits(var_1.a));
    let var_3 = ~vec4<u32>(abs(func_4(var_2).a), ~var_0.a, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(var_2.a.yy, var_2.a.wy), 49542u), 0u);
    let var_4 = 1f;
    return -671f;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = 1u;
    let var_1 = select(arg_1.c.wz, arg_1.c.xy, false);
    let var_2 = Struct_1(36324u, arg_1.d, arg_1.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-262f)), 541f, !var_1.x))))));
    var var_3 = _wgslsmith_div_u32(_wgslsmith_div_u32(42888u | var_2.a, _wgslsmith_dot_vec4_u32(~max(vec4<u32>(arg_3.x, arg_1.a, 5528u, 4294967295u), vec4<u32>(arg_1.a, arg_3.x, u_input.a, var_0)), vec4<u32>(0u, select(var_0, 9336u, false), 4294967295u, ~var_2.a))), _wgslsmith_dot_vec2_u32(arg_3.xx, vec2<u32>(4294967295u, ~1u)));
    var var_4 = select(~select(1i, arg_0.x, all(arg_1.c)), 9099i, true & arg_1.c.x);
    return Struct_1(~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.e, u_input.a), _wgslsmith_mod_u32(var_0 ^ 0u, 20178u)), -1327f, vec4<bool>(var_1.x, true, var_1.x, !(!select(false, true, false))), arg_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 9920u ^ ~(~(u_input.e | (51527u | u_input.a)));
    let var_1 = Struct_2(func_6(~_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(28085i, u_input.d), u_input.b.zz, u_input.b.wx), ~u_input.b.xx), Struct_1(1u, 1000f, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(1570u, 903f, vec4<bool>(true, true, false, false), 1290f), true, -20300i), vec2<bool>(true, true), any(vec3<bool>(true, false, false)), func_1(Struct_2(Struct_1(u_input.a, -434f, vec4<bool>(true, true, false, false), -1385f), true, 31269i), false, false, 191f)))), 1i << (firstTrailingBit(4294967295u) % 32u), ~vec3<u32>(_wgslsmith_sub_u32(10587u, u_input.e), u_input.e, u_input.e)), false, ~_wgslsmith_dot_vec3_i32(u_input.b.yyw, vec3<i32>(firstTrailingBit(-2147483647i), -1i, 2147483647i)));
    var_0 = u_input.e;
    let var_2 = ~vec3<u32>(var_1.a.a, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.e, var_1.a.a), min(vec4<u32>(u_input.a, var_1.a.a, 4294967295u, 0u), vec4<u32>(u_input.e, var_1.a.a, 20077u, 17366u)))) ^ vec3<u32>(_wgslsmith_add_u32(1u, select(1u, _wgslsmith_mod_u32(12682u, var_1.a.a), var_1.a.a > 46867u)), var_1.a.a, 4294967295u);
    let var_3 = func_4(Struct_3(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 30959u, 45405u), vec4<u32>(0u, 1u, var_2.x, u_input.e)), vec4<u32>(_wgslsmith_add_u32(4294967295u, u_input.e), var_1.a.a, _wgslsmith_sub_u32(43074u, var_1.a.a), 84814u), abs(func_2(var_2, var_1.a.c.x).a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3026f)));
}

