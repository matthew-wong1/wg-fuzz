struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_3,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = Struct_1(~_wgslsmith_div_vec4_i32(-(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i)), max(vec4<i32>(36960i, u_input.a.x, -4461i, 0i), vec4<i32>(-13730i, -42725i, 32979i, u_input.a.x))));
    var var_1 = ~26304u;
    var_1 = 1u;
    let var_2 = ~countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 94156u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(23569u, 0u), 43973u)));
    var var_3 = Struct_3(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x >> (0u % 32u), ~23853u, var_2.x), vec3<u32>(20080u << (var_2.x % 32u), var_2.x, ~var_2.x), reverseBits(vec3<u32>(30634u, var_2.x, 1u)) << (vec3<u32>(0u, var_2.x, 1u) % vec3<u32>(32u))));
    return Struct_3(vec3<u32>(~abs(var_2.x), ~max(90344u, 18379u), min(~49359u, ~var_3.a.x)));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_clamp_u32(reverseBits(10251u), func_2(false).a.x, arg_2);
    var var_1 = 732f;
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(587f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1272f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1813f, 593f))))), 981f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-420f, 1379f, -544f, 280f), vec4<f32>(496f, 436f, 1000f, 736f))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1751f, 1363f, 1339f, 692f), vec4<f32>(-1117f, 1563f, -190f, 567f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -292f, 573f, 2038f)))), vec4<f32>(1f, _wgslsmith_f_op_f32(max(-1052f, _wgslsmith_f_op_f32(f32(-1f) * -463f))), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -1462f), _wgslsmith_f_op_f32(-1082f - -2105f)))))));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2 * var_2), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-296f, _wgslsmith_f_op_f32(-var_2.x), var_2.x, var_2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(-var_2.x)))));
    let var_4 = arg_0.e;
    return _wgslsmith_f_op_f32(abs(var_2.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> Struct_3 {
    let var_0 = Struct_5(Struct_3(vec3<u32>(1u, ~1u, 1u)), vec2<u32>(1u, _wgslsmith_div_u32(firstLeadingBit(func_2(arg_1.a).a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 1u, 1u)))), Struct_2(any(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.a, false, false), vec3<bool>(false, arg_1.a, arg_1.a)))), Struct_3(_wgslsmith_div_vec3_u32(vec3<u32>(1u, ~28399u, ~22467u), vec3<u32>(~39322u, ~40161u, ~47513u))), vec3<bool>(true, any(vec4<bool>(arg_0.a.x != -1i, select(false, arg_1.a, false), false, all(vec2<bool>(arg_1.a, false)))), arg_1.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -145f, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(max(144f, _wgslsmith_f_op_f32(f32(-1f) * -547f)))), _wgslsmith_f_op_f32(round(arg_2))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, _wgslsmith_div_f32(-1490f, arg_2), arg_2, _wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 652f, var_1.x)) + vec4<f32>(var_1.x, 726f, 1000f, 1197f)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_2))))))), var_1.x);
    var var_3 = 0i;
    return var_0.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_5(func_2(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), ~vec2<u32>(_wgslsmith_div_u32(reverseBits(18793u), ~19328u), abs(1u)), Struct_2(!all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), func_4(arg_3, Struct_2(_wgslsmith_f_op_f32(func_3(Struct_4(vec3<bool>(true, false, false), u_input.a.x, vec3<u32>(0u, 29632u, 79190u), vec4<bool>(true, false, false, true), arg_3.a.zxw), arg_3.a.x, 0u, Struct_3(vec3<u32>(55241u, 4294967295u, 18722u)))) <= arg_1.x), -1000f), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), arg_0.x >= arg_2)));
    var var_1 = var_0.e.x | any(!select(vec2<bool>(false, false), select(var_0.e.zz, var_0.e.yy, var_0.c.a), !var_0.e.yx));
    let var_2 = var_0.c.a;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(-arg_0.x));
    let var_4 = firstTrailingBit(~(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 15730u, var_0.a.a.x, var_0.d.a.x), vec4<u32>(var_0.a.a.x, var_0.d.a.x, 1u, var_0.d.a.x)), _wgslsmith_add_u32(var_0.d.a.x, 6316u), _wgslsmith_div_u32(35723u, 4294967295u)) ^ ~reverseBits(vec3<u32>(var_0.d.a.x, var_0.b.x, 1u))));
    return var_0.d.a.x;
}

fn func_5(arg_0: vec3<u32>) -> Struct_4 {
    return Struct_4(!select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, all(vec4<bool>(false, true, false, false))), false), u_input.a.x, vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~arg_0.x, max(arg_0.x, 1u)), arg_0.x), 10734u, arg_0.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, true), select(false, false, true), false, false), true), vec4<bool>(true, true, (u_input.a.x ^ 2147483647i) > (u_input.a.x ^ u_input.a.x), false), true), vec3<i32>(u_input.a.x, -(~2147483647i), -_wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.yz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(12437u, 1u), abs(1u)), ~_wgslsmith_mult_u32(34462u, 15376u), ~func_1(vec2<f32>(-792f, 961f), vec3<f32>(-631f, -1521f, -1000f), 1000f, Struct_1(vec4<i32>(u_input.a.x, 12011i, 2147483647i, u_input.a.x)))), _wgslsmith_div_vec3_u32(firstTrailingBit(firstLeadingBit(vec3<u32>(0u, 4294967295u, 10165u))), vec3<u32>(~3148u, 16812u, max(4294967295u, 35276u))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, true)))));
    var_0 = Struct_4(var_0.a, -_wgslsmith_dot_vec3_i32(-var_0.e, var_0.e << (var_0.c % vec3<u32>(32u))) >> (51810u % 32u), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.c.x << (var_0.c.x % 32u), 4294967295u), var_0.c.x), func_2(all(!vec2<bool>(true, var_0.a.x))).a.x, var_0.c.x), select(select(vec4<bool>(any(vec2<bool>(true, var_0.a.x)), false, false, select(var_0.a.x, true, true)), func_5(countOneBits(vec3<u32>(63998u, var_0.c.x, 1u))).d, vec4<bool>(!var_0.a.x, true, var_0.d.x, var_0.a.x)), vec4<bool>(false, true, all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.d.x, var_0.a.x)), var_0.d.x), select(func_5(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c.x, var_0.c.x, 28826u), vec3<u32>(96138u, 1u, 0u))).d, var_0.d, var_0.d)), vec3<i32>(-(~(-1i)), firstTrailingBit(1i >> (1u % 32u)) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zx, u_input.a.xx), abs(vec2<i32>(var_0.e.x, var_0.b))), -var_0.e.x));
    var_0 = Struct_4(var_0.d.zzy, firstTrailingBit(_wgslsmith_sub_i32(21851i, 11341i)), abs(~func_4(Struct_1(vec4<i32>(var_0.e.x, 7649i, -33466i, u_input.a.x)), Struct_2(var_0.d.x), _wgslsmith_f_op_f32(max(-169f, 1994f))).a), select(!var_0.d, !var_0.d, vec4<bool>(all(var_0.d.yy), var_0.d.x, true, false)), ~vec3<i32>(-3491i, _wgslsmith_add_i32(-37224i, -var_0.b), _wgslsmith_sub_i32(34100i, 2147483647i)));
    var_0 = Struct_4(vec3<bool>(true, true, var_0.d.x), ~var_0.b, ~max(~vec3<u32>(4294967295u, var_0.c.x, var_0.c.x), ~var_0.c), var_0.d, _wgslsmith_mod_vec3_i32(vec3<i32>(~_wgslsmith_add_i32(1i, 1i), _wgslsmith_mult_i32(-2147483647i, 842i | u_input.a.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, -24737i), var_0.b)), -u_input.a));
    var_0 = func_5(vec3<u32>(var_0.c.x, ~var_0.c.x, 0u));
    var_0 = Struct_4(select(select(var_0.a, !(!vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x)), vec3<bool>(false & var_0.a.x, var_0.a.x, true)), !(!select(var_0.a, var_0.d.zyx, var_0.d.wwx)), true), func_5(abs(vec3<u32>(10053u, 1u, 59244u))).b << (~(select(var_0.c.x, var_0.c.x, false) ^ _wgslsmith_mod_u32(0u, 100227u)) % 32u), var_0.c, !select(var_0.d, vec4<bool>(true, 0u <= var_0.c.x, all(vec2<bool>(var_0.a.x, false)), !var_0.a.x), any(!vec2<bool>(var_0.a.x, var_0.d.x))), _wgslsmith_mod_vec3_i32(-var_0.e, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1483f), _wgslsmith_f_op_f32(func_3(Struct_4(var_0.d.wzy, -412i, vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(true, var_0.a.x, true, true), u_input.a), var_0.b, var_0.c.x, Struct_3(var_0.c))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-322f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2286f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1384f, -735f))))));
}

