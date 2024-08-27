struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<bool>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<f32>(1713f, 2160f, 588f, 277f), 363f, vec4<bool>(false, false, true, false), vec3<u32>(1u, 1u, 1u), vec3<f32>(-870f, -378f, 1680f)), Struct_1(vec4<f32>(-751f, 1000f, -2372f, -175f), 1734f, vec4<bool>(false, true, false, true), vec3<u32>(0u, 61488u, 1u), vec3<f32>(1000f, 819f, -1091f)), Struct_1(vec4<f32>(754f, -570f, -163f, -824f), 1227f, vec4<bool>(false, false, true, true), vec3<u32>(1u, 26293u, 4294967295u), vec3<f32>(295f, -407f, 484f)), Struct_1(vec4<f32>(453f, 863f, 1376f, 354f), -772f, vec4<bool>(false, true, true, true), vec3<u32>(1u, 4294967295u, 7268u), vec3<f32>(-937f, -1405f, -1038f)), Struct_1(vec4<f32>(2359f, -1000f, 464f, 878f), 1154f, vec4<bool>(false, false, true, true), vec3<u32>(0u, 1u, 1u), vec3<f32>(-1144f, 146f, -681f)), Struct_1(vec4<f32>(-1412f, -402f, -109f, 658f), 849f, vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<f32>(-1314f, -729f, 1367f)), Struct_1(vec4<f32>(655f, 1404f, -851f, 719f), 332f, vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 178u, 1u), vec3<f32>(-1096f, 903f, -1509f)), Struct_1(vec4<f32>(-535f, -316f, -680f, -1031f), 1000f, vec4<bool>(true, true, false, false), vec3<u32>(0u, 54168u, 96323u), vec3<f32>(587f, 1077f, 1769f)), Struct_1(vec4<f32>(-2684f, -284f, -727f, -1898f), -152f, vec4<bool>(true, true, true, true), vec3<u32>(0u, 33054u, 4294967295u), vec3<f32>(-725f, 1000f, -918f)), Struct_1(vec4<f32>(-1772f, 170f, 1000f, -152f), -608f, vec4<bool>(true, true, false, false), vec3<u32>(43216u, 9384u, 1u), vec3<f32>(432f, -328f, 1173f)), Struct_1(vec4<f32>(570f, 1000f, -1211f, -1000f), 861f, vec4<bool>(false, false, true, false), vec3<u32>(1u, 5079u, 4294967295u), vec3<f32>(-859f, 1951f, -632f)), Struct_1(vec4<f32>(-2069f, -604f, 1031f, 1293f), 1154f, vec4<bool>(true, false, false, true), vec3<u32>(8522u, 1911u, 1u), vec3<f32>(1675f, -232f, 411f)), Struct_1(vec4<f32>(711f, -1929f, 1447f, -502f), -773f, vec4<bool>(true, false, true, false), vec3<u32>(19893u, 0u, 4294967295u), vec3<f32>(-1284f, 1098f, 1000f)), Struct_1(vec4<f32>(-258f, -1056f, 2599f, 123f), 779f, vec4<bool>(false, false, false, true), vec3<u32>(10896u, 1u, 6941u), vec3<f32>(303f, 944f, -1821f)), Struct_1(vec4<f32>(1403f, 1409f, -201f, -1277f), -632f, vec4<bool>(true, true, false, true), vec3<u32>(22467u, 14261u, 6635u), vec3<f32>(-902f, 109f, 721f)), Struct_1(vec4<f32>(-1000f, 283f, 1387f, -1865f), 112f, vec4<bool>(true, true, true, false), vec3<u32>(41910u, 59798u, 85714u), vec3<f32>(1497f, 472f, 1314f)), Struct_1(vec4<f32>(1770f, -423f, -990f, 1000f), -2057f, vec4<bool>(true, false, true, true), vec3<u32>(0u, 5922u, 17278u), vec3<f32>(1064f, 2125f, 1000f)), Struct_1(vec4<f32>(-1360f, -1560f, -379f, -1000f), 166f, vec4<bool>(false, false, true, false), vec3<u32>(16366u, 60790u, 4036u), vec3<f32>(992f, 946f, 1385f)), Struct_1(vec4<f32>(834f, 993f, -1512f, -1251f), 171f, vec4<bool>(false, false, false, true), vec3<u32>(13876u, 95692u, 4294967295u), vec3<f32>(-756f, 358f, 140f)), Struct_1(vec4<f32>(856f, -892f, 300f, -1000f), 448f, vec4<bool>(true, false, true, true), vec3<u32>(5289u, 8654u, 1u), vec3<f32>(-711f, 108f, 1021f)), Struct_1(vec4<f32>(-190f, 2707f, -1447f, 1000f), 231f, vec4<bool>(true, false, true, false), vec3<u32>(0u, 18367u, 4294967295u), vec3<f32>(-1212f, 260f, 919f)), Struct_1(vec4<f32>(437f, 612f, 2119f, 363f), -1000f, vec4<bool>(true, true, false, true), vec3<u32>(0u, 22836u, 1u), vec3<f32>(-875f, 969f, 162f)), Struct_1(vec4<f32>(466f, -775f, -323f, -838f), -1757f, vec4<bool>(false, true, false, false), vec3<u32>(0u, 27913u, 0u), vec3<f32>(414f, 1428f, 193f)), Struct_1(vec4<f32>(-649f, -882f, 1708f, -1176f), 825f, vec4<bool>(false, true, false, true), vec3<u32>(22580u, 0u, 50962u), vec3<f32>(672f, 842f, -1338f)), Struct_1(vec4<f32>(714f, -1887f, -973f, -1000f), -1170f, vec4<bool>(false, false, false, false), vec3<u32>(132188u, 146382u, 4294967295u), vec3<f32>(218f, -966f, 103f)), Struct_1(vec4<f32>(1311f, 148f, 342f, 1136f), 831f, vec4<bool>(true, false, false, true), vec3<u32>(8492u, 0u, 61353u), vec3<f32>(3400f, 1314f, -1000f)), Struct_1(vec4<f32>(1325f, -1000f, 489f, 429f), -881f, vec4<bool>(true, false, true, false), vec3<u32>(0u, 15847u, 88239u), vec3<f32>(-1000f, 670f, 639f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -500f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-878f * -720f), _wgslsmith_f_op_f32(floor(-216f)))))), -189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-185f + 1463f))))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(~arg_2.d.yx)), 367f, select(vec4<bool>(true, arg_1.c.x, true, arg_2.c.x), select(select(arg_2.c, select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_1.c.x, true, arg_1.c.x, arg_2.c.x), arg_0), arg_2.c), arg_1.c, !any(vec4<bool>(false, arg_2.c.x, false, false))), !select(select(arg_2.c, vec4<bool>(false, true, true, true), true), !vec4<bool>(true, true, arg_1.c.x, arg_0), arg_2.c.x || false)), select(arg_2.d, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.d.x, ~57839u, 4294967295u), ~arg_1.d), select(arg_1.c.xxy, select(vec3<bool>(arg_0, arg_0, arg_2.c.x), !vec3<bool>(true, arg_2.c.x, true), arg_2.c.x), arg_1.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, 1144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-698f + 966f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), arg_2.a.x, arg_1.a.x, _wgslsmith_f_op_f32(-arg_2.e.x)), arg_1.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(arg_2.a * var_0.a)) * var_0.a)), -765f, !(!vec4<bool>(true, true, all(arg_2.c), all(vec2<bool>(arg_1.c.x, arg_0)))), _wgslsmith_clamp_vec3_u32(arg_1.d, arg_1.d, vec3<u32>(arg_1.d.x, abs(u_input.c.x), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(13259u, arg_1.d.x), var_0.d.x, firstLeadingBit(u_input.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-191f, arg_1.a.x, 1441f)))));
    global1 = array<Struct_1, 27>();
    global0 = array<vec3<i32>, 4>();
    var var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -502f), !var_0.c, abs(u_input.c), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(arg_2.a.zww, vec3<f32>(671f, -1000f, -1568f), var_0.c.zxw)), _wgslsmith_f_op_vec3_f32(var_1.a.wzx - arg_1.a.zxz), var_0.c.yxz)));
    return arg_1.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global1 = array<Struct_1, 27>();
    var var_0 = select(arg_0.c.ww, select(arg_1.c.wy, vec2<bool>(arg_1.c.x, func_2(arg_1.c.x, arg_0, Struct_1(arg_0.a, 893f, vec4<bool>(true, false, false, false), vec3<u32>(arg_0.d.x, u_input.c.x, arg_1.d.x), arg_1.e), firstLeadingBit(vec2<u32>(arg_0.d.x, u_input.c.x)))), arg_1.c.x), arg_1.c.wy);
    var var_1 = -reverseBits(abs(27789i ^ (u_input.b & -13955i)));
    global0 = array<vec3<i32>, 4>();
    var_1 = -8392i;
    return arg_1.c.xw;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 27>();
    global1 = array<Struct_1, 27>();
    let var_0 = any(select(!select(func_1(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], global1[_wgslsmith_index_u32(1u, 27u)]), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), false), vec2<bool>(true, select(func_2(true, Struct_1(vec4<f32>(933f, -951f, -140f, -1683f), -2254f, vec4<bool>(false, false, true, true), u_input.c, vec3<f32>(-209f, 818f, 746f)), Struct_1(vec4<f32>(384f, 2159f, 151f, -661f), -1131f, vec4<bool>(true, false, true, false), vec3<u32>(u_input.d.x, u_input.c.x, u_input.d.x), vec3<f32>(-168f, 1000f, -1020f)), u_input.c.zx), 0u <= u_input.c.x, true)), all(vec2<bool>(false, all(vec3<bool>(true, false, false))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-824f, _wgslsmith_f_op_f32(f32(-1f) * -419f), 1435f, _wgslsmith_f_op_f32(ceil(-372f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * vec4<f32>(_wgslsmith_f_op_f32(-428f * 509f), _wgslsmith_f_op_f32(f32(-1f) * -1988f), _wgslsmith_f_op_f32(step(538f, -1714f)), -213f)))), _wgslsmith_f_op_f32(trunc(-574f)), vec4<bool>(true, all(select(!vec4<bool>(false, var_0, false, true), select(vec4<bool>(var_0, true, false, false), vec4<bool>(var_0, true, true, var_0), vec4<bool>(false, var_0, var_0, false)), vec4<bool>(var_0, false, false, false))), var_0, true), max(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, ~1u), u_input.c), vec3<u32>(1u, _wgslsmith_mult_u32(~u_input.d.x, 1u), 0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-880f)), -304f, _wgslsmith_f_op_f32(349f + 812f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1758f, -350f, -1387f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(154f, -1000f, 1102f))), vec3<f32>(_wgslsmith_f_op_f32(665f + 1000f), 2221f, 1f))));
    let var_2 = -global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.x, var_1.d.x, u_input.c.x, var_1.d.x), vec4<u32>(var_1.d.x, 1u, 1u, 0u))) | _wgslsmith_sub_u32(u_input.c.x, var_1.d.x), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, var_1.d.x) >> (u_input.c.xy % vec2<u32>(32u))), u_input.c.zz)), 4u)];
    let var_3 = global1[_wgslsmith_index_u32(~(~var_1.d.x), 27u)];
    var var_4 = vec2<bool>(!var_0, select(any(vec2<bool>(true, true)), _wgslsmith_add_i32(u_input.b, reverseBits(var_2.x)) >= (_wgslsmith_mult_i32(1i, var_2.x) & 1i), all(select(!var_1.c, select(vec4<bool>(true, true, var_3.c.x, false), var_3.c, vec4<bool>(true, true, false, true)), !var_1.c))));
    var var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-742f + _wgslsmith_f_op_f32(trunc(var_1.e.x))))), var_3.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(86046u, _wgslsmith_f_op_vec4_f32(func_3(u_input.d)).x);
}

