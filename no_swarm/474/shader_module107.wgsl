struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: vec3<bool>) -> u32 {
    let var_0 = u_input.a.x;
    let var_1 = firstLeadingBit(countOneBits(1u));
    let var_2 = vec2<u32>(u_input.b, 1u);
    var var_3 = ~vec3<u32>(max(arg_0, u_input.b), ~4294967295u, firstLeadingBit(_wgslsmith_mod_u32(var_1, 4294967295u)) & (~u_input.b ^ ~arg_0));
    var_3 = select(abs(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, var_2.x, 1u), vec3<u32>(49636u, var_1, var_3.x)), vec3<u32>(3224u, 0u, var_1)) << (select(vec3<u32>(var_3.x, 6783u, 4294967295u) ^ vec3<u32>(39051u, 121986u, var_3.x), vec3<u32>(var_3.x, var_3.x, 1u) | vec3<u32>(arg_0, var_3.x, 8400u), any(arg_3.xz)) % vec3<u32>(32u))), vec3<u32>(var_1, 12930u, _wgslsmith_mod_u32(~arg_0, ~var_2.x) & firstTrailingBit(~11998u)), !arg_3.x | arg_3.x);
    return ~var_2.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = -1300f;
    var var_1 = _wgslsmith_mult_vec3_i32(min(min(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0.a, -2921i), vec3<i32>(arg_1.a, arg_0.a, 1i)), -2147483647i, -36786i), vec3<i32>(u_input.a.x, -38934i, arg_0.a) << (firstLeadingBit(vec3<u32>(8075u, u_input.b, 54874u)) % vec3<u32>(32u))), firstLeadingBit(firstTrailingBit(~vec3<i32>(-21382i, 1i, arg_1.a)))), ~max(vec3<i32>(59971i, _wgslsmith_mult_i32(arg_1.a, arg_1.a), 1i), -select(vec3<i32>(-2147483647i, 57204i, 2147483647i), vec3<i32>(23178i, arg_0.a, u_input.a.x), vec3<bool>(arg_0.c.a.x, arg_0.c.c, true))));
    let var_2 = vec2<i32>(max(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, var_1.x, arg_1.a), vec3<i32>(u_input.a.x, -2147483647i, var_1.x)), min(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(2147483647i, arg_1.a, arg_1.a))), 28907i) >> (~max(~4294967295u, _wgslsmith_sub_u32(4294967295u, arg_2)) % 32u), arg_1.a);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(144f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(trunc(-1826f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1313f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 * var_0))))) - -1800f);
    let var_4 = Struct_1(vec2<bool>(all(vec4<bool>(false, false, arg_0.b.d, u_input.b >= 0u)), false), arg_1.c.a.x, arg_0.c.d, arg_0.c.d, select(all(select(!vec4<bool>(arg_1.b.e, false, arg_0.b.a.x, false), vec4<bool>(true, false, arg_1.b.a.x, true), select(vec4<bool>(true, arg_1.c.a.x, false, arg_1.c.d), vec4<bool>(true, false, true, arg_1.b.d), true))), ((u_input.b << (arg_2 % 32u)) | 4294967295u) > ~(0u | u_input.b), !arg_1.c.a.x));
    return var_0;
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_2(~1i << (_wgslsmith_div_u32(func_3(u_input.b, -738f, -2016f, vec3<bool>(true, false, false)), 1u) % 32u), Struct_1(vec2<bool>(false, true), true, all(vec4<bool>(false, false, false, false)) == true, true, true), Struct_1(vec2<bool>(true, true), all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true, any(vec4<bool>(true, true, true, true)), false)), Struct_2(-firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), true), true, true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), ~0i >= u_input.a.x), Struct_1(vec2<bool>(true, true), true, select(true, true, true), any(vec4<bool>(true, true, true, false)), true)), ~_wgslsmith_clamp_u32(~4294967295u | arg_0, ~(27294u ^ u_input.b), select(min(52448u, u_input.b), _wgslsmith_div_u32(arg_0, arg_0), true))));
    let var_1 = Struct_4(19766u);
    var var_2 = Struct_2(~(2147483647i | (_wgslsmith_add_i32(u_input.a.x, 12671i) >> (32306u % 32u))), Struct_1(vec2<bool>(true, true), all(vec3<bool>(true, false, true)), all(vec2<bool>(true, true)) | false, select(false, any(vec2<bool>(false, false)), 8917i <= _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), true), Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, true), !all(vec2<bool>(false, true))), !all(vec4<bool>(true, true, true, true)), true, select(!any(vec2<bool>(false, false)), false, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))), !(any(vec2<bool>(true, true)) & true)));
    var var_3 = Struct_5(true, Struct_4(u_input.b));
    var var_4 = var_2.a;
    return _wgslsmith_f_op_f32(-284f + 477f);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: bool) -> Struct_5 {
    let var_0 = firstLeadingBit(u_input.b);
    let var_1 = Struct_3(Struct_1(select(vec2<bool>(arg_2, true), vec2<bool>(true, u_input.a.x >= 2147483647i), false), true, true == arg_2, all(!select(vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(false, true, arg_2, arg_2), arg_2)), !any(vec3<bool>(false, arg_2, false)) == !(false | arg_2)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_1, arg_1, u_input.b, arg_1), vec4<u32>(arg_1, u_input.b, arg_1, var_0)) << (select(vec4<u32>(u_input.b, 0u, 1u, arg_1), vec4<u32>(arg_1, arg_1, u_input.b, 20965u), vec4<bool>(false, false, false, false)) % vec4<u32>(32u)), ~vec4<u32>(u_input.b, u_input.b, 18801u, 4294967295u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, arg_1, 33956u, 10092u), vec4<u32>(arg_1, arg_1, arg_1, 72244u)) % vec4<u32>(32u))) <= 1u);
    var var_2 = select(any(vec4<bool>(arg_2, var_1.a.a.x, true & all(vec2<bool>(false, true)), arg_2)), true, arg_1 <= 0u);
    var var_3 = Struct_2(u_input.a.x, Struct_1(var_1.a.a, var_1.a.c, arg_2, !var_1.a.c, false), Struct_1(var_1.a.a, var_1.a.e, max(var_0, abs(arg_1)) > 0u, u_input.a.x != max(select(-2147483647i, u_input.a.x, var_1.b), u_input.a.x), true));
    var_2 = arg_2;
    return Struct_5(all(vec3<bool>(!arg_2 != true, var_1.a.c != false, false)), Struct_4(_wgslsmith_mod_u32(0u | _wgslsmith_div_u32(arg_1, u_input.b), arg_1)));
}

fn func_1(arg_0: Struct_5, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_4 {
    let var_0 = func_5(_wgslsmith_f_op_f32(func_2(u_input.b)), arg_0.b.a, !(!arg_0.a));
    var var_1 = arg_2;
    var_1 = !select(!select(!arg_2, arg_2, !arg_2), !vec3<bool>(arg_3.a.a.x | true, false, any(vec3<bool>(var_0.a, true, var_0.a))), vec3<bool>(arg_0.a, all(var_1.yx), arg_0.a && false));
    var var_2 = _wgslsmith_clamp_vec2_u32(~(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_0.b.a), vec2<u32>(u_input.b, var_0.b.a))), vec2<u32>(var_0.b.a, _wgslsmith_div_u32(var_0.b.a, _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(1u, arg_0.b.a)))), select(_wgslsmith_add_vec2_u32(~max(vec2<u32>(21427u, 31548u), vec2<u32>(var_0.b.a, 4294967295u)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(4294967295u, arg_0.b.a)), vec2<u32>(u_input.b, 0u) << (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)), !arg_2.yx)), ~vec2<u32>(_wgslsmith_add_u32(arg_0.b.a, arg_0.b.a), _wgslsmith_mod_u32(u_input.b, arg_0.b.a)), (1f <= _wgslsmith_f_op_f32(func_2(39156u))) && true));
    let var_3 = false;
    return arg_0.b;
}

fn func_6(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_4, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = Struct_2(arg_0.x << (((firstLeadingBit(0u) & arg_1) | func_3(4294967295u, _wgslsmith_f_op_f32(select(157f, -1000f, false)), _wgslsmith_f_op_f32(f32(-1f) * -392f), vec3<bool>(false, true, false))) % 32u), Struct_1(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(true, true))), select(all(vec3<bool>(false, false, true)), any(vec4<bool>(false, true, false, true)), true), true, false, !(true | any(vec2<bool>(false, false)))), Struct_1(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), u_input.a.x < u_input.a.x), arg_1 > ~firstLeadingBit(arg_2.a), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), all(vec3<bool>(u_input.a.x >= arg_0.x, true, true)), true && any(vec4<bool>(false, true, false, false))));
    var_0 = Struct_2(reverseBits(reverseBits(2147483647i)), Struct_1(!var_0.c.a, false, !(!var_0.b.e), all(!vec3<bool>(false, var_0.b.d, false)), (-arg_3.x ^ -1i) == select(firstTrailingBit(-6i), -9569i, !var_0.b.a.x)), var_0.b);
    var_0 = Struct_2(2147483647i, var_0.c, Struct_1(!var_0.c.a, any(!vec2<bool>(var_0.c.a.x, var_0.c.b)), all(select(select(vec4<bool>(false, true, var_0.b.e, true), vec4<bool>(var_0.b.b, var_0.c.d, false, var_0.c.b), false), vec4<bool>(true, var_0.b.b, var_0.c.a.x, var_0.b.b), select(vec4<bool>(false, false, var_0.c.a.x, true), vec4<bool>(false, false, var_0.c.c, var_0.c.a.x), vec4<bool>(var_0.c.d, false, var_0.b.d, var_0.b.a.x)))), false, !(_wgslsmith_f_op_f32(max(820f, 108f)) == _wgslsmith_f_op_f32(round(776f)))));
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -72i, arg_0.x), vec4<i32>(32811i, 33145i, 0i, -28239i)), abs(vec4<i32>(-31838i, u_input.a.x, u_input.a.x, arg_3.x))), -_wgslsmith_add_i32(arg_3.x, var_0.a)), u_input.a) ^ max(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a, u_input.a.x) >> (vec2<u32>(u_input.b, 21256u) % vec2<u32>(32u)), arg_3.zy)), ~(~arg_0.xz));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(804f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-226f)), -1326f)) + _wgslsmith_f_op_f32(-659f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(983f, 174f)) - -117f))));
    return countOneBits(-arg_3);
}

fn func_7(arg_0: vec3<i32>, arg_1: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(~(-2147483647i), u_input.a.x & countOneBits(func_6(arg_0, 0u, Struct_4(u_input.b), vec3<i32>(u_input.a.x, 11838i, 1i)).x)));
    var var_1 = -11026i;
    var var_2 = select(vec3<bool>(true, !any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true)), true), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))), !(!vec3<bool>(true, select(false, true, false), func_5(-939f, u_input.b, false).a)));
    let var_3 = vec4<i32>(arg_0.x, arg_0.x, ~(-1i | arg_0.x), -abs(_wgslsmith_div_i32(0i, 1i) ^ ~arg_0.x));
    let var_4 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(countOneBits(-2147483647i), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, arg_0.x), 2147483647i)), ~_wgslsmith_mult_i32(~18028i, -arg_0.x), -23066i), -45933i);
    return !(!(~(~arg_1.x) > abs(arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec2<bool>(true, all(vec2<bool>(true, true))), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, u_input.b >= u_input.b, true, any(vec3<bool>(true, true, true))), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))))), select(func_7(func_6(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(1u, 4294967295u), func_1(Struct_5(false, Struct_4(1u)), u_input.a.x, vec3<bool>(false, true, true), Struct_3(Struct_1(vec2<bool>(false, true), false, true, false, true), true)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 1i, -1i))), ~vec2<u32>(u_input.b, u_input.b)), true, ((1u << (u_input.b % 32u)) | reverseBits(41928u)) < _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(1u, u_input.b))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2027f, _wgslsmith_f_op_f32(func_4(Struct_2(0i, Struct_1(vec2<bool>(true, true), false, true, true, true), Struct_1(vec2<bool>(false, false), false, true, true, false)), Struct_2(u_input.a.x, Struct_1(vec2<bool>(true, false), false, true, true, false), Struct_1(vec2<bool>(false, true), false, false, false, true)), u_input.b))))), ~_wgslsmith_mult_u32(u_input.b, firstLeadingBit(u_input.b)), true).a, false);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<i32>(u_input.a.x, ~u_input.a.x, ~(-1i)), vec3<i32>(-u_input.a.x, u_input.a.x, -22273i)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~87738u, u_input.b), select(vec3<u32>(u_input.b, 22610u, 27573u) >> (vec3<u32>(4294967295u, 60131u, u_input.b) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 0u, 0u), vec3<u32>(4294967295u, 51920u, u_input.b)), !vec3<bool>(var_0.a.x, var_0.e, var_0.c))) % vec3<u32>(32u)), ~countOneBits(~firstTrailingBit(vec3<u32>(u_input.b, 15865u, u_input.b))));
}

