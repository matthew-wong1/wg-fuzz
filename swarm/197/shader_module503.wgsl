struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<bool>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: Struct_1 = Struct_1(true, vec3<bool>(false, true, false), vec2<bool>(true, false), -1324f, vec2<f32>(408f, -1284f));

var<private> global1: vec3<f32> = vec3<f32>(-124f, 1247f, -964f);

var<private> global2: vec4<i32>;

var<private> global3: bool = true;

var<private> global4: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_1(true, vec3<bool>(true, false, true), vec2<bool>(false, false), 1720f, vec2<f32>(198f, 1952f)), 16744i, 2893f, true, -1000f), Struct_3(Struct_1(true, vec3<bool>(true, true, false), vec2<bool>(false, true), -1556f, vec2<f32>(852f, 2231f)), 11909i, -1683f, false, -233f), Struct_3(Struct_1(false, vec3<bool>(false, false, true), vec2<bool>(true, false), -529f, vec2<f32>(535f, 401f)), -26116i, 897f, true, -1000f), Struct_3(Struct_1(true, vec3<bool>(true, true, false), vec2<bool>(true, false), -245f, vec2<f32>(-820f, 1841f)), -1i, 468f, true, 1845f), Struct_3(Struct_1(true, vec3<bool>(true, true, false), vec2<bool>(false, false), -939f, vec2<f32>(1000f, 225f)), -514i, 815f, true, -596f), Struct_3(Struct_1(false, vec3<bool>(false, false, true), vec2<bool>(false, true), -522f, vec2<f32>(-1463f, -737f)), 2147483647i, 318f, true, -1613f), Struct_3(Struct_1(true, vec3<bool>(false, true, false), vec2<bool>(false, false), -379f, vec2<f32>(-2223f, -1248f)), -18116i, 919f, true, -951f), Struct_3(Struct_1(false, vec3<bool>(true, false, true), vec2<bool>(true, false), -262f, vec2<f32>(-895f, 897f)), -11015i, -904f, true, -1263f), Struct_3(Struct_1(false, vec3<bool>(false, false, false), vec2<bool>(false, false), 482f, vec2<f32>(-230f, -261f)), -1i, 1000f, true, -1065f), Struct_3(Struct_1(false, vec3<bool>(true, false, true), vec2<bool>(false, false), 202f, vec2<f32>(226f, 941f)), -22702i, 1525f, false, -1687f), Struct_3(Struct_1(true, vec3<bool>(false, false, false), vec2<bool>(true, true), -1144f, vec2<f32>(1344f, -736f)), 1i, -143f, true, 2876f), Struct_3(Struct_1(false, vec3<bool>(false, false, true), vec2<bool>(true, false), 1504f, vec2<f32>(1597f, -1570f)), -8351i, 251f, true, 2272f), Struct_3(Struct_1(true, vec3<bool>(true, false, true), vec2<bool>(false, false), -381f, vec2<f32>(-1267f, 424f)), i32(-2147483648), -1117f, false, 722f), Struct_3(Struct_1(false, vec3<bool>(false, true, true), vec2<bool>(false, true), -466f, vec2<f32>(-1000f, 861f)), 14700i, -976f, true, -951f), Struct_3(Struct_1(true, vec3<bool>(true, false, true), vec2<bool>(true, false), 1377f, vec2<f32>(101f, 127f)), -16144i, 323f, true, 1000f), Struct_3(Struct_1(false, vec3<bool>(true, true, false), vec2<bool>(true, false), 850f, vec2<f32>(374f, 1156f)), -42876i, 561f, true, 887f), Struct_3(Struct_1(false, vec3<bool>(true, true, true), vec2<bool>(false, false), -1000f, vec2<f32>(2135f, 701f)), 1i, -420f, false, -135f), Struct_3(Struct_1(false, vec3<bool>(false, true, true), vec2<bool>(true, false), -1118f, vec2<f32>(161f, 236f)), 1i, -648f, true, -1298f), Struct_3(Struct_1(false, vec3<bool>(false, false, false), vec2<bool>(true, false), -980f, vec2<f32>(408f, -1098f)), 33299i, -1561f, true, -1778f), Struct_3(Struct_1(true, vec3<bool>(true, true, true), vec2<bool>(true, true), 410f, vec2<f32>(593f, 1000f)), -51619i, -259f, false, -1197f), Struct_3(Struct_1(false, vec3<bool>(true, false, false), vec2<bool>(false, true), 1394f, vec2<f32>(-150f, 1340f)), -25162i, -949f, false, -140f), Struct_3(Struct_1(false, vec3<bool>(true, true, false), vec2<bool>(true, false), -2242f, vec2<f32>(1493f, 1664f)), -1i, 107f, true, 877f), Struct_3(Struct_1(true, vec3<bool>(false, false, false), vec2<bool>(false, false), 530f, vec2<f32>(1369f, 712f)), 10157i, 732f, true, -1227f), Struct_3(Struct_1(true, vec3<bool>(true, true, true), vec2<bool>(false, true), -2019f, vec2<f32>(170f, 492f)), i32(-2147483648), -737f, false, 1589f), Struct_3(Struct_1(true, vec3<bool>(false, true, false), vec2<bool>(false, false), 1282f, vec2<f32>(1253f, 1000f)), -16331i, 773f, true, -1208f), Struct_3(Struct_1(false, vec3<bool>(false, true, false), vec2<bool>(false, false), 1000f, vec2<f32>(1646f, -897f)), -3203i, 918f, false, 178f), Struct_3(Struct_1(false, vec3<bool>(false, false, false), vec2<bool>(false, false), 1777f, vec2<f32>(-905f, -1302f)), -85887i, 445f, false, -1000f), Struct_3(Struct_1(true, vec3<bool>(false, true, true), vec2<bool>(true, true), -1000f, vec2<f32>(-552f, -2111f)), 26716i, -409f, true, -1120f), Struct_3(Struct_1(true, vec3<bool>(true, true, true), vec2<bool>(true, true), 1000f, vec2<f32>(-1002f, -1000f)), 1507i, 720f, false, -1549f), Struct_3(Struct_1(false, vec3<bool>(false, false, true), vec2<bool>(true, true), -1217f, vec2<f32>(-1000f, 868f)), i32(-2147483648), -1327f, false, -1881f), Struct_3(Struct_1(false, vec3<bool>(false, true, true), vec2<bool>(false, true), -276f, vec2<f32>(-250f, -1544f)), 15667i, -813f, true, -529f), Struct_3(Struct_1(false, vec3<bool>(false, true, true), vec2<bool>(true, false), 540f, vec2<f32>(128f, 1249f)), 53514i, 742f, false, -1000f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_mod_vec4_u32(max(vec4<u32>(~u_input.a.x, u_input.a.x, ~_wgslsmith_div_u32(32912u, u_input.a.x), (u_input.a.x ^ u_input.a.x) | u_input.a.x), ~vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.xy), ~u_input.a.x, 25419u)), vec4<u32>(~u_input.a.x, ~1u, 15024u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(42624u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 0u, 33487u, u_input.a.x)) ^ vec4<u32>(4294967295u, 8599u, u_input.a.x, 4294967295u), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(1u, 1u, u_input.a.x, 0u)))));
    let var_1 = -_wgslsmith_add_vec3_i32(reverseBits(max(reverseBits(global2.xwy), vec3<i32>(0i, global2.x, global2.x))), ~(~abs(vec3<i32>(global2.x, 15547i, global2.x))));
    var var_2 = max(5146u, ~u_input.a.x) >> (reverseBits(27939u) % 32u);
    var var_3 = true;
    let var_4 = global4[_wgslsmith_index_u32(~(~(~var_0.x)), 32u)];
    return -2278f;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    global3 = global0.a;
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(201f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(global0.b.x, global0.a), global0.c)) - _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, global0.c.x), global0.b.xx)), global0.d, any(arg_0.a.b))))) * _wgslsmith_f_op_f32(-global0.e.x)));
    var var_1 = global4[_wgslsmith_index_u32(~u_input.a.x, 32u)];
    var_1 = arg_0;
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-689f, var_1.e, 1f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(950f, var_1.c, 511f) + vec3<f32>(global1.x, 191f, var_1.e)))))));
    return Struct_1(false, select(global0.b, select(global0.b, select(!arg_0.a.b, vec3<bool>(arg_0.a.a, arg_0.a.a, true), any(vec4<bool>(var_1.a.b.x, true, arg_0.a.a, arg_0.d))), u_input.a.x >= _wgslsmith_sub_u32(28349u, u_input.a.x)), false), vec2<bool>(true, all(!select(vec4<bool>(global0.a, false, true, true), vec4<bool>(arg_0.d, global0.b.x, var_1.a.c.x, var_1.d), vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(616f, global1.x), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.e)), _wgslsmith_f_op_f32(-global1.x)), var_1.e))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = global4[_wgslsmith_index_u32(abs(u_input.a.x), 32u)];
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(899f * global1.x), global0.e.x, -377f) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(780f * -1076f), _wgslsmith_f_op_f32(-var_0.c), global0.d)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(573f, -377f, 2184f) * vec3<f32>(var_0.a.d, arg_2.c, -1712f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, arg_2.e, var_0.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, 721f, var_0.c)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_2.c, arg_0.d)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, -448f, global0.d))))), var_0.a.b)));
    return Struct_2(arg_0, !select(!vec4<bool>(true, arg_0.c.x, true, true), vec4<bool>(arg_2.d, false, false, func_2(Struct_3(var_0.a, arg_2.b, 1027f, var_0.d, arg_2.c)).b.x), _wgslsmith_f_op_f32(min(global0.d, -1471f)) < _wgslsmith_f_op_f32(arg_0.d + -465f)), -_wgslsmith_div_i32(arg_1.x, ~global2.x), Struct_1(true, arg_0.b, select(!vec2<bool>(true, arg_2.d), !select(vec2<bool>(var_0.a.c.x, global0.c.x), arg_2.a.b.xx, false), arg_2.a.b.zx), _wgslsmith_f_op_f32(floor(835f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.a.e))) * global1.xy)), func_2(arg_2));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.d, -631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.d.d))))) + vec3<f32>(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1489f, arg_1.a.d) * arg_3.d)), arg_1.e.e.x, _wgslsmith_f_op_f32(arg_1.d.e.x + _wgslsmith_div_f32(-625f, _wgslsmith_f_op_f32(ceil(arg_1.d.e.x))))));
    global4 = array<Struct_3, 32>();
    global4 = array<Struct_3, 32>();
    var var_2 = vec3<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 4294967295u), _wgslsmith_div_u32(_wgslsmith_mod_u32(~(~103101u), ~u_input.a.x), u_input.a.x));
    return arg_3;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: i32) -> f32 {
    var var_0 = arg_0;
    var_0 = Struct_1(func_2(Struct_3(func_4(func_2(global4[_wgslsmith_index_u32(28211u, 32u)]), vec3<i32>(2147483647i, arg_2.x, arg_1), Struct_3(arg_0, arg_3, -885f, arg_0.a, -396f)).d, -55281i, 497f, var_0.b.x | (false && var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -611f)))).c.x, !(!(!(!vec3<bool>(arg_0.c.x, true, false)))), var_0.b.xy, 623f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1068f, 333f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-665f * 1117f)))));
    var_0 = func_5(select(vec3<i32>(~abs(-2147483647i), _wgslsmith_clamp_i32(0i, 0i, _wgslsmith_add_i32(2147483647i, arg_2.x)), countOneBits(-18742i)), -(~(~vec3<i32>(17749i, 19851i, arg_1))), all(vec3<bool>(!var_0.c.x, var_0.b.x, !arg_0.c.x))), func_4(func_2(Struct_3(arg_0, _wgslsmith_add_i32(-24142i, -20235i), _wgslsmith_f_op_f32(-global1.x), arg_0.c.x, arg_0.e.x)), global2.xxy ^ global2.wxw, Struct_3(Struct_1(global0.b.x, func_2(global4[_wgslsmith_index_u32(20763u, 32u)]).b, vec2<bool>(false, arg_0.a), _wgslsmith_f_op_f32(max(-1412f, -823f)), _wgslsmith_f_op_vec2_f32(max(global0.e, global1.zz))), 21461i ^ abs(global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(868f + -881f) - 582f), func_4(arg_0, global2.xyw, global4[_wgslsmith_index_u32(1u, 32u)]).b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(899f * var_0.d), _wgslsmith_f_op_f32(arg_0.e.x - 281f)))), reverseBits(global2.x ^ arg_1), Struct_1(true, !vec3<bool>(true, any(vec3<bool>(false, false, false)), true), func_4(func_4(Struct_1(arg_0.c.x, vec3<bool>(global0.b.x, arg_0.c.x, global0.c.x), var_0.c, 248f, arg_0.e), global2.zzx ^ global2.wxx, Struct_3(arg_0, arg_2.x, global1.x, arg_0.c.x, global1.x)).d, firstLeadingBit(global2.zxw >> (u_input.a % vec3<u32>(32u))), Struct_3(arg_0, -arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1295f), arg_0.b.x || true, _wgslsmith_div_f32(373f, global1.x))).d.c, 574f, _wgslsmith_div_vec2_f32(vec2<f32>(-1010f, _wgslsmith_f_op_f32(floor(-1432f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.x, -1717f) + var_0.e) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.x, arg_0.e.x))))));
    let var_1 = func_4(Struct_1(-1i < arg_3, vec3<bool>(all(vec4<bool>(false, var_0.c.x, arg_0.a, global0.a)), func_2(Struct_3(Struct_1(var_0.b.x, arg_0.b, vec2<bool>(true, global0.b.x), var_0.e.x, global0.e), arg_1, -174f, true, 1444f)).b.x != arg_0.b.x, true), vec2<bool>(1u > _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 61355u, u_input.a.x), vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x)), all(vec4<bool>(false, global0.c.x, var_0.c.x, var_0.a))), func_4(func_4(Struct_1(global0.c.x, arg_0.b, vec2<bool>(true, arg_0.c.x), global1.x, vec2<f32>(global0.e.x, 2286f)), _wgslsmith_mod_vec3_i32(global2.ywy, vec3<i32>(0i, 0i, global2.x)), Struct_3(Struct_1(arg_0.c.x, vec3<bool>(arg_0.b.x, false, true), vec2<bool>(global0.a, arg_0.a), arg_0.d, vec2<f32>(-1385f, var_0.e.x)), 5270i, -126f, arg_0.c.x, 947f)).e, vec3<i32>(~(-81603i), arg_1, _wgslsmith_add_i32(-2147483647i, 67398i)), global4[_wgslsmith_index_u32(abs(u_input.a.x) ^ u_input.a.x, 32u)]).d.d, arg_0.e), (select(global2.wwx, vec3<i32>(27411i, arg_2.x, -1453i) | arg_2, var_0.b) ^ countOneBits(reverseBits(arg_2))) >> (~vec3<u32>(u_input.a.x, 49316u, 59711u) % vec3<u32>(32u)), global4[_wgslsmith_index_u32(~min(_wgslsmith_clamp_u32(4294967295u, ~u_input.a.x, ~u_input.a.x), ~40674u ^ firstTrailingBit(u_input.a.x)), 32u)]);
    global2 = ~(vec4<i32>(_wgslsmith_sub_i32(-8429i, _wgslsmith_mod_i32(arg_3, -1i)), var_1.c, max(-718i >> (u_input.a.x % 32u), -36054i), ~abs(0i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-29651i << (1u % 32u), -2147483647i, 2147483647i, abs(var_1.c)), abs(~vec4<i32>(1i, 899i, var_1.c, arg_2.x)), firstTrailingBit(vec4<i32>(arg_3, -2147483647i, -2147483647i, arg_1) | vec4<i32>(34117i, 24183i, 8780i, 72758i))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1601f);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x - -108f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), 1282f)))) * _wgslsmith_f_op_f32(abs(global1.x))));
    var var_1 = global1.x;
    global4 = array<Struct_3, 32>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_5(-_wgslsmith_add_vec3_i32(global2.yyy, vec3<i32>(global2.x, global2.x, global2.x)), func_4(func_2(global4[_wgslsmith_index_u32(u_input.a.x, 32u)]), global2.zxz, global4[_wgslsmith_index_u32(u_input.a.x, 32u)]), ~16889i, Struct_1(!global0.a, vec3<bool>(false, global0.c.x, global0.c.x), vec2<bool>(true, false), global1.x, global0.e)), -13743i, global2.zyw, i32(-1i) * -(-2147483647i << (0u % 32u)))));
    var var_3 = vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), 1u)), ~u_input.a.x, ~52232u);
    return func_4(Struct_1(all(select(select(vec4<bool>(false, global0.a, false, global0.c.x), vec4<bool>(global0.a, global0.b.x, global0.c.x, true), vec4<bool>(global0.b.x, global0.c.x, true, true)), vec4<bool>(true, true, true, true), !vec4<bool>(global0.a, global0.c.x, global0.b.x, false))), !(!func_5(global2.zwy, Struct_2(Struct_1(global0.b.x, global0.b, global0.b.yy, 108f, global1.xx), vec4<bool>(true, global0.b.x, false, true), global2.x, Struct_1(global0.b.x, vec3<bool>(true, false, true), global0.b.xy, -2777f, global1.xz), Struct_1(global0.a, global0.b, vec2<bool>(false, global0.a), -1000f, global0.e)), global2.x, Struct_1(true, vec3<bool>(global0.c.x, global0.c.x, global0.a), vec2<bool>(global0.c.x, global0.c.x), var_0, global0.e)).b), func_5(-(global2.wzx ^ global2.wyz), func_4(func_5(global2.zxx, Struct_2(Struct_1(global0.a, vec3<bool>(true, true, global0.a), vec2<bool>(true, global0.b.x), var_0, vec2<f32>(global0.d, var_0)), vec4<bool>(false, global0.a, global0.a, false), global2.x, Struct_1(global0.a, global0.b, vec2<bool>(global0.a, false), -298f, vec2<f32>(476f, -187f)), Struct_1(global0.b.x, global0.b, vec2<bool>(false, false), -822f, vec2<f32>(-330f, -630f))), 2147483647i, Struct_1(true, vec3<bool>(false, true, true), vec2<bool>(global0.c.x, global0.b.x), -669f, global1.zz)), firstTrailingBit(global2.xyz), global4[_wgslsmith_index_u32(0u, 32u)]), ~(-2147483647i), Struct_1(any(vec3<bool>(global0.c.x, global0.b.x, true)), global0.b, global0.b.xy, 495f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-809f, -1222f) + vec2<f32>(-1039f, 579f)))).b.xx, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1003f, var_0))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.zz * vec2<f32>(global1.x, 1418f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1431f, -1000f), vec2<f32>(global1.x, global0.d)) + func_4(Struct_1(global0.a, global0.b, vec2<bool>(true, false), global1.x, global1.xy), global2.zww, Struct_3(Struct_1(true, global0.b, vec2<bool>(global0.b.x, global0.b.x), var_0, vec2<f32>(-2603f, global1.x)), -43782i, 224f, global0.a, var_0)).e.e))), ~vec3<i32>(_wgslsmith_clamp_i32(-56182i, global2.x, -global2.x), _wgslsmith_mult_i32(-2147483647i | global2.x, global2.x), abs(global2.x)), Struct_3(Struct_1(true & global0.c.x, vec3<bool>(false & global0.a, true, false), vec2<bool>(any(vec3<bool>(global0.b.x, true, false)), !global0.a), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0, global0.e.x), -416f, false)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1.zz)))), _wgslsmith_sub_i32(abs(global2.x), global2.x), -1572f, false, _wgslsmith_f_op_f32(614f + _wgslsmith_f_op_f32(max(354f, 404f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_3(Struct_1(true, func_1().b.xwy, select(global0.c, func_1().b.xy, true), _wgslsmith_f_op_f32(f32(-1f) * -699f), vec2<f32>(-556f, var_0.d.e.x)), abs(_wgslsmith_sub_i32(i32(-1i) * -5628i, var_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -1066f), !var_0.d.c.x, var_0.e.d);
    global0 = Struct_1(global0.c.x, global0.b, vec2<bool>(true, any(vec3<bool>(var_0.a.b.x || global0.a, select(var_1.a.a, false, true), var_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d, 1418f) + vec2<f32>(1000f, global0.e.x)) * var_1.a.e)), var_0.e.e));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

