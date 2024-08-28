struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = arg_1.d.xx;
    let var_1 = 44684u;
    var_0 = ~reverseBits(~(~vec2<u32>(var_0.x, 85087u)));
    var_0 = ~select(select(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(arg_1.c, 1u)), countOneBits(~u_input.a), arg_1.a), ~(select(vec2<u32>(arg_1.d.x, u_input.e), vec2<u32>(4294967295u, 15556u), true) >> (firstTrailingBit(vec2<u32>(32499u, u_input.a.x)) % vec2<u32>(32u))), select(select(!vec2<bool>(false, arg_1.a.x), !vec2<bool>(false, arg_0), !arg_1.a), vec2<bool>(arg_1.a.x, true), select(vec2<bool>(false, arg_0), !arg_1.a, !arg_1.a.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-604f)))), _wgslsmith_div_f32(-962f, _wgslsmith_f_op_f32(f32(-1f) * -237f)), -590f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(167f + _wgslsmith_f_op_f32(exp2(1f))))));
    return var_2.x;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> Struct_3 {
    var var_0 = arg_1;
    let var_1 = Struct_2(Struct_1(vec2<bool>(arg_2.a.a.x, any(!vec4<bool>(false, arg_2.a.a.x, true, arg_2.a.a.x))), ~1i, 52070u, vec4<u32>(arg_1.d.x, 46875u, ~arg_3 & arg_2.a.c, arg_2.a.d.x)));
    var_0 = arg_2.a;
    let var_2 = u_input.b;
    let var_3 = -42533i;
    return Struct_3(Struct_2(arg_2.a), !(!select(vec3<bool>(true, arg_1.a.x, true), select(vec3<bool>(var_0.a.x, false, true), vec3<bool>(var_1.a.a.x, var_0.a.x, false), true), !vec3<bool>(var_0.a.x, var_0.a.x, arg_1.a.x))));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = 0u;
    let var_1 = arg_0.a;
    var_0 = ~(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, max(u_input.a.x, 1u)), 63405u) << (1u % 32u));
    let var_2 = func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2338f, 913f, _wgslsmith_f_op_f32(func_2(false, Struct_1(arg_0.a.a.a, 12455i, arg_0.a.a.c, var_1.a.d), 2147483647i)))), arg_0.a.a, Struct_2(Struct_1(!var_1.a.a, 2147483647i & _wgslsmith_clamp_i32(arg_0.a.a.b, arg_0.a.a.b, var_1.a.b), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, arg_2), vec3<u32>(arg_2, u_input.a.x, 1u)), _wgslsmith_sub_vec4_u32(var_1.a.d, arg_0.a.a.d))), arg_0.a.a.c);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-140f, 221f))), _wgslsmith_f_op_f32(round(-804f)), _wgslsmith_f_op_f32(ceil(-1000f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(351f, -1000f, 319f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(-322f)), _wgslsmith_f_op_f32(min(301f, -205f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(-1253f, -568f, _wgslsmith_f_op_f32(round(-239f))))));
    return func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, 357f, var_3.x), vec3<f32>(var_3.x, var_3.x, var_3.x))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -797f, var_3.x) * vec3<f32>(var_3.x, 1952f, var_3.x))))))), func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(-175f, var_3.x)), _wgslsmith_f_op_f32(round(333f)), _wgslsmith_f_op_f32(sign(var_3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1501f, -146f, -139f))), !select(vec3<bool>(false, var_2.a.a.a.x, false), arg_0.b, vec3<bool>(var_1.a.a.x, false, false)))), arg_0.a.a, Struct_2(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -1474f, 1388f)), Struct_1(var_2.b.xx, -2147483647i, 1u, var_1.a.d), var_1, 0u).a.a), ~_wgslsmith_add_u32(arg_0.a.a.d.x, ~25815u)).a.a, arg_0.a, reverseBits(_wgslsmith_add_u32(5679u, var_2.a.a.d.x)) >> (_wgslsmith_add_u32(_wgslsmith_div_u32(23149u, _wgslsmith_dot_vec3_u32(var_1.a.d.xwy, u_input.c.zxy)), arg_2) % 32u)).a.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = vec2<bool>(!select(arg_0.a.a.a.x, all(vec2<bool>(arg_1.a.a.x, false)), arg_1.a.a.x), !arg_1.a.a.x);
    let var_1 = (35914i >= arg_1.a.b) && var_0.x;
    var_0 = vec2<bool>(var_0.x, func_1(arg_0, true, 4294967295u).a.x & true);
    var var_2 = vec2<u32>(~(~arg_1.a.d.x ^ ~(77212u >> (u_input.c.x % 32u))), u_input.e);
    let var_3 = arg_1;
    return ~vec4<i32>(~_wgslsmith_div_i32(-var_3.a.b, ~3648i), select(0i & _wgslsmith_sub_i32(u_input.d.x, 19946i), arg_1.a.b, any(vec2<bool>(false, true))), arg_0.a.a.b, var_3.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3(Struct_2(func_1(Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), 0i, u_input.c.x, u_input.c)), vec3<bool>(false, true, false)), true, firstTrailingBit(32934u))), vec3<bool>(true, false, !(u_input.c.x < u_input.c.x))), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(169f, 222f, 1440f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-326f, -1000f, -351f), vec3<f32>(1309f, -496f, -858f))), vec3<f32>(208f, 1382f, -2036f)))), Struct_1(vec2<bool>(true, true), u_input.b, ~37600u, u_input.c), Struct_2(func_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(279f, 265f, -678f), vec3<f32>(713f, -1000f, -150f))), Struct_1(vec2<bool>(false, false), 2147483647i, u_input.c.x, vec4<u32>(u_input.a.x, u_input.e, 0u, u_input.a.x)), Struct_2(Struct_1(vec2<bool>(false, true), 2147483647i, u_input.c.x, vec4<u32>(68972u, 60189u, u_input.e, u_input.e))), _wgslsmith_sub_u32(53301u, 42963u)).a.a), 1u).a);
    var var_1 = Struct_3(Struct_2(Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_div_i32(-13399i, -4053i), u_input.c.x, vec4<u32>(18529u, u_input.e, 4164u, 11183u) & ~vec4<u32>(0u, 54779u, 82703u, u_input.c.x))), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), false));
    var var_2 = -462f;
    var_1 = func_3(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-794f, -2257f, 356f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-500f, -436f, 1028f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(456f, -849f, -1015f), vec3<f32>(-362f, 317f, -410f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1758f, -1281f, -1000f) - vec3<f32>(527f, 114f, 140f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 565f, 186f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -698f, -1007f) * vec3<f32>(1612f, -795f, 454f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(270f, -1584f, 493f), vec3<f32>(-1589f, -2327f, 429f))))))), Struct_1(vec2<bool>(func_1(Struct_3(Struct_2(Struct_1(vec2<bool>(var_1.a.a.a.x, true), u_input.b, u_input.e, u_input.c)), vec3<bool>(false, true, var_1.b.x)), var_1.a.a.a.x | var_1.b.x, var_1.a.a.d.x >> (4294967295u % 32u)).a.x, !(var_1.a.a.d.x > u_input.c.x)), -1i, var_1.a.a.c, ~u_input.c | vec4<u32>(~1u, ~var_1.a.a.c, var_1.a.a.d.x, _wgslsmith_clamp_u32(0u, u_input.c.x, u_input.e))), Struct_2(var_1.a.a), 4294967295u);
    var var_3 = func_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-216f, -824f))), -204f, -479f), var_1.a.a, var_1.a, u_input.c.x).a.a;
    let var_4 = Struct_2(Struct_1(vec2<bool>(var_1.a.a.a.x, any(select(vec4<bool>(var_1.a.a.a.x, var_3.a.x, true, var_1.a.a.a.x), vec4<bool>(var_3.a.x, true, false, false), var_3.a.x))), var_0.x, func_3(vec3<f32>(_wgslsmith_f_op_f32(max(-241f, -1332f)), 1446f, _wgslsmith_div_f32(413f, 1000f)), var_1.a.a, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-441f, -314f, 599f) + vec3<f32>(-4052f, 859f, -1000f)), func_1(Struct_3(Struct_2(var_1.a.a), var_1.b), false, var_1.a.a.c), var_1.a, ~var_1.a.a.c).a, 1u).a.a.c, reverseBits(~(~var_1.a.a.d))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-511f, -1418f, all(select(vec4<bool>(var_3.a.x, var_1.b.x, var_1.b.x, false), vec4<bool>(false, false, var_3.a.x, true), true)))))));
    var_3 = Struct_1(!var_3.a, var_4.a.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(var_4.a.d.x, 4294967295u), u_input.c.x), vec2<u32>(55912u, var_3.d.x & (var_1.a.a.c | 24182u))), var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-u_input.d));
}

