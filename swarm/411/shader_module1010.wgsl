struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 543f;

var<private> global1: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    let var_0 = (true & any(vec3<bool>(true, true, true))) && ((any(vec2<bool>(true, true)) == (u_input.a > -3393i)) | all(vec2<bool>(any(vec2<bool>(true, true)), true)));
    let var_1 = vec4<f32>(-1468f, _wgslsmith_div_f32(-1160f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1019f + -556f)), 1376f)), _wgslsmith_f_op_f32(max(299f, 2017f)), -397f);
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x)));
    var var_2 = vec3<u32>(global1.x, global1.x, _wgslsmith_mod_u32(1u, ~4294967295u & _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 18712u, 0u), vec3<u32>(19289u, 38962u, global1.x))) >> (_wgslsmith_div_u32(global1.x, ~max(108830u, 4294967295u)) % 32u));
    let var_3 = ~(abs(abs(vec3<u32>(global1.x, 7505u, 0u))) | ~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, u_input.b, 4294967295u), vec3<u32>(4294967295u, 76496u, 112421u))) ^ vec3<u32>(0u, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, 4294967295u, 131205u, 77554u)), vec4<u32>(~global1.x, _wgslsmith_mult_u32(var_2.x, 28473u), ~71091u, 1u)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(14336u, _wgslsmith_dot_vec2_u32(global1.zz, vec2<u32>(global1.x, global1.x)), ~var_2.x), var_2.x, 4294967295u));
    return ~countOneBits(var_3.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: vec2<f32>) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -548f);
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(568f, 258f, arg_1)) - _wgslsmith_f_op_f32(f32(-1f) * -347f)), Struct_2(_wgslsmith_mod_u32(8257u, global1.x)), vec2<f32>(-744f, -1000f)))) * 853f);
    var var_0 = _wgslsmith_mod_i32(firstLeadingBit(arg_0), _wgslsmith_clamp_i32(u_input.a, arg_0 & arg_0, 3299i));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-977f, _wgslsmith_f_op_f32(904f - -1000f))))));
    let var_1 = vec4<i32>(firstTrailingBit(_wgslsmith_div_i32(~(i32(-1i) * -34462i), arg_0 >> (u_input.c % 32u))), -51019i, _wgslsmith_mod_i32(-1i, 14589i), abs(2147483647i));
    return Struct_2(4294967295u);
}

fn func_5(arg_0: Struct_2) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-730f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-716f + -247f), _wgslsmith_f_op_f32(f32(-1f) * -611f)))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -186f))))));
    var var_0 = vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec2<bool>(true, false)))) || false, 1u <= ~(countOneBits(u_input.b) | ~21701u));
    global1 = ~vec3<u32>(~u_input.c, arg_0.a, u_input.b);
    var var_1 = -firstTrailingBit(_wgslsmith_mult_i32(-1i, 0i));
    var_1 = ~_wgslsmith_clamp_i32(~(~(u_input.a ^ 60219i)), i32(-1i) * -_wgslsmith_mult_i32(u_input.a, 34194i), u_input.d);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1645f))));
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: vec2<f32>) -> Struct_3 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_2(~u_input.a, all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * 575f), func_2(2147483647i, all(!vec2<bool>(arg_0, arg_0))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(-arg_2)), _wgslsmith_f_op_vec2_f32(-arg_2)))), _wgslsmith_f_op_f32(sign(arg_2.x)));
    return Struct_3(Struct_1(all(!(!vec2<bool>(false, arg_0))), _wgslsmith_dot_vec2_u32(global1.yy, global1.zz), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, u_input.d, 48379i, u_input.d), vec4<i32>(0i, u_input.d, u_input.d, -1i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, -2147483647i, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.d, -1i))), arg_2.x, min(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(global1.xx, global1.zz), global1.zz), _wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.b, global1.x), global1.xz, vec2<bool>(arg_0, arg_0)), ~vec2<u32>(63503u, 7331u)))), func_2(-_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.a, u_input.d, u_input.d)), firstTrailingBit(vec3<i32>(u_input.d, -7174i, u_input.d))), !arg_0), vec3<bool>(all(!select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, true))), arg_0, arg_0), 0u, Struct_2(1u));
}

fn func_1() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(291f)), 534f, 1742f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -730f), 510f, _wgslsmith_f_op_f32(1000f - 734f), _wgslsmith_f_op_f32(min(276f, -846f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(711f, 641f, -1472f, 1289f) - vec4<f32>(-211f, 124f, 256f, 672f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-137f, 863f, -540f, -298f), vec4<f32>(1036f, -1750f, -930f, -1082f)))))))));
    var var_1 = func_6(true, _wgslsmith_mult_u32(1u, ~global1.x), vec2<f32>(_wgslsmith_f_op_f32(func_5(func_2(~u_input.d, u_input.b < 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-326f, -969f)))))));
    var var_2 = func_6(!all(var_1.c), _wgslsmith_dot_vec2_u32(~global1.yy, vec2<u32>(36326u, 7165u)), _wgslsmith_f_op_vec2_f32(-var_0.yy)).e;
    let var_3 = func_6(false, var_2.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, 279f)) + var_1.a.d))))).c.xx;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)));
    return -_wgslsmith_mod_vec4_i32(-select(reverseBits(vec4<i32>(var_1.a.c.x, u_input.a, 29232i, var_1.a.c.x)), ~vec4<i32>(var_1.a.c.x, var_1.a.c.x, var_1.a.c.x, u_input.d), select(vec4<bool>(var_3.x, true, var_3.x, var_1.a.a), vec4<bool>(var_3.x, var_3.x, var_1.a.a, var_1.c.x), var_1.a.a)), vec4<i32>(-1i) * -var_1.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-10883i, ~2237i, _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(-1i, -74399i, u_input.a)), countOneBits(vec3<i32>(26795i, u_input.d, -7229i))), vec3<i32>(u_input.d, ~u_input.d & 2147483647i, -1i)), u_input.a);
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-407f)) + -393f)));
    var_0 = -abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.d, -2147483647i), vec4<i32>(49712i, var_0.x, var_0.x, var_0.x)) | func_1(), ~vec4<i32>(u_input.a, -34376i, -2147483647i, u_input.a), select(-vec4<i32>(u_input.a, var_0.x, 13669i, u_input.a), select(vec4<i32>(10597i, var_0.x, 18475i, 14382i), vec4<i32>(9477i, 0i, -29076i, u_input.a), true), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(224f, 407f, 374f, -826f) - vec4<f32>(1101f, -114f, -1811f, 1078f))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-287f, 1000f, -799f, -769f)), vec4<f32>(-1872f, -793f, -591f, -271f))))), ~(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, global1.x), vec4<u32>(4294967295u, 36104u, 4294967295u, 1u))) ^ firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 1u, 1u, global1.x), vec4<u32>(1u, 24118u, 115566u, 12380u)))), u_input.d << (~(4294967295u | global1.x) % 32u), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1303f) * 104f), -945f, _wgslsmith_f_op_f32(trunc(-773f))))));
}

