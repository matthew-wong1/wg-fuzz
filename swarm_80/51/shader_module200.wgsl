struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(1u, 0u, 1u, 0u, 7008u, 4294967295u, 0u, 17052u, 36040u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 19300u, 4294967295u, 20613u, 4294967295u, 35797u, 23190u, 4294967295u, 47642u, 55050u, 46873u, 0u, 2600u, 32296u, 0u);

var<private> global1: vec4<i32> = vec4<i32>(8802i, 2147483647i, -17676i, i32(-2147483648));

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec4<f32>(-1201f, -105f, -1291f, -1169f), vec4<bool>(true, false, false, false), -1149f), Struct_2(vec4<f32>(-207f, 474f, 599f, 253f), vec4<bool>(true, false, false, true), -1757f), Struct_2(vec4<f32>(512f, 1494f, -287f, 414f), vec4<bool>(true, false, false, false), -122f), Struct_2(vec4<f32>(-1007f, -166f, -592f, 1488f), vec4<bool>(true, false, true, true), -910f), Struct_2(vec4<f32>(1601f, 668f, 975f, -1429f), vec4<bool>(false, true, true, true), -1031f), Struct_2(vec4<f32>(-1696f, -771f, 1528f, 1547f), vec4<bool>(true, true, false, true), -977f), Struct_2(vec4<f32>(302f, 241f, 1261f, 376f), vec4<bool>(true, true, false, false), 297f), Struct_2(vec4<f32>(-565f, 438f, 1070f, 1431f), vec4<bool>(true, true, false, true), -1060f), Struct_2(vec4<f32>(359f, 507f, 281f, -881f), vec4<bool>(true, true, true, true), -1817f), Struct_2(vec4<f32>(1842f, -562f, 296f, 270f), vec4<bool>(false, true, true, true), 913f), Struct_2(vec4<f32>(483f, 1607f, -799f, 197f), vec4<bool>(false, true, false, false), 1000f), Struct_2(vec4<f32>(1000f, -2553f, 1444f, 1434f), vec4<bool>(true, true, true, true), 151f), Struct_2(vec4<f32>(-435f, -397f, -1000f, 1055f), vec4<bool>(false, true, true, false), -914f), Struct_2(vec4<f32>(-679f, -1462f, 1610f, -1221f), vec4<bool>(true, false, false, false), 158f), Struct_2(vec4<f32>(-1000f, 1259f, -1396f, 972f), vec4<bool>(true, true, true, true), 371f), Struct_2(vec4<f32>(1386f, -1997f, -1271f, 2165f), vec4<bool>(true, false, false, true), -1477f), Struct_2(vec4<f32>(355f, 513f, -259f, 1871f), vec4<bool>(false, false, false, false), -378f), Struct_2(vec4<f32>(-672f, 151f, -1059f, 385f), vec4<bool>(false, false, true, false), 1000f), Struct_2(vec4<f32>(251f, 1001f, 1478f, 586f), vec4<bool>(true, true, true, false), 144f), Struct_2(vec4<f32>(545f, 334f, 708f, 666f), vec4<bool>(true, true, true, false), -1047f), Struct_2(vec4<f32>(-461f, 1136f, 1668f, 1057f), vec4<bool>(true, false, true, false), 383f), Struct_2(vec4<f32>(-108f, -366f, -893f, 275f), vec4<bool>(true, true, true, false), -1545f), Struct_2(vec4<f32>(210f, -273f, -536f, -1120f), vec4<bool>(true, false, false, false), 257f), Struct_2(vec4<f32>(-453f, -1209f, -305f, 379f), vec4<bool>(false, true, true, true), -404f), Struct_2(vec4<f32>(473f, 604f, 1313f, -405f), vec4<bool>(false, true, true, false), -177f), Struct_2(vec4<f32>(-786f, -105f, -632f, 1029f), vec4<bool>(true, true, true, true), -830f), Struct_2(vec4<f32>(-1492f, -898f, -1000f, -1333f), vec4<bool>(false, true, false, false), -1000f), Struct_2(vec4<f32>(-354f, 982f, 249f, -1301f), vec4<bool>(false, true, false, false), -672f), Struct_2(vec4<f32>(1285f, -992f, -340f, -189f), vec4<bool>(false, true, true, true), -1285f), Struct_2(vec4<f32>(-1126f, -505f, -214f, -624f), vec4<bool>(true, false, true, false), 823f), Struct_2(vec4<f32>(1047f, -617f, 519f, 714f), vec4<bool>(false, true, true, true), -967f), Struct_2(vec4<f32>(1092f, 801f, 678f, 1164f), vec4<bool>(false, false, false, true), -387f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = Struct_1(!(!arg_2.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), arg_1.d.x, _wgslsmith_f_op_f32(-arg_1.e), _wgslsmith_f_op_f32(min(-841f, 1247f))), arg_1.b)), arg_1.c, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(arg_2.d)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.zz * vec2<f32>(arg_1.d.x, arg_1.e)) - arg_2.b.zz)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.b.x - -1446f))));
    let var_1 = u_input.d.x;
    global3 = array<Struct_2, 32>();
    global0 = array<u32, 27>();
    return -(abs(~(~var_1)) << (reverseBits(4294967295u) % 32u));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    global0 = array<u32, 27>();
    let var_0 = !vec2<bool>(false, arg_2.b.x);
    var var_1 = vec4<i32>(_wgslsmith_div_i32(~_wgslsmith_mult_i32(abs(global1.x), arg_1.x << (47285u % 32u)), _wgslsmith_div_i32(32573i, -55852i)), arg_1.x, u_input.a.x, -countOneBits(abs(func_3(false, Struct_1(arg_2.b, vec4<f32>(arg_2.c, -1000f, global2.x, 1135f), global0[_wgslsmith_index_u32(18944u, 27u)], vec2<f32>(global2.x, global2.x), -1781f), Struct_1(vec4<bool>(var_0.x, false, false, true), arg_2.a, global0[_wgslsmith_index_u32(15907u, 27u)], arg_2.a.yx, 993f), 2147483647i))));
    global1 = vec4<i32>(arg_1.x, min(arg_1.x, 11898i), -2147483647i, u_input.b);
    var var_2 = Struct_3(vec4<i32>(~min(global1.x, -50203i) | 614i, var_1.x, -2147483647i << (min(u_input.e.x >> (86641u % 32u), 0u) % 32u), 1i), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(384f - -1819f), _wgslsmith_div_f32(global2.x, 848f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1169f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -806f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-203f, arg_2.c))) + arg_2.a.zy));
    return Struct_1(vec4<bool>(var_0.x, true || arg_0, true, any(var_0)), arg_2.a, u_input.e.x, _wgslsmith_div_vec2_f32(vec2<f32>(986f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-391f * 835f) + _wgslsmith_f_op_f32(step(arg_2.c, -1477f)))), _wgslsmith_f_op_vec2_f32(ceil(global2.xy))), _wgslsmith_f_op_f32(trunc(var_2.c.x)));
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    global0 = array<u32, 27>();
    global2 = _wgslsmith_f_op_vec3_f32(arg_0.b.xyy - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -555f), arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_0 = ~((_wgslsmith_clamp_vec3_u32(u_input.c.zxw << (vec3<u32>(0u, arg_0.c, 0u) % vec3<u32>(32u)), vec3<u32>(arg_0.c, 4294967295u, 1u), firstLeadingBit(u_input.c.xzw)) & (_wgslsmith_clamp_vec3_u32(u_input.e.wzy, vec3<u32>(10891u, 1u, u_input.e.x), u_input.c.xyx) >> (firstLeadingBit(vec3<u32>(u_input.c.x, 57132u, 6381u)) % vec3<u32>(32u)))) << (~vec3<u32>(abs(50658u), ~arg_0.c, min(80471u, u_input.c.x)) % vec3<u32>(32u)));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(func_2(arg_0.a.x, vec3<i32>(-14963i, -77648i, u_input.d.x), global3[_wgslsmith_index_u32(arg_0.c, 32u)]).b.x, _wgslsmith_f_op_f32(-arg_0.d.x))) * 483f), arg_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(-652f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(521f))))), vec4<bool>(arg_0.a.x, !(_wgslsmith_f_op_f32(select(-658f, global2.x, arg_0.a.x)) < arg_0.d.x), arg_0.a.x, !arg_0.a.x), 274f);
    var var_2 = func_2(var_1.b.x, vec3<i32>(-5754i, min(u_input.a.x, global1.x & u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b << (0u % 32u), _wgslsmith_div_i32(global1.x, 31187i)), ~global1.zw)), Struct_2(_wgslsmith_f_op_vec4_f32(select(arg_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d.x, 2329f, 1113f, arg_0.d.x)))), vec4<bool>(!arg_0.a.x, !arg_0.a.x, arg_0.a.x, !var_1.b.x))), vec4<bool>(true, true, !(!arg_0.a.x), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.x)))))).b;
    return u_input.c;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_4 {
    global1 = vec4<i32>(abs(_wgslsmith_sub_i32(-2147483647i, ~global1.x)), u_input.b | arg_3.a.x, -(~0i), global1.x) ^ arg_3.a;
    var var_0 = vec2<bool>(0u > arg_0, true == !((arg_3.a.x == arg_3.a.x) & all(vec2<bool>(true, false))));
    let var_1 = func_4(func_2(true, arg_3.a.xyw, Struct_2(_wgslsmith_f_op_vec4_f32(abs(arg_1)), vec4<bool>(true, !var_0.x, var_0.x, true), global2.x)));
    global0 = array<u32, 27>();
    global3 = array<Struct_2, 32>();
    return Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_1)) - _wgslsmith_f_op_vec4_f32(-arg_1)), func_2(~120363u <= select(var_1.x, 5721u, var_0.x), vec3<i32>(-24709i, -4392i, ~global1.x), global3[_wgslsmith_index_u32(abs(var_1.x) >> (~4294967295u % 32u), 32u)]).a, 1076f), vec2<f32>(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.c.x))))), _wgslsmith_f_op_f32(round(-345f))), func_2(!(!var_0.x) != false, vec3<i32>(abs(global1.x), -2147483647i, -48780i), global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(var_1.zy, var_1.xz)), 32u)]), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_3.a.zz, ~(vec2<i32>(global1.x, u_input.d.x) ^ arg_3.a.wz)), _wgslsmith_div_i32(~max(1i, arg_3.a.x), ~(~global1.x))));
}

fn func_5(arg_0: Struct_4) -> vec4<bool> {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.a.a.yww))), _wgslsmith_f_op_vec3_f32(max(arg_0.c.b.xxx, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(288f, global2.x, global2.x), arg_0.a.a.zzx))))));
    global2 = vec3<f32>(func_1(arg_0.c.c, _wgslsmith_f_op_vec4_f32(arg_0.a.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -653f, -1000f, arg_0.c.e))), ~select(~u_input.e.zy, firstTrailingBit(vec2<u32>(10166u, arg_0.c.c)), !arg_0.a.b.yy), Struct_3(vec4<i32>(_wgslsmith_mult_i32(1i, -61605i), -u_input.d.x, abs(-2147483647i), max(arg_0.d, 0i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.b.x, -1042f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(-arg_0.b.x)))).a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.x))), global2.x);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(856f)) - _wgslsmith_f_op_f32(arg_0.a.c * 295f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - -121f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.c, global2.x)))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a.x + arg_0.b.x) - _wgslsmith_f_op_f32(arg_0.a.c - global2.x))), _wgslsmith_f_op_f32(func_2(arg_0.c.a.x, min(vec3<i32>(-1i, global1.x, 22905i), vec3<i32>(arg_0.d, 30317i, arg_0.d)), arg_0.a).e + _wgslsmith_f_op_f32(-arg_0.b.x)))));
    let var_1 = _wgslsmith_dot_vec2_u32(u_input.c.zz, func_4(arg_0.c).wx);
    global1 = select(~(-(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.d, u_input.a.x, -12727i, 3190i), vec4<i32>(u_input.d.x, u_input.b, 2147483647i, -31220i), vec4<i32>(u_input.a.x, u_input.b, arg_0.d, u_input.d.x)))), min(select(min(~vec4<i32>(global1.x, -20345i, arg_0.d, u_input.b), vec4<i32>(-16049i, -1i, -76705i, 3046i)), vec4<i32>(47801i, global1.x, u_input.b, global1.x) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 40208i, 2147483647i, arg_0.d), vec4<i32>(30874i, u_input.b, arg_0.d, u_input.d.x)), vec4<bool>(true, arg_0.c.a.x, arg_0.c.a.x, 115f != global2.x)), max(max(vec4<i32>(-2147483647i, 2147483647i, 44870i, 2147483647i) << (u_input.e % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(29405i, 1i, 0i, -41939i))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, arg_0.d, 0i, 8890i), vec4<i32>(-1i, 0i, 1i, arg_0.d)))), false);
    return !vec4<bool>(func_2(any(!arg_0.a.b), vec3<i32>(max(-2147483647i, 6356i), firstLeadingBit(arg_0.d), -global1.x), func_1(1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.a.a.x, arg_0.b.x, global2.x)), ~u_input.c.xw, Struct_3(vec4<i32>(10988i, global1.x, 429i, 65878i), vec2<f32>(global2.x, 892f), vec2<f32>(154f, arg_0.a.a.x))).a).a.x, false, func_1(arg_0.c.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -959f, 1373f, arg_0.b.x)), u_input.c.ww | u_input.c.xw, Struct_3(vec4<i32>(1i, 32733i, -45538i, 24003i), vec2<f32>(arg_0.a.a.x, -181f), global2.zz)).c.a.x && all(!vec3<bool>(true, arg_0.a.b.x, arg_0.a.b.x)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(select(vec4<bool>(true, true, true, true), func_5(func_1(u_input.e.x, vec4<f32>(-663f, -339f, 1881f, -837f), vec2<u32>(u_input.c.x, 82019u), Struct_3(vec4<i32>(global1.x, u_input.b, -3781i, 41439i), vec2<f32>(global2.x, 1681f), vec2<f32>(1845f, -860f)))), all(vec4<bool>(true, true, true, true)))), true, all(vec2<bool>(true, true)), true);
    let var_1 = _wgslsmith_f_op_f32(trunc(global2.x));
    global0 = array<u32, 27>();
    let var_2 = ~vec2<i32>(-36867i, (u_input.a.x | u_input.a.x) ^ min(0i, _wgslsmith_sub_i32(-2147483647i, -2147483647i)));
    var var_3 = func_2(var_0.x, _wgslsmith_mod_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, global1.x, global1.x) ^ vec3<i32>(u_input.b, 0i, global1.x), vec3<i32>(u_input.b, 8373i, var_2.x))), vec3<i32>(select(var_2.x, -28230i, var_0.x), 2147483647i, _wgslsmith_div_i32(u_input.a.x, global1.x))), func_1(global0[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, global2.x, var_1, var_1))))), min(u_input.c.wz, u_input.c.wx), Struct_3(vec4<i32>(-1i, reverseBits(2147483647i), _wgslsmith_div_i32(u_input.d.x, -1i), u_input.b ^ -1i), func_1(_wgslsmith_dot_vec2_u32(u_input.e.wx, u_input.e.zy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, 782f, 933f)), vec2<u32>(67553u, u_input.e.x) ^ vec2<u32>(u_input.c.x, 55028u), Struct_3(vec4<i32>(44724i, 19901i, var_2.x, 11456i), vec2<f32>(global2.x, var_1), global2.xy)).a.a.ww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(881f, 536f), global2.xy))))).a).a.wz;
    let var_4 = ~_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(global1.x, u_input.a.x, 2147483647i, 1i)), reverseBits(vec4<i32>(global1.x, 28393i, global1.x, global1.x))) >> (func_4(func_1(33122u, vec4<f32>(1281f, global2.x, -1000f, var_1), u_input.e.zx, Struct_3(vec4<i32>(var_2.x, global1.x, var_2.x, 0i), global2.yx, vec2<f32>(global2.x, 813f))).c) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-16943i, -13407i, -2147483647i, global1.x) ^ _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, -52640i, var_2.x, global1.x), vec4<i32>(-1i, u_input.b, global1.x, 57486i)), vec4<i32>(-13180i, abs(-32110i), var_2.x, _wgslsmith_clamp_i32(23273i, global1.x, -52196i))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(abs(~u_input.c), ~u_input.c), ~_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(~var_2, var_2), var_2 >> (u_input.e.yw % vec2<u32>(32u))), ~(~52590u));
}

