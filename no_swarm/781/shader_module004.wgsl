struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_3,
    c: f32,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: i32) -> vec2<bool> {
    var var_0 = all(vec3<bool>(any(vec4<bool>(false, true, false, !arg_1.b.b.d.c.x)), any(select(select(arg_1.e.e.c.xwy, vec3<bool>(arg_1.b.b.a.x, false, true), vec3<bool>(false, arg_1.e.d.d, false)), arg_1.e.a, select(vec3<bool>(false, true, true), arg_1.b.b.e.c.zxz, vec3<bool>(arg_1.e.d.d, false, arg_1.b.b.e.c.x)))), arg_1.b.b.e.d));
    let var_1 = Struct_4(!((~0u > arg_1.d.x) && true), arg_1.b);
    let var_2 = var_1.b.b.e.a.xxz;
    var var_3 = arg_1.b;
    var var_4 = firstLeadingBit(vec3<i32>(1i, 3999i, 42078i));
    return var_3.b.a.yz;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = ~4294967295u;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1898f, -981f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-491f, 1252f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2221f) - _wgslsmith_f_op_f32(f32(-1f) * -411f)), -1700f), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), select(vec2<bool>(true, true), func_3(1527f, Struct_5(vec4<f32>(910f, -1130f, 821f, -942f), Struct_3(133f, Struct_2(vec3<bool>(true, false, false), u_input.d.x, 418f, Struct_1(vec4<u32>(58560u, u_input.c.x, u_input.c.x, 0u), -56227i, vec4<bool>(false, false, false, false), false), Struct_1(vec4<u32>(u_input.d.x, 0u, u_input.b, u_input.b), -10529i, vec4<bool>(true, false, true, false), false))), 1000f, vec3<u32>(u_input.a, u_input.a, 100535u), Struct_2(vec3<bool>(false, false, false), 4294967295u, -1994f, Struct_1(vec4<u32>(44203u, u_input.b, u_input.e.x, u_input.c.x), arg_1.x, vec4<bool>(false, false, true, false), true), Struct_1(vec4<u32>(0u, 1u, u_input.b, u_input.c.x), arg_1.x, vec4<bool>(false, false, true, true), false))), arg_0), vec2<bool>(true, true))))));
    var_0 = abs(11119u | (u_input.b & u_input.a));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -193f), _wgslsmith_f_op_f32(select(-2003f, var_1.x, false)))), var_1.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(-674f, var_1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -823f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -325f)) - vec2<f32>(var_1.x, var_1.x)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) * _wgslsmith_f_op_f32(min(var_1.x, 1000f))) * _wgslsmith_f_op_f32(168f * 339f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1320f))), -2665f);
    return Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), var_2.x <= var_1.x)), u_input.e.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(813f, var_1.x, true)))))), Struct_1(~vec4<u32>(u_input.e.x, u_input.e.x, u_input.c.x, 16939u) >> (~vec4<u32>(0u, 51493u, 85604u, u_input.a) % vec4<u32>(32u)), ~min(arg_0, arg_1.x), select(vec4<bool>(var_2.x <= var_2.x, true, all(vec4<bool>(false, false, true, true)), true), vec4<bool>(arg_0 >= arg_1.x, true, all(vec3<bool>(false, true, true)), u_input.b > 87549u), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, false, true), all(vec2<bool>(false, true)))), false), Struct_1(~vec4<u32>(u_input.a, _wgslsmith_mod_u32(75820u, u_input.b), 2882u, _wgslsmith_mod_u32(u_input.a, 1u)), ~firstLeadingBit(0i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, arg_1.x >= arg_0), true), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> bool {
    var var_0 = arg_1.b;
    var_0 = func_2(var_0.d.b, reverseBits(~min(vec3<i32>(26969i, 1352i, 2147483647i), vec3<i32>(arg_1.b.d.b, 37296i, -62897i)) & -_wgslsmith_clamp_vec3_i32(vec3<i32>(-43442i, arg_1.b.d.b, 19089i), vec3<i32>(var_0.d.b, -3486i, var_0.d.b), vec3<i32>(arg_1.b.d.b, arg_1.b.d.b, 33186i))));
    var_0 = func_2(-(~(-arg_1.b.d.b)), vec3<i32>(~(-(var_0.e.b | 4909i)), _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(1i, 1i), 1i, var_0.e.b), arg_1.b.d.b));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0.c, arg_0)))))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1358f - _wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(min(-356f, -2468f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, var_0.c, 1653f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1404f, arg_0, arg_0) - vec4<f32>(arg_0, 2250f, -516f, arg_0))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(select(arg_1.a, arg_1.a, true)), 1324f, _wgslsmith_f_op_f32(trunc(-981f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1359f, var_0.c, 466f, -1000f), vec4<f32>(553f, -648f, arg_0, var_0.c))))));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = Struct_3(694f, arg_1.b);
    let var_1 = Struct_4(!func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.c, arg_1.b.c)), Struct_3(_wgslsmith_f_op_f32(-arg_1.a), arg_1.b)), arg_1);
    let var_2 = select(vec4<bool>(!(!(119f >= arg_1.b.c)), arg_1.b.a.x, !(true || (var_0.b.d.a.x < arg_1.b.e.a.x)), arg_1.b.e.c.x), func_2(_wgslsmith_add_i32(-10414i, 1i), select(-reverseBits(vec3<i32>(var_0.b.e.b, var_1.b.b.d.b, 2147483647i)), vec3<i32>(var_1.b.b.e.b, ~var_0.b.e.b, i32(-1i) * -2147483647i), true)).d.c, vec4<bool>(var_1.a, func_1(-1004f, Struct_3(arg_1.a, var_1.b.b)), !var_1.a, abs(-681i) != (-20356i | ~var_0.b.d.b)));
    var var_3 = var_1.b.b.c;
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_1.a)), var_0.b.c, select(var_2.x, var_1.b.b.e.d, arg_0.x))) + var_0.a))), func_2(_wgslsmith_clamp_i32(-4361i, ~(-12222i), _wgslsmith_div_i32(arg_1.b.e.b, ~var_1.b.b.e.b)), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(-40477i, -2147483647i, var_0.b.e.b)), reverseBits(vec3<i32>(var_0.b.d.b, var_0.b.d.b, var_0.b.e.b)) ^ -vec3<i32>(arg_1.b.d.b, 14299i, 1i))).c);
    return func_2(-1i, -_wgslsmith_add_vec3_i32(~vec3<i32>(var_0.b.d.b, var_0.b.d.b, 521i), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b.b.e.b, var_0.b.e.b, 2147483647i), vec3<i32>(var_0.b.d.b, var_0.b.e.b, -27124i))) >> (var_0.b.e.a.zyz % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(select(vec4<bool>(true, true, all(vec2<bool>(false, true)), true), vec4<bool>(any(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, false, false)), true, true), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, false, true)), func_1(-1324f, Struct_3(774f, Struct_2(vec3<bool>(false, false, false), 3744u, 2972f, Struct_1(vec4<u32>(4294967295u, 0u, u_input.a, 30974u), -22110i, vec4<bool>(true, true, false, true), true), Struct_1(vec4<u32>(u_input.c.x, u_input.d.x, 4294967295u, u_input.e.x), -1i, vec4<bool>(true, true, false, false), true)))))), vec4<bool>(true, true, func_1(1640f, Struct_3(-934f, Struct_2(vec3<bool>(false, true, false), u_input.e.x, -1000f, Struct_1(vec4<u32>(u_input.e.x, u_input.a, 4294967295u, u_input.a), 50847i, vec4<bool>(true, true, true, true), true), Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 1558u), -1i, vec4<bool>(true, true, false, false), false)))), true), firstTrailingBit(-2147483647i) < 1i), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -307f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -614f))), func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(1187i, -13757i, -1i), ~vec3<i32>(1532i, -19093i, -20605i)), vec3<i32>(i32(-1i) * -4180i, 1i, 1i))));
    var var_1 = func_2(var_0.e.b, -(~vec3<i32>(-1i, var_0.d.b, select(-23691i, var_0.d.b, var_0.e.c.x)))).d.c.xxx;
    let var_2 = Struct_3(440f, Struct_2(vec3<bool>(false, all(var_0.d.c.zzz), false), ~(~min(var_0.d.a.x, var_0.b)), _wgslsmith_f_op_f32(select(var_0.c, 1761f, true)), var_0.d, var_0.d));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1569f);
    var_3 = _wgslsmith_f_op_f32(abs(-618f));
    var_1 = select(vec3<bool>(!(~var_2.b.e.b != ~0i), any(vec4<bool>(true, true, !var_1.x, !var_0.d.d)), !var_1.x), func_4(vec4<bool>(!(27069i != var_2.b.e.b), any(var_2.b.e.c.zxx), false, true), Struct_3(294f, var_2.b)).a, var_0.e.c.wwx);
    var_0 = Struct_2(!vec3<bool>(!var_1.x, true, var_2.b.a.x), 1u, _wgslsmith_f_op_f32(-490f + -1199f), func_4(var_0.d.c, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.c + 330f) - 921f), var_2.b)).e, var_0.d);
    let var_4 = func_4(func_2(~var_0.d.b, ~(vec3<i32>(-1i, -1i, var_2.b.d.b) ^ vec3<i32>(-1i, var_2.b.e.b, -14560i))).d.c, var_2).e.b == (i32(-1i) * -(~var_0.d.b));
    let var_5 = ~abs(var_2.b.d.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.a.x, ~select(vec4<i32>(1i, var_0.d.b, var_0.e.b, -27596i) & vec4<i32>(var_0.e.b, 1i, var_2.b.e.b, var_2.b.d.b), vec4<i32>(var_2.b.e.b, 0i, 1i, var_2.b.e.b), true) >> (max(max(_wgslsmith_add_vec4_u32(var_0.d.a, vec4<u32>(var_0.d.a.x, 14195u, 4294967295u, var_2.b.e.a.x)), vec4<u32>(1u, 0u, 1u, var_2.b.b)), vec4<u32>(4294967295u, var_2.b.b, 4294967295u, ~var_2.b.b)) % vec4<u32>(32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-var_0.e.b), _wgslsmith_clamp_i32(var_0.e.b, ~var_2.b.d.b, var_0.e.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.b.e.b, ~1i), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.d.b, var_0.e.b), vec2<i32>(var_2.b.d.b, 0i)), -vec2<i32>(-2147483647i, 22969i)))), ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-20911i, 0i, -112564i)), ~vec3<i32>(var_0.d.b, -1i, var_2.b.e.b)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-136f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(955f)))), var_0.c, _wgslsmith_f_op_f32(var_2.b.c - var_2.b.c)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a, 458f, -398f, var_2.b.c), vec4<f32>(119f, var_2.a, 243f, -1680f), !var_0.e.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, -1000f, var_0.c) - vec4<f32>(var_2.b.c, var_0.c, -336f, 1981f))))), var_0.d.c)));
}

