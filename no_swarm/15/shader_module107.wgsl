struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = Struct_1(select(arg_0, true & arg_0, all(vec2<bool>(arg_0, any(vec4<bool>(arg_0, arg_0, false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1643f, _wgslsmith_f_op_f32(max(-432f, -605f)), 1146f, _wgslsmith_f_op_f32(min(625f, -589f))))));
    let var_1 = var_0;
    var var_2 = Struct_1(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1.b.x, -1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * _wgslsmith_div_f32(649f, var_1.b.x))), var_0.b.x, var_0.b.x, 222f));
    var_2 = var_0;
    let var_3 = var_0;
    return _wgslsmith_add_vec4_i32((reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -2147483647i, 2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.c, -4119i, u_input.b.x))) | select(vec4<i32>(0i, -7643i, 61834i, u_input.c), max(vec4<i32>(-2942i, 13771i, 0i, -2147483647i), vec4<i32>(u_input.c, u_input.a, 32786i, u_input.b.x)), vec4<bool>(false, var_3.a, var_1.a, false))) >> (select(~vec4<u32>(76009u, 1u, 1u, 0u), vec4<u32>(16u >> (0u % 32u), 25388u, _wgslsmith_mod_u32(4294967295u, 5992u), ~26776u), vec4<bool>(true, false, any(vec3<bool>(false, true, true)), 0i >= u_input.a)) % vec4<u32>(32u)), vec4<i32>(max(-u_input.c, u_input.a << (94880u % 32u)), u_input.b.x, -_wgslsmith_mult_i32(u_input.c, u_input.a), _wgslsmith_clamp_i32(u_input.c, -31174i | u_input.b.x, ~u_input.a)) ^ (vec4<i32>(u_input.a, u_input.b.x, 8690i, _wgslsmith_sub_i32(1i, -1i)) << (~(~vec4<u32>(49099u, 75926u, 4294967295u, 35737u)) % vec4<u32>(32u))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: i32) -> vec4<u32> {
    var var_0 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(arg_0.b, u_input.a), u_input.c, -u_input.c, ~(-7298i)), -vec4<i32>(arg_2, -52592i, arg_2, -1i)), (~u_input.c | 61648i) << (42360u % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, arg_2, u_input.a, 1i) << (arg_1 % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 8692i, -2147483647i, arg_0.b), vec4<i32>(arg_2, u_input.a, 1i, 21340i)), vec4<i32>(arg_0.b, arg_0.b, u_input.c, 32535i)), -func_3(true)), 0i);
    var var_1 = select(select(!vec4<bool>(true, arg_0.b != arg_0.b, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(!(select(true, false, false) | true), false, abs(arg_1.x) <= arg_0.c.x, !any(vec4<bool>(true, true, true, true))), true);
    var var_2 = Struct_2(19028i, !(!select(true, false == var_1.x, arg_0.a != 669f)), ~arg_0.c.zz, Struct_1(true, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-116f, arg_0.a, 246f, 490f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, -1138f, 1000f, 1476f), vec4<f32>(-1344f, arg_0.a, arg_0.a, 1000f), vec4<bool>(true, false, var_1.x, var_1.x)))))))), true && select(var_1.x, any(!vec4<bool>(true, false, var_1.x, var_1.x)), _wgslsmith_f_op_f32(trunc(859f)) < _wgslsmith_f_op_f32(arg_0.a - arg_0.a)));
    var var_3 = _wgslsmith_dot_vec3_u32(max(~arg_1.zwz, arg_0.c), max(vec3<u32>(arg_1.x, ~abs(arg_1.x), ~arg_1.x), ~countOneBits(~arg_0.c)));
    let var_4 = Struct_2(-1i, true, vec2<u32>(select(20586u, var_2.c.x, false), reverseBits(arg_0.c.x) | firstLeadingBit(max(arg_1.x, 4294967295u))), var_2.d, ~arg_2 >= _wgslsmith_div_i32(7356i, var_0.x));
    return min(~(~min(vec4<u32>(var_2.c.x, 0u, 4294967295u, var_2.c.x), arg_1)) | (_wgslsmith_clamp_vec4_u32(arg_1, arg_1, vec4<u32>(1186u, 1u, 9063u, 23378u)) & (~arg_1 << (max(arg_1, arg_1) % vec4<u32>(32u)))), arg_1);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, ~38823u), vec2<u32>(1u, 1u)), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 1u), ~(~vec2<u32>(1u, 1u))));
    let var_1 = _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, ~var_0.x, 1u, 1u), ~(~vec4<u32>(4294967295u, var_0.x, 0u, 55030u)), !(true != arg_1.a)), func_2(Struct_3(_wgslsmith_f_op_f32(floor(arg_1.b.x)), abs(-1i), _wgslsmith_add_vec3_u32(vec3<u32>(17121u, var_0.x, 12793u), vec3<u32>(var_0.x, 1u, var_0.x))), vec4<u32>(~var_0.x, 0u, _wgslsmith_mod_u32(18062u, var_0.x), 1546u), -39798i ^ u_input.b.x)) > _wgslsmith_div_u32(~var_0.x, 5755u);
    let var_2 = Struct_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -893f, 1000f, _wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_vec4_f32(floor(arg_1.b))));
    let var_3 = select(!select(!select(vec2<bool>(true, true), vec2<bool>(var_1, var_1), true), !select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, true), vec2<bool>(var_2.a, arg_1.a)), true), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, var_2.a), vec2<bool>(arg_2, arg_1.a), true), false), !select(vec2<bool>(var_1, arg_1.a), vec2<bool>(false, arg_2), vec2<bool>(var_1, arg_1.a)), true), vec2<bool>(arg_2, true));
    var_0 = select(vec2<u32>(~(~_wgslsmith_mod_u32(1u, 32369u)), ~(var_0.x << (74148u % 32u))), _wgslsmith_div_vec2_u32(~(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 2853u), vec2<u32>(var_0.x, var_0.x)) << ((vec2<u32>(17701u, var_0.x) << (vec2<u32>(76752u, 46481u) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<u32>(var_0.x, ~0u)), vec2<bool>(any(vec2<bool>(var_2.a | arg_2, any(vec4<bool>(true, arg_2, false, true)))), var_1));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(58371u, 1u << (countOneBits(_wgslsmith_add_u32(18717u, 0u)) % 32u));
    var var_1 = 0u;
    let var_2 = _wgslsmith_mult_u32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -860f), Struct_1(false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1343f, -789f, 114f, -876f))), !all(vec4<bool>(false, false, false, false))), select(~60186u, _wgslsmith_sub_u32(var_0.x, var_0.x), true) << (var_0.x % 32u)) << (71770u % 32u);
    var_0 = ~(min(firstTrailingBit(vec2<u32>(61023u, 4294967295u)), min(~vec2<u32>(var_2, 3725u), _wgslsmith_div_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(19664u, var_2)))) >> (select(max(countOneBits(vec2<u32>(1u, 32453u)), ~vec2<u32>(0u, 1u)), ~vec2<u32>(var_2, 1u) | vec2<u32>(var_0.x, 1u), vec2<bool>(true, true)) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(-26094i, abs(-32093i), u_input.b.x)), -u_input.b);
    let var_4 = !(!vec3<bool>(!all(vec3<bool>(false, false, false)), !any(vec4<bool>(false, false, true, false)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))));
    let var_5 = Struct_2(_wgslsmith_mult_i32(0i, 0i), var_4.x, _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, var_2) << (~abs(vec2<u32>(var_2, 0u)) % vec2<u32>(32u)), countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2, var_0.x), vec2<u32>(0u, var_0.x)) | vec2<u32>(var_2, 8129u))), Struct_1(any(select(vec4<bool>(var_4.x, var_4.x, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_4.x, true, false), vec4<bool>(false, var_4.x, false, true)), all(vec3<bool>(var_4.x, true, var_4.x)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(1040f, 312f)), -174f, _wgslsmith_f_op_f32(f32(-1f) * -409f), -2189f)))), true);
    let var_6 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-760f, var_5.d.b.x), _wgslsmith_f_op_f32(step(608f, _wgslsmith_f_op_f32(var_5.d.b.x + var_5.d.b.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1300f + -833f), 408f))), 400f);
    var_0 = ~vec2<u32>(var_0.x, (~1u >> ((1u & var_0.x) % 32u)) >> (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c, vec4<i32>(u_input.c, _wgslsmith_add_i32(-func_3(true).x, u_input.c), var_5.a, -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_5.a, var_3), u_input.b.yz), var_5.a ^ 21443i)), vec3<u32>(22936u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(65156u, ~1u, 4294967295u), vec3<u32>(reverseBits(33284u), _wgslsmith_sub_u32(4294967295u, 0u), _wgslsmith_mod_u32(1u, 49983u)))), countOneBits(select(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(var_3, var_5.a, -1i, u_input.b.x)), vec4<i32>(29897i, 37329i, -2147483647i, u_input.c), func_3(false)), vec4<i32>(~(-49832i), -526i, abs(var_3), var_3), 1u <= var_2)));
}

