struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: f32) -> i32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(418f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))))) - _wgslsmith_f_op_f32(-arg_2));
    var var_0 = Struct_3(select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false)), true), select(vec2<bool>(true, false), vec2<bool>(arg_0.x < arg_0.x, true), true)), abs(vec4<u32>(u_input.a, u_input.a, ~54788u, u_input.a) >> (max(vec4<u32>(38969u, u_input.a, 0u, 0u), vec4<u32>(u_input.a, 707u, u_input.a, 0u)) % vec4<u32>(32u))), Struct_1(8153i, vec4<bool>(false, all(vec4<bool>(true, true, true, true)), true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_2)))), -1168f, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(704f + arg_2)), -2209f), false), Struct_1(arg_0.x, vec4<bool>(!(-555f >= arg_2), u_input.a != u_input.a, true, all(vec4<bool>(true, true, true, true))), vec4<f32>(-592f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1112f, arg_2)) - _wgslsmith_f_op_f32(arg_2 * -278f))), all(vec3<bool>(any(vec3<bool>(false, true, true)), any(vec3<bool>(false, false, false)), any(vec2<bool>(true, false))))));
    var var_1 = Struct_2(i32(-1i) * -20433i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1201f, _wgslsmith_f_op_f32(arg_2 - var_0.c.c.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(arg_2, arg_2)))), var_0.c.c.x);
    let var_2 = Struct_2(arg_1.x, _wgslsmith_f_op_f32(abs(-112f)), -311f);
    let var_3 = vec3<f32>(var_0.c.c.x, 1140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-782f, var_0.d.c.x)) - _wgslsmith_f_op_f32(step(var_1.b, var_1.c)))))));
    return -43891i;
}

fn func_2(arg_0: bool) -> vec4<u32> {
    let var_0 = !(!(!select(vec2<bool>(false, false), !vec2<bool>(arg_0, arg_0), any(vec2<bool>(false, false)))));
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(~min(~(-51634i), _wgslsmith_mult_i32(-40613i, -32709i)), _wgslsmith_sub_i32(-func_3(vec3<i32>(23439i, 0i, -40489i), vec4<i32>(-2147483647i, 34288i, 0i, -3507i), 418f), 2147483647i)), ~_wgslsmith_div_i32(0i, -6976i));
    let var_2 = _wgslsmith_f_op_f32(min(-1562f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1128f * _wgslsmith_f_op_f32(select(-306f, 314f, true))))) + _wgslsmith_f_op_f32(floor(1350f)))));
    let var_3 = vec4<i32>(1i, -var_1.x, var_1.x, var_1.x << (1u % 32u)) ^ vec4<i32>(~10342i, 21286i << (u_input.a % 32u), ~var_1.x, var_1.x);
    global1 = 15025u;
    return _wgslsmith_mult_vec4_u32(abs(~(countOneBits(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) >> (max(vec4<u32>(u_input.a, u_input.a, u_input.a, 20802u), vec4<u32>(u_input.a, 45707u, u_input.a, 38883u)) % vec4<u32>(32u)))), ~(~vec4<u32>(u_input.a, u_input.a, 50473u, u_input.a)));
}

fn func_1() -> bool {
    global1 = u_input.a;
    global1 = ~7556u;
    let var_0 = Struct_3(!select(vec2<bool>(true, true), vec2<bool>(false, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), _wgslsmith_clamp_vec4_u32(vec4<u32>(33294u, u_input.a >> (1u % 32u), u_input.a, (u_input.a >> (73807u % 32u)) ^ _wgslsmith_add_u32(44286u, u_input.a)), func_2(false) & max(vec4<u32>(u_input.a, u_input.a, 42836u, u_input.a), select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(true, false, false, false))), ~vec4<u32>(u_input.a, u_input.a, 60448u, u_input.a) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 47097u, 83239u), countOneBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), select(vec4<u32>(u_input.a, u_input.a, 81609u, u_input.a), vec4<u32>(20471u, 1u, u_input.a, 4294967295u), true))), Struct_1(firstLeadingBit(abs(~11023i)), vec4<bool>(select(false, false, false), true, true, true), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 100f, 773f, -1112f))))))), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))) & false), Struct_1(0i, vec4<bool>(select(true, true, true), select(true, any(vec3<bool>(false, true, true)), 4294967295u > u_input.a), abs(47646u) < _wgslsmith_sub_u32(1u, u_input.a), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-537f, 370f, -862f, -1622f) * vec4<f32>(-1000f, 604f, 479f, 1315f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(626f, -530f, -105f, 360f)))), !(!select(true, true, true))));
    global1 = 73003u;
    let var_1 = !(false != all(!select(vec2<bool>(var_0.d.d, var_0.d.d), vec2<bool>(true, false), var_0.c.b.x)));
    return !(!all(var_0.a));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<i32>) -> vec2<bool> {
    let var_0 = true;
    let var_1 = _wgslsmith_sub_vec3_i32(~(~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.x, 18857i, -30339i), select(vec3<i32>(1i, 0i, -2147483647i), vec3<i32>(arg_2.x, arg_2.x, -45622i), true))), vec3<i32>(~(~arg_2.x), ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_2.x, arg_2.x, arg_2.x), -24i), -2147483647i));
    let var_2 = reverseBits(arg_2.x);
    let var_3 = -5387i;
    var var_4 = Struct_1(countOneBits(arg_2.x), !vec4<bool>(any(vec2<bool>(false, true)) & (var_1.x > var_2), !var_0, all(vec3<bool>(false, var_0, arg_1)), true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-435f, -1457f, -529f, 351f)) - vec4<f32>(1f, 1f, 1f, 1f)))), all(select(!(!vec3<bool>(true, true, arg_1)), vec3<bool>(!var_0, var_0, true), vec3<bool>(!var_0, any(vec3<bool>(arg_1, var_0, var_0)), var_0))));
    return vec2<bool>(var_1.x >= var_2, 60274u != u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(!func_4(vec2<u32>(0u, 1u), func_1(), select(vec2<i32>(-17265i, 1i), vec2<i32>(-61782i, 1i), true)), vec2<bool>(true, any(vec2<bool>(false, true)) == true), func_4(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(40000u, 0u)), vec2<u32>(1u, u_input.a), select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 26562u), vec2<bool>(true, true))), true, vec2<i32>(1i, 1i)).x), firstTrailingBit(vec4<u32>(1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 4294967295u)) % 32u), _wgslsmith_mod_u32(~29717u, 112208u), abs(u_input.a), countOneBits(select(u_input.a, 13476u, true)))), Struct_1(func_3(vec3<i32>(~0i, reverseBits(-69293i), func_3(vec3<i32>(291i, -1i, 1i), vec4<i32>(-47575i, 54395i, -1i, -38637i), 546f)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(-2147483647i, 1i, 20613i, -18918i), vec4<i32>(1i, 0i, -1i, -1i), false), vec4<i32>(-2147483647i, -638i, -2074i, -20413i)), -616f), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), any(vec3<bool>(true, false, true)) || any(vec3<bool>(false, true, true))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(240f, -774f, -1382f, 829f), vec4<f32>(-154f, -1017f, 701f, -730f)))))), !select(true, true, true)), Struct_1(9337i, vec4<bool>(true, true, true, !all(vec3<bool>(false, true, true))), vec4<f32>(-767f, _wgslsmith_f_op_f32(sign(-739f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(722f * -293f), _wgslsmith_f_op_f32(f32(-1f) * -560f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1199f * -782f) + 1001f)), !all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))));
    let var_1 = Struct_2(1i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.d.c.x - var_0.c.c.x))), 218f)), -660f);
    var var_2 = _wgslsmith_f_op_f32(round(1000f));
    global1 = _wgslsmith_sub_u32(9927u & var_0.b.x, _wgslsmith_dot_vec3_u32(~var_0.b.zyw, vec3<u32>(1u, ~var_0.b.x, 19209u << (u_input.a % 32u))));
    var var_3 = -var_1.a;
    var var_4 = Struct_3(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(var_0.a.x, var_0.d.b.x), vec2<bool>(false, true)), true), var_0.a, true), var_0.d.b.yw, !var_0.d.b.yx), ~var_0.b | var_0.b, Struct_1(_wgslsmith_add_i32(-var_0.c.a, -21057i), vec4<bool>(!(!var_0.a.x), select(select(false, var_0.c.d, var_0.c.d), true, var_0.c.d), var_0.c.d, func_4(~vec2<u32>(var_0.b.x, 66030u), select(var_0.c.b.x, var_0.c.d, var_0.a.x), vec2<i32>(var_0.d.a, var_1.a)).x), var_0.c.c, _wgslsmith_mod_u32(~var_0.b.x, 0u) != _wgslsmith_add_u32(~4116u, _wgslsmith_sub_u32(u_input.a, 4294967295u))), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_1.a & var_4.c.a, i32(-1i) * -_wgslsmith_mod_i32(var_4.c.a, 1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_4.d.c.x, var_4.c.c.x)) - _wgslsmith_f_op_f32(floor(256f))), _wgslsmith_f_op_f32(-var_4.c.c.x), -337f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c, var_1.b, -106f), vec3<f32>(-916f, var_4.c.c.x, -844f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(639f + _wgslsmith_f_op_f32(f32(-1f) * -505f))), ~countOneBits(var_0.b.x), vec2<u32>(1u, ~var_0.b.x));
}

