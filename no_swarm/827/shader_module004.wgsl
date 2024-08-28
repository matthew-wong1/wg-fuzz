struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<bool> {
    let var_0 = true;
    var var_1 = any(!(!vec3<bool>(any(vec4<bool>(var_0, true, var_0, var_0)), all(vec2<bool>(true, var_0)), !var_0)));
    var_1 = false;
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(exp2(1f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1065f))), false);
    var var_3 = Struct_2(Struct_1(!var_2, !(!(!vec3<bool>(var_2.x, false, var_2.x)))), Struct_1(select(vec2<bool>(any(vec4<bool>(var_2.x, var_0, true, var_2.x)), var_2.x), !select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), var_2.x), !var_2), vec3<bool>(true, true && all(vec2<bool>(var_0, var_2.x)), var_0)), 2147483647i);
    return vec4<bool>(all(var_3.a.b), true, any(vec3<bool>(all(var_3.b.b.xy), true, any(vec3<bool>(var_2.x, true, var_3.b.a.x)) | var_3.a.b.x)), true);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = arg_0.x;
    var_0 = firstTrailingBit(~(~(~(~4294967295u))));
    let var_1 = any(func_3());
    return Struct_3(countOneBits(0i), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(456f - 1306f) + _wgslsmith_f_op_f32(-261f + 927f)), _wgslsmith_f_op_f32(-393f * _wgslsmith_f_op_f32(step(-422f, -702f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(103f - 1665f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-573f, 512f)), _wgslsmith_f_op_f32(f32(-1f) * -604f), 1038f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-253f, 162f, -176f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(287f, -667f), 1f)))) * 1213f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(639f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-398f, 720f, true)), _wgslsmith_div_f32(-843f, 3483f)) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -805f)))), Struct_1(arg_1.yy, arg_2));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = Struct_4(var_0.a, -35492i, vec4<bool>(arg_2.x, var_0.a.e.b.x, !(!var_0.c.x) && (firstLeadingBit(arg_0.a.a) < _wgslsmith_div_i32(arg_1.x, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a.c, -796f))) < _wgslsmith_f_op_f32(var_0.a.d.x + _wgslsmith_f_op_f32(round(var_0.a.d.x)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.b.x, arg_0.a.d.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1483f, var_0.a.d.x), arg_0.a.b.zz)))) * vec2<f32>(_wgslsmith_f_op_f32(298f + _wgslsmith_f_op_f32(step(-1301f, arg_0.a.b.x))), arg_0.a.d.x)));
    var var_2 = var_0.a;
    return func_2(~vec2<u32>(arg_3, arg_3), !arg_0.c.zyw, var_0.a.e.b).e;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 39300u;
    var var_1 = arg_2;
    var var_2 = Struct_1(!arg_3.b.xz, select(func_2(~(~vec2<u32>(var_0, var_0)), arg_1.b, !func_3().wyw).e.b, vec3<bool>(arg_1.b.x, true, any(!arg_1.a)), !vec3<bool>(arg_3.b.x, !arg_3.b.x, true)));
    var_2 = var_1.a.e;
    var_1 = arg_2;
    return arg_1;
}

fn func_6(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_4 {
    let var_0 = Struct_4(Struct_3(-2147483647i, vec3<f32>(-742f, -600f, _wgslsmith_f_op_f32(f32(-1f) * -2390f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-602f))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))), func_2(vec2<u32>(abs(1u), ~10401u), arg_0, !vec3<bool>(false, false, arg_2.b.x)).e), ~u_input.a.x, !(!vec4<bool>(arg_1.x, select(arg_1.x, true, false), arg_1.x, any(vec4<bool>(arg_1.x, arg_2.b.x, arg_0.x, arg_2.b.x)))));
    var var_1 = -77104i;
    var var_2 = 4294967295u;
    var_1 = _wgslsmith_mult_i32(-31549i, func_2(~(~vec2<u32>(1u, 1u)), vec3<bool>(var_0.c.x, true, true), arg_0).a);
    let var_3 = _wgslsmith_add_i32(-45565i, ~38878i);
    return Struct_4(Struct_3(var_3, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1049f, -116f), var_0.a.d.x, -181f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.d.x), var_0.a.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -320f))), true)), _wgslsmith_f_op_vec2_f32(-var_0.a.d), func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.c, var_0.a.c)), var_0.a.e, var_0, func_5(-1083f, var_0.a.e, var_0, func_5(var_0.a.c, var_0.a.e, Struct_4(var_0.a, var_0.b, vec4<bool>(false, false, arg_1.x, arg_1.x)), arg_2)))), firstLeadingBit(u_input.a.x), select(select(!vec4<bool>(true, arg_2.a.x, true, false), var_0.c, arg_1.x), select(var_0.c, !(!vec4<bool>(arg_1.x, arg_0.x, true, var_0.c.x)), var_0.c), true));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    var var_0 = func_6(select(!arg_1, vec3<bool>(!all(vec4<bool>(arg_1.x, true, false, arg_2.b.x)), select(true, arg_2.b.x, arg_2.b.x), true), true), !select(arg_2.a, vec2<bool>(!arg_2.a.x, arg_0 >= 461f), all(select(vec4<bool>(arg_2.b.x, arg_2.a.x, arg_1.x, arg_2.a.x), vec4<bool>(arg_2.a.x, true, true, true), true))), func_5(1403f, func_4(Struct_4(func_2(arg_3.yz, arg_2.b, arg_2.b), firstLeadingBit(-33930i), !vec4<bool>(arg_1.x, true, arg_1.x, true)), reverseBits(-u_input.a), vec4<bool>(!arg_2.a.x, arg_1.x, false, true), countOneBits(_wgslsmith_div_u32(arg_3.x, 31419u))), Struct_4(Struct_3(~u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(-764f, arg_0, 1119f)), 201f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), Struct_1(arg_1.zx, arg_1)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a.x, 23271i), 0i & u_input.b), vec4<bool>(arg_1.x | arg_2.a.x, any(arg_1.xy), true, true)), arg_2));
    let var_1 = func_2(vec2<u32>(max(arg_3.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_3.x, 96080u), vec3<u32>(arg_3.x, arg_3.x, 4122u))), _wgslsmith_mult_u32(~countOneBits(arg_3.x), 1u)), vec3<bool>(true, func_3().x, true), select(!(!vec3<bool>(var_0.a.e.a.x, arg_1.x, arg_2.b.x)), vec3<bool>(!arg_2.b.x || arg_2.a.x, any(!var_0.a.e.b), arg_1.x), vec3<bool>(false, true, true))).b.xz;
    var var_2 = -1000f;
    var var_3 = select(select(firstLeadingBit(~vec2<u32>(arg_3.x, arg_3.x) & vec2<u32>(0u, 62532u)), vec2<u32>(0u, 1u), func_4(func_6(arg_2.b, !vec2<bool>(false, var_0.c.x), func_4(Struct_4(Struct_3(var_0.b, var_0.a.b, var_1.x, var_0.a.b.yx, Struct_1(vec2<bool>(arg_1.x, false), var_0.a.e.b)), u_input.a.x, vec4<bool>(arg_2.b.x, arg_2.b.x, true, true)), vec2<i32>(var_0.b, 1i), vec4<bool>(false, arg_2.a.x, arg_2.b.x, true), 0u)), vec2<i32>(u_input.a.x, ~u_input.b), var_0.c, 4294967295u).a), ~vec2<u32>(arg_3.x, ~_wgslsmith_dot_vec3_u32(arg_3, arg_3)), true);
    let var_4 = reverseBits(arg_3.x);
    return !func_2(vec2<u32>(4294967295u, 1u & var_3.x), vec3<bool>(true, true, 844u < var_3.x), select(arg_1, !var_0.a.e.b, select(arg_2.b, vec3<bool>(false, arg_1.x, arg_2.a.x), vec3<bool>(true, true, true)))).e.a.x;
}

fn func_7(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> Struct_1 {
    return Struct_1(arg_0.yz, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec3<bool>(true, true, false)), func_1(1485f, vec3<bool>(false, false, true), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, true)), vec3<u32>(0u, 46601u, 0u)), true, u_input.b < u_input.a.x), _wgslsmith_f_op_f32(sign(1239f)) >= _wgslsmith_f_op_f32(max(-567f, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(603f, 917f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(260f, -387f) - vec2<f32>(1294f, 1418f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(673f, 544f), vec2<f32>(-222f, -798f), true)))), select(!select(vec3<bool>(true, false, true), func_4(Struct_4(Struct_3(u_input.a.x, vec3<f32>(-693f, 651f, 1627f), 1033f, vec2<f32>(-891f, 572f), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false))), 19100i, vec4<bool>(false, true, false, true)), u_input.a, vec4<bool>(false, false, true, true), 15700u).b, select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), func_4(Struct_4(func_6(vec3<bool>(true, false, true), vec2<bool>(false, false), Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, false))).a, u_input.b | 0i, func_6(vec3<bool>(true, true, false), vec2<bool>(true, false), Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true))).c), min(firstLeadingBit(u_input.a), _wgslsmith_mod_vec2_i32(u_input.a, u_input.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), 1u).b, true));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 433f, _wgslsmith_f_op_f32(645f + _wgslsmith_f_op_f32(f32(-1f) * -471f)), 1457f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1477f, -1257f, -139f, -113f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-484f, -1904f, -662f, -555f) * vec4<f32>(1110f, -259f, -145f, 838f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-278f, 1259f, 598f, -892f))) + vec4<f32>(1211f, -157f, 641f, 965f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 223f, var_1.x) * var_1)) + var_1) * var_1), vec4<f32>(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_0.a.x))))), var_1.x, var_1.x, _wgslsmith_div_f32(-794f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -926f), 257f)))));
    var var_3 = Struct_1(vec2<bool>(var_0.a.x, 57002u > ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 13477u), vec3<u32>(0u, 25906u, 59316u))), !select(!func_6(vec3<bool>(var_0.a.x, var_0.b.x, var_0.b.x), vec2<bool>(false, var_0.a.x), Struct_1(var_0.a, vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x))).a.e.b, var_0.b, var_0.a.x | func_6(var_0.b, vec2<bool>(true, var_0.b.x), Struct_1(var_0.a, var_0.b)).c.x));
    let var_4 = var_3.b;
    let var_5 = countOneBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), reverseBits(vec2<u32>(39449u, 1u)), vec2<u32>(1u, 4294967295u))));
    var var_6 = Struct_2(func_7(!vec4<bool>(var_3.b.x, !var_4.x, !var_3.a.x, true), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(select(1057f, -1353f, false))), var_1.xz), var_3.b), func_5(968f, func_2(vec2<u32>(39330u, 0u), !(!vec3<bool>(var_3.a.x, true, var_0.a.x)), !select(vec3<bool>(var_3.b.x, false, true), vec3<bool>(false, false, true), var_3.b)).e, func_6(var_3.b, vec2<bool>(true, true), Struct_1(vec2<bool>(false, var_3.a.x), func_5(var_1.x, Struct_1(vec2<bool>(true, var_0.b.x), var_0.b), Struct_4(Struct_3(12781i, vec3<f32>(-516f, var_2.x, var_1.x), -173f, var_1.yw, Struct_1(vec2<bool>(false, false), vec3<bool>(var_0.a.x, var_3.b.x, var_4.x))), u_input.a.x, vec4<bool>(var_4.x, var_0.a.x, true, true)), Struct_1(vec2<bool>(var_0.a.x, true), var_0.b)).b)), func_7(!select(vec4<bool>(false, true, var_4.x, true), vec4<bool>(false, false, true, var_3.a.x), vec4<bool>(false, false, true, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yw) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-782f, var_1.x))), func_2(select(var_5, vec2<u32>(var_5.x, var_5.x), var_4.xy), select(vec3<bool>(var_3.b.x, false, true), vec3<bool>(var_4.x, var_3.a.x, var_4.x), true), !vec3<bool>(var_3.a.x, var_4.x, var_4.x)).e.b)), ~0i);
    var_3 = var_6.b;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_5, var_3.b, var_3.b).c, firstLeadingBit(vec3<u32>(~1u, var_5.x, ~(var_5.x ^ var_5.x))), var_5.x, -37754i);
}

