struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = select(-2147483647i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-(~arg_1.a), vec4<i32>(-2147483647i, -61250i >> (0u % 32u), -2147483647i, -2147483647i)), arg_1.a.x, reverseBits(min(24166i, ~40288i))), any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true)), !(-1i > arg_1.a.x))));
    var var_1 = arg_1;
    var var_2 = Struct_1(vec4<i32>(var_1.a.x, min(firstLeadingBit(arg_1.a.x), ~(-arg_0.a.x)), -3488i, _wgslsmith_mult_i32(reverseBits(var_1.a.x), 32238i) | _wgslsmith_dot_vec4_i32(~arg_0.a, ~vec4<i32>(-690i, arg_1.a.x, arg_1.a.x, var_1.a.x))), var_1.b);
    var_2 = Struct_1(arg_1.a << (vec4<u32>(_wgslsmith_mult_u32(arg_0.b ^ u_input.a.x, 17916u), firstLeadingBit(var_1.b), firstLeadingBit(var_1.b), 1u & ~var_2.b) % vec4<u32>(32u)), ~select(abs(firstLeadingBit(30948u)), ~6409u, true));
    var_1 = Struct_1(-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_mod_i32(15744i, arg_1.a.x), _wgslsmith_mod_i32(-1i, -1i), _wgslsmith_mult_i32(58996i, 0i)), var_1.a << (~u_input.a % vec4<u32>(32u))), 4294967295u);
    return 1i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(1i, -1i, 27819i, -2147483647i)), vec4<i32>(~(-46222i), _wgslsmith_add_i32(3847i, 27585i), 1i, ~(-2147483647i)))), ~_wgslsmith_add_u32(~0u, 0u));
    var_0 = Struct_1(max(~select(~var_0.a, select(var_0.a, var_0.a, vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), vec4<i32>(_wgslsmith_mult_i32(var_0.a.x, var_0.a.x), var_0.a.x, var_0.a.x, var_0.a.x) & vec4<i32>(func_3(Struct_1(vec4<i32>(-2147483647i, 0i, -2147483647i, var_0.a.x), u_input.a.x), Struct_1(var_0.a, 0u)), ~(-6167i), ~1i, var_0.a.x)), 1u);
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(~var_0.a, var_0.a), _wgslsmith_sub_u32(1u, abs(var_0.b)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(183f, 1290f, -1750f), vec3<f32>(-535f, 291f, 766f)))) * vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(121f, -775f, 1264f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2692f, 1019f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(162f, 479f, -980f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1766f, 2085f, 1000f)))))));
    var_1 = Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(var_0.a.zw), -(var_1.a.xw << (u_input.a.wx % vec2<u32>(32u)))), -(func_3(Struct_1(var_1.a, 10208u), Struct_1(var_1.a, 1u)) & var_0.a.x), _wgslsmith_add_i32(var_0.a.x, 1i), 0i), 4294967295u);
    return Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-13741i, reverseBits(-var_0.a.x), var_1.a.x, var_0.a.x), select(vec4<i32>(_wgslsmith_sub_i32(0i, var_1.a.x), -2147483647i, var_1.a.x, abs(2147483647i)), ~(-vec4<i32>(1271i, 2228i, -50001i, var_1.a.x)), false)), 35508u);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = (false | (arg_0 >= 0u)) && false;
    var var_1 = -644f;
    var_1 = arg_2.x;
    let var_2 = Struct_1(~vec4<i32>(_wgslsmith_add_i32(2147483647i, -33814i) << (0u % 32u), reverseBits(~(-49014i)), arg_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), abs(vec3<i32>(4895i, -50492i, -59715i)))), countOneBits(4294967295u));
    var_1 = -871f;
    return Struct_1(-(func_2().a | (var_2.a ^ select(arg_1.a, arg_1.a, vec4<bool>(true, true, var_0, true)))), ~(~u_input.a.x) | arg_1.b);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1619f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_3.x, arg_0.x, true)))))));
    var_0 = _wgslsmith_f_op_f32(abs(1000f));
    let var_1 = arg_2;
    var_0 = -365f;
    let var_2 = -1000f;
    return func_2();
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>(firstLeadingBit(1i), min(-32247i, arg_2.x), select(arg_0.a.x, 39115i, all(vec2<bool>(false, true))), ~(-23502i)), ~u_input.a.x);
    let var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(~(~arg_0.a.yw), ~vec2<i32>(-1i, ~1i)), arg_0.a.x, -(~1i), -arg_0.a.x);
    var var_2 = arg_0;
    var_2 = var_0;
    var_2 = func_4(~u_input.a.x, var_0, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2212f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-944f)))), _wgslsmith_f_op_f32(ceil(386f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1442f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -155f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(501f, 1000f, false)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -756f)))))));
    return arg_0;
}

fn func_1() -> i32 {
    let var_0 = func_6(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-840f, 776f))), func_4(u_input.a.x, func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(576f, -152f, 1034f, -443f)))), Struct_1(vec4<i32>(43661i, _wgslsmith_div_i32(-1i, -2147483647i), ~52420i, 1i), 42570u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -427f), -422f, _wgslsmith_f_op_f32(f32(-1f) * -1354f)))), reverseBits(u_input.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(23739i, _wgslsmith_add_i32(-1i, -2147483647i)), ~26420i, 2922i), vec3<i32>(countOneBits(32071i), _wgslsmith_clamp_i32(-2147483647i, 1i, -7031i), ~(-2147483647i)) & ~(~vec3<i32>(0i, 2147483647i, 1i))));
    let var_1 = func_4(func_4(4294967295u, var_0, vec4<f32>(_wgslsmith_f_op_f32(select(910f, _wgslsmith_f_op_f32(round(-2328f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f) - _wgslsmith_f_op_f32(407f * 465f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-690f + -640f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-302f)), _wgslsmith_div_f32(-816f, -475f))))).b, var_0, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-984f, 479f, -1040f, 1044f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1559f, -397f, 480f))) - vec4<f32>(-1758f, _wgslsmith_f_op_f32(-1446f - 124f), _wgslsmith_f_op_f32(step(-1136f, 167f)), -661f)))));
    let var_2 = var_0.a.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-566f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(911f, -555f)))))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -971f)));
    let var_4 = -1068f;
    return _wgslsmith_clamp_i32((~(-1i & var_1.a.x) >> (max(func_5(vec2<f32>(808f, 627f), var_0, var_1, vec3<f32>(var_4, var_4, -1972f)).b, ~u_input.a.x) % 32u)) & 28407i, ~var_2, 7365i);
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = func_4(arg_2.b, arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2392f, -151f, -299f, 241f) - vec4<f32>(-393f, 170f, -1596f, -2605f))))));
    return StorageBuffer(135f, countOneBits(~vec4<i32>(12897i, var_0.a.x, reverseBits(arg_2.a.x), 14269i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(firstLeadingBit(min(vec2<i32>(0i, 1183i), vec2<i32>(-1i, 2147483647i))), -vec2<i32>(1i, 1i)), -30921i);
    let x = u_input.a;
    s_output = func_7(~abs(vec3<i32>(var_0, func_1(), -252i)), Struct_1(~vec4<i32>(_wgslsmith_mult_i32(var_0, -2147483647i), _wgslsmith_sub_i32(-53075i, 21541i), var_0, i32(-1i) * -2147483647i), select(~u_input.a.x, ~_wgslsmith_mod_u32(1u, 4294967295u), true)), Struct_1(select(vec4<i32>(var_0, 0i, var_0, var_0), firstLeadingBit(vec4<i32>(var_0, 1i, var_0, 1i)), false) & (-vec4<i32>(var_0, var_0, var_0, -48619i) & func_2().a), 4294967295u));
}

