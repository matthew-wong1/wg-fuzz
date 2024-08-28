struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: bool,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 3> = array<f32, 3>(404f, -393f, -1068f);

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(false, Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-352f, -487f, 1826f), false, vec2<bool>(false, false), vec4<u32>(53105u, 19384u, 6279u, 74430u)), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-1881f, -500f, -180f), true, vec2<bool>(true, true), vec4<u32>(1u, 1u, 0u, 80503u)), vec4<u32>(22232u, 0u, 4294967295u, 63786u)), Struct_2(true, Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-1349f, 1792f, -1000f), true, vec2<bool>(false, false), vec4<u32>(4294967295u, 0u, 87456u, 1u)), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-487f, 969f, -146f), true, vec2<bool>(false, true), vec4<u32>(69357u, 0u, 1u, 57538u)), vec4<u32>(4294967295u, 28187u, 15892u, 0u)), Struct_2(true, Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(1000f, -1000f, 967f), true, vec2<bool>(true, false), vec4<u32>(1u, 45371u, 10774u, 27834u)), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(489f, -1642f, -1675f), false, vec2<bool>(false, true), vec4<u32>(1u, 4294967295u, 0u, 94317u)), vec4<u32>(14408u, 4294967295u, 63942u, 46482u)), Struct_2(true, Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(953f, 1217f, 1370f), false, vec2<bool>(true, false), vec4<u32>(0u, 19533u, 46858u, 1577u)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(1182f, -1548f, 1699f), true, vec2<bool>(false, false), vec4<u32>(43229u, 0u, 0u, 0u)), vec4<u32>(53768u, 3486u, 4294967295u, 28097u)), Struct_2(true, Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(1155f, 1142f, 1000f), false, vec2<bool>(false, true), vec4<u32>(1u, 2549u, 30291u, 1u)), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-232f, -821f, 860f), true, vec2<bool>(false, true), vec4<u32>(1u, 0u, 0u, 617u)), vec4<u32>(62690u, 2097u, 77470u, 0u)), Struct_2(true, Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-1000f, -361f, 1511f), false, vec2<bool>(false, false), vec4<u32>(2066u, 1417u, 4294967295u, 1u)), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-1192f, -1201f, 763f), false, vec2<bool>(false, false), vec4<u32>(51194u, 0u, 86733u, 1u)), vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), Struct_2(false, Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(-1186f, -1263f, 1034f), false, vec2<bool>(true, true), vec4<u32>(1u, 31095u, 4294967295u, 1u)), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(-365f, -1078f, 1266f), false, vec2<bool>(true, true), vec4<u32>(51354u, 0u, 0u, 4294967295u)), vec4<u32>(0u, 0u, 14699u, 17622u)), Struct_2(false, Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(386f, 229f, 339f), false, vec2<bool>(true, false), vec4<u32>(41798u, 17837u, 1u, 49293u)), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(145f, 437f, -1000f), true, vec2<bool>(false, true), vec4<u32>(4294967295u, 1u, 1u, 41841u)), vec4<u32>(0u, 13031u, 0u, 46998u)), Struct_2(true, Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(766f, -1380f, 1188f), true, vec2<bool>(true, true), vec4<u32>(13075u, 3194u, 0u, 2469u)), Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(1950f, 1347f, -673f), true, vec2<bool>(true, false), vec4<u32>(1u, 83127u, 45983u, 51279u)), vec4<u32>(1u, 60186u, 30323u, 0u)), Struct_2(false, Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(159f, -932f, -1621f), false, vec2<bool>(true, false), vec4<u32>(0u, 68432u, 1u, 4294967295u)), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-278f, -597f, -1098f), true, vec2<bool>(true, true), vec4<u32>(11951u, 42316u, 18622u, 62577u)), vec4<u32>(1u, 48114u, 1u, 1u)), Struct_2(false, Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(1000f, -1569f, 779f), true, vec2<bool>(true, true), vec4<u32>(1u, 4294967295u, 2568u, 44439u)), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-428f, -654f, 477f), true, vec2<bool>(false, false), vec4<u32>(1u, 105689u, 1u, 77729u)), vec4<u32>(44194u, 39417u, 4294967295u, 52446u)), Struct_2(true, Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(587f, 837f, 369f), true, vec2<bool>(false, true), vec4<u32>(1u, 4294967295u, 6955u, 48267u)), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(736f, 806f, -1494f), false, vec2<bool>(false, true), vec4<u32>(1u, 0u, 67948u, 17642u)), vec4<u32>(17581u, 4294967295u, 4294967295u, 80782u)), Struct_2(true, Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(-106f, 1700f, 1000f), false, vec2<bool>(false, false), vec4<u32>(1u, 4870u, 0u, 0u)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-335f, -1227f, 712f), false, vec2<bool>(true, false), vec4<u32>(72200u, 1u, 39815u, 8840u)), vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), Struct_2(false, Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-1785f, 2297f, 132f), false, vec2<bool>(false, false), vec4<u32>(1u, 1u, 21781u, 46639u)), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-627f, 159f, -991f), true, vec2<bool>(false, true), vec4<u32>(21742u, 25871u, 54344u, 30305u)), vec4<u32>(69009u, 0u, 4294967295u, 4294967295u)), Struct_2(false, Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(-1000f, 840f, 2544f), true, vec2<bool>(false, true), vec4<u32>(7121u, 0u, 1u, 99969u)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(298f, -459f, -201f), true, vec2<bool>(true, false), vec4<u32>(4294967295u, 131714u, 1u, 26505u)), vec4<u32>(22148u, 0u, 1u, 4294967295u)), Struct_2(true, Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(507f, 765f, -834f), false, vec2<bool>(true, true), vec4<u32>(0u, 21834u, 1u, 968u)), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-1493f, -1000f, -227f), true, vec2<bool>(true, true), vec4<u32>(0u, 0u, 4452u, 0u)), vec4<u32>(10237u, 0u, 26653u, 15613u)), Struct_2(true, Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-1566f, 500f, -947f), true, vec2<bool>(true, false), vec4<u32>(0u, 43222u, 4294967295u, 39547u)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-1000f, -2609f, -130f), true, vec2<bool>(false, false), vec4<u32>(68465u, 63809u, 23733u, 0u)), vec4<u32>(1u, 0u, 27571u, 16818u)), Struct_2(true, Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(1000f, -512f, -431f), true, vec2<bool>(false, false), vec4<u32>(73459u, 73569u, 4294967295u, 20590u)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(1582f, 1211f, 1633f), false, vec2<bool>(false, true), vec4<u32>(1u, 22192u, 4294967295u, 93175u)), vec4<u32>(31970u, 1u, 3908u, 35471u)), Struct_2(true, Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(-726f, 901f, 994f), false, vec2<bool>(true, true), vec4<u32>(5131u, 4294967295u, 1u, 60942u)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(2226f, 1005f, 1065f), true, vec2<bool>(true, true), vec4<u32>(1u, 47879u, 1u, 4294967295u)), vec4<u32>(13833u, 0u, 0u, 11766u)), Struct_2(true, Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(669f, -1058f, -772f), false, vec2<bool>(false, false), vec4<u32>(3615u, 1u, 16690u, 26934u)), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(1155f, -1000f, -1083f), false, vec2<bool>(true, true), vec4<u32>(1u, 0u, 43122u, 0u)), vec4<u32>(0u, 77440u, 829u, 1u)), Struct_2(true, Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-1370f, -995f, 1014f), true, vec2<bool>(true, false), vec4<u32>(1u, 4294967295u, 29127u, 19903u)), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-864f, -1508f, 790f), false, vec2<bool>(true, true), vec4<u32>(25170u, 4294967295u, 4294967295u, 9023u)), vec4<u32>(29051u, 4294967295u, 45752u, 1u)), Struct_2(true, Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-404f, 1014f, -1579f), false, vec2<bool>(false, false), vec4<u32>(17299u, 0u, 46966u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(135f, -627f, -633f), true, vec2<bool>(true, true), vec4<u32>(1086u, 1301u, 5269u, 1538u)), vec4<u32>(140342u, 0u, 26842u, 0u)), Struct_2(true, Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(-294f, 904f, -199f), true, vec2<bool>(false, false), vec4<u32>(20359u, 4294967295u, 83125u, 0u)), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(1000f, -2071f, 1469f), false, vec2<bool>(false, false), vec4<u32>(4294967295u, 49614u, 42145u, 30643u)), vec4<u32>(0u, 54486u, 25692u, 29116u)), Struct_2(false, Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(1796f, -262f, -1008f), true, vec2<bool>(false, false), vec4<u32>(4294967295u, 4294967295u, 29548u, 8373u)), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(195f, 1000f, -410f), true, vec2<bool>(true, true), vec4<u32>(1u, 4294967295u, 9006u, 4294967295u)), vec4<u32>(0u, 4294967295u, 4294967295u, 37358u)), Struct_2(true, Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-457f, 697f, 513f), false, vec2<bool>(true, true), vec4<u32>(11249u, 4294967295u, 0u, 26103u)), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(1081f, -1769f, -906f), true, vec2<bool>(true, false), vec4<u32>(20019u, 1u, 1u, 1u)), vec4<u32>(76309u, 4294967295u, 39806u, 82798u)), Struct_2(false, Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-713f, -1455f, -683f), true, vec2<bool>(true, true), vec4<u32>(0u, 4294967295u, 52760u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(1053f, -153f, 333f), false, vec2<bool>(true, false), vec4<u32>(68181u, 7303u, 4122u, 129943u)), vec4<u32>(80514u, 44518u, 4294967295u, 0u)), Struct_2(false, Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(817f, 755f, 277f), false, vec2<bool>(false, false), vec4<u32>(0u, 48187u, 63534u, 0u)), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(133f, 1456f, -173f), false, vec2<bool>(true, true), vec4<u32>(46315u, 4294967295u, 54019u, 4294967295u)), vec4<u32>(28117u, 0u, 0u, 1u)), Struct_2(true, Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(-1155f, -623f, -289f), false, vec2<bool>(false, false), vec4<u32>(58300u, 0u, 24535u, 0u)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(556f, 228f, -797f), true, vec2<bool>(true, false), vec4<u32>(4294967295u, 41287u, 11666u, 4294967295u)), vec4<u32>(1u, 70450u, 1u, 24106u)), Struct_2(false, Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(499f, -372f, 168f), false, vec2<bool>(true, false), vec4<u32>(1u, 1u, 4294967295u, 1u)), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(487f, 1237f, 1127f), false, vec2<bool>(false, true), vec4<u32>(4294967295u, 65113u, 0u, 0u)), vec4<u32>(0u, 51559u, 6416u, 4294967295u)), Struct_2(true, Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-1290f, -356f, 317f), true, vec2<bool>(true, true), vec4<u32>(2049u, 7952u, 53849u, 28516u)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-634f, 316f, -457f), true, vec2<bool>(false, true), vec4<u32>(38566u, 29766u, 4294967295u, 72602u)), vec4<u32>(62835u, 1u, 4294967295u, 4294967295u)));

var<private> global3: array<f32, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(!select(global0.a.a, arg_2.a, arg_1.a.a), vec3<f32>(arg_0.c.x, arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2.e.x, 3u)]) - global0.c.x)), arg_2.d.x, !global0.a.a.xw, _wgslsmith_sub_vec4_u32(vec4<u32>(~(~0u), 3033u, ~arg_0.b.c.e.x, _wgslsmith_add_u32(65586u, max(u_input.b.x, 25196u))), arg_2.e));
    global1 = array<f32, 3>();
    let var_1 = Struct_1(vec4<bool>(!any(vec2<bool>(false, true)), !arg_2.d.x, true, any(arg_0.b.b.a.zxx)), var_0.b, var_0.a.x, global0.a.d, arg_2.e);
    let var_2 = ~(~u_input.d.x);
    let var_3 = _wgslsmith_div_vec3_i32(~_wgslsmith_div_vec3_i32(u_input.d.xxx, select(u_input.d.zxz, vec3<i32>(-29028i, var_2, var_2), vec3<bool>(false, arg_2.d.x, true)) << (_wgslsmith_mod_vec3_u32(arg_1.b.d.wyy, arg_0.b.d.xww) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(~u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, var_2, -1i, 1i), u_input.d) | firstLeadingBit(var_2)), ~u_input.d.x >> (firstTrailingBit(_wgslsmith_sub_u32(arg_2.e.x, 3276u)) % 32u), -u_input.d.x));
    return true;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec3<f32>) -> vec4<bool> {
    return vec4<bool>(arg_2.x, !arg_0, arg_2.x, func_3(Struct_3(global0.b.b, global2[_wgslsmith_index_u32(14760u, 30u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 169f, -796f, arg_3.x))), Struct_3(Struct_1(select(vec4<bool>(arg_2.x, global0.a.a.x, false, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, arg_0), global0.b.c.a), vec3<f32>(221f, global3[_wgslsmith_index_u32(u_input.a.x, 31u)], -1141f), true, vec2<bool>(global0.b.a, arg_2.x), ~vec4<u32>(66355u, global0.a.e.x, 1u, u_input.a.x)), Struct_2(global0.a.a.x, global0.b.c, Struct_1(vec4<bool>(arg_2.x, true, arg_0, arg_2.x), vec3<f32>(-1276f, -1000f, -529f), false, vec2<bool>(false, false), u_input.b), vec4<u32>(14774u, u_input.b.x, 23619u, 1u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3.x, 511f, -1186f, global1[_wgslsmith_index_u32(global0.b.c.e.x, 3u)]), vec4<f32>(global1[_wgslsmith_index_u32(93640u, 3u)], 1244f, -252f, arg_1.x)))))), global0.a));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    var var_0 = !vec2<bool>(all(select(vec4<bool>(true, false, true, global0.b.a), func_2(global0.b.c.c, vec4<f32>(global3[_wgslsmith_index_u32(1u, 31u)], global0.b.c.b.x, 1277f, global3[_wgslsmith_index_u32(arg_0.b.e.x, 31u)]), arg_0.b.d, vec3<f32>(-1403f, global1[_wgslsmith_index_u32(global0.a.e.x, 3u)], 255f)), true)), true);
    var var_1 = Struct_1(vec4<bool>(global0.b.b.c, true, 736f >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.b.x + global0.c.x), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(global0.b.b.e.x, 31u)], global3[_wgslsmith_index_u32(421u, 31u)])))), var_0.x), arg_0.c.b, false, !global0.a.a.wy, ~_wgslsmith_add_vec4_u32(arg_0.b.e, ~(~vec4<u32>(38331u, arg_0.b.e.x, u_input.a.x, u_input.a.x))));
    var_1 = Struct_1(vec4<bool>(!all(!vec4<bool>(arg_0.a, true, false, true)), false, any(global0.a.a.xwz), var_0.x), vec3<f32>(global1[_wgslsmith_index_u32(7169u, 3u)], _wgslsmith_div_f32(-492f, _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(select(163f, -1697f, var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.b.c.e.x, 31u)] * 1161f))))), ~(-1i) <= u_input.d.x, vec2<bool>(func_2(true, vec4<f32>(global0.a.b.x, global3[_wgslsmith_index_u32(4294967295u, 31u)], 439f, -1388f), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false), false), var_1.b).x | (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0.b.c.e.x), vec2<u32>(global0.a.e.x, var_1.e.x)) <= max(var_1.e.x, 4294967295u)), true), ~(~vec4<u32>(_wgslsmith_add_u32(arg_0.b.e.x, global0.b.c.e.x), ~4294967295u, 20867u, 76191u)));
    global3 = array<f32, 31>();
    var var_2 = reverseBits(vec4<i32>(abs(u_input.d.x), _wgslsmith_add_i32(-1i, abs(18546i)), -2147483647i, 1i));
    return Struct_3(global0.b.b, Struct_2(true, Struct_1(func_2(var_1.b.x < global0.c.x, global0.c, var_1.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(1513f, -1524f, 1825f) - vec3<f32>(-130f, global0.a.b.x, global0.c.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(var_1.b)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(555f, 290f, -888f))))), true && all(var_1.a), var_1.a.xz, countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, arg_0.b.e.x, u_input.b.x, arg_0.b.e.x), vec4<u32>(global0.a.e.x, 0u, 0u, 1u)))), Struct_1(func_2(var_1.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.b.x, 1049f, -780f, arg_0.c.b.x)), global0.b.c.a.xx, vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], 438f, global0.c.x)), _wgslsmith_f_op_vec3_f32(-var_1.b), any(select(var_1.d, global0.b.b.d, global0.b.a)), vec2<bool>(all(arg_0.b.d), any(vec2<bool>(true, var_1.a.x))), u_input.b), ~firstTrailingBit(vec4<u32>(1u, global0.b.c.e.x, 0u, u_input.c.x) & vec4<u32>(u_input.a.x, u_input.a.x, var_1.e.x, 4294967295u))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1014f, global3[_wgslsmith_index_u32(arg_0.c.e.x, 31u)], _wgslsmith_f_op_f32(step(-2002f, global0.a.b.x)), -807f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~4294967295u);
    global0 = func_1(global2[_wgslsmith_index_u32(42451u, 30u)]);
    let var_1 = u_input.d.x;
    var var_2 = global0.a.b.x;
    global3 = array<f32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~22211u, _wgslsmith_f_op_f32(-global0.a.b.x), u_input.d.zwy);
}

