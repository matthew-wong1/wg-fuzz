struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
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

var<private> global0: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(124f, 1457f), vec2<f32>(-1262f, -1432f), vec2<f32>(1240f, 322f), vec2<f32>(-812f, 2001f), vec2<f32>(1747f, -1159f), vec2<f32>(690f, 759f), vec2<f32>(1574f, -1325f), vec2<f32>(593f, -640f), vec2<f32>(232f, -1653f), vec2<f32>(900f, 961f), vec2<f32>(-533f, -473f), vec2<f32>(674f, -587f), vec2<f32>(1103f, -328f), vec2<f32>(1378f, 986f), vec2<f32>(350f, 297f), vec2<f32>(2226f, 545f), vec2<f32>(920f, 352f), vec2<f32>(666f, -796f), vec2<f32>(1385f, 665f), vec2<f32>(630f, 760f), vec2<f32>(-1399f, 626f), vec2<f32>(1655f, -1037f), vec2<f32>(-297f, 485f), vec2<f32>(-323f, 180f), vec2<f32>(808f, -731f), vec2<f32>(1487f, 908f), vec2<f32>(-1188f, -1383f), vec2<f32>(-572f, 1483f));

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<f32>(407f, -464f), 0i, vec4<f32>(-641f, 789f, -311f, 3716f), true), Struct_2(vec2<f32>(1000f, 1714f), i32(-2147483648), vec4<f32>(181f, 524f, 398f, 1319f), true), Struct_2(vec2<f32>(1000f, 624f), i32(-2147483648), vec4<f32>(-227f, -1426f, -1181f, -231f), false), Struct_2(vec2<f32>(130f, -1101f), 0i, vec4<f32>(-187f, -2593f, 1761f, -1000f), false), Struct_2(vec2<f32>(1000f, -463f), 3562i, vec4<f32>(399f, -1000f, 616f, 1189f), true), Struct_2(vec2<f32>(-1047f, -456f), 16293i, vec4<f32>(1000f, 1000f, 530f, -1789f), true), Struct_2(vec2<f32>(144f, 1000f), 28337i, vec4<f32>(937f, 1940f, -1083f, -459f), true), Struct_2(vec2<f32>(610f, 734f), 32609i, vec4<f32>(1000f, 522f, 1047f, 1300f), false), Struct_2(vec2<f32>(808f, 411f), -1i, vec4<f32>(1558f, -1081f, 1000f, 118f), true), Struct_2(vec2<f32>(-546f, -860f), 2147483647i, vec4<f32>(920f, -1000f, -115f, -471f), false), Struct_2(vec2<f32>(1000f, 474f), 1i, vec4<f32>(1881f, 551f, 482f, 910f), true), Struct_2(vec2<f32>(-976f, 1038f), 0i, vec4<f32>(102f, -619f, -754f, -1441f), false), Struct_2(vec2<f32>(-789f, -1042f), -1i, vec4<f32>(1000f, 314f, -139f, 546f), false), Struct_2(vec2<f32>(-163f, 622f), -3910i, vec4<f32>(-1245f, 635f, -807f, -1650f), false), Struct_2(vec2<f32>(-1985f, 419f), 1i, vec4<f32>(789f, -2009f, -852f, 882f), false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> i32 {
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-971f, -776f, 681f), vec3<f32>(313f, 1000f, -1186f)))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1948f, arg_0, arg_0))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -686f, arg_0), vec3<f32>(-856f, -1714f, 463f), true)))))));
    return 20907i;
}

fn func_2() -> i32 {
    global0 = array<vec2<f32>, 28>();
    var var_0 = vec3<i32>(min(select(1i, countOneBits(u_input.b), true), ~(-func_3(1081f, vec2<i32>(21197i, u_input.c.x)))), -(~abs(~u_input.b)), _wgslsmith_dot_vec2_i32(-(vec2<i32>(u_input.c.x, 7635i) & ~vec2<i32>(2147483647i, 36201i)), max(vec2<i32>(~u_input.c.x, func_3(448f, vec2<i32>(5716i, 2147483647i))), u_input.c.yx ^ ~vec2<i32>(u_input.b, 24686i))));
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 15u)];
    let var_2 = ~u_input.c;
    var var_3 = Struct_1(~(~_wgslsmith_div_vec2_u32(~vec2<u32>(1u, u_input.a), vec2<u32>(25794u, u_input.a) ^ vec2<u32>(0u, u_input.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-927f * var_1.c.x)), _wgslsmith_f_op_f32(125f - var_1.a.x))), var_1.c.x, -6152i >= _wgslsmith_mult_i32(u_input.b, 1i));
    return 0i;
}

fn func_4(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(firstTrailingBit(select(~vec2<u32>(1u, 41245u), ~vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, false)) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, 36490u)), 11359u << (u_input.a % 32u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(824f, 1000f, arg_1)) * _wgslsmith_f_op_f32(trunc(-2308f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1243f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -849f))))), arg_1);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-264f, -1228f, var_0.c))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, -1382f, -496f) + vec3<f32>(1789f, var_0.b, 1050f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2201f), _wgslsmith_f_op_f32(select(var_0.b, -326f, true)), -112f))), vec3<f32>(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -245f)), _wgslsmith_f_op_f32(abs(var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    global0 = array<vec2<f32>, 28>();
    global1 = array<Struct_2, 15>();
    let var_2 = select(vec4<bool>(select(true, false, true), any(vec4<bool>(var_0.d != true, arg_0 >= u_input.b, var_0.d, true)), any(vec4<bool>(var_0.d, arg_1 != false, true && var_0.d, false)), !(-2993i >= u_input.b) & !(var_0.d || false)), vec4<bool>(!(!any(vec3<bool>(var_0.d, false, var_0.d))), all(vec3<bool>(true, true, true)) | var_0.d, all(select(vec3<bool>(true, true, true), vec3<bool>(arg_1, false, var_0.d), vec3<bool>(false, arg_1, false))), arg_1), vec4<bool>(any(select(!vec3<bool>(arg_1, var_0.d, arg_1), !vec3<bool>(true, true, var_0.d), !arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))) <= 662f, !arg_1, !all(select(vec2<bool>(true, true), vec2<bool>(var_0.d, true), true))));
    return Struct_1(~vec2<u32>(14805u, reverseBits(15607u)), var_1.x, -1363f, any(vec4<bool>(false, any(select(vec3<bool>(false, arg_1, var_0.d), vec3<bool>(var_0.d, true, arg_1), var_2.x)), var_2.x, true)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = arg_1.d;
    global0 = array<vec2<f32>, 28>();
    let var_1 = Struct_3(arg_1.a, Struct_1(~_wgslsmith_mult_vec2_u32(arg_1.b.a, ~arg_2.a), arg_0.x, _wgslsmith_f_op_f32(293f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f), arg_0.x)), arg_1.d.d), any(!select(select(vec4<bool>(arg_1.d.d, true, arg_3, true), vec4<bool>(false, false, var_0.d, arg_1.b.d), vec4<bool>(arg_2.d, false, arg_2.d, false)), vec4<bool>(arg_2.d, var_0.d, false, false), select(true, var_0.d, false))), Struct_2(var_0.c.xw, var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b.c, arg_1.b.c, 1050f, -605f)))) - arg_0), true));
    var var_2 = func_4(select(0i, -1i, var_0.d), !(!all(!vec4<bool>(arg_3, arg_3, arg_2.d, false))));
    let var_3 = var_1.a.b;
    return ~1u < (firstLeadingBit(u_input.a) << (~((var_1.a.a.x & 18336u) >> (min(arg_1.b.a.x, var_2.a.x) % 32u)) % 32u));
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    global0 = array<vec2<f32>, 28>();
    global1 = array<Struct_2, 15>();
    global0 = array<vec2<f32>, 28>();
    var var_0 = _wgslsmith_div_f32(arg_2.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a.b, 1243f))) + -1765f)) < arg_2.a.b;
    global0 = array<vec2<f32>, 28>();
    return Struct_3(func_4(firstTrailingBit(abs(u_input.c.x)), arg_2.b.d), arg_1.b, true, Struct_2(arg_1.d.c.xx, 0i, arg_1.d.c, true));
}

fn func_1() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(1054f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(390f + -1652f))))));
    var var_1 = all(vec2<bool>(any(vec3<bool>(true, true, any(vec3<bool>(false, false, true)))), false));
    var var_2 = func_6(func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-793f))), -233f, _wgslsmith_f_op_f32(f32(-1f) * -669f), _wgslsmith_div_f32(766f, -1000f)), Struct_3(func_4(func_2(), all(vec3<bool>(false, false, true))), Struct_1(select(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, 4294967295u), vec2<bool>(false, false)), _wgslsmith_f_op_f32(f32(-1f) * -377f), _wgslsmith_f_op_f32(f32(-1f) * -1227f), true), true, Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(216f, 389f), vec2<f32>(2164f, 1000f), false)), ~u_input.c.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1385f, 642f, -604f, 530f))), true)), Struct_1(countOneBits(countOneBits(vec2<u32>(u_input.a, u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f), 209f), _wgslsmith_div_f32(100f, _wgslsmith_f_op_f32(ceil(-662f))), select(true, true, true)), (_wgslsmith_clamp_i32(45624i, 1i, 2147483647i) <= -41399i) && true), Struct_3(func_4(countOneBits(-5956i), any(vec2<bool>(true, false))), Struct_1(vec2<u32>(~71280u, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -489f)), _wgslsmith_f_op_f32(trunc(-243f)), false), func_2() > -2147483647i, Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(global0[_wgslsmith_index_u32(3980u, 28u)])))), 8426i, vec4<f32>(610f, _wgslsmith_f_op_f32(step(476f, 262f)), -104f, _wgslsmith_f_op_f32(round(545f))), !func_5(vec4<f32>(-1538f, 1000f, -266f, 1356f), Struct_3(Struct_1(vec2<u32>(1u, 0u), -1739f, 543f, true), Struct_1(vec2<u32>(u_input.a, u_input.a), 101f, -932f, true), false, Struct_2(vec2<f32>(1923f, 1352f), -2147483647i, vec4<f32>(1405f, -650f, 1415f, 153f), false)), Struct_1(vec2<u32>(u_input.a, 49202u), -602f, 1507f, false), true))), Struct_3(func_4(_wgslsmith_clamp_i32(u_input.c.x, 26843i, u_input.c.x) ^ func_3(1078f, u_input.c.yx), true), Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(2106u, u_input.a), vec2<u32>(u_input.a, 99559u)), _wgslsmith_f_op_f32(abs(-749f)), 2358f, any(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), !(~u_input.a > ~1u), Struct_2(vec2<f32>(2234f, _wgslsmith_f_op_f32(f32(-1f) * -567f)), u_input.c.x, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1287f, 1733f, 333f, 502f))), true)));
    var var_3 = -u_input.c.x;
    var_2 = func_6(true, func_6(false, Struct_3(var_2.b, func_6(var_2.b.a.x != u_input.a, func_6(var_2.a.d, Struct_3(Struct_1(var_2.a.a, var_2.d.a.x, 1344f, false), var_2.b, var_2.d.d, var_2.d), Struct_3(Struct_1(vec2<u32>(1u, var_2.b.a.x), var_2.a.c, -635f, var_2.a.d), Struct_1(vec2<u32>(var_2.a.a.x, u_input.a), var_2.b.c, var_2.d.c.x, var_2.a.d), var_2.b.d, Struct_2(global0[_wgslsmith_index_u32(var_2.b.a.x, 28u)], 0i, var_2.d.c, var_2.b.d))), Struct_3(Struct_1(var_2.a.a, 1444f, -692f, false), Struct_1(var_2.a.a, 1005f, var_2.a.b, var_2.c), true, var_2.d)).a, all(vec2<bool>(true, true)), func_6(true, Struct_3(Struct_1(vec2<u32>(var_2.b.a.x, u_input.a), var_2.d.a.x, -602f, true), var_2.b, false, var_2.d), Struct_3(Struct_1(vec2<u32>(u_input.a, var_2.b.a.x), var_2.a.b, var_2.b.c, var_2.b.d), Struct_1(var_2.a.a, 596f, var_2.a.b, var_2.a.d), var_2.a.d, Struct_2(vec2<f32>(var_2.b.b, var_2.d.c.x), 22342i, var_2.d.c, var_2.a.d))).d), Struct_3(var_2.b, var_2.a, func_5(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1929f, var_2.b.b, var_2.a.b, var_2.b.c))), Struct_3(Struct_1(vec2<u32>(0u, var_2.b.a.x), 397f, var_2.a.c, false), var_2.a, false, var_2.d), Struct_1(var_2.b.a, var_2.d.c.x, var_2.d.a.x, true), true), var_2.d)), Struct_3(func_4(~(~1i), !var_2.b.d && !var_2.b.d), func_4(var_2.d.b, func_4(var_2.d.b, var_2.b.d).d), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_2.a.b)))) < _wgslsmith_f_op_f32(var_2.b.b * _wgslsmith_f_op_f32(-var_2.d.c.x)), func_6(979f >= _wgslsmith_f_op_f32(-var_2.b.c), func_6(any(vec4<bool>(false, false, var_2.a.d, var_2.a.d)), func_6(true, Struct_3(Struct_1(vec2<u32>(var_2.b.a.x, 0u), var_2.b.c, -436f, var_2.b.d), var_2.a, false, Struct_2(vec2<f32>(var_2.d.c.x, var_2.a.b), 2147483647i, var_2.d.c, false)), Struct_3(Struct_1(var_2.a.a, -621f, -589f, true), var_2.a, false, var_2.d)), Struct_3(Struct_1(vec2<u32>(var_2.a.a.x, 1u), -253f, var_2.d.c.x, var_2.c), Struct_1(var_2.b.a, -165f, 1702f, true), false, Struct_2(global0[_wgslsmith_index_u32(37410u, 28u)], var_2.d.b, vec4<f32>(var_2.a.c, 110f, var_2.d.c.x, 211f), true))), func_6(select(false, var_2.a.d, false), Struct_3(var_2.a, var_2.a, true, Struct_2(vec2<f32>(532f, 755f), -14751i, vec4<f32>(var_2.b.c, var_2.b.c, -140f, var_2.b.b), false)), func_6(var_2.b.d, Struct_3(var_2.a, Struct_1(var_2.b.a, 990f, -1000f, var_2.c), var_2.c, Struct_2(vec2<f32>(1930f, var_2.a.c), -1i, vec4<f32>(var_2.d.c.x, -482f, -128f, var_2.a.c), false)), Struct_3(Struct_1(vec2<u32>(0u, 421u), var_2.a.c, var_2.b.c, var_2.b.d), Struct_1(vec2<u32>(var_2.b.a.x, 40458u), -104f, 943f, var_2.c), false, global1[_wgslsmith_index_u32(var_2.b.a.x, 15u)])))).d));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(func_6(all(select(vec4<bool>(var_2.b.d, true, var_2.c, false), vec4<bool>(false, var_2.a.d, false, var_2.c), true)), func_6(var_2.a.b <= -1855f, Struct_3(Struct_1(var_2.a.a, var_2.a.c, var_2.a.c, false), var_2.a, var_2.b.d, var_2.d), func_6(var_2.a.d, Struct_3(var_2.b, Struct_1(var_2.b.a, var_2.d.a.x, var_2.b.b, true), false, var_2.d), Struct_3(var_2.a, Struct_1(var_2.b.a, 1904f, var_2.d.c.x, var_2.d.d), true, Struct_2(var_2.d.a, 2147483647i, var_2.d.c, var_2.a.d)))), Struct_3(func_6(var_2.d.d, Struct_3(Struct_1(vec2<u32>(15062u, u_input.a), -1022f, -1000f, true), var_2.b, var_2.d.d, Struct_2(global0[_wgslsmith_index_u32(u_input.a, 28u)], u_input.c.x, var_2.d.c, var_2.a.d)), Struct_3(Struct_1(vec2<u32>(var_2.b.a.x, 4294967295u), 674f, -322f, var_2.b.d), var_2.a, var_2.a.d, Struct_2(vec2<f32>(var_2.b.c, var_2.a.b), var_2.d.b, vec4<f32>(var_2.d.a.x, var_2.b.c, -486f, var_2.b.b), false))).a, Struct_1(vec2<u32>(var_2.a.a.x, var_2.a.a.x), var_2.d.a.x, var_2.a.b, true), false, var_2.d)).d.c, vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.c), var_2.a.c, 364f, 234f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-503f + 1035f) + _wgslsmith_f_op_f32(step(-1324f, _wgslsmith_f_op_f32(1251f + -539f)))), _wgslsmith_f_op_f32(-1189f - -217f), 152f, 732f) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(459f, -1251f, _wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(min(1412f, 1051f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(139f, 857f, 885f, -483f)), _wgslsmith_f_op_vec4_f32(func_1())))))));
    let var_1 = !select(vec2<bool>(!any(vec3<bool>(true, true, true)), false), vec2<bool>(true, true), false);
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(13855u, 32386u, ~u_input.a), 1u, ~abs(42877u)), ~(~(~vec3<u32>(u_input.a, u_input.a, 3829u)))) & 38945u, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(reverseBits(~(-11782i)), 1i));
}

