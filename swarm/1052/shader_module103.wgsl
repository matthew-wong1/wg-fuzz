struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<f32>(-821f, 197f), -1000f), Struct_1(vec2<f32>(388f, 1523f), -1396f), Struct_1(vec2<f32>(1497f, -116f), -1656f), Struct_1(vec2<f32>(424f, -1104f), 862f), Struct_1(vec2<f32>(514f, 735f), 802f), Struct_1(vec2<f32>(-835f, 1000f), 177f), Struct_1(vec2<f32>(-190f, 300f), -883f), Struct_1(vec2<f32>(-834f, 274f), 299f), Struct_1(vec2<f32>(1044f, -1089f), -366f), Struct_1(vec2<f32>(-832f, -717f), 854f), Struct_1(vec2<f32>(165f, -1000f), -201f), Struct_1(vec2<f32>(878f, -1029f), 498f), Struct_1(vec2<f32>(149f, -887f), 1215f), Struct_1(vec2<f32>(1242f, -842f), 484f), Struct_1(vec2<f32>(-1505f, -210f), 486f), Struct_1(vec2<f32>(1832f, 1180f), -250f), Struct_1(vec2<f32>(1000f, -896f), -572f), Struct_1(vec2<f32>(1000f, 944f), 585f), Struct_1(vec2<f32>(1022f, 193f), 1242f), Struct_1(vec2<f32>(2274f, -280f), 238f), Struct_1(vec2<f32>(319f, 1139f), 1138f), Struct_1(vec2<f32>(758f, 869f), -1863f), Struct_1(vec2<f32>(580f, 492f), -341f), Struct_1(vec2<f32>(-1000f, -1043f), -1391f), Struct_1(vec2<f32>(-1153f, -624f), -1370f), Struct_1(vec2<f32>(-460f, 186f), -1057f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(703f, -1832f), vec2<f32>(998f, -622f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-237f, 884f), vec2<f32>(1222f, 1149f)))))), 1510f);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(573f, -1000f, true))), _wgslsmith_f_op_f32(-var_0.b)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(ceil(var_0.b)), true)), _wgslsmith_div_f32(var_0.b, 1134f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(141f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_0.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(var_0.a.x * 180f), vec3<bool>(true, all(vec4<bool>(true, any(vec3<bool>(false, false, false)), true, any(vec3<bool>(true, true, true)))), true), vec4<i32>(u_input.c.x, firstTrailingBit(-1i), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, u_input.c.x, 2147483647i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, 0i, 0i, -43163i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(28091i, -15904i, u_input.c.x, u_input.c.x))), _wgslsmith_add_i32(~countOneBits(8724i), abs(~u_input.c.x))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(u_input.b, ~30825u), _wgslsmith_clamp_u32(firstTrailingBit(u_input.a), firstLeadingBit(u_input.b), ~u_input.a)) >> (0u % 32u), 26u)]);
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-326f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.b, -1140f)), _wgslsmith_div_f32(-1423f, 758f))), _wgslsmith_f_op_f32(-538f * _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1203f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.d.a.x, var_0.a.x, -1709f, -568f)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_0.b, var_0.b, -1479f), vec4<f32>(var_0.a.x, 1127f, 1631f, var_1.a)), vec4<f32>(var_1.d.a.x, -715f, 111f, -273f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1059f, 1025f, 1000f, 269f), vec4<f32>(var_0.b, -759f, -528f, var_0.a.x), true)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.b, var_1.a, var_1.d.a.x, -404f) * vec4<f32>(-403f, var_1.a, var_0.a.x, -1238f))))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), 341f, _wgslsmith_f_op_f32(exp2(var_1.d.a.x)), var_0.a.x))));
    var var_3 = u_input.c.x;
    return -(~(-_wgslsmith_mod_i32(19067i, var_1.c.x))) << (~(~1u) % 32u);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = -_wgslsmith_sub_i32(-1i, reverseBits(20793i));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(-1615f)), vec3<bool>(any(vec4<bool>(false, true, true, arg_1.x >= arg_0.x)), any(vec3<bool>(true, true, true)), ~reverseBits(var_0) < func_3()), vec4<i32>(countOneBits(-2147483647i), -1i << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_2.x, 34958u), 4294967295u) % 32u), ~u_input.c.x, -9757i), global0[_wgslsmith_index_u32(arg_2.x, 26u)]);
    let var_2 = firstLeadingBit(~firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(var_1.c, vec4<i32>(u_input.c.x, 1i, 1i, u_input.c.x)), var_1.c & var_1.c)));
    var var_3 = u_input.c.x;
    let var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-463f + var_1.d.a.x), var_1.a), _wgslsmith_f_op_f32(-var_1.a));
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1034f, var_4.a.x) + var_4.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(536f, var_4.b))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, 1000f) + vec2<f32>(var_1.d.a.x, var_4.a.x)), var_1.d.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-537f, _wgslsmith_f_op_f32(var_1.d.b * var_4.a.x)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_4.a.x, 1530f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b) * _wgslsmith_f_op_f32(1132f * 1751f)));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a * vec2<f32>(565f, 748f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(995f, arg_0.a.x) * vec2<f32>(701f, arg_0.b)))))), arg_0.a.x);
    var var_1 = ~31830u;
    return ~vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, arg_1)), countOneBits(vec3<u32>(1u, 8595u, 24775u) << (vec3<u32>(arg_1, arg_1, 10532u) % vec3<u32>(32u)))), reverseBits(firstLeadingBit(29338u)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(arg_1.a.x, select(vec3<bool>(any(vec3<bool>(true, true, true)), true, true), vec3<bool>(true, !(524f <= arg_1.a.x), true), true || all(vec3<bool>(false, false, true))), -reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 17433i), u_input.c.xx), max(-1i, u_input.c.x), -u_input.c.x, ~(-2147483647i))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, abs(max(1u, 110332u))), 26u)]);
    let var_1 = _wgslsmith_mult_u32(24916u, 0u);
    global0 = array<Struct_1, 26>();
    var var_2 = vec2<bool>(!(!(var_0.d.b > _wgslsmith_f_op_f32(arg_1.a.x - var_0.a))), _wgslsmith_mult_u32(func_4(Struct_1(vec2<f32>(var_0.a, var_0.a), var_0.d.a.x), ~u_input.b).x, _wgslsmith_add_u32(u_input.a, 1u)) >= u_input.a);
    var_2 = select(vec2<bool>(58962u < u_input.b, true), vec2<bool>(!var_2.x, true), var_0.b.yy);
    return Struct_2(_wgslsmith_f_op_f32(sign(-799f)), !vec3<bool>(var_0.b.x, all(var_0.b.yz), any(select(vec2<bool>(var_0.b.x, false), vec2<bool>(true, var_0.b.x), vec2<bool>(var_0.b.x, var_2.x)))), var_0.c, Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(532f, 1523f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1053f, 1881f))))), -871f));
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(_wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(~u_input.a), 21082u, 16788u), ~func_4(func_2(vec3<u32>(0u, 0u, u_input.b), vec4<u32>(14359u, 9155u, u_input.b, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)), 0u)), func_2(firstLeadingBit(~(~vec3<u32>(13078u, u_input.a, u_input.b))), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.b, u_input.a, 24941u)) << (min(vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b), vec4<u32>(1u, 70692u, u_input.b, 1u)) % vec4<u32>(32u)), vec4<u32>(4297u, 42786u, 10281u, u_input.b) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 107655u, u_input.b), vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.b, u_input.b), min(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 0u, 0u)))));
    global0 = array<Struct_1, 26>();
    var var_1 = var_0.d.b;
    var var_2 = func_5(vec3<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), _wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, u_input.b, u_input.b, u_input.b), vec4<u32>(28501u, u_input.b, u_input.b, u_input.b)) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 54174u, u_input.b, 46786u), vec4<u32>(1u, u_input.b, u_input.b, 1u)), ~vec4<u32>(u_input.a, u_input.a, 65366u, u_input.b)), ~12570u), func_5(vec3<u32>(_wgslsmith_mod_u32(~14214u, u_input.b & 1u), ~_wgslsmith_mod_u32(u_input.b, u_input.a), _wgslsmith_sub_u32(1u, countOneBits(1u))), global0[_wgslsmith_index_u32(4294967295u, 26u)]).d);
    var_2 = func_5(vec3<u32>(_wgslsmith_clamp_u32(~0u | u_input.a, ~(~u_input.b), u_input.b), 0u, 1u), func_5(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.b), vec3<u32>(u_input.a, u_input.b, 68494u)) & vec3<u32>(u_input.a, 36189u, 13327u), ~(vec3<u32>(4294967295u, 82605u, u_input.a) << (vec3<u32>(u_input.b, 337u, u_input.b) % vec3<u32>(32u)))), var_2.d).d);
    return func_5(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, reverseBits(~28302u), u_input.a), vec3<u32>(~u_input.a, u_input.a, 4294967295u)), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 26u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_i32(min(~((vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x) ^ u_input.c) | u_input.c), -u_input.c ^ -u_input.c), u_input.c, vec3<i32>(u_input.c.x, u_input.c.x, -4603i));
    var var_1 = func_1();
    var_0 = u_input.c;
    var_0 = min(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_mod_i32(0i, var_0.x), ~0i, _wgslsmith_div_i32(var_1.c.x, var_1.c.x)), ~var_1.c.xzw);
    let var_2 = Struct_1(var_1.d.a, var_1.a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1325f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(373f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec2<bool>(false, var_1.b.x))))))));
    var var_4 = !var_1.b;
    var_0 = func_5(~_wgslsmith_add_vec3_u32(firstTrailingBit(abs(vec3<u32>(0u, u_input.b, 68187u))), ~(~vec3<u32>(17771u, u_input.a, 99997u))), func_5(~abs(firstTrailingBit(vec3<u32>(65156u, u_input.a, 7517u))), var_2).d).c.ywx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(func_5(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 20551u, 0u), firstLeadingBit(vec3<u32>(4294967295u, u_input.b, 4294967295u))), func_1().d).a)), var_0.x, vec3<i32>(-((u_input.c.x ^ 21250i) >> (u_input.a % 32u)), var_1.c.x, 14874i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-473f)))), vec3<u32>(~max(11401u, 54600u), _wgslsmith_add_u32(max(select(20617u, u_input.b, var_4.x), _wgslsmith_mod_u32(1u, 670u)), ~(~u_input.a)), 1u));
}

