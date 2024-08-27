struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_1(vec2<f32>(-481f, 1555f), vec2<bool>(true, true), 909f, vec4<f32>(297f, -1000f, -795f, 1176f)), vec4<f32>(902f, 1168f, 960f, -993f), 0i, Struct_2(Struct_1(vec2<f32>(-1695f, -121f), vec2<bool>(false, true), -2132f, vec4<f32>(1000f, 981f, 634f, 112f)), Struct_1(vec2<f32>(1049f, 747f), vec2<bool>(false, true), -317f, vec4<f32>(259f, -2099f, -830f, -620f)))), Struct_3(Struct_1(vec2<f32>(-139f, -989f), vec2<bool>(true, true), -142f, vec4<f32>(-479f, 1014f, 954f, 1282f)), vec4<f32>(-658f, -1364f, 943f, 1569f), -1i, Struct_2(Struct_1(vec2<f32>(-1395f, -862f), vec2<bool>(true, true), 1387f, vec4<f32>(-1461f, 1601f, 778f, 2084f)), Struct_1(vec2<f32>(-687f, 802f), vec2<bool>(true, false), 502f, vec4<f32>(219f, 143f, 318f, 1142f)))), Struct_3(Struct_1(vec2<f32>(297f, 102f), vec2<bool>(true, false), -1875f, vec4<f32>(1000f, 309f, 122f, 129f)), vec4<f32>(150f, -138f, 2184f, -1104f), -1i, Struct_2(Struct_1(vec2<f32>(791f, 489f), vec2<bool>(true, true), 825f, vec4<f32>(-1409f, 1207f, 875f, -1695f)), Struct_1(vec2<f32>(-208f, 544f), vec2<bool>(true, false), 1000f, vec4<f32>(312f, 342f, -133f, 265f)))), Struct_3(Struct_1(vec2<f32>(1498f, -1000f), vec2<bool>(true, false), 309f, vec4<f32>(358f, -668f, 1242f, 763f)), vec4<f32>(-1238f, -399f, -826f, -1381f), 0i, Struct_2(Struct_1(vec2<f32>(1836f, 2378f), vec2<bool>(true, true), 428f, vec4<f32>(-299f, 812f, -1000f, -1333f)), Struct_1(vec2<f32>(157f, -864f), vec2<bool>(false, true), 226f, vec4<f32>(-500f, 868f, -538f, 326f)))), Struct_3(Struct_1(vec2<f32>(-1000f, 1583f), vec2<bool>(false, false), -689f, vec4<f32>(553f, -739f, 1000f, -452f)), vec4<f32>(-1261f, -524f, -123f, 202f), 0i, Struct_2(Struct_1(vec2<f32>(-803f, -686f), vec2<bool>(false, true), 989f, vec4<f32>(-837f, -2929f, 634f, -809f)), Struct_1(vec2<f32>(1283f, 890f), vec2<bool>(false, false), 244f, vec4<f32>(-386f, 1017f, -921f, 129f)))), Struct_3(Struct_1(vec2<f32>(-859f, -2048f), vec2<bool>(false, false), 1626f, vec4<f32>(604f, 691f, -1000f, -559f)), vec4<f32>(-702f, 895f, 600f, 879f), 8136i, Struct_2(Struct_1(vec2<f32>(617f, -918f), vec2<bool>(true, true), -127f, vec4<f32>(800f, 307f, -988f, -1258f)), Struct_1(vec2<f32>(1752f, -1000f), vec2<bool>(true, false), -816f, vec4<f32>(1518f, 287f, 1135f, 1061f)))), Struct_3(Struct_1(vec2<f32>(-425f, -636f), vec2<bool>(true, true), 1747f, vec4<f32>(-1055f, 1042f, -1484f, -805f)), vec4<f32>(825f, 630f, -302f, 316f), 30761i, Struct_2(Struct_1(vec2<f32>(1000f, 768f), vec2<bool>(true, false), -2439f, vec4<f32>(2003f, 526f, -1000f, 1133f)), Struct_1(vec2<f32>(-819f, 1430f), vec2<bool>(true, true), -1613f, vec4<f32>(-358f, 126f, -816f, -1265f)))), Struct_3(Struct_1(vec2<f32>(1339f, -779f), vec2<bool>(false, true), 240f, vec4<f32>(-1214f, -832f, -699f, -182f)), vec4<f32>(1000f, -1000f, 593f, 103f), 0i, Struct_2(Struct_1(vec2<f32>(480f, 1064f), vec2<bool>(true, true), -561f, vec4<f32>(599f, -794f, 541f, -1986f)), Struct_1(vec2<f32>(136f, -2046f), vec2<bool>(true, true), -1000f, vec4<f32>(-1122f, -646f, -488f, -698f)))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.c.x, 6098u, 23615u, u_input.b) | vec4<u32>(u_input.a, u_input.a, ~u_input.a, _wgslsmith_add_u32(1u, 1u)), ~(~vec4<u32>(1u, u_input.b, u_input.b, 35809u)) & ~select(vec4<u32>(1u, u_input.c.x, 0u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.b, 9895u, u_input.b), false), arg_3.b.x), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(abs(~vec4<u32>(u_input.a, 10275u, u_input.b, 3144u)), abs(~vec4<u32>(1u, 1u, u_input.c.x, 32335u))), select(~(~vec4<u32>(1u, u_input.a, 71812u, u_input.a)), vec4<u32>(~4294967295u, u_input.a << (4294967295u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), max(4294967295u, u_input.a)), vec4<bool>(any(arg_0), any(vec4<bool>(false, arg_0.x, arg_3.b.x, false)), u_input.d.x > u_input.d.x, !arg_1.b.b.x)))), 8u)];
    return 25165u;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(u_input.c.x, u_input.a, func_3(vec3<bool>(true, 16338i > u_input.e.x, any(vec3<bool>(false, true, false))), Struct_2(Struct_1(vec2<f32>(139f, 800f), vec2<bool>(false, false), 288f, vec4<f32>(-107f, 503f, -1456f, -1104f)), Struct_1(vec2<f32>(360f, -1000f), vec2<bool>(true, true), -548f, vec4<f32>(-603f, -746f, 937f, -338f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-315f, 524f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(969f, 1000f) * vec2<f32>(1070f, -1000f))), Struct_1(vec2<f32>(-226f, 530f), vec2<bool>(true, true), _wgslsmith_div_f32(859f, -388f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-800f, -648f, 627f, 522f) + vec4<f32>(-1965f, 122f, 739f, 511f)))) & ~(~_wgslsmith_add_u32(u_input.a, 41105u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-665f + 2387f) - -582f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1808f, -1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1691f, -359f) - vec2<f32>(623f, -1000f)))), any(vec4<bool>(true, true, true, true)))));
    var var_2 = var_0;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-323f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true))))))), _wgslsmith_f_op_f32(-452f * -2033f), var_1.x, var_1.x);
    let var_4 = _wgslsmith_f_op_f32(1636f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2508f))), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-1476f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.x * var_1.x))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-275f + var_3.x), var_4))), select(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_3.x))), var_3.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * var_4)), _wgslsmith_f_op_f32(-var_4), 294f, _wgslsmith_div_f32(var_1.x, -422f)));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: vec2<f32>) -> vec3<bool> {
    let var_0 = -2855i;
    var var_1 = Struct_3(func_2(), vec4<f32>(_wgslsmith_f_op_f32(485f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.b.a.x * arg_0.d.a.a.x))), _wgslsmith_div_f32(-980f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.b.x)) + 1020f)), _wgslsmith_f_op_f32(sign(func_2().a.x)), _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-arg_3.x))), 32858i, Struct_2(func_2(), func_2()));
    let var_2 = u_input.c.x;
    let var_3 = Struct_1(func_2().a, !func_2().b, -1396f, arg_0.d.a.d);
    global0 = array<Struct_3, 8>();
    return !select(vec3<bool>(var_3.b.x, true, var_3.b.x), !vec3<bool>(arg_0.d.b.b.x, true, true), !var_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 8>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2422f);
    var var_1 = !any(vec3<bool>(all(func_1(Struct_3(Struct_1(vec2<f32>(666f, -1000f), vec2<bool>(true, true), -741f, vec4<f32>(868f, 507f, 986f, -811f)), vec4<f32>(1524f, 271f, -1734f, -1338f), 9670i, Struct_2(Struct_1(vec2<f32>(934f, -374f), vec2<bool>(true, false), -1651f, vec4<f32>(1368f, -1112f, -1415f, -277f)), Struct_1(vec2<f32>(935f, 854f), vec2<bool>(false, false), -1000f, vec4<f32>(876f, -1000f, -862f, 202f)))), vec4<u32>(u_input.c.x, 0u, 41851u, 18897u), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec2<f32>(1213f, 1000f))), true, false));
    var var_2 = u_input.b;
    var var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 45139u), u_input.c), _wgslsmith_div_u32(40302u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b, 18840u), vec3<u32>(u_input.b, u_input.c.x, u_input.b))), ~vec3<u32>(u_input.c.x, 0u, 4294967295u) ^ select(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(4294967295u, u_input.c.x, 15928u), true)), ~firstLeadingBit(_wgslsmith_add_u32(0u, 4294967295u))), ~(~abs(vec2<u32>(47116u, u_input.c.x))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(func_2().a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1170f, -1095f) * _wgslsmith_f_op_f32(ceil(289f)))))), func_2().b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2217f * _wgslsmith_f_op_f32(min(718f, -1294f))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1041f + 924f) * _wgslsmith_div_f32(-622f, -1179f)), _wgslsmith_f_op_f32(f32(-1f) * -707f))), -1578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -987f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1526f)))))));
    var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>((u_input.d.x & _wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(u_input.e.x, -1i))) & -20991i, _wgslsmith_add_i32(1i, 1i), u_input.e.x >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, var_3.x), vec3<u32>(0u, 0u, var_3.x)) % 32u), firstLeadingBit(_wgslsmith_add_i32(u_input.e.x, 1i))));
}

