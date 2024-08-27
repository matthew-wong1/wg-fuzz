struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec4<f32>(-135f, 1954f, 2177f, -1073f), vec2<i32>(-1i, 1i), vec4<u32>(1u, 55300u, 0u, 4294967295u), 1615i, 55602u), Struct_2(vec4<f32>(-3161f, 1175f, 2791f, 163f), vec2<i32>(2113i, 0i), vec4<u32>(93891u, 1u, 0u, 0u), -14156i, 0u), Struct_2(vec4<f32>(-1511f, -219f, -188f, 2110f), vec2<i32>(13465i, 0i), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), -13684i, 62570u), Struct_2(vec4<f32>(-433f, 1163f, 368f, -1686f), vec2<i32>(2147483647i, -3032i), vec4<u32>(66967u, 1u, 4294967295u, 68371u), 0i, 11649u), Struct_2(vec4<f32>(1210f, 1066f, 1055f, 237f), vec2<i32>(75264i, i32(-2147483648)), vec4<u32>(8571u, 0u, 4294967295u, 37800u), 21135i, 1u), Struct_2(vec4<f32>(1235f, -1409f, -726f, -692f), vec2<i32>(21235i, 37660i), vec4<u32>(4294967295u, 2416u, 14788u, 4294967295u), 1i, 0u), Struct_2(vec4<f32>(-849f, 1815f, 1000f, -1321f), vec2<i32>(0i, 0i), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), 19038i, 22863u), Struct_2(vec4<f32>(795f, 151f, -706f, 199f), vec2<i32>(-19585i, 22281i), vec4<u32>(27704u, 2255u, 1u, 1u), -44455i, 1u), Struct_2(vec4<f32>(132f, 736f, 1083f, -864f), vec2<i32>(2147483647i, 2147483647i), vec4<u32>(26777u, 1u, 42212u, 24872u), -8730i, 1u), Struct_2(vec4<f32>(419f, 846f, -1849f, 583f), vec2<i32>(-56006i, 0i), vec4<u32>(11727u, 4294967295u, 4294967295u, 4294967295u), i32(-2147483648), 0u), Struct_2(vec4<f32>(1000f, -1416f, -109f, -1016f), vec2<i32>(2147483647i, 20631i), vec4<u32>(25536u, 0u, 0u, 1u), 2395i, 0u), Struct_2(vec4<f32>(530f, 1496f, -1958f, 759f), vec2<i32>(-50996i, -71475i), vec4<u32>(1u, 4294967295u, 1u, 63315u), -43018i, 50550u), Struct_2(vec4<f32>(-364f, -1803f, -532f, -1003f), vec2<i32>(19154i, -41553i), vec4<u32>(0u, 38014u, 82326u, 1u), 77631i, 13477u), Struct_2(vec4<f32>(327f, -439f, 1610f, 1310f), vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(4294967295u, 167u, 15379u, 1u), -48801i, 41015u), Struct_2(vec4<f32>(-1542f, 416f, -1284f, 1505f), vec2<i32>(0i, 0i), vec4<u32>(4294967295u, 6436u, 22361u, 4294967295u), 25441i, 4294967295u), Struct_2(vec4<f32>(-287f, 1718f, 913f, 273f), vec2<i32>(-36445i, 60389i), vec4<u32>(1u, 2094u, 13014u, 73394u), 5276i, 14251u), Struct_2(vec4<f32>(-1862f, 2239f, 1697f, 756f), vec2<i32>(6161i, 10653i), vec4<u32>(50641u, 7203u, 95307u, 0u), 2147483647i, 0u), Struct_2(vec4<f32>(-1000f, 1382f, 521f, 1857f), vec2<i32>(i32(-2147483648), -3833i), vec4<u32>(4294967295u, 1u, 4294967295u, 4605u), 18184i, 1u), Struct_2(vec4<f32>(-655f, -234f, -1157f, -861f), vec2<i32>(i32(-2147483648), 30934i), vec4<u32>(93398u, 0u, 15606u, 33837u), -1i, 1u), Struct_2(vec4<f32>(-1000f, -395f, 646f, -1601f), vec2<i32>(-36292i, 0i), vec4<u32>(1u, 1u, 0u, 62873u), i32(-2147483648), 31989u), Struct_2(vec4<f32>(-692f, -590f, 403f, 148f), vec2<i32>(-30655i, -57278i), vec4<u32>(8769u, 4294967295u, 60841u, 50391u), -30103i, 6388u));

var<private> global1: array<Struct_1, 5>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec2<i32> {
    return select(vec2<i32>(-1i) * -arg_2.b, select(vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_1.d, 5729i)), _wgslsmith_mod_vec2_i32(arg_1.b, vec2<i32>(u_input.a.x, arg_0.b.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.x, 2147483647i, u_input.a.x, arg_1.b.x) | vec4<i32>(u_input.a.x, 11223i, u_input.a.x, arg_2.b.x), vec4<i32>(arg_3.b.x, 0i, -62074i, 24010i) & vec4<i32>(-38541i, -5393i, arg_3.d, arg_0.b.x))), vec2<i32>(~arg_1.d, _wgslsmith_add_i32(-1i, arg_0.d)), vec2<bool>(true, 47533u >= arg_1.c.x)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), arg_2.c.x < 35971u)), vec2<bool>(false, true != any(vec3<bool>(false, false, false))), all(vec2<bool>(true, any(vec4<bool>(true, false, true, true))))));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = countOneBits(~1u);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(701f, -1035f), _wgslsmith_f_op_f32(min(-2094f, _wgslsmith_f_op_f32(abs(674f)))), _wgslsmith_f_op_f32(f32(-1f) * -1145f), _wgslsmith_f_op_f32(sign(-295f)))), ~func_3(Struct_2(vec4<f32>(1342f, -733f, -1238f, -1000f), _wgslsmith_add_vec2_i32(u_input.a.yz, vec2<i32>(u_input.a.x, -43013i)), firstLeadingBit(vec4<u32>(24711u, 1u, 4294967295u, 1u)), firstLeadingBit(u_input.a.x), 0u), global0[_wgslsmith_index_u32(abs(max(0u, 0u)), 21u)], global0[_wgslsmith_index_u32(1u >> (1u % 32u), 21u)], Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(572f, -1000f, 1380f, 106f), vec4<f32>(1512f, -159f, -500f, -990f)), max(vec2<i32>(30891i, 31786i), u_input.a.zy), vec4<u32>(1u, 1u, 1u, 1u), 7393i, ~0u)), vec4<u32>(_wgslsmith_mod_u32(71442u, reverseBits(~3419u)), 51727u, firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(32094u, 22287u, 51039u)), vec3<u32>(1u, 1u, 1u))), 34667u), _wgslsmith_dot_vec2_i32(u_input.a.xz, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) << (~vec2<u32>(5873u, 4294967295u) % vec2<u32>(32u)), ~vec2<i32>(u_input.a.x, 0i) << (~vec2<u32>(45275u, 0u) % vec2<u32>(32u)))), 4294967295u);
    var var_2 = ~vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(var_1.d), _wgslsmith_sub_i32(var_1.d, 1i)), 0i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), abs(var_1.b.x)), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)) << ((vec4<u32>(~min(4294967295u, 0u), abs(1u), 1u, reverseBits(abs(6619u))) & _wgslsmith_sub_vec4_u32(~vec4<u32>(52417u, 37477u, 4294967295u, var_1.c.x) ^ min(var_1.c, var_1.c), vec4<u32>(0u, max(3998u, 6488u), _wgslsmith_dot_vec2_u32(var_1.c.xz, var_1.c.zw), var_1.c.x))) % vec4<u32>(32u));
    global0 = array<Struct_2, 21>();
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-442f, 868f, var_1.a.x, var_1.a.x)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1896f) - _wgslsmith_f_op_f32(round(-314f))), _wgslsmith_f_op_f32(-369f * _wgslsmith_f_op_f32(trunc(-290f))), _wgslsmith_f_op_f32(f32(-1f) * -672f), 1841f)), countOneBits(select(select(u_input.a.xy, vec2<i32>(u_input.a.x, u_input.a.x), any(arg_0.zz)), var_2.zy, select(arg_0.xy, vec2<bool>(arg_0.x, arg_0.x), arg_0.x & true))), ~(~countOneBits(var_1.c)), abs(-var_2.x), abs(_wgslsmith_clamp_u32(4294967295u, select(~71136u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.e, 1u, 50307u, var_1.e), vec4<u32>(19439u, var_1.c.x, var_1.c.x, 4294967295u)), any(vec2<bool>(true, arg_0.x))), 1u)));
    return var_1.c.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    let var_0 = -(u_input.a >> (vec3<u32>(~func_2(vec3<bool>(true, true, false)), ~max(23678u, 5602u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 1u), ~23768u)) % vec3<u32>(32u)));
    global1 = array<Struct_1, 5>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(538f + -605f) + _wgslsmith_div_f32(878f, 1722f)), _wgslsmith_f_op_f32(min(-603f, -484f)), -672f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(582f * -1818f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-412f, 1000f, 2113f, 729f) * vec4<f32>(632f, 198f, -871f, 641f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-931f, -110f, -318f, -1245f)))))), ~countOneBits(select(func_3(Struct_2(vec4<f32>(651f, 727f, -648f, 396f), vec2<i32>(var_0.x, 2147483647i), vec4<u32>(4294967295u, 17742u, 15290u, 35973u), -12439i, 25929u), global0[_wgslsmith_index_u32(8605u, 21u)], global0[_wgslsmith_index_u32(12796u, 21u)], Struct_2(vec4<f32>(170f, 1579f, 267f, -1769f), arg_0, vec4<u32>(1u, 1u, 0u, 1u), var_0.x, 0u)), vec2<i32>(arg_1, arg_0.x), vec2<bool>(true, true))), abs(~vec4<u32>(4294967295u, abs(0u), select(58444u, 0u, false), 1749u)), var_0.x, 0u);
    let var_2 = -4073i & min((countOneBits(var_1.b.x) >> (4294967295u % 32u)) & ~arg_0.x, -_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, 1i, ~(-1i)));
    global1 = array<Struct_1, 5>();
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(2676u, 1u & var_1.c.x), 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<i32>(u_input.a.x, -1i), u_input.a.x >> (firstTrailingBit(~4294967295u) % 32u));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-554f - -1644f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(156f, -644f)), _wgslsmith_div_f32(-2139f, 267f)))), 711f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1870f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(411f)), 591f, true)))), vec2<i32>(-16731i, _wgslsmith_sub_i32(16184i, abs(~u_input.a.x))), vec4<u32>(var_0.a.x, 4294967295u, var_0.a.x, var_0.a.x), abs(abs(var_0.b)), ~_wgslsmith_div_u32(var_0.a.x, 4294967295u));
    let var_2 = -1635f;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-449f, -1129f, _wgslsmith_f_op_f32(217f - 1000f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2, var_1.a.x, 1220f))) * _wgslsmith_f_op_vec3_f32(var_1.a.xxy - var_1.a.zwx))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_1.a.x, 570f)))));
    var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(min(-620f, _wgslsmith_f_op_f32(-var_3.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * -522f)), _wgslsmith_f_op_f32(f32(-1f) * -296f), var_2), reverseBits(u_input.a.yy), firstTrailingBit(~var_0.a), u_input.a.x, reverseBits(var_1.e));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f)), var_2, _wgslsmith_f_op_f32(-var_3.x));
    var var_4 = global1[_wgslsmith_index_u32(4294967295u, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(min(_wgslsmith_clamp_u32(var_0.a.x, ~60002u, 4294967295u << (0u % 32u)), 1u), 1u, 1u), 1i, u_input.a, var_1.a, var_2);
}

