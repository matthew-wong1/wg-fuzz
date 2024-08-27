struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: i32) -> vec2<i32> {
    var var_0 = select(select(vec4<bool>(any(vec2<bool>(true, false)), !all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)), u_input.a <= _wgslsmith_mult_u32(u_input.a, 4294967295u)), !vec4<bool>(true, true, false, arg_2 <= 1i), (_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -1i), vec2<i32>(-9019i, arg_0)) > arg_0) == true), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, false, all(vec2<bool>(false, true))))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), true));
    let var_1 = ~countOneBits(u_input.a) << ((abs(u_input.a) >> (_wgslsmith_div_u32(~(~76597u), ~27566u) % 32u)) % 32u);
    var_0 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, any(var_0.xx), var_0.x, var_0.x != var_0.x), var_0.x), vec4<bool>(select(false, any(var_0.zwy), var_0.x), all(vec4<bool>(var_0.x, true, false, false)) || all(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x, false), var_0.x & (~19171u > u_input.a)), !vec4<bool>(!select(var_0.x, true, var_0.x), false, any(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), var_0.x), var_0.x);
    global0 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(86871u, ~12221u, firstTrailingBit(var_1)) >> (countOneBits(max(u_input.a, var_1)) % 32u), abs(0u));
    var var_2 = vec2<u32>(_wgslsmith_div_u32(~23427u >> (var_1 % 32u), 0u), max(var_1, ~_wgslsmith_clamp_u32(abs(4294967295u), ~u_input.a, _wgslsmith_mod_u32(4294967295u, u_input.a))));
    return _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-(~vec2<i32>(-8626i, 2147483647i)), reverseBits(vec2<i32>(-11186i, 1i)) << (vec2<u32>(u_input.a, var_1) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(~(-vec2<i32>(-35046i, 1i)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(arg_2, 1i)))) | _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, arg_2), arg_2), ~countOneBits(vec2<i32>(16160i, -1i))), min(vec2<i32>(arg_2, arg_2) & _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, arg_2), vec2<i32>(arg_2, 23413i), vec2<i32>(arg_0, -1i)), ~vec2<i32>(arg_0, arg_2) ^ -vec2<i32>(12719i, arg_2)), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(arg_2, -2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(40192i, arg_0) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), ~vec2<i32>(arg_0, arg_2), vec2<i32>(arg_2, 2147483647i)), -vec2<i32>(-1i, -2147483647i)));
}

fn func_2() -> u32 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_sub_vec2_i32(func_3(-2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -757f, 1786f, -790f)), 0i), func_3(select(-2147483647i, 0i, false), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-602f, -290f, -793f, -334f), vec4<f32>(-1637f, 270f, -576f, 680f), true)), 1i)), vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(935f, 1000f, 2075f) + vec3<f32>(-1393f, 458f, -321f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(563f, 578f, 1000f) - vec3<f32>(170f, 1545f, 736f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1022f, -884f, -1423f), vec3<f32>(-410f, -1052f, -327f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-674f, 2480f, 431f))))))), true, firstLeadingBit(~_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -17136i), vec2<i32>(-2147483647i, 61063i)))));
    var var_1 = min(vec2<i32>(-var_0.a.e.x, -1i), _wgslsmith_clamp_vec2_i32(var_0.a.a, vec2<i32>(1i & (2147483647i & var_0.a.e.x), -1i), vec2<i32>(20291i, _wgslsmith_clamp_i32(-var_0.a.b.x, var_0.a.b.x, 0i))));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-764f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-224f)) - _wgslsmith_f_op_f32(1841f * var_0.a.c.x)))), false)));
    var_1 = vec2<i32>(firstTrailingBit(1i), firstLeadingBit(0i)) & var_0.a.e;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.a, u_input.a, u_input.a)) ^ ~vec3<u32>(4294967295u, 0u, 4294967295u), countOneBits(~vec3<u32>(u_input.a, u_input.a, u_input.a))), ~countOneBits(vec3<u32>(u_input.a, 1857u, u_input.a))), min(vec3<u32>(_wgslsmith_add_u32(20042u, _wgslsmith_sub_u32(u_input.a, 10815u)), (u_input.a << (u_input.a % 32u)) & 1u, u_input.a), max(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 74683u, 0u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, 30855u, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u), reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a))))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = ~(arg_0 << (arg_0 % vec4<u32>(32u)));
    var var_1 = func_2();
    var var_2 = vec4<i32>(_wgslsmith_mult_i32(1i, -9308i), 1i & _wgslsmith_dot_vec2_i32(vec2<i32>(-13498i, -20452i), select(vec2<i32>(-17357i, -1i), vec2<i32>(-1i, -10065i), vec2<bool>(false, true))), -2013i, 1i) >> (vec4<u32>(1u, min(1u, ~(var_0.x | 4294967295u)), u_input.a, 1u) % vec4<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - -2172f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-102f + -943f) + _wgslsmith_f_op_f32(-1579f + 645f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-457f, -767f)))))));
    var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1765f), -1492f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1116f, -402f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1311f)), _wgslsmith_f_op_f32(sign(-2075f))))))));
    return Struct_3(_wgslsmith_mult_u32(var_0.x, _wgslsmith_dot_vec4_u32(abs(max(arg_0, vec4<u32>(arg_0.x, arg_0.x, 20027u, 4294967295u))), vec4<u32>(1u | var_0.x, 15383u, var_0.x, arg_0.x))));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    global0 = min(u_input.a, reverseBits(arg_0.a.a));
    var var_0 = arg_0;
    global0 = 1877u;
    let var_1 = all(select(select(select(vec3<bool>(arg_3.e.d, arg_3.e.d, false), vec3<bool>(false, false, arg_3.c), true), !vec3<bool>(arg_3.c, arg_3.b.d, true), !vec3<bool>(arg_3.e.d, true, arg_3.c)), select(select(vec3<bool>(true, arg_3.b.d, false), vec3<bool>(true, arg_3.e.d, arg_3.b.d), arg_3.b.d), vec3<bool>(true, arg_3.b.d, arg_3.c), false & arg_3.b.d), arg_3.c)) && !(_wgslsmith_f_op_f32(-arg_3.b.c.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.c.x) * _wgslsmith_div_f32(-1548f, -186f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-148f, -744f, 1000f));
    return Struct_2(u_input.a, arg_3.b, var_1, _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_3.b.b | vec3<i32>(8493i, 2400i, arg_3.e.a.x), ~arg_3.b.b), 1i), arg_3.b.a.x), Struct_1(vec2<i32>(arg_3.e.a.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, arg_3.e.e.x)), -vec2<i32>(arg_3.d, -48011i))), ~vec3<i32>(reverseBits(-10386i), 0i, 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, -1460f, arg_3.b.c.x))) + arg_3.b.c), !any(select(vec3<bool>(true, arg_3.c, false), vec3<bool>(false, arg_3.e.d, var_1), true)), firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(arg_3.e.e.x, 31444i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 6542i;
    var var_1 = ~(~56587u);
    var var_2 = -(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 1i), vec2<i32>(1i, 1i)) | (25112i >> (~(4294967295u | u_input.a) % 32u)));
    let var_3 = func_4(Struct_5(func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(12577u, 9775u, 4294967295u, 4294967295u) >> (vec4<u32>(u_input.a, u_input.a, 1u, 119045u) % vec4<u32>(32u)), vec4<u32>(18588u, u_input.a, 0u, 0u) | vec4<u32>(19019u, 4294967295u, 4294967295u, u_input.a)))), _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a, u_input.a | 4294967295u, ~u_input.a, 1u) ^ vec4<u32>(u_input.a, 78519u, ~43531u, 66023u), _wgslsmith_div_vec4_u32(abs(vec4<u32>(2348u, u_input.a, u_input.a, u_input.a)), vec4<u32>(0u, 1u, _wgslsmith_mod_u32(7889u, u_input.a), ~1u))), Struct_3(34814u), Struct_2(u_input.a >> (firstTrailingBit(u_input.a) % 32u), Struct_1(reverseBits(vec2<i32>(1i, 1i)), -max(vec3<i32>(-61540i, 1i, -1i), vec3<i32>(-40865i, 7120i, 56437i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1386f, 1000f, -373f)), true, ~(vec2<i32>(-2147483647i, 42458i) >> (vec2<u32>(u_input.a, 53672u) % vec2<u32>(32u)))), all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, false, false), true)), 1i, Struct_1(~vec2<i32>(-18461i, 57194i), firstLeadingBit(vec3<i32>(2147483647i, -1i, 1i)), vec3<f32>(764f, _wgslsmith_f_op_f32(1374f + -351f), -1496f), true, _wgslsmith_mult_vec2_i32(vec2<i32>(70171i, 0i), vec2<i32>(-30219i, -36435i)) >> ((vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    let var_4 = !(!(!vec4<bool>(u_input.a != 24805u, var_3.e.d, true, !var_3.e.d)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(var_3.b.e.x, _wgslsmith_add_i32(-23166i, var_3.d)));
}

