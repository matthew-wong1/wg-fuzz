struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1134f;

var<private> global1: vec2<bool>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_3) -> f32 {
    var var_0 = Struct_4(~(~_wgslsmith_add_u32(1u, arg_3.c)), ~reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(74916u, arg_0.a, u_input.b.x), ~u_input.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-2942f)), _wgslsmith_f_op_f32(1160f + 2154f)))))), select(vec2<bool>(arg_3.d.x, !(!global1.x)), vec2<bool>(arg_3.d.x, true), all(vec4<bool>(global1.x, select(global1.x, arg_3.d.x, true), global1.x, all(vec2<bool>(arg_3.d.x, true))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(674f - -157f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-302f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(476f - _wgslsmith_f_op_f32(round(-1224f))) * _wgslsmith_f_op_f32(ceil(299f))), _wgslsmith_div_f32(540f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1247f, 363f))))));
    let var_1 = arg_3.b.c;
    let var_2 = arg_2;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.e.x * _wgslsmith_f_op_f32(var_0.c - -1055f))))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_3 = _wgslsmith_div_vec3_u32(u_input.b, reverseBits(_wgslsmith_add_vec3_u32(select(select(var_0.b, var_0.b, arg_3.d.ywy), u_input.b, all(arg_3.d.zyy)), vec3<u32>(~var_0.a, ~0u, ~1u))));
    return var_0.e.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_5 {
    global0 = -836f;
    var var_0 = Struct_4(~(~(~(~1u))), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_3.a, 73339u), firstLeadingBit(~(~vec3<u32>(arg_3.a, arg_1.b.c.a, arg_1.c)))), -143f, arg_2, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1000f, 628f, -150f) - vec4<f32>(212f, -819f, arg_0.x, 1963f)) + arg_0)), arg_0));
    let var_1 = 1000f;
    var var_2 = ~arg_1.b.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(27323u), vec2<u32>(arg_1.a.c.a, arg_3.a), vec4<i32>(arg_1.b.b, arg_1.b.b, -2147483647i, -1i), arg_1)), -936f, _wgslsmith_f_op_f32(f32(-1f) * -938f)))));
    return Struct_5(Struct_2(max(~_wgslsmith_mult_u32(var_0.a, arg_3.a), arg_1.e.a), _wgslsmith_add_i32(29844i, -5754i), Struct_1(reverseBits(1u))), arg_3, _wgslsmith_f_op_f32(-var_1), u_input.b.zy ^ max(~(~vec2<u32>(arg_3.a, arg_3.a)), ~(~u_input.b.yy)), 0i);
}

fn func_4(arg_0: Struct_5) -> vec4<bool> {
    let var_0 = select(_wgslsmith_sub_vec4_u32((vec4<u32>(1u, u_input.b.x, 26431u, 6783u) & ~vec4<u32>(1u, 0u, 0u, 42739u)) >> (firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x))) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.b.x, arg_0.d.x, 11934u, u_input.b.x)) ^ abs(countOneBits(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u)))), vec4<u32>(abs(u_input.b.x), 0u, u_input.b.x, u_input.b.x), global1.x);
    global0 = 809f;
    var var_1 = any(vec2<bool>(true, !(!(!global1.x))));
    return !vec4<bool>(select(any(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), global1.x)), global1.x | !global1.x, !(!global1.x)), !(true | global1.x), any(vec3<bool>(true, global1.x, !global1.x)), all(select(!vec2<bool>(false, global1.x), select(vec2<bool>(false, true), vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x)), any(vec3<bool>(false, true, false)))));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: i32) -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f)))) + -1484f) - 953f);
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), Struct_3(Struct_2(func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-524f, 798f, -797f, -2308f))), Struct_3(Struct_2(u_input.b.x, u_input.a.x, Struct_1(u_input.b.x)), Struct_2(u_input.b.x, arg_0, Struct_1(0u)), 54757u, vec4<bool>(true, global1.x, global1.x, arg_1.x), Struct_1(u_input.b.x)), vec2<bool>(false, false), Struct_1(1u)).a.a, arg_0, Struct_1(u_input.b.x)), Struct_2(_wgslsmith_mod_u32(u_input.b.x ^ 4294967295u, u_input.b.x), reverseBits(arg_0), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1263f, -2782f, 1579f, 370f)), Struct_3(Struct_2(u_input.b.x, 77922i, Struct_1(u_input.b.x)), Struct_2(u_input.b.x, -1i, Struct_1(60428u)), u_input.b.x, arg_1, Struct_1(17056u)), vec2<bool>(global1.x, global1.x), Struct_1(1u)).a.c), ~u_input.b.x, !vec4<bool>(true, any(vec3<bool>(arg_1.x, true, false)), true, !arg_1.x), Struct_1(u_input.b.x)), arg_1.xx, func_2(vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(415f + -570f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(156f + -429f), _wgslsmith_f_op_f32(305f - 548f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(101f)))), Struct_3(Struct_2(u_input.b.x | u_input.b.x, u_input.a.x, Struct_1(u_input.b.x)), Struct_2(1u, arg_2, func_2(vec4<f32>(-436f, 596f, -514f, 2157f), Struct_3(Struct_2(2557u, 2147483647i, Struct_1(0u)), Struct_2(13473u, arg_0, Struct_1(7574u)), 1u, arg_1, Struct_1(21396u)), vec2<bool>(false, arg_1.x), Struct_1(u_input.b.x)).b), u_input.b.x, select(arg_1, select(arg_1, arg_1, vec4<bool>(arg_1.x, true, global1.x, arg_1.x)), true), func_2(vec4<f32>(1070f, -688f, 1234f, -276f), Struct_3(Struct_2(65844u, -2147483647i, Struct_1(4160u)), Struct_2(u_input.b.x, -32607i, Struct_1(u_input.b.x)), 4294967295u, arg_1, Struct_1(u_input.b.x)), arg_1.xz, Struct_1(u_input.b.x)).b), vec2<bool>(global1.x, true), Struct_1(1u << (_wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(u_input.b.x, u_input.b.x)) % 32u))).a.c).b;
    var var_1 = vec3<bool>(any(arg_1.wz), false, false);
    var var_2 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(abs(firstTrailingBit(arg_2)), firstTrailingBit(select(-6555i, arg_2, global1.x)), _wgslsmith_add_i32(-835i, func_2(vec4<f32>(-485f, 950f, 1542f, 2688f), Struct_3(Struct_2(var_0.a, 38540i, var_0), Struct_2(var_0.a, -28680i, Struct_1(var_0.a)), 0u, arg_1, Struct_1(51614u)), vec2<bool>(var_1.x, global1.x), var_0).a.b), ~(-38938i)), firstTrailingBit(u_input.a));
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(500f, 797f, 241f, 1062f), vec4<f32>(252f, 718f, -411f, 640f), vec4<bool>(true, global1.x, arg_1.x, var_1.x))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -251f, 1619f, -300f), vec4<f32>(2531f, -489f, 803f, 1525f), arg_1)))))))), Struct_3(Struct_2(96658u, ~(-u_input.a.x), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-707f, -583f, 227f, 794f)), Struct_3(Struct_2(var_0.a, arg_2, var_0), Struct_2(11934u, var_2.x, Struct_1(u_input.b.x)), 4294967295u, vec4<bool>(false, global1.x, false, false), Struct_1(u_input.b.x)), func_4(Struct_5(Struct_2(0u, arg_0, var_0), var_0, -2473f, vec2<u32>(4294967295u, var_0.a), 1i)).yz, func_2(vec4<f32>(-1340f, -1000f, -125f, -1000f), Struct_3(Struct_2(55173u, 6182i, var_0), Struct_2(16391u, 1i, Struct_1(36492u)), 4294967295u, arg_1, Struct_1(10498u)), vec2<bool>(arg_1.x, arg_1.x), var_0).a.c).a.c), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(348f, -170f, 240f, 2012f) + vec4<f32>(1468f, 162f, 559f, 1784f))), Struct_3(Struct_2(var_0.a, arg_2, Struct_1(55328u)), Struct_2(85980u, -1i, Struct_1(u_input.b.x)), 1u, !arg_1, func_2(vec4<f32>(596f, 168f, 1543f, 1387f), Struct_3(Struct_2(31703u, arg_2, Struct_1(u_input.b.x)), Struct_2(4294967295u, -2147483647i, Struct_1(0u)), 49121u, vec4<bool>(global1.x, global1.x, global1.x, arg_1.x), var_0), vec2<bool>(false, global1.x), Struct_1(u_input.b.x)).a.c), !arg_1.xy, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1381f, -1049f, -1167f, -1469f) - vec4<f32>(-139f, -101f, 1304f, -490f)), Struct_3(Struct_2(1u, var_2.x, var_0), Struct_2(0u, 0i, Struct_1(78902u)), 21459u, vec4<bool>(false, true, false, false), var_0), select(vec2<bool>(true, arg_1.x), vec2<bool>(false, arg_1.x), vec2<bool>(true, true)), var_0).a.c).a, ~var_0.a, arg_1, var_0), arg_1.xx, func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-426f, _wgslsmith_f_op_f32(-1422f * 1000f), _wgslsmith_f_op_f32(trunc(-930f)), -1264f))), Struct_3(func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-321f, 1372f, -178f, 2204f))), Struct_3(Struct_2(3315u, arg_2, Struct_1(u_input.b.x)), Struct_2(var_0.a, arg_0, Struct_1(var_0.a)), 4294967295u, arg_1, Struct_1(4294967295u)), !vec2<bool>(global1.x, global1.x), Struct_1(var_0.a)).a, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(117f, 1091f, -411f, 566f)), Struct_3(Struct_2(40360u, u_input.a.x, Struct_1(4294967295u)), Struct_2(678u, 1i, var_0), u_input.b.x, vec4<bool>(global1.x, true, true, global1.x), Struct_1(var_0.a)), !var_1.xz, Struct_1(var_0.a)).a, u_input.b.x, arg_1, Struct_1(38029u)), func_4(Struct_5(Struct_2(u_input.b.x, 2147483647i, Struct_1(var_0.a)), var_0, _wgslsmith_f_op_f32(abs(245f)), u_input.b.yz << (u_input.b.xx % vec2<u32>(32u)), _wgslsmith_mult_i32(arg_2, 2147483647i))).wy, Struct_1(reverseBits(var_0.a))).a.c).a.c;
    return !(!(arg_2 < -var_2.x));
}

fn func_1(arg_0: f32, arg_1: bool) -> i32 {
    global1 = select(!vec2<bool>(true, ~u_input.a.x != 1i), select(vec2<bool>(arg_1, false), vec2<bool>(true, true), vec2<bool>(max(u_input.a.x, -41665i) < -68931i, !(6538u > u_input.b.x))), func_5(u_input.a.x, func_4(func_2(vec4<f32>(-251f, -882f, 484f, arg_0), Struct_3(Struct_2(u_input.b.x, 21441i, Struct_1(u_input.b.x)), Struct_2(4294967295u, u_input.a.x, Struct_1(118u)), 0u, vec4<bool>(true, true, true, arg_1), Struct_1(u_input.b.x)), vec2<bool>(true, false), Struct_1(u_input.b.x))), -1i >> (u_input.b.x % 32u)) | global1.x);
    var var_0 = _wgslsmith_div_i32(~u_input.a.x, u_input.a.x) | _wgslsmith_add_i32(firstLeadingBit(abs(u_input.a.x)), u_input.a.x);
    var var_1 = _wgslsmith_clamp_vec3_i32(countOneBits(u_input.a.zzw), u_input.a.xyz, u_input.a.xwx);
    var_0 = -(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_1.xx, vec2<i32>(var_1.x, u_input.a.x)), -var_1.x) << (firstTrailingBit(_wgslsmith_add_u32(14020u, _wgslsmith_mod_u32(u_input.b.x, 59924u))) % 32u));
    var_0 = u_input.a.x;
    return 0i;
}

fn func_6(arg_0: vec4<i32>, arg_1: u32) -> vec2<bool> {
    global1 = select(vec2<bool>(true, false), !vec2<bool>(u_input.b.x < _wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.xx), !global1.x), any(!select(func_4(Struct_5(Struct_2(arg_1, 48294i, Struct_1(u_input.b.x)), Struct_1(arg_1), 938f, u_input.b.xy, -2147483647i)).yy, vec2<bool>(global1.x, global1.x), global1.x)));
    let var_0 = Struct_1(1u);
    var var_1 = -272f;
    var var_2 = all(vec2<bool>(global1.x, ~abs(59017u) <= min(select(arg_1, 48704u, global1.x), 520u)));
    var var_3 = u_input.b;
    return select(!(!vec2<bool>(true, any(vec3<bool>(global1.x, global1.x, global1.x)))), vec2<bool>((~arg_1 ^ _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)) <= u_input.b.x, true), select(global1.x, false, global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(vec4<i32>(func_1(_wgslsmith_f_op_f32(round(-1274f)), !global1.x), u_input.a.x, u_input.a.x, abs(u_input.a.x)), abs(u_input.b.x));
    var var_0 = firstTrailingBit(u_input.b.x);
    var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(max(-1997f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-918f, 565f))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(464f, 642f))), _wgslsmith_f_op_f32(-1000f - 1f), global1.x)))));
    var var_2 = ~u_input.a.wwx;
    let var_3 = Struct_3(Struct_2(abs(4294967295u), 1i, Struct_1(~99069u)), Struct_2(59083u, u_input.a.x, Struct_1(~(u_input.b.x & 25504u))), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4559u)), countOneBits(~vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(89184u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 4294967295u, 1u)) % vec4<u32>(32u)))), select(!func_4(func_2(vec4<f32>(1639f, var_1, 974f, var_1), Struct_3(Struct_2(u_input.b.x, -2147483647i, Struct_1(3244u)), Struct_2(u_input.b.x, u_input.a.x, Struct_1(47769u)), u_input.b.x, vec4<bool>(false, false, false, global1.x), Struct_1(8265u)), vec2<bool>(global1.x, global1.x), Struct_1(4294967295u))), vec4<bool>(false, true, true, !global1.x), !((7183u << (u_input.b.x % 32u)) < u_input.b.x)), Struct_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u)), select(vec4<u32>(u_input.b.x, 90532u, u_input.b.x, 1u) | vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(0u, u_input.b.x, u_input.b.x, 1u), !vec4<bool>(global1.x, true, true, false)))));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(707f - _wgslsmith_f_op_f32(floor(-1000f))), var_1))), func_2(vec4<f32>(494f, var_1, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1044f)), Struct_3(var_3.b, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(731f, var_1, var_1, var_1) * vec4<f32>(508f, var_1, -1000f, var_1)), var_3, var_3.d.zy, Struct_1(93322u)).a, ~(var_3.a.a & u_input.b.x), var_3.d, var_3.e), func_4(Struct_5(var_3.a, func_2(vec4<f32>(-969f, -326f, 1586f, var_1), var_3, var_3.d.xx, var_3.a.c).a.c, _wgslsmith_f_op_f32(trunc(-528f)), func_2(vec4<f32>(-1000f, -373f, var_1, var_1), Struct_3(Struct_2(3272u, var_3.a.b, Struct_1(u_input.b.x)), Struct_2(u_input.b.x, u_input.a.x, var_3.a.c), 79650u, var_3.d, var_3.a.c), var_3.d.wx, var_3.b.c).d, 36490i)).xx, Struct_1(~var_3.e.a)).c);
    var var_5 = 1538f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) - _wgslsmith_f_op_f32(ceil(1058f))), 29891u, u_input.a, var_4, u_input.b.x);
}

