struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26>;

var<private> global1: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_2(false, Struct_1(952u, vec4<f32>(-1445f, -526f, -1107f, 357f), vec4<u32>(52766u, 1u, 1u, 0u)), vec2<bool>(true, false), Struct_1(40376u, vec4<f32>(-743f, 874f, 1279f, -1116f), vec4<u32>(45783u, 24916u, 1u, 4294967295u)), true), Struct_3(vec2<bool>(true, true), vec3<f32>(1284f, -415f, -1025f))), Struct_4(Struct_2(true, Struct_1(1u, vec4<f32>(-1263f, -1310f, -521f, 1596f), vec4<u32>(4294967295u, 1u, 23228u, 1u)), vec2<bool>(false, false), Struct_1(32372u, vec4<f32>(1953f, 1000f, -942f, 695f), vec4<u32>(50375u, 4294967295u, 1u, 47171u)), false), Struct_3(vec2<bool>(false, true), vec3<f32>(812f, 1000f, 1000f))), Struct_4(Struct_2(true, Struct_1(1u, vec4<f32>(-1810f, 135f, 1263f, -720f), vec4<u32>(61995u, 2137u, 1u, 35931u)), vec2<bool>(false, true), Struct_1(1u, vec4<f32>(452f, -965f, 1522f, -1564f), vec4<u32>(4294967295u, 52669u, 0u, 18973u)), true), Struct_3(vec2<bool>(true, true), vec3<f32>(-564f, -1670f, -772f))), Struct_4(Struct_2(true, Struct_1(1u, vec4<f32>(-406f, 820f, 287f, -839f), vec4<u32>(23307u, 59212u, 4030u, 1u)), vec2<bool>(false, false), Struct_1(15412u, vec4<f32>(-371f, 315f, -733f, 642f), vec4<u32>(0u, 50003u, 1u, 23706u)), false), Struct_3(vec2<bool>(true, false), vec3<f32>(-734f, 848f, 210f))), Struct_4(Struct_2(true, Struct_1(4294967295u, vec4<f32>(1012f, -261f, 2099f, -1162f), vec4<u32>(4644u, 31309u, 11598u, 1u)), vec2<bool>(true, false), Struct_1(23240u, vec4<f32>(358f, -461f, 1666f, 230f), vec4<u32>(53099u, 1u, 65076u, 1u)), true), Struct_3(vec2<bool>(false, true), vec3<f32>(-2374f, 1759f, 649f))), Struct_4(Struct_2(false, Struct_1(1u, vec4<f32>(-428f, 1027f, -444f, -1000f), vec4<u32>(35527u, 4294967295u, 48969u, 1u)), vec2<bool>(false, false), Struct_1(1u, vec4<f32>(-617f, 747f, -2879f, -1212f), vec4<u32>(1u, 698u, 4294967295u, 2744u)), false), Struct_3(vec2<bool>(true, true), vec3<f32>(-906f, 284f, -1283f))), Struct_4(Struct_2(true, Struct_1(16353u, vec4<f32>(-1488f, -486f, -353f, 939f), vec4<u32>(1u, 0u, 1u, 36742u)), vec2<bool>(false, true), Struct_1(1u, vec4<f32>(443f, 508f, 907f, -1805f), vec4<u32>(4294967295u, 1u, 0u, 25540u)), false), Struct_3(vec2<bool>(true, false), vec3<f32>(1775f, 1000f, 598f))), Struct_4(Struct_2(true, Struct_1(13592u, vec4<f32>(355f, -889f, 658f, -1114f), vec4<u32>(0u, 65227u, 4294967295u, 32075u)), vec2<bool>(false, true), Struct_1(1u, vec4<f32>(162f, 456f, 645f, -725f), vec4<u32>(4294967295u, 1u, 56773u, 4294967295u)), true), Struct_3(vec2<bool>(false, true), vec3<f32>(-1780f, 1000f, 1000f))), Struct_4(Struct_2(false, Struct_1(1u, vec4<f32>(1423f, 1000f, 1798f, 3170f), vec4<u32>(0u, 6934u, 29122u, 13212u)), vec2<bool>(false, false), Struct_1(66251u, vec4<f32>(1549f, -700f, 310f, -322f), vec4<u32>(1u, 75932u, 1u, 1u)), false), Struct_3(vec2<bool>(false, false), vec3<f32>(2463f, -261f, 937f))), Struct_4(Struct_2(false, Struct_1(1u, vec4<f32>(-967f, -929f, 1155f, -358f), vec4<u32>(15747u, 1u, 0u, 62603u)), vec2<bool>(true, true), Struct_1(0u, vec4<f32>(-1000f, -1573f, 2118f, -287f), vec4<u32>(96165u, 2683u, 7945u, 59546u)), false), Struct_3(vec2<bool>(false, true), vec3<f32>(223f, 324f, 622f))), Struct_4(Struct_2(true, Struct_1(1u, vec4<f32>(1024f, 1007f, 456f, -1345f), vec4<u32>(1u, 14239u, 74908u, 0u)), vec2<bool>(true, true), Struct_1(1u, vec4<f32>(-2090f, 324f, 730f, -1917f), vec4<u32>(53535u, 4294967295u, 12845u, 35720u)), false), Struct_3(vec2<bool>(true, false), vec3<f32>(982f, 276f, 745f))), Struct_4(Struct_2(false, Struct_1(56849u, vec4<f32>(337f, -1000f, 126f, -544f), vec4<u32>(5068u, 0u, 1u, 27351u)), vec2<bool>(true, false), Struct_1(60720u, vec4<f32>(644f, -706f, -109f, -1100f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 128530u)), true), Struct_3(vec2<bool>(false, true), vec3<f32>(-711f, 662f, -144f))), Struct_4(Struct_2(true, Struct_1(4294967295u, vec4<f32>(408f, 3412f, 1290f, -1150f), vec4<u32>(0u, 4726u, 29494u, 11889u)), vec2<bool>(true, true), Struct_1(37068u, vec4<f32>(551f, -1550f, 264f, -1132f), vec4<u32>(1u, 51676u, 20915u, 14577u)), false), Struct_3(vec2<bool>(true, true), vec3<f32>(989f, -956f, -265f))), Struct_4(Struct_2(true, Struct_1(44732u, vec4<f32>(-484f, -530f, 1168f, 1652f), vec4<u32>(92918u, 7395u, 4294967295u, 26892u)), vec2<bool>(false, true), Struct_1(4294967295u, vec4<f32>(1746f, 2186f, 483f, 268f), vec4<u32>(1u, 28413u, 62817u, 4294967295u)), false), Struct_3(vec2<bool>(false, false), vec3<f32>(-571f, 242f, -103f))), Struct_4(Struct_2(true, Struct_1(0u, vec4<f32>(1229f, -502f, -1297f, 550f), vec4<u32>(14288u, 34734u, 15836u, 61040u)), vec2<bool>(true, true), Struct_1(39743u, vec4<f32>(-962f, -937f, 845f, 1747f), vec4<u32>(4702u, 1u, 52104u, 10915u)), true), Struct_3(vec2<bool>(true, false), vec3<f32>(-1553f, -1000f, -1445f))), Struct_4(Struct_2(false, Struct_1(18211u, vec4<f32>(-1923f, 1122f, 174f, 759f), vec4<u32>(4294967295u, 10867u, 93034u, 0u)), vec2<bool>(false, true), Struct_1(4294967295u, vec4<f32>(-316f, -1574f, 1885f, 1000f), vec4<u32>(4294967295u, 4294967295u, 90168u, 1u)), true), Struct_3(vec2<bool>(true, true), vec3<f32>(-170f, 504f, 401f))), Struct_4(Struct_2(false, Struct_1(48151u, vec4<f32>(-586f, 285f, 540f, 2354f), vec4<u32>(1u, 32852u, 1u, 91533u)), vec2<bool>(false, true), Struct_1(0u, vec4<f32>(1449f, 614f, -339f, -144f), vec4<u32>(0u, 0u, 1u, 1u)), false), Struct_3(vec2<bool>(false, true), vec3<f32>(-1176f, 1771f, -663f))), Struct_4(Struct_2(true, Struct_1(65278u, vec4<f32>(-455f, -682f, 1793f, -846f), vec4<u32>(32053u, 48936u, 1u, 49636u)), vec2<bool>(false, true), Struct_1(40495u, vec4<f32>(-297f, -671f, -1712f, -165f), vec4<u32>(4294967295u, 0u, 11178u, 0u)), false), Struct_3(vec2<bool>(true, false), vec3<f32>(1737f, -1163f, 182f))));

var<private> global2: Struct_4 = Struct_4(Struct_2(false, Struct_1(0u, vec4<f32>(765f, 201f, 304f, 393f), vec4<u32>(1u, 1u, 1u, 36184u)), vec2<bool>(true, true), Struct_1(120358u, vec4<f32>(-704f, 317f, 820f, 1215f), vec4<u32>(0u, 1u, 31918u, 39396u)), true), Struct_3(vec2<bool>(true, true), vec3<f32>(136f, -730f, -958f)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = select(global2.a.d.c.xzz, abs(select(global2.a.d.c.yww, ~_wgslsmith_add_vec3_u32(vec3<u32>(global2.a.b.a, u_input.a, global2.a.d.a), global2.a.b.c.wxw), vec3<bool>(false, global2.a.e, -1732f <= arg_3.x))), vec3<bool>(true, true, !(global2.b.a.x & true)));
    global1 = array<Struct_4, 18>();
    let var_2 = -_wgslsmith_sub_vec3_i32(abs(_wgslsmith_mod_vec3_i32(u_input.c.yzy, u_input.c.yyy) | -u_input.c.yxy), u_input.c.xyz);
    global0 = array<vec3<bool>, 26>();
    return Struct_2(!global2.a.a, global2.a.d, vec2<bool>(false, !(all(global0[_wgslsmith_index_u32(var_1.x, 26u)]) == false)), Struct_1(abs(var_1.x), _wgslsmith_f_op_vec4_f32(-global2.a.b.b), global2.a.b.c), global2.b.a.x);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> Struct_2 {
    var var_0 = vec2<u32>(1u, global2.a.b.c.x);
    let var_1 = vec2<u32>(0u, abs(u_input.a)) & vec2<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(global2.a.b.c.x), ~0u, ~0u), arg_1.a.b.c.xxx));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a.b.b.x))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(490f + -953f))));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_1.b.b.x)))) + _wgslsmith_f_op_vec2_f32(arg_1.b.b.xy * _wgslsmith_f_op_vec2_f32(vec2<f32>(-167f, 910f) + vec2<f32>(434f, arg_0.x)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.d.b.x) - _wgslsmith_f_op_f32(501f + 2529f)), _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-arg_1.a.d.b.x)))))));
    let var_4 = arg_1.b;
    return func_2(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c.zx, abs(u_input.c.wx)), abs(~u_input.c.yz)) ^ select(~max(u_input.c.xx, vec2<i32>(-1i, u_input.c.x)), ~(u_input.c.yz ^ u_input.c.yw), true), -u_input.c.yx, u_input.c.x, _wgslsmith_f_op_vec2_f32(arg_1.a.d.b.ww * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(751f, var_4.b.x) + arg_1.b.b.yz), var_4.b.xz)))));
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> i32 {
    let var_0 = Struct_4(func_3(_wgslsmith_f_op_vec4_f32(global2.a.d.b - vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1.b.b.x)), _wgslsmith_f_op_f32(select(-149f, -1314f, true)), _wgslsmith_f_op_f32(-1065f + arg_1.b.b.x), _wgslsmith_f_op_f32(1357f * global2.b.b.x))), Struct_4(func_2(u_input.c.zz, u_input.c.xy, firstLeadingBit(73301i), vec2<f32>(-1350f, -790f)), arg_1.b)), Struct_3(select(func_3(vec4<f32>(global2.a.b.b.x, global2.a.b.b.x, global2.a.b.b.x, arg_1.b.b.x), arg_1).c, vec2<bool>(true, true), !all(vec4<bool>(false, false, arg_2, global2.a.c.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.b.b.x, -1332f, -1374f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.d.b.x, global2.a.d.b.x, arg_1.b.b.x) + vec3<f32>(global2.a.d.b.x, -775f, arg_1.b.b.x)))))));
    global1 = array<Struct_4, 18>();
    let var_1 = global1[_wgslsmith_index_u32(88056u, 18u)];
    global2 = Struct_4(var_0.a, arg_1.b);
    global1 = array<Struct_4, 18>();
    return -2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: i32) -> Struct_2 {
    global2 = Struct_4(func_2(select(~(-arg_1), arg_1, false), max(~u_input.c.xx, firstLeadingBit(min(u_input.c.yw, vec2<i32>(arg_3, arg_1.x)))), -30809i, func_2(_wgslsmith_mod_vec2_i32(u_input.c.ww, arg_1) >> ((global2.a.b.c.wz << (vec2<u32>(27448u, 61639u) % vec2<u32>(32u))) % vec2<u32>(32u)), max(min(vec2<i32>(2147483647i, arg_1.x), u_input.c.zw), ~vec2<i32>(u_input.c.x, 24158i)), 1i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, arg_2), arg_0.b.wz)), global2.b.b.yy))).d.b.yy), global2.b);
    global1 = array<Struct_4, 18>();
    global2 = Struct_4(Struct_2(false, Struct_1(_wgslsmith_mod_u32(~global2.a.d.a, ~arg_0.a), vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x * -791f), _wgslsmith_f_op_f32(max(1235f, arg_0.b.x)), 184f, -773f), firstTrailingBit(vec4<u32>(1u, arg_0.c.x, 10482u, global2.a.b.c.x))), select(select(func_2(u_input.c.yx, vec2<i32>(63198i, arg_1.x), 2147483647i, global2.a.b.b.zy).c, !global2.a.c, global2.a.c), !vec2<bool>(global2.b.a.x, false), global2.b.a), Struct_1(global2.a.b.a, global2.a.b.b, countOneBits(_wgslsmith_sub_vec4_u32(arg_0.c, global2.a.b.c))), true), global2.b);
    global0 = array<vec3<bool>, 26>();
    var var_0 = 3801u;
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_4(func_4(Struct_1(0u, global2.a.b.b, global2.a.d.c), vec2<i32>(2147483647i | u_input.c.x, min(1i, func_1(global2.a.d.c.x, global1[_wgslsmith_index_u32(u_input.a, 18u)], global2.a.e))), _wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_add_i32(~(-2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c.zyz, u_input.c.www, vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)), u_input.c.wxw))), global2.b);
    global0 = array<vec3<bool>, 26>();
    var var_0 = Struct_4(func_2(-u_input.c.xw, -vec2<i32>(u_input.c.x, -u_input.c.x), u_input.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.b.b.x), global2.a.b.b.x))), Struct_3(global2.a.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.b.x, global2.a.d.b.x, global2.a.b.b.x)) - global2.a.b.b.ywx)));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstTrailingBit(~u_input.b), ~(~(~u_input.b)), !vec2<bool>(u_input.c.x < u_input.c.x, global2.a.e)), _wgslsmith_sub_i32(_wgslsmith_div_i32(-36991i, -reverseBits(u_input.c.x)), 32647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.d.b.x, var_0.b.b.x, var_0.b.b.x, var_0.a.d.b.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-516f, global2.a.b.b.x, var_0.b.b.x, global2.b.b.x))))), u_input.c.zwx, global2.a.b.c.zy);
}

