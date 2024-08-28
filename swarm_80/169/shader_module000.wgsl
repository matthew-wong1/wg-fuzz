struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5>;

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true)), vec4<f32>(556f, 1279f, -499f, -1581f)), vec4<i32>(-12409i, -1i, 2147483647i, 2147483647i), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), vec4<i32>(2147483647i, 13841i, -33821i, i32(-2147483648))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true)), vec4<f32>(591f, -778f, 792f, 1014f)), vec4<i32>(1930i, 1i, -1i, 2147483647i), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), vec4<i32>(1i, -14256i, -34643i, -1i)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true)), vec4<f32>(-981f, 635f, 974f, -734f)), vec4<i32>(-9855i, 9116i, i32(-2147483648), 1i), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), vec4<i32>(-1i, 24444i, 29714i, -23283i)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true)), vec4<f32>(-1617f, -381f, -562f, 271f)), vec4<i32>(i32(-2147483648), 2147483647i, 1i, 3124i), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), vec4<i32>(16059i, 15257i, -45358i, 5811i)), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true)), vec4<f32>(1319f, -969f, -869f, 654f)), vec4<i32>(-1i, i32(-2147483648), -942i, 0i), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), vec4<i32>(-15293i, 66445i, 37225i, 1i)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true)), vec4<f32>(164f, -715f, 711f, 673f)), vec4<i32>(9874i, 20346i, 0i, -10841i), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), vec4<i32>(-1969i, 0i, 9115i, -1i)), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true)), vec4<f32>(-1477f, 841f, 240f, 1000f)), vec4<i32>(1i, -90210i, 8791i, 54198i), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), vec4<i32>(29467i, 26115i, -8287i, -32338i)), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true)), vec4<f32>(426f, -409f, 282f, 1605f)), vec4<i32>(11887i, i32(-2147483648), 46691i, 2147483647i), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), vec4<i32>(21069i, i32(-2147483648), 0i, -1i)), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false)), vec4<f32>(1000f, -1000f, -160f, 1661f)), vec4<i32>(-47987i, -1i, 0i, 1i), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), vec4<i32>(45465i, 2147483647i, 31540i, 2147483647i)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false)), vec4<f32>(-1539f, 579f, 2462f, -1850f)), vec4<i32>(2147483647i, -1i, 28606i, -1i), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), vec4<i32>(13919i, -1i, 0i, 1i)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false)), vec4<f32>(-225f, -1000f, -536f, -1396f)), vec4<i32>(-1i, 53740i, -23067i, -11693i), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), vec4<i32>(0i, -32i, 19440i, 2147483647i)), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false)), vec4<f32>(1608f, -1749f, -476f, -795f)), vec4<i32>(-7056i, 21063i, 33020i, -4178i), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), vec4<i32>(-1i, -29929i, -20544i, -25993i)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false)), vec4<f32>(692f, 3256f, 331f, 1108f)), vec4<i32>(-59768i, -1i, 0i, 42250i), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), vec4<i32>(13443i, -1i, 0i, 3875i)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true)), vec4<f32>(-290f, 607f, 216f, -953f)), vec4<i32>(-30482i, -1i, 0i, 14803i), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), vec4<i32>(1i, -44491i, 35926i, 40201i)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true)), vec4<f32>(1802f, -1000f, 521f, 604f)), vec4<i32>(i32(-2147483648), 74237i, i32(-2147483648), 2147483647i), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), vec4<i32>(-1i, -37018i, i32(-2147483648), -1i)), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true)), vec4<f32>(1382f, -1000f, -521f, -306f)), vec4<i32>(14614i, -31037i, 42010i, 22306i), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), vec4<i32>(i32(-2147483648), 2147483647i, 37575i, i32(-2147483648))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false)), vec4<f32>(-1977f, 335f, -2252f, 448f)), vec4<i32>(i32(-2147483648), -71101i, 1i, -21820i), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), vec4<i32>(i32(-2147483648), 1i, -7320i, 11574i)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false)), vec4<f32>(-1904f, -928f, -761f, 455f)), vec4<i32>(-83109i, i32(-2147483648), -1i, -5824i), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), vec4<i32>(2147483647i, 2147483647i, 9766i, 615i)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true)), vec4<f32>(-833f, -1133f, 1218f, -1945f)), vec4<i32>(36166i, -13457i, 69940i, 30439i), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), vec4<i32>(-33986i, -21225i, 0i, 13894i)), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true)), vec4<f32>(-592f, -1115f, 389f, -619f)), vec4<i32>(2147483647i, 0i, -85618i, i32(-2147483648)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), vec4<i32>(8116i, i32(-2147483648), -4145i, -1i)), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false)), vec4<f32>(-453f, 1000f, -1373f, 325f)), vec4<i32>(1i, 2147483647i, -19440i, 4873i), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), vec4<i32>(2147483647i, i32(-2147483648), 0i, 27610i)), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false)), vec4<f32>(155f, 807f, 152f, 420f)), vec4<i32>(12524i, 13615i, -84020i, -1i), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), vec4<i32>(i32(-2147483648), 60461i, i32(-2147483648), -4331i)), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false)), vec4<f32>(-764f, -222f, 569f, 289f)), vec4<i32>(-1i, 1i, -24864i, 2147483647i), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), vec4<i32>(2147483647i, -1i, 1i, -14607i)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false)), vec4<f32>(-1016f, -538f, 402f, 1000f)), vec4<i32>(49033i, 40347i, 28251i, 34801i), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), vec4<i32>(-92449i, -54727i, 8988i, -32283i)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false)), vec4<f32>(633f, -2277f, 1745f, -1000f)), vec4<i32>(1i, -16976i, -48264i, -1i), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), vec4<i32>(1i, 32806i, 5548i, i32(-2147483648))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true)), vec4<f32>(898f, -516f, 1000f, 556f)), vec4<i32>(-42540i, 1i, 30662i, 31974i), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), vec4<i32>(19556i, 0i, -1i, 0i)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true)), vec4<f32>(-459f, 562f, -1055f, 1960f)), vec4<i32>(-44967i, -21775i, 15662i, 68089i), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), vec4<i32>(32652i, -1i, 8997i, i32(-2147483648))));

var<private> global2: array<vec2<bool>, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = arg_0 && all(vec4<bool>(any(!vec4<bool>(arg_0, arg_0, false, arg_0)), arg_0 || any(vec2<bool>(true, true)), !(!arg_0), !(!arg_0)));
    let var_1 = vec4<u32>(u_input.d, ~abs(firstTrailingBit(u_input.b.x)), _wgslsmith_div_u32(4294967295u, u_input.d), ~_wgslsmith_clamp_u32(u_input.d, u_input.a.x, 48002u));
    var var_2 = abs(0u) >= (~u_input.a.x << (reverseBits(~_wgslsmith_sub_u32(u_input.d, u_input.c.x)) % 32u));
    global0 = array<vec3<i32>, 5>();
    var var_3 = Struct_2(Struct_1(select(select(!global2[_wgslsmith_index_u32(55608u, 28u)], global2[_wgslsmith_index_u32(var_1.x, 28u)], !vec2<bool>(var_0, true)), select(vec2<bool>(true, true), global2[_wgslsmith_index_u32(4294967295u, 28u)], all(vec4<bool>(true, true, var_0, var_0))), var_0)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2227f, -1179f, -382f, 985f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-802f, -1000f, 1433f, 1824f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-653f, -488f, -619f, -1649f) + vec4<f32>(-610f, 1300f, -406f, -151f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-580f, 844f, -776f, 475f)), var_0))), arg_0)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(step(var_3.b.x, var_3.b.x)))))) + _wgslsmith_f_op_f32(step(1000f, var_3.b.x)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: bool) -> Struct_2 {
    var var_0 = vec3<u32>(~(~(~0u)), 17707u >> (0u % 32u), u_input.e);
    global0 = array<vec3<i32>, 5>();
    var var_1 = u_input.b;
    return Struct_2(arg_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(418f)), -489f, _wgslsmith_f_op_f32(func_3(false)), arg_1.b.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: i32) -> Struct_4 {
    let var_0 = arg_0;
    global0 = array<vec3<i32>, 5>();
    var var_1 = global1[_wgslsmith_index_u32(~(~u_input.c.x), 27u)];
    global1 = array<Struct_3, 27>();
    global1 = array<Struct_3, 27>();
    return Struct_4(var_1.a.a.a.x, _wgslsmith_f_op_f32(max(var_1.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-660f * 792f), -1467f))), u_input.b.xy, var_0.b.x);
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = func_4(func_2(_wgslsmith_f_op_f32(trunc(-2213f)), Struct_2(Struct_1(!vec2<bool>(false, arg_0.c.a.x)), vec4<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(-arg_0.a.b.x), 569f, -1546f)), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(arg_0.e.ywy, select(vec3<i32>(51359i, -2147483647i, 29684i), vec3<i32>(65844i, 23385i, 24843i), vec3<bool>(arg_0.c.a.x, arg_0.a.a.a.x, false))), arg_0.b.x, arg_0.b.x), false), arg_0.b, ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d, 84247u, u_input.d, u_input.c.x), u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, 57255u, u_input.b.x), u_input.a)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -9093i, arg_0.e.x), global0[_wgslsmith_index_u32(u_input.e, 5u)]), firstTrailingBit(vec3<i32>(arg_0.e.x, -2147483647i, arg_0.e.x))), reverseBits(arg_0.b.yzy)), select(min(-arg_0.b.x, -arg_0.e.x), -4552i, ~(-781i) <= (24i ^ arg_0.e.x))));
    return Struct_1(vec2<bool>(select(any(vec3<bool>(var_0.a, var_0.a, false)), true, any(vec4<bool>(arg_0.a.a.a.x, false, false, true)) || any(vec3<bool>(true, arg_0.c.a.x, var_0.a))), arg_0.c.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 27>();
    var var_0 = Struct_2(func_1(global1[_wgslsmith_index_u32(u_input.d >> (4294967295u % 32u), 27u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-614f, 1329f, -1299f, -1201f)))));
    global1 = array<Struct_3, 27>();
    var_0 = func_2(1000f, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(706f)), _wgslsmith_f_op_f32(-1099f * -1699f)), Struct_2(func_2(-485f, Struct_2(Struct_1(var_0.a.a), var_0.b), vec4<i32>(1i, 1i, 1i, 1i), true).a, var_0.b), select(firstLeadingBit(vec4<i32>(6600i, -1i, 2147483647i, -2147483647i)), -select(vec4<i32>(-2147483647i, -2147483647i, 38607i, 0i), vec4<i32>(1292i, -350i, -7330i, -39834i), true), !(var_0.a.a.x || false)), true), abs(-vec4<i32>(-62088i, -15193i, 17089i, -2147483647i) >> (vec4<u32>(35173u, u_input.d, 4294967295u, u_input.b.x) % vec4<u32>(32u))) << (max((u_input.a << (u_input.a % vec4<u32>(32u))) | vec4<u32>(u_input.a.x, 19710u, 0u, 1u), max(u_input.a, u_input.a)) % vec4<u32>(32u)), var_0.b.x == _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_mult_i32(-12018i, max(-13655i, 44544i)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, -7584i, -2147483647i, -1i)), vec4<i32>(0i, 20794i, 7582i, -9484i)), 1i)), vec3<i32>(abs(25672i), firstTrailingBit(reverseBits(1i)), firstLeadingBit(-countOneBits(6069i))), vec3<i32>(~(~abs(23171i)), 18132i, 53701i));
    var var_2 = true | any(!(!vec4<bool>(false, false, true, var_0.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(4013i, firstLeadingBit(vec4<i32>(1i, var_1.x | 24676i, min(max(2147483647i, -26514i), var_1.x), var_1.x)), u_input.d, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-215f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(545f, var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + -1974f) + _wgslsmith_f_op_f32(-var_0.b.x))))));
}

