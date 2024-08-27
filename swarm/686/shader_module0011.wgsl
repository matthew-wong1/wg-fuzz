struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<f32>(-1415f, 1270f, 795f, -344f), vec4<bool>(false, false, false, true), vec4<f32>(-621f, -701f, -1354f, 1515f)), Struct_1(vec4<f32>(1022f, -973f, 189f, -549f), vec4<bool>(true, true, false, true), vec4<f32>(195f, 822f, -647f, 350f)), Struct_1(vec4<f32>(276f, 501f, 1377f, -1660f), vec4<bool>(true, true, false, false), vec4<f32>(119f, -1483f, -1359f, 1487f)), Struct_1(vec4<f32>(-177f, 1923f, 1096f, 568f), vec4<bool>(true, true, false, false), vec4<f32>(-323f, 1381f, -327f, 311f)), Struct_1(vec4<f32>(-1001f, 162f, -304f, -425f), vec4<bool>(false, false, false, false), vec4<f32>(388f, 173f, 705f, 375f)), Struct_1(vec4<f32>(-348f, -1683f, 1000f, -1101f), vec4<bool>(true, false, true, false), vec4<f32>(-890f, -703f, 612f, 365f)), Struct_1(vec4<f32>(2512f, -893f, 1139f, -1143f), vec4<bool>(true, true, true, true), vec4<f32>(917f, -1742f, 402f, -336f)), Struct_1(vec4<f32>(950f, -1317f, 485f, -1206f), vec4<bool>(true, true, true, true), vec4<f32>(-1005f, 798f, 170f, 1635f)), Struct_1(vec4<f32>(-413f, 2209f, 1454f, 164f), vec4<bool>(true, true, false, true), vec4<f32>(-180f, -547f, -1307f, -225f)), Struct_1(vec4<f32>(691f, 197f, -690f, -718f), vec4<bool>(false, false, true, false), vec4<f32>(1469f, -1000f, 477f, -2712f)), Struct_1(vec4<f32>(-2085f, -430f, 1195f, 320f), vec4<bool>(false, false, false, true), vec4<f32>(1175f, 213f, 1000f, -1000f)), Struct_1(vec4<f32>(350f, -408f, -365f, 670f), vec4<bool>(false, false, false, false), vec4<f32>(-182f, 954f, 2025f, -485f)), Struct_1(vec4<f32>(248f, -1060f, -536f, 1907f), vec4<bool>(false, false, false, true), vec4<f32>(1000f, -336f, 608f, -1314f)), Struct_1(vec4<f32>(843f, -225f, -770f, 844f), vec4<bool>(true, false, true, false), vec4<f32>(-1047f, 1319f, 254f, -1082f)), Struct_1(vec4<f32>(2325f, 976f, 784f, 1080f), vec4<bool>(false, true, true, false), vec4<f32>(543f, 925f, 228f, -781f)), Struct_1(vec4<f32>(1229f, 936f, -657f, -1891f), vec4<bool>(true, true, true, false), vec4<f32>(-1344f, 1558f, -216f, -152f)), Struct_1(vec4<f32>(689f, -317f, -401f, 1000f), vec4<bool>(false, true, true, false), vec4<f32>(955f, 305f, -582f, 1000f)), Struct_1(vec4<f32>(774f, 1000f, -446f, -980f), vec4<bool>(false, false, false, true), vec4<f32>(703f, 236f, -916f, -1250f)), Struct_1(vec4<f32>(-1369f, -462f, 1000f, -379f), vec4<bool>(false, false, true, true), vec4<f32>(-112f, -565f, -817f, 363f)), Struct_1(vec4<f32>(-1252f, -795f, 170f, 269f), vec4<bool>(true, true, false, false), vec4<f32>(304f, 449f, 511f, -380f)), Struct_1(vec4<f32>(-1144f, -439f, -619f, -407f), vec4<bool>(false, true, true, false), vec4<f32>(845f, 1025f, 366f, 2009f)), Struct_1(vec4<f32>(-1806f, -759f, 2392f, 411f), vec4<bool>(false, false, true, false), vec4<f32>(-1231f, 125f, -1495f, 449f)), Struct_1(vec4<f32>(-704f, -1268f, -617f, -103f), vec4<bool>(false, false, false, false), vec4<f32>(-782f, 183f, 2897f, 1008f)), Struct_1(vec4<f32>(-2782f, -363f, 1857f, -108f), vec4<bool>(true, true, true, false), vec4<f32>(-1299f, -774f, -432f, -460f)));

var<private> global1: array<Struct_1, 2>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    global1 = array<Struct_1, 2>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_f_op_f32(arg_0 * -1659f), arg_0, _wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(-604f)), _wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_div_vec4_f32(vec4<f32>(-414f, -2863f, 504f, -483f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, 1106f, arg_0, arg_0), vec4<f32>(797f, 801f, -449f, arg_0)))), true))), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), select(false, false, true)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1369f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-439f * -282f)));
    global0 = array<Struct_1, 24>();
    var var_1 = var_0.b.x;
    let var_2 = -1i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0, 1000f))))) - var_0.a.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(665f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(861f * -804f), ~vec3<u32>(u_input.b, 4915u, u_input.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * -686f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.x, -1035f), vec2<f32>(arg_1.x, -1000f))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1070f, -826f))))) - vec2<f32>(arg_1.x, -1000f)));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, firstTrailingBit(-u_input.c.x), u_input.d), _wgslsmith_add_vec4_i32(~arg_0, _wgslsmith_add_vec4_i32(countOneBits(arg_0), _wgslsmith_sub_vec4_i32(vec4<i32>(19304i, 1i, arg_3, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, 48358i, -13779i))))), countOneBits(-countOneBits(arg_0.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(select(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, 981f, arg_1.x, var_0.x), vec4<f32>(-524f, -1000f, 487f, -241f)))), all(select(vec2<bool>(false, true), vec2<bool>(false, false), false))))), vec4<bool>(true, false, all(vec2<bool>(any(vec3<bool>(true, false, false)), true)), _wgslsmith_dot_vec3_u32(u_input.a.wyw >> (vec3<u32>(1u, u_input.a.x, 4294967295u) % vec3<u32>(32u)), u_input.a.yzy) < 40934u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(559f, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -2096f), -194f)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 + vec4<f32>(1000f, -1507f, -679f, var_0.x))) + vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x), 121f))), var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.x, arg_1.x, var_0.x, arg_2.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 126f, 153f, arg_1.x)))));
    var var_4 = Struct_1(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -748f)), _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f * arg_1.x)))), !vec4<bool>(!var_3.b.x, true, ~u_input.a.x > _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(33828u, 42702u, 0u, u_input.a.x)), any(vec4<bool>(false, false, false, true))), arg_2);
    return global1[_wgslsmith_index_u32(1u, 2u)];
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>, arg_3: vec2<i32>) -> u32 {
    var var_0 = u_input.a.zwy;
    let var_1 = !select(all(arg_0.b.zw), all(select(vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x), vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, true, arg_0.b.x, true))), !(!arg_0.b.x)) & (arg_3.x < (_wgslsmith_mult_i32(-4176i, arg_3.x) ^ arg_3.x));
    let var_2 = arg_0.c;
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1036f, var_2.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(max(1056f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1839f + arg_2.x) - arg_0.c.x))), 272f), vec4<bool>(arg_0.b.x, true & !(var_1 != false), true, all(select(!arg_0.b.zz, vec2<bool>(arg_0.b.x, false), arg_0.b.yw))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -218f, 384f, -1526f) * arg_0.a))) - arg_0.a))));
    var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-531f, _wgslsmith_f_op_f32(arg_0.c.x - var_2.x), _wgslsmith_f_op_f32(-370f * 1000f), 122f) * var_3.c) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(243f, arg_2.x, var_3.a.x, -210f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1803f, var_3.c.x, var_2.x)))), select(select(!vec4<bool>(var_3.b.x, false, var_1, true), vec4<bool>(true, var_1, true, false), select(arg_0.b, !arg_0.b, arg_0.b)), vec4<bool>(false, false, !all(vec2<bool>(var_1, true)), !arg_0.b.x), arg_0.b), _wgslsmith_f_op_vec4_f32(-var_2));
    return var_0.x;
}

fn func_1(arg_0: bool, arg_1: u32) -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(abs(func_4(func_2(vec4<i32>(u_input.d, u_input.e, 0i, u_input.e), vec2<f32>(-429f, 300f), vec4<f32>(-483f, 852f, 1320f, 230f), 0i), -221f, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1628f, -1643f, 1780f))), u_input.c.xy)), ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(37084u, u_input.b), u_input.a.ww), func_4(global1[_wgslsmith_index_u32(0u, 2u)], 455f, vec3<f32>(-846f, -1138f, 587f), vec2<i32>(u_input.d, u_input.d)))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_1, 94151u), _wgslsmith_dot_vec3_u32(u_input.a.zxy, u_input.a.zxz)), 1u << (func_4(Struct_1(vec4<f32>(-879f, 1353f, 498f, 891f), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<f32>(1042f, -379f, -333f, 1327f)), -354f, vec3<f32>(-207f, 165f, -1260f), vec2<i32>(u_input.c.x, 3861i)) % 32u)), select(u_input.a.yx, ~(vec2<u32>(32899u, arg_1) << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))), vec2<bool>(all(vec2<bool>(arg_0, arg_0)), 2147483647i == u_input.d)))), 24u)];
    var var_1 = var_0.c.ww;
    global0 = array<Struct_1, 24>();
    global1 = array<Struct_1, 2>();
    let var_2 = global1[_wgslsmith_index_u32(~arg_1, 2u)];
    return var_0.b.xz;
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = 33046u;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-func_2(~vec4<i32>(u_input.e, 5762i, -2147483647i, u_input.c.x), _wgslsmith_f_op_vec2_f32(arg_2 * arg_2), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1665f, arg_1, 539f, arg_2.x))), u_input.d).c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-994f - arg_2.x)), -1893f) - vec3<f32>(1632f, _wgslsmith_f_op_f32(trunc(arg_2.x)), 2183f));
    let var_2 = firstTrailingBit(max(~reverseBits(0i), u_input.e));
    global0 = array<Struct_1, 24>();
    global1 = array<Struct_1, 2>();
    return select(select(vec2<bool>(true, !func_1(false, 93325u).x), !vec2<bool>(true, all(vec4<bool>(false, false, false, true))), vec2<bool>(true, true)), vec2<bool>(true, true), !(true & !all(vec4<bool>(true, false, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 24>();
    let var_0 = select(func_5(select(u_input.a.wx, min(vec2<u32>(0u, 6798u), ~vec2<u32>(0u, u_input.a.x)), !func_1(true, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -426f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-907f, 122f) + vec2<f32>(960f, 109f)))), vec2<f32>(_wgslsmith_f_op_f32(-424f + -219f), _wgslsmith_f_op_f32(round(-993f))))), !select(vec2<bool>(true, true), func_5(~u_input.a.yw, _wgslsmith_f_op_f32(select(-557f, 265f, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1482f, -200f) * vec2<f32>(-742f, 644f))), true || select(true, false, false)), !(!all(func_2(vec4<i32>(0i, u_input.c.x, 1i, -1i), vec2<f32>(137f, -178f), vec4<f32>(984f, -240f, 1000f, 460f), u_input.e).b)));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 2u)];
    global1 = array<Struct_1, 2>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -950f), 880f, 1171f, 456f))), !vec4<bool>(false, true, any(vec4<bool>(true, true, var_0.x, var_1.b.x)), var_0.x), _wgslsmith_f_op_vec4_f32(-var_1.a));
    var_2 = func_2(vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.c.yy, ~u_input.c.xy), _wgslsmith_dot_vec2_i32(countOneBits(firstTrailingBit(u_input.c.xx)), -_wgslsmith_sub_vec2_i32(u_input.c.yy, u_input.c.xx)), reverseBits(abs(24722i)), ~(~u_input.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.c.zy, var_1.c.yw))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-793f, -752f, var_2.b.x)), _wgslsmith_f_op_f32(abs(-432f)), -1000f, -1717f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-138f, var_2.a.x, var_1.c.x, var_1.c.x) - _wgslsmith_f_op_vec4_f32(var_2.c - vec4<f32>(var_2.c.x, -348f, var_1.a.x, -673f))))), select(_wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, u_input.d), _wgslsmith_div_i32(u_input.d, u_input.d)) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.xz, vec2<i32>(42042i, -44903i)), u_input.c.xy), 1i, !(!(!var_1.b.x))));
    global1 = array<Struct_1, 2>();
    var var_3 = func_2(select(vec4<i32>(abs(u_input.c.x), max(u_input.d, u_input.c.x & 22179i), -1i, u_input.c.x), abs(vec4<i32>(u_input.e, -1i, 1i, ~u_input.d)), vec4<bool>(!var_2.b.x, var_2.b.x, true, true)), vec2<f32>(1854f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1160f, var_1.a.x, -1000f, var_1.a.x), vec4<f32>(var_1.c.x, var_2.a.x, var_2.c.x, -1000f)))))) + _wgslsmith_f_op_vec4_f32(-var_1.c)), min(u_input.e | (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 5249i, -5066i), vec4<i32>(44439i, 1i, -39118i, 0i)) >> (min(u_input.a.x, 18532u) % 32u)), abs(u_input.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, -813f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(590f, var_2.a.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.yz), _wgslsmith_f_op_vec2_f32(-var_3.c.ww)))), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(23349u, u_input.b, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 38800u, u_input.b), vec3<u32>(u_input.b, 0u, u_input.b))) >> (1u % 32u)));
}

