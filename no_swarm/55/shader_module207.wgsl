struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4>;

var<private> global1: array<Struct_3, 8>;

var<private> global2: vec2<f32> = vec2<f32>(-1560f, -781f);

var<private> global3: Struct_3;

var<private> global4: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(Struct_1(vec3<f32>(520f, 112f, 1319f), vec3<f32>(-374f, -153f, -2841f), 1i), Struct_2(Struct_1(vec3<f32>(343f, 1141f, 331f), vec3<f32>(-1176f, -472f, -411f), -42717i), vec2<bool>(false, false), vec2<f32>(-377f, 170f))), Struct_4(Struct_1(vec3<f32>(-1335f, 1485f, 566f), vec3<f32>(1223f, 917f, 1856f), 0i), Struct_2(Struct_1(vec3<f32>(522f, -654f, 1150f), vec3<f32>(120f, 1625f, 1000f), 1i), vec2<bool>(true, true), vec2<f32>(882f, -2516f))), Struct_4(Struct_1(vec3<f32>(-1390f, 247f, 1000f), vec3<f32>(-101f, 1000f, 261f), 21704i), Struct_2(Struct_1(vec3<f32>(-1081f, -1440f, -343f), vec3<f32>(1554f, 659f, -1277f), 1i), vec2<bool>(true, true), vec2<f32>(-574f, -1129f))), Struct_4(Struct_1(vec3<f32>(1424f, -581f, -429f), vec3<f32>(619f, 797f, -1154f), i32(-2147483648)), Struct_2(Struct_1(vec3<f32>(1068f, -686f, -937f), vec3<f32>(-130f, 1128f, 1000f), 2147483647i), vec2<bool>(true, false), vec2<f32>(-148f, 1709f))), Struct_4(Struct_1(vec3<f32>(266f, -338f, -393f), vec3<f32>(-589f, -1097f, -960f), 56008i), Struct_2(Struct_1(vec3<f32>(-294f, -1895f, 509f), vec3<f32>(-404f, 368f, -857f), -3396i), vec2<bool>(true, true), vec2<f32>(-1159f, 1746f))), Struct_4(Struct_1(vec3<f32>(2180f, -712f, -660f), vec3<f32>(326f, 840f, 454f), 1i), Struct_2(Struct_1(vec3<f32>(3769f, 217f, 3068f), vec3<f32>(-1124f, -607f, 1105f), -47700i), vec2<bool>(false, true), vec2<f32>(1378f, 1878f))), Struct_4(Struct_1(vec3<f32>(-1266f, -1375f, 1330f), vec3<f32>(1000f, 1262f, -330f), 1i), Struct_2(Struct_1(vec3<f32>(1007f, -1858f, 380f), vec3<f32>(-484f, 1000f, 607f), 2147483647i), vec2<bool>(true, true), vec2<f32>(1285f, -739f))), Struct_4(Struct_1(vec3<f32>(-1000f, -1637f, -584f), vec3<f32>(475f, 478f, 119f), -1i), Struct_2(Struct_1(vec3<f32>(-911f, 1358f, 629f), vec3<f32>(-2183f, 305f, 287f), -45980i), vec2<bool>(false, true), vec2<f32>(635f, -627f))), Struct_4(Struct_1(vec3<f32>(1093f, 1380f, -216f), vec3<f32>(-1000f, 298f, -1546f), 1i), Struct_2(Struct_1(vec3<f32>(-1261f, -1261f, 231f), vec3<f32>(-151f, -130f, -1291f), 9541i), vec2<bool>(false, true), vec2<f32>(-227f, -1606f))), Struct_4(Struct_1(vec3<f32>(-1000f, 1063f, 1000f), vec3<f32>(1662f, 509f, 797f), -1i), Struct_2(Struct_1(vec3<f32>(261f, 508f, 1125f), vec3<f32>(-2385f, -819f, 1085f), -31822i), vec2<bool>(false, false), vec2<f32>(295f, 2657f))), Struct_4(Struct_1(vec3<f32>(891f, 989f, -374f), vec3<f32>(-1618f, -1000f, 1423f), -34393i), Struct_2(Struct_1(vec3<f32>(1000f, 1220f, 1550f), vec3<f32>(656f, -1439f, -426f), -44496i), vec2<bool>(true, false), vec2<f32>(1407f, -282f))), Struct_4(Struct_1(vec3<f32>(-1000f, 251f, 892f), vec3<f32>(347f, 253f, 267f), -55388i), Struct_2(Struct_1(vec3<f32>(1000f, 1949f, 1323f), vec3<f32>(1712f, 696f, 685f), 2640i), vec2<bool>(false, false), vec2<f32>(1381f, 156f))), Struct_4(Struct_1(vec3<f32>(1000f, 1214f, -466f), vec3<f32>(438f, 1859f, 647f), 56650i), Struct_2(Struct_1(vec3<f32>(1542f, -1173f, 754f), vec3<f32>(1356f, -1000f, -1000f), -14768i), vec2<bool>(true, false), vec2<f32>(103f, -1905f))), Struct_4(Struct_1(vec3<f32>(518f, -532f, -2166f), vec3<f32>(1305f, 933f, -1710f), 1i), Struct_2(Struct_1(vec3<f32>(665f, -641f, -409f), vec3<f32>(419f, 777f, 119f), 2147483647i), vec2<bool>(false, false), vec2<f32>(535f, -795f))), Struct_4(Struct_1(vec3<f32>(334f, 738f, 107f), vec3<f32>(1978f, 872f, 594f), -20089i), Struct_2(Struct_1(vec3<f32>(362f, 217f, -1414f), vec3<f32>(-455f, 536f, -1065f), 0i), vec2<bool>(true, true), vec2<f32>(-2294f, -771f))), Struct_4(Struct_1(vec3<f32>(1915f, 410f, 819f), vec3<f32>(-1395f, 481f, -949f), i32(-2147483648)), Struct_2(Struct_1(vec3<f32>(-292f, -1793f, 1658f), vec3<f32>(-331f, 464f, 1095f), -1i), vec2<bool>(false, false), vec2<f32>(705f, 217f))), Struct_4(Struct_1(vec3<f32>(263f, 1987f, -1415f), vec3<f32>(-430f, -475f, -625f), -1i), Struct_2(Struct_1(vec3<f32>(-1437f, -1000f, 816f), vec3<f32>(465f, 437f, 1320f), -15807i), vec2<bool>(true, false), vec2<f32>(-1967f, -229f))), Struct_4(Struct_1(vec3<f32>(-1012f, 702f, -1000f), vec3<f32>(351f, 1639f, -982f), 33036i), Struct_2(Struct_1(vec3<f32>(1149f, 683f, -2066f), vec3<f32>(1880f, -411f, 504f), 2147483647i), vec2<bool>(true, false), vec2<f32>(1190f, -882f))), Struct_4(Struct_1(vec3<f32>(231f, -1000f, -193f), vec3<f32>(530f, 1430f, 492f), 22029i), Struct_2(Struct_1(vec3<f32>(-1151f, 152f, -484f), vec3<f32>(480f, -308f, 659f), 67079i), vec2<bool>(false, true), vec2<f32>(320f, -1000f))), Struct_4(Struct_1(vec3<f32>(1000f, -691f, -1000f), vec3<f32>(-1085f, -526f, 601f), 38026i), Struct_2(Struct_1(vec3<f32>(-883f, -1032f, 838f), vec3<f32>(-879f, 1249f, -133f), 1i), vec2<bool>(false, false), vec2<f32>(1633f, 878f))), Struct_4(Struct_1(vec3<f32>(-552f, -1000f, -1239f), vec3<f32>(406f, 1760f, -1265f), 16461i), Struct_2(Struct_1(vec3<f32>(1475f, 293f, -1204f), vec3<f32>(331f, -162f, -365f), 0i), vec2<bool>(false, false), vec2<f32>(-777f, 1451f))), Struct_4(Struct_1(vec3<f32>(-993f, 879f, -530f), vec3<f32>(-1080f, -346f, 235f), 2901i), Struct_2(Struct_1(vec3<f32>(336f, -307f, 2234f), vec3<f32>(648f, 1176f, -991f), 20987i), vec2<bool>(false, false), vec2<f32>(-2084f, -1209f))));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    global1 = array<Struct_3, 8>();
    var var_0 = false;
    global2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-468f)))) - -1608f));
    global4 = array<Struct_4, 22>();
    global4 = array<Struct_4, 22>();
    return ~(vec4<u32>(11329u, _wgslsmith_dot_vec2_u32(vec2<u32>(1467u, u_input.a.x), abs(u_input.a.yy)), ~u_input.a.x, u_input.c) >> (vec4<u32>(~u_input.a.x & ~u_input.a.x, min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 5718u, u_input.c, u_input.c), u_input.a), u_input.c), _wgslsmith_div_u32(13950u >> (u_input.a.x % 32u), _wgslsmith_mod_u32(4294967295u, 4294967295u)), select(u_input.a.x >> (43252u % 32u), u_input.a.x, select(false, false, global3.c.b.x))) % vec4<u32>(32u)));
}

fn func_2(arg_0: bool) -> Struct_4 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global3.b.b)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -756f, -1326f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-867f, 1241f, -1462f), global3.b.b)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.c.a.b)))), global3.a.c), global3.c.b, global3.c.a.b.yx);
    let var_1 = ~max((_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(var_0.a.c, global3.a.c, -2147483647i, 21726i)) | u_input.b) >> (func_3() % vec4<u32>(32u)), vec4<i32>(global3.a.c, abs(global3.a.c), -32814i, 1i) << (vec4<u32>(u_input.c | u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 4294967295u), ~u_input.a.x, ~u_input.c) % vec4<u32>(32u)));
    global1 = array<Struct_3, 8>();
    var var_2 = global4[_wgslsmith_index_u32(u_input.c, 22u)];
    let var_3 = u_input.b.wzz;
    return global4[_wgslsmith_index_u32(~u_input.a.x, 22u)];
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec4<bool>) -> vec2<i32> {
    global1 = array<Struct_3, 8>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1140f) + _wgslsmith_f_op_f32(select(arg_1.b.c.x, global3.b.a.x, global3.c.b.x))), _wgslsmith_div_f32(-1692f, global2.x), _wgslsmith_f_op_f32(sign(-1021f))), _wgslsmith_f_op_vec3_f32(-arg_1.b.a.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a.a)), _wgslsmith_f_op_vec3_f32(-global3.b.b))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.c.a.c, 1i, 0i, -63501i), ~u_input.b), -1i ^ u_input.b.x, ~(-51390i), arg_0), countOneBits(firstLeadingBit(-u_input.b))));
    let var_1 = arg_1.b.b.x;
    let var_2 = global3.c.a.b.x;
    global2 = vec2<f32>(_wgslsmith_f_op_f32(func_2(select(global3.c.b.x && false, true, arg_1.b.b.x)).b.c.x + -974f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))));
    return vec2<i32>(-1i) * -(_wgslsmith_div_vec2_i32(firstLeadingBit(u_input.b.yw), -vec2<i32>(1i, -2147483647i)) << (firstLeadingBit(~u_input.a.ww) % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_add_i32(19017i, -max(_wgslsmith_sub_i32(1i, -1i), ~(-32565i))), func_2(global3.c.b.x), select(select(global0[_wgslsmith_index_u32(52542u, 4u)], select(global0[_wgslsmith_index_u32(u_input.a.x << (1691u % 32u), 4u)], !global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, 0u), 4u)]), global3.c.b.x), global0[_wgslsmith_index_u32(func_3().x, 4u)], false));
    var var_1 = -395f;
    var var_2 = min(-select(~u_input.b.wx, u_input.b.yw, !arg_0.b.b) >> (u_input.a.wx % vec2<u32>(32u)), u_input.b.zw >> (u_input.a.yz % vec2<u32>(32u)));
    var var_3 = func_2(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_div_u32(~1165u, ~27511u)) >= firstLeadingBit(_wgslsmith_clamp_u32(1u, 49983u, u_input.c))).a;
    let var_4 = func_2(!arg_0.b.b.x);
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(true, !(!global3.c.b.x && (u_input.b.x > -27285i)));
    let var_1 = !vec3<bool>(global3.c.b.x, any(global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), true);
    global3 = global1[_wgslsmith_index_u32(~(u_input.c << (u_input.a.x % 32u)), 8u)];
    var var_2 = func_1(global4[_wgslsmith_index_u32(4294967295u, 22u)], abs(u_input.b.x), global1[_wgslsmith_index_u32(firstTrailingBit(10752u), 8u)], _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.b.x) + -1000f)))));
    var var_3 = vec2<i32>(u_input.b.x, var_2.c);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(357f + global2.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(637f * var_2.a.x) - -2281f))));
    let var_5 = func_2(true).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(382f, func_1(Struct_4(Struct_1(vec3<f32>(538f, -1980f, 832f), global3.b.b, -70239i), var_5), 1i, Struct_3(func_1(global4[_wgslsmith_index_u32(0u, 22u)], -1329i, Struct_3(var_5.a, var_5.a, var_5), var_2.a.x), func_1(global4[_wgslsmith_index_u32(30197u, 22u)], global3.c.a.c, global1[_wgslsmith_index_u32(0u, 8u)], global2.x), global3.c), _wgslsmith_f_op_f32(771f + 1377f)).a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1861f)), func_1(func_2(all(var_1)), -19713i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(8372u, 85827u), 1u), 8u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.c.a.b.x, global2.x) - _wgslsmith_f_op_f32(min(293f, -337f)))).b.x)), -select(reverseBits(vec4<i32>(-38868i, u_input.b.x, -1i, -6715i) ^ vec4<i32>(0i, var_5.a.c, 7733i, var_3.x)), _wgslsmith_mod_vec4_i32(abs(u_input.b), u_input.b), any(select(vec3<bool>(false, var_5.b.x, global3.c.b.x), vec3<bool>(true, var_1.x, global3.c.b.x), vec3<bool>(true, false, var_5.b.x)))), max(select(vec3<i32>(min(global3.c.a.c, var_5.a.c), var_2.c >> (20943u % 32u), -1i), u_input.b.zww, !(u_input.a.x <= 1u)), max(reverseBits(u_input.b.zwz & u_input.b.wzx), u_input.b.wyx >> ((vec3<u32>(12505u, u_input.a.x, u_input.c) & vec3<u32>(u_input.a.x, u_input.c, 4294967295u)) % vec3<u32>(32u)))));
}

