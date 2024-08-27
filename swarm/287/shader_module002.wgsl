struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-280f, 178f);

var<private> global1: array<bool, 11> = array<bool, 11>(false, false, false, false, true, false, false, false, false, false, false);

var<private> global2: array<vec2<f32>, 2>;

var<private> global3: array<vec4<u32>, 32>;

var<private> global4: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(2147483647i, vec3<f32>(-647f, 956f, -408f), vec2<f32>(711f, -276f), Struct_2(vec2<f32>(1338f, -1000f), false, 4294967295u, Struct_1(vec3<f32>(-1134f, 853f, -597f), vec4<bool>(false, false, true, false), vec3<i32>(2147483647i, 7371i, 1i), vec2<bool>(false, false), 438f), false), -1i), Struct_3(-19142i, vec3<f32>(1879f, -2638f, -1925f), vec2<f32>(674f, 1600f), Struct_2(vec2<f32>(-1253f, -2004f), false, 20388u, Struct_1(vec3<f32>(1053f, 478f, 1000f), vec4<bool>(true, true, false, false), vec3<i32>(7953i, -27649i, -1i), vec2<bool>(true, false), 1179f), false), 0i), Struct_3(2147483647i, vec3<f32>(-854f, -352f, 1167f), vec2<f32>(561f, -1000f), Struct_2(vec2<f32>(-904f, 530f), true, 0u, Struct_1(vec3<f32>(-208f, -845f, -237f), vec4<bool>(true, true, true, true), vec3<i32>(4884i, 8163i, -49702i), vec2<bool>(true, true), -1850f), false), 2147483647i), Struct_3(-34454i, vec3<f32>(-555f, 214f, 1812f), vec2<f32>(-472f, 194f), Struct_2(vec2<f32>(-1000f, 971f), true, 0u, Struct_1(vec3<f32>(-2079f, 863f, -1000f), vec4<bool>(true, true, true, false), vec3<i32>(1i, -25466i, 1i), vec2<bool>(true, false), -738f), false), 0i), Struct_3(2147483647i, vec3<f32>(424f, -375f, -195f), vec2<f32>(-958f, -230f), Struct_2(vec2<f32>(107f, -2120f), true, 0u, Struct_1(vec3<f32>(103f, -217f, -628f), vec4<bool>(false, false, false, true), vec3<i32>(8948i, -3269i, 1i), vec2<bool>(true, false), -352f), true), -1i), Struct_3(-5299i, vec3<f32>(-144f, -181f, -880f), vec2<f32>(2109f, 2797f), Struct_2(vec2<f32>(1832f, 615f), true, 1u, Struct_1(vec3<f32>(423f, -310f, 688f), vec4<bool>(true, true, false, true), vec3<i32>(-53459i, 40891i, 32691i), vec2<bool>(true, true), 875f), true), -24228i), Struct_3(i32(-2147483648), vec3<f32>(694f, 519f, -249f), vec2<f32>(-1143f, -1670f), Struct_2(vec2<f32>(2006f, 2011f), true, 1u, Struct_1(vec3<f32>(369f, 943f, 1103f), vec4<bool>(true, true, false, false), vec3<i32>(-23457i, i32(-2147483648), 1i), vec2<bool>(true, true), 1572f), false), 5975i), Struct_3(-522i, vec3<f32>(-1483f, 384f, 1073f), vec2<f32>(1430f, -442f), Struct_2(vec2<f32>(1000f, 1972f), false, 0u, Struct_1(vec3<f32>(-1944f, -444f, -264f), vec4<bool>(true, true, false, true), vec3<i32>(43172i, 2147483647i, -2622i), vec2<bool>(true, true), 1075f), false), 0i), Struct_3(3334i, vec3<f32>(412f, -1000f, 220f), vec2<f32>(-493f, 924f), Struct_2(vec2<f32>(-1000f, -966f), false, 4294967295u, Struct_1(vec3<f32>(-690f, -617f, -1608f), vec4<bool>(true, true, false, false), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec2<bool>(false, true), 260f), true), 2147483647i), Struct_3(i32(-2147483648), vec3<f32>(-933f, 129f, 791f), vec2<f32>(-1384f, -896f), Struct_2(vec2<f32>(-1000f, -486f), true, 47840u, Struct_1(vec3<f32>(606f, -559f, -126f), vec4<bool>(false, false, true, true), vec3<i32>(-49885i, 17694i, i32(-2147483648)), vec2<bool>(false, false), -1135f), false), 35i), Struct_3(2147483647i, vec3<f32>(187f, 750f, 144f), vec2<f32>(-826f, 1038f), Struct_2(vec2<f32>(1123f, 2362f), true, 21504u, Struct_1(vec3<f32>(1781f, 1593f, -717f), vec4<bool>(true, true, false, true), vec3<i32>(41121i, 1961i, 0i), vec2<bool>(true, true), -348f), false), 15284i), Struct_3(0i, vec3<f32>(-1000f, 1000f, 996f), vec2<f32>(2279f, 415f), Struct_2(vec2<f32>(1314f, 1000f), true, 64896u, Struct_1(vec3<f32>(370f, -964f, -828f), vec4<bool>(false, false, false, true), vec3<i32>(-11090i, 9904i, 1i), vec2<bool>(true, false), 651f), true), 0i), Struct_3(1i, vec3<f32>(1061f, 1000f, -1019f), vec2<f32>(1629f, 377f), Struct_2(vec2<f32>(156f, 643f), true, 0u, Struct_1(vec3<f32>(790f, 261f, 181f), vec4<bool>(true, true, true, false), vec3<i32>(42077i, -9672i, 22308i), vec2<bool>(false, true), -244f), true), -10529i), Struct_3(-7545i, vec3<f32>(1000f, 295f, -3290f), vec2<f32>(-198f, 1433f), Struct_2(vec2<f32>(-1297f, 190f), false, 4294967295u, Struct_1(vec3<f32>(300f, -2040f, 387f), vec4<bool>(false, false, false, false), vec3<i32>(2597i, -19012i, 1904i), vec2<bool>(false, true), 274f), false), 10474i), Struct_3(i32(-2147483648), vec3<f32>(1132f, -1536f, -480f), vec2<f32>(-444f, 604f), Struct_2(vec2<f32>(-400f, 1445f), true, 33786u, Struct_1(vec3<f32>(-1427f, 627f, 242f), vec4<bool>(false, true, true, false), vec3<i32>(2147483647i, 50802i, 1i), vec2<bool>(false, false), 780f), false), 2147483647i), Struct_3(2147483647i, vec3<f32>(1561f, 610f, -1006f), vec2<f32>(-766f, -164f), Struct_2(vec2<f32>(-2239f, 239f), true, 4294967295u, Struct_1(vec3<f32>(1749f, -1362f, 234f), vec4<bool>(false, true, false, true), vec3<i32>(18775i, -31942i, 0i), vec2<bool>(true, false), 357f), true), 2147483647i), Struct_3(2147483647i, vec3<f32>(441f, -971f, 699f), vec2<f32>(-1141f, 1509f), Struct_2(vec2<f32>(-395f, -1238f), false, 1u, Struct_1(vec3<f32>(231f, -1353f, -1083f), vec4<bool>(false, true, false, false), vec3<i32>(4970i, 27985i, i32(-2147483648)), vec2<bool>(false, false), -531f), false), 1164i), Struct_3(24268i, vec3<f32>(-1451f, -1691f, -336f), vec2<f32>(-946f, 1053f), Struct_2(vec2<f32>(-909f, -1256f), false, 0u, Struct_1(vec3<f32>(1001f, 887f, 1109f), vec4<bool>(true, true, true, false), vec3<i32>(-1i, i32(-2147483648), -18341i), vec2<bool>(true, true), 907f), true), -33804i), Struct_3(2147483647i, vec3<f32>(235f, 342f, 2282f), vec2<f32>(-604f, -796f), Struct_2(vec2<f32>(-2502f, 875f), true, 0u, Struct_1(vec3<f32>(-1277f, -1000f, -144f), vec4<bool>(true, false, true, false), vec3<i32>(49743i, 10681i, 1i), vec2<bool>(false, false), 2060f), true), 16982i), Struct_3(2147483647i, vec3<f32>(1710f, 525f, -437f), vec2<f32>(-2718f, -806f), Struct_2(vec2<f32>(-1000f, 331f), false, 1u, Struct_1(vec3<f32>(1366f, 1000f, -1000f), vec4<bool>(false, false, true, true), vec3<i32>(48617i, i32(-2147483648), -51878i), vec2<bool>(false, true), 378f), true), 0i), Struct_3(0i, vec3<f32>(-113f, 543f, -1598f), vec2<f32>(600f, -1000f), Struct_2(vec2<f32>(-741f, 1000f), false, 38840u, Struct_1(vec3<f32>(214f, 329f, -442f), vec4<bool>(true, true, false, false), vec3<i32>(2472i, i32(-2147483648), -3779i), vec2<bool>(true, true), -812f), false), -1i), Struct_3(22991i, vec3<f32>(1000f, -664f, -568f), vec2<f32>(178f, -3240f), Struct_2(vec2<f32>(1000f, -318f), false, 0u, Struct_1(vec3<f32>(-170f, 1028f, -1573f), vec4<bool>(true, false, true, true), vec3<i32>(i32(-2147483648), 15278i, 0i), vec2<bool>(true, true), 176f), false), 2147483647i), Struct_3(2147483647i, vec3<f32>(-892f, 395f, -301f), vec2<f32>(304f, -474f), Struct_2(vec2<f32>(-889f, 665f), false, 41360u, Struct_1(vec3<f32>(1850f, 1478f, -966f), vec4<bool>(true, false, false, true), vec3<i32>(1i, i32(-2147483648), -10849i), vec2<bool>(false, false), -421f), false), 26433i), Struct_3(0i, vec3<f32>(-1917f, 1543f, 1444f), vec2<f32>(-1811f, -1004f), Struct_2(vec2<f32>(-280f, 1081f), false, 4294967295u, Struct_1(vec3<f32>(775f, 720f, 573f), vec4<bool>(true, false, true, true), vec3<i32>(0i, -1i, 20486i), vec2<bool>(false, true), -940f), true), 2147483647i), Struct_3(54282i, vec3<f32>(1000f, -973f, -1345f), vec2<f32>(576f, -1000f), Struct_2(vec2<f32>(235f, -1000f), false, 4294967295u, Struct_1(vec3<f32>(1148f, -395f, -742f), vec4<bool>(false, false, true, true), vec3<i32>(-9785i, i32(-2147483648), i32(-2147483648)), vec2<bool>(false, true), 952f), true), -1i), Struct_3(12688i, vec3<f32>(-323f, -684f, -1768f), vec2<f32>(451f, 982f), Struct_2(vec2<f32>(-2292f, -1254f), false, 0u, Struct_1(vec3<f32>(-1560f, 289f, 1000f), vec4<bool>(false, true, false, false), vec3<i32>(-1i, 0i, 1i), vec2<bool>(true, true), 254f), false), 0i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_3) -> vec3<i32> {
    var var_0 = u_input.c.x;
    var_0 = 18179u;
    var var_1 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1.c.zx, select(vec2<i32>(u_input.b.x, u_input.b.x), -arg_2.d.d.c.xy, select(vec2<bool>(true, false), vec2<bool>(true, arg_2.d.b), arg_1.d.x)), max(-vec2<i32>(-2147483647i, 1i), min(vec2<i32>(1i, u_input.b.x), arg_2.d.d.c.xz))), u_input.b.xz);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.xzz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.x, 2379f)))), arg_0.xyx))) - vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x - 794f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(min(-308f, -931f)), false)), global1[_wgslsmith_index_u32(arg_2.d.c, 11u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) * arg_2.d.d.e)));
    let var_3 = arg_2.d;
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(arg_2.d.d.c, firstTrailingBit(abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -20193i, var_3.d.c.x), vec3<i32>(arg_2.d.d.c.x, var_3.d.c.x, 0i))))), vec3<i32>(arg_2.a, abs(_wgslsmith_mod_i32(arg_1.c.x, _wgslsmith_clamp_i32(-2147483647i, u_input.a, -40i))), ~(-1i)), arg_1.c);
}

fn func_2() -> vec2<u32> {
    let var_0 = global4[_wgslsmith_index_u32(8439u, 26u)];
    let var_1 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(-var_0.a, _wgslsmith_dot_vec3_i32(u_input.b >> (vec3<u32>(1u, var_0.d.c, var_0.d.c) % vec3<u32>(32u)), func_3(vec4<f32>(229f, 270f, var_0.b.x, 174f), Struct_1(vec3<f32>(824f, var_0.c.x, 482f), var_0.d.d.b, u_input.b, vec2<bool>(false, false), -1810f), Struct_3(-2147483647i, vec3<f32>(global0.x, 917f, global0.x), vec2<f32>(-1000f, var_0.b.x), Struct_2(vec2<f32>(1146f, global0.x), false, var_0.d.c, var_0.d.d, global1[_wgslsmith_index_u32(0u, 11u)]), u_input.b.x)))), max(vec2<i32>(u_input.b.x, min(27891i, -1i)), u_input.b.xy), select(-var_0.d.d.c.xz & _wgslsmith_mult_vec2_i32(var_0.d.d.c.zz, u_input.b.yz), select(func_3(vec4<f32>(var_0.d.a.x, var_0.d.a.x, 1265f, var_0.b.x), Struct_1(var_0.d.d.a, vec4<bool>(false, var_0.d.b, false, var_0.d.b), vec3<i32>(var_0.a, u_input.b.x, u_input.b.x), vec2<bool>(true, var_0.d.d.b.x), var_0.c.x), global4[_wgslsmith_index_u32(u_input.c.x, 26u)]).xz, u_input.b.yz, var_0.d.c <= 4294967295u), select(global1[_wgslsmith_index_u32(var_0.d.c << (u_input.c.x % 32u), 11u)], global1[_wgslsmith_index_u32(u_input.c.x, 11u)], true)));
    var var_2 = u_input.b.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.b.xz + vec2<f32>(_wgslsmith_f_op_f32(ceil(-524f)), _wgslsmith_f_op_f32(trunc(global0.x)))))), select(var_0.d.e, !(-479f < _wgslsmith_f_op_f32(-global0.x)), true), _wgslsmith_add_u32(~_wgslsmith_clamp_u32(firstLeadingBit(u_input.c.x), 7071u, u_input.c.x), ~u_input.c.x), var_0.d.d, any(select(var_0.d.d.b, vec4<bool>(var_0.d.d.d.x, var_0.d.e, true, true), !var_0.d.d.b)));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(422f, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-154f, 252f), var_0.c.x)))), false, firstTrailingBit(firstTrailingBit(reverseBits(~var_3.c))), var_3.d, !var_0.d.d.d.x);
    return ~vec2<u32>(var_3.c, countOneBits(2245u));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global4 = array<Struct_3, 26>();
    let var_0 = vec2<bool>(false, select(all(select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)], true, true), select(arg_0, vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], global1[_wgslsmith_index_u32(u_input.c.x, 11u)], true), vec3<bool>(arg_0.x, false, arg_0.x)), all(vec2<bool>(arg_0.x, true)))), true, arg_0.x));
    var var_1 = countOneBits(abs(_wgslsmith_dot_vec2_u32(func_2(), u_input.c.yy)));
    var var_2 = u_input.c.xz;
    return Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 1083f, 742f), vec3<f32>(global0.x, 664f, -666f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 535f, global0.x) * vec3<f32>(global0.x, -438f, global0.x))))))), vec4<bool>(!(true & any(vec4<bool>(false, global1[_wgslsmith_index_u32(22536u, 11u)], false, true))), select(any(select(vec2<bool>(false, false), var_0, var_0)), true, true), true, true), vec3<i32>(~u_input.a, u_input.b.x << (1u % 32u), firstLeadingBit(-41757i) & u_input.a), !select(!var_0, var_0, select(!arg_0.zx, arg_0.yz, any(arg_0.xz))), _wgslsmith_f_op_f32(f32(-1f) * -1234f));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a));
    return arg_2;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> Struct_2 {
    let var_0 = vec2<bool>(global1[_wgslsmith_index_u32(func_2().x, 11u)] | all(arg_1.d.b), firstLeadingBit(~u_input.c.x) <= countOneBits(58350u));
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2().x, _wgslsmith_mod_u32(firstLeadingBit(func_2().x) | abs(abs(4294967295u)), ~4294967295u)), 26u)];
    let var_2 = 1f;
    let var_3 = reverseBits(~_wgslsmith_mod_i32(1i ^ firstTrailingBit(-33851i), -2147483647i));
    var var_4 = func_1(vec3<bool>(!((-14783i & arg_1.d.c.x) > -31169i), !var_0.x, arg_0)).b.ywy;
    return Struct_2(var_1.b.yy, true, 26773u, Struct_1(var_1.b, vec4<bool>(false, var_0.x, arg_1.e, (global0.x >= 1000f) || (true && arg_0)), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(24418i, 10170i, 2147483647i), var_1.d.d.c)), !vec2<bool>(false, any(var_1.d.d.b)), -205f), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_add_i32(-_wgslsmith_add_i32(-u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -10939i), u_input.b.yy)), u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-774f, -1023f, global0.x) - vec3<f32>(548f, global0.x, global0.x))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(0u, 2u)]) - _wgslsmith_f_op_vec2_f32(step(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], global2[_wgslsmith_index_u32(25574u, 2u)])))))), func_5(true, Struct_2(vec2<f32>(471f, global0.x), !global1[_wgslsmith_index_u32(max(38048u, u_input.c.x), 11u)], 0u, func_4(true, vec2<f32>(525f, global0.x), func_1(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], global1[_wgslsmith_index_u32(u_input.c.x, 11u)], global1[_wgslsmith_index_u32(u_input.c.x, 11u)])), global0.x), false == global1[_wgslsmith_index_u32(u_input.c.x, 11u)]), global0.x, func_4(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-225f, 1065f))), func_1(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], true, true)), -806f).c.x), 2147483647i);
    global2 = array<vec2<f32>, 2>();
    let var_1 = !global1[_wgslsmith_index_u32(u_input.c.x, 11u)];
    var var_2 = global4[_wgslsmith_index_u32(var_0.d.c, 26u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(max(var_2.c, func_1(func_5(!(var_1 || var_1), var_2.d, _wgslsmith_div_f32(-603f, _wgslsmith_div_f32(524f, 471f)), i32(-1i) * -14773i).d.b.zxy).a.yx));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, global3[_wgslsmith_index_u32(var_0.d.c, 32u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + var_0.b.x) + var_0.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_3.x)))))))));
}

