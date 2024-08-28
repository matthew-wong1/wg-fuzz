struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(-482i, -7488i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, -1i), vec2<i32>(1i, -43347i), vec2<i32>(44811i, 16030i), vec2<i32>(-26167i, i32(-2147483648)), vec2<i32>(-11944i, -17471i), vec2<i32>(-1i, 42294i), vec2<i32>(1i, 0i), vec2<i32>(-32692i, 1i), vec2<i32>(-5018i, 8522i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(31861i, 16266i), vec2<i32>(7899i, 11465i), vec2<i32>(2147483647i, 37255i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(29333i, 49411i), vec2<i32>(0i, -1i), vec2<i32>(19298i, i32(-2147483648)), vec2<i32>(0i, 18665i), vec2<i32>(-1i, 1i), vec2<i32>(2043i, -1931i), vec2<i32>(0i, 2147483647i), vec2<i32>(1749i, 22125i), vec2<i32>(-47172i, i32(-2147483648)), vec2<i32>(-1i, 1i), vec2<i32>(72555i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-11656i, 2147483647i), vec2<i32>(14013i, -1228i), vec2<i32>(i32(-2147483648), 20027i), vec2<i32>(-1i, 37978i));

var<private> global1: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(716f, -375f, -224f, 318f), vec4<f32>(1727f, 1785f, 1000f, 372f), vec4<f32>(-1381f, -452f, -924f, -472f), vec4<f32>(207f, 1384f, -1876f, -1772f), vec4<f32>(1306f, -1736f, 2082f, 451f), vec4<f32>(908f, -1072f, 111f, 1000f), vec4<f32>(-1000f, -973f, 893f, 1118f), vec4<f32>(-771f, -1000f, 881f, -529f), vec4<f32>(-2744f, 485f, -452f, 1000f), vec4<f32>(1523f, -589f, -1953f, 1000f), vec4<f32>(662f, 812f, 521f, 1752f), vec4<f32>(607f, 993f, 1116f, 612f), vec4<f32>(-378f, 1843f, 1726f, 514f), vec4<f32>(698f, -952f, 720f, 404f), vec4<f32>(-1000f, -1514f, 1011f, 162f), vec4<f32>(170f, 692f, -1600f, -389f), vec4<f32>(1000f, -377f, 839f, 1279f), vec4<f32>(1636f, -159f, -1000f, 1000f), vec4<f32>(306f, 1661f, -103f, -435f), vec4<f32>(1673f, -1533f, -236f, 2015f), vec4<f32>(858f, -440f, -640f, 1408f), vec4<f32>(-2008f, -764f, -343f, 339f), vec4<f32>(-914f, -369f, 556f, 1789f), vec4<f32>(1421f, 249f, -3212f, 887f), vec4<f32>(152f, -725f, -636f, 887f), vec4<f32>(-410f, 1388f, 1591f, -1000f), vec4<f32>(639f, -1526f, -1946f, 1999f), vec4<f32>(114f, -1640f, 386f, 576f), vec4<f32>(445f, 1495f, -985f, 877f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>) -> vec3<f32> {
    var var_0 = ~(~(~select(39008u, 0u, false) >> (~6745u % 32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * arg_0.x))));
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, 0u)), ~vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_clamp_u32(1u, 1u, ~0u), 1u), 24163u, 2935u, select(~(~4294967295u), max(~59393u, 7299u), true && any(vec3<bool>(false, true, false)))));
    var_0 = ~firstLeadingBit(_wgslsmith_mod_u32(var_2 & 40165u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 51583u, 35749u, 4294967295u) << (vec4<u32>(4294967295u, 0u, var_2, 32546u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, var_2, var_2, 30826u))));
    let var_3 = Struct_1(20995i, var_1);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, var_1.x, arg_0.x), vec3<f32>(-764f, 1793f, -233f), select(false, false, false))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.x, arg_0.x, var_1.x) - vec3<f32>(arg_0.x, -1217f, -829f)))), vec3<f32>(1f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 1057f)))), select(vec3<bool>(true, any(vec2<bool>(false, false)), true), vec3<bool>(true, true, true), true))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(-739f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(953f))) + 257f), _wgslsmith_f_op_f32(f32(-1f) * -328f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -1938f) - vec3<f32>(arg_1, arg_1, -537f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-310f, 1045f, 220f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(617f, -1819f)))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(step(1093f, 384f))))), arg_1, 411f));
    var var_1 = ~(~vec4<u32>(4294967295u, 1u, firstLeadingBit(~9906u), ~_wgslsmith_add_u32(1155u, 0u)));
    let var_2 = select(!(!vec3<bool>(-1046f == arg_1, true, true)), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), var_0.x == var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec2<bool>(true, true))), select(var_1.x > 1u, true, true)), true);
    var var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(~_wgslsmith_add_vec3_u32(var_1.xwy, var_1.xyz)), var_1.wzx), select(firstTrailingBit(~var_1.xzw), firstTrailingBit(~vec3<u32>(67268u, 0u, 32052u)), select(!var_2, select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(false, true, var_2.x), vec3<bool>(false, true, var_2.x)), !vec3<bool>(var_2.x, false, true))) & (vec3<u32>(~var_1.x, var_1.x, select(var_1.x, 11967u, var_2.x)) & vec3<u32>(_wgslsmith_mult_u32(var_1.x, var_1.x), 45790u, _wgslsmith_div_u32(9126u, 1u))));
    let var_4 = max(arg_0, vec3<i32>(-42972i, 14425i, ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -33895i, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, 1i, arg_0.x, -12580i)), 0i)));
    return abs(_wgslsmith_clamp_vec3_u32(max(var_1.xzw, firstTrailingBit(vec3<u32>(var_3.x, 0u, var_3.x)) << (var_1.yyy % vec3<u32>(32u))), vec3<u32>(1u, ~_wgslsmith_dot_vec2_u32(var_3.xx, vec2<u32>(var_3.x, var_1.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8843u, 12485u, 22586u), vec4<u32>(78997u, 19417u, 30511u, 31222u))), vec3<u32>(var_3.x ^ (var_1.x << (var_1.x % 32u)), _wgslsmith_mod_u32(16483u, 39791u), var_3.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(~1u, _wgslsmith_dot_vec3_u32(func_2(abs(~vec3<i32>(u_input.a, u_input.a, -33077i)), -988f), ~abs(~vec3<u32>(4294967295u, 29928u, 4294967295u))), -1i, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), -53594i, select(76508i, 31216i, false)), vec4<i32>(-1i) * -vec4<i32>(18008i, 5647i, u_input.a, 1i)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-541f, _wgslsmith_f_op_f32(-445f + 2153f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2123f, -1115f))))))));
    global1 = array<vec4<f32>, 29>();
    var_0 = Struct_2(var_0.b, 1u, countOneBits(max(-1i, firstTrailingBit(31546i))), var_0.d);
    var var_1 = -(~2147483647i);
    var_0 = Struct_2(~(~var_0.b), ~(var_0.b << (~(~1u) % 32u)), -2147483647i, var_0.d);
    return Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1256f, var_0.d.b.x))) - var_0.d.b) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1487f, var_0.d.b.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(arg_1.b, 29u)];
    var var_1 = Struct_2(arg_1.a, ~(~_wgslsmith_div_u32(abs(9790u), 21772u)), arg_0.a, Struct_1(reverseBits(_wgslsmith_div_i32(~arg_2, reverseBits(-15066i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_3.b.x, arg_0.b.x))) - _wgslsmith_f_op_vec2_f32(arg_3.b - vec2<f32>(843f, -1000f))) * _wgslsmith_f_op_vec2_f32(select(arg_1.d.b, var_0.xz, true)))));
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_1.a, ~(~arg_1.b), _wgslsmith_div_u32(1u, var_1.a)), ~arg_1.a) ^ 11268u, 29u)];
    global0 = array<vec2<i32>, 32>();
    var_1 = Struct_2(arg_1.a, 4294967295u, -_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(arg_1.a, 32u)] << (vec2<u32>(arg_1.b, 12362u) % vec2<u32>(32u))) << (arg_1.b % 32u), arg_0);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(all(vec4<bool>(false, true, true, false)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true, func_4(func_1(), Struct_2(174u, 1u, u_input.a, Struct_1(u_input.a, vec2<f32>(-753f, -456f))), ~1i, Struct_1(19891i, vec2<f32>(-915f, 549f))))) && !any(vec2<bool>(true, u_input.a > -19627i));
    var var_1 = func_1();
    var_1 = func_1();
    var_1 = Struct_1(20945i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(select(1562f, 310f, true))))));
    var var_2 = !(!(!(!select(vec4<bool>(true, var_0, false, true), vec4<bool>(var_0, var_0, var_0, var_0), var_0))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2343f, 2023f, _wgslsmith_f_op_f32(f32(-1f) * -548f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b.x, var_1.b.x, 483f), vec3<f32>(-1000f, -139f, 704f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, 1108f, var_1.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1100f, var_1.b.x, var_1.b.x)))) - vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(var_1.b.x - var_1.b.x), -246f)), !select(true, var_2.x, var_2.x) && any(var_2.zz))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-var_1.a, u_input.a, -u_input.a, firstTrailingBit(_wgslsmith_sub_i32(var_1.a, 14012i)) ^ (u_input.a << (~4294967295u % 32u))), abs(var_1.a), -2147483647i, _wgslsmith_f_op_f32(exp2(var_3.x)));
}

