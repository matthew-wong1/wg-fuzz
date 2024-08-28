struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<u32, 15> = array<u32, 15>(4294967295u, 0u, 49514u, 1u, 69762u, 0u, 40975u, 29403u, 4294967295u, 5245u, 4294967295u, 1u, 56539u, 72329u, 0u);

var<private> global2: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(Struct_1(-1456f, vec3<f32>(183f, 686f, 1000f)), vec2<f32>(-1145f, -2364f), vec4<f32>(196f, -311f, -1213f, -668f), 0u, 30718u), Struct_4(Struct_1(-532f, vec3<f32>(563f, 1944f, 831f)), vec2<f32>(-1696f, 599f), vec4<f32>(1119f, -2990f, 913f, 355f), 7377u, 0u), Struct_4(Struct_1(-1000f, vec3<f32>(-2142f, 1000f, 658f)), vec2<f32>(-1200f, 779f), vec4<f32>(-1000f, -1000f, -482f, -785f), 36388u, 4294967295u), Struct_4(Struct_1(645f, vec3<f32>(213f, 1000f, -827f)), vec2<f32>(-957f, 449f), vec4<f32>(1064f, -1660f, 273f, -1011f), 23903u, 33362u), Struct_4(Struct_1(-430f, vec3<f32>(-932f, -1176f, -1899f)), vec2<f32>(1628f, -690f), vec4<f32>(-396f, 998f, 388f, -1175f), 19103u, 0u), Struct_4(Struct_1(332f, vec3<f32>(793f, -964f, 2353f)), vec2<f32>(216f, -614f), vec4<f32>(-1210f, -672f, 1452f, -139f), 81833u, 0u), Struct_4(Struct_1(882f, vec3<f32>(-1402f, -981f, 1659f)), vec2<f32>(753f, 269f), vec4<f32>(1704f, -1352f, -1199f, -389f), 0u, 86525u), Struct_4(Struct_1(-345f, vec3<f32>(-791f, 465f, -537f)), vec2<f32>(1689f, -371f), vec4<f32>(-1361f, 1000f, 815f, -1403f), 0u, 1u), Struct_4(Struct_1(-224f, vec3<f32>(1612f, 2291f, 1372f)), vec2<f32>(-1572f, -666f), vec4<f32>(-378f, 1424f, 327f, 169f), 0u, 46130u), Struct_4(Struct_1(-712f, vec3<f32>(683f, -884f, -1051f)), vec2<f32>(1273f, -1489f), vec4<f32>(647f, 1000f, 634f, -190f), 62122u, 87639u), Struct_4(Struct_1(619f, vec3<f32>(697f, 1167f, -767f)), vec2<f32>(-166f, -775f), vec4<f32>(1100f, -1000f, -910f, 310f), 12204u, 0u), Struct_4(Struct_1(1000f, vec3<f32>(-519f, -189f, -834f)), vec2<f32>(-1277f, 555f), vec4<f32>(-465f, -1660f, 1000f, 967f), 0u, 4294967295u), Struct_4(Struct_1(-280f, vec3<f32>(1254f, 1594f, 2292f)), vec2<f32>(-277f, 538f), vec4<f32>(-550f, 551f, 708f, 1000f), 0u, 1u), Struct_4(Struct_1(1000f, vec3<f32>(-503f, -509f, 762f)), vec2<f32>(911f, -1480f), vec4<f32>(1861f, -347f, -1000f, 1091f), 31570u, 1u), Struct_4(Struct_1(-900f, vec3<f32>(358f, 620f, -1000f)), vec2<f32>(682f, 448f), vec4<f32>(1000f, 1030f, -598f, 1000f), 74639u, 1u), Struct_4(Struct_1(-457f, vec3<f32>(-1013f, 1440f, -701f)), vec2<f32>(889f, -620f), vec4<f32>(1610f, -2150f, -1260f, -956f), 0u, 51063u), Struct_4(Struct_1(1381f, vec3<f32>(-115f, 1328f, -434f)), vec2<f32>(812f, -364f), vec4<f32>(1176f, 776f, 518f, -571f), 4294967295u, 0u), Struct_4(Struct_1(-886f, vec3<f32>(486f, 1797f, 2174f)), vec2<f32>(169f, 821f), vec4<f32>(112f, -1484f, -490f, 1079f), 4294967295u, 194u), Struct_4(Struct_1(-1316f, vec3<f32>(-1000f, -129f, 639f)), vec2<f32>(971f, 197f), vec4<f32>(-1144f, -1661f, 1028f, 507f), 4294967295u, 0u));

var<private> global3: array<bool, 26>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = select(!select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 15u)], 26u)] & global3[_wgslsmith_index_u32(1u, 26u)], !global3[_wgslsmith_index_u32(1u, 26u)]), !(!vec4<bool>(global3[_wgslsmith_index_u32(26801u, 26u)], global3[_wgslsmith_index_u32(arg_0.x, 26u)], global3[_wgslsmith_index_u32(arg_0.x, 26u)], false)), vec4<bool>(true, !global3[_wgslsmith_index_u32(9134u, 26u)], global3[_wgslsmith_index_u32(1u, 26u)], true)), select(!select(!vec4<bool>(false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29572u, 15u)], 15u)], 26u)], global3[_wgslsmith_index_u32(1u, 26u)], true), select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(arg_0.x, 26u)], global3[_wgslsmith_index_u32(0u, 26u)], false), vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28976u, 15u)], 15u)], 26u)], global3[_wgslsmith_index_u32(46232u, 26u)], false, false), vec4<bool>(global3[_wgslsmith_index_u32(0u, 26u)], true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)], 26u)], global3[_wgslsmith_index_u32(23542u, 26u)])), vec4<bool>(false, global3[_wgslsmith_index_u32(arg_0.x, 26u)], true, global3[_wgslsmith_index_u32(arg_0.x, 26u)])), !(!select(vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(46420u, 26u)], true), vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 15u)], 26u)], global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 15u)], 26u)], true), global3[_wgslsmith_index_u32(4294967295u, 26u)])), vec4<bool>(false, true, !global3[_wgslsmith_index_u32(0u, 26u)], !global3[_wgslsmith_index_u32(4294967295u, 26u)])), !global3[_wgslsmith_index_u32(~4294967295u, 26u)]);
    global3 = array<bool, 26>();
    var var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = vec3<bool>(global3[_wgslsmith_index_u32(0u, 26u)], all(vec3<bool>(var_0.x, false & any(var_0), global3[_wgslsmith_index_u32(1u, 26u)])), global3[_wgslsmith_index_u32(~(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 15u)], 15u)]) << (arg_0.x % 32u)) | ~40764u, 26u)]);
    let var_3 = Struct_1(-1053f, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1685f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1560f, 219f)), _wgslsmith_f_op_f32(floor(1456f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(-1763f)), _wgslsmith_f_op_f32(1187f + -580f), _wgslsmith_f_op_f32(f32(-1f) * -721f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(514f, 1119f, 741f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(176f, 2210f, -550f) - vec3<f32>(1689f, -2025f, -1103f)), var_2)), vec3<bool>(any(var_2.zx), var_0.x, any(var_2.xy))))));
    return var_3.a;
}

fn func_2(arg_0: bool) -> vec2<bool> {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1452f) * -696f) * _wgslsmith_f_op_f32(func_3(~vec3<u32>(0u, 74318u, global1[_wgslsmith_index_u32(5984u, 15u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-170f, 773f, 304f), vec3<f32>(-1635f, -347f, -902f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(745f, -901f, 1151f) * vec3<f32>(-650f, 290f, 639f))))), vec2<f32>(1000f, -259f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1445f, 401f)))), 1875f, _wgslsmith_f_op_f32(min(941f, _wgslsmith_f_op_f32(-196f + 1359f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f) - -317f))), reverseBits(33844u), global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17427u, 15u)], 15u)], 15u)], 52130u, 1u), ~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15352u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 15u)])) << (global1[_wgslsmith_index_u32(_wgslsmith_div_u32(41461u, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(101736u, global1[_wgslsmith_index_u32(4294967295u, 15u)]), 15u)]), 15u)] % 32u), reverseBits(global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17764u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], arg_0), 15u)], 15u)], min(global1[_wgslsmith_index_u32(0u, 15u)], 0u)), 15u)])), 15u)]);
    var var_1 = _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(~(vec2<u32>(global1[_wgslsmith_index_u32(var_0.d, 15u)], var_0.e) & vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], 1u)), ~(vec2<u32>(var_0.d, 0u) >> (vec2<u32>(var_0.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)]) % vec2<u32>(32u))))), abs(vec2<u32>(2325u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 16747u, global1[_wgslsmith_index_u32(4294967295u, 15u)], 23577u), reverseBits(vec4<u32>(var_0.e, 4294967295u, var_0.d, 54718u))))));
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, max(var_0.e, var_0.d)), 4294967295u), ~abs(vec2<u32>(1u, 1u))), 19u)];
    let var_3 = any(vec3<bool>(global3[_wgslsmith_index_u32(var_0.e, 26u)], false, all(vec2<bool>(true, true))));
    let var_4 = Struct_2(_wgslsmith_mult_i32(-u_input.a, -15551i), select(select(select(select(vec2<bool>(arg_0, global3[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<bool>(false, var_3), vec2<bool>(true, arg_0)), select(vec2<bool>(true, var_3), vec2<bool>(global3[_wgslsmith_index_u32(var_0.e, 26u)], true), vec2<bool>(true, true)), false), !select(vec2<bool>(var_3, true), vec2<bool>(var_3, true), vec2<bool>(var_3, false)), true), vec2<bool>(all(vec2<bool>(false, var_3)), var_3), vec2<bool>(true, true)), var_0.b.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.a.b.x)) * _wgslsmith_f_op_f32(exp2(var_2.c.x))) * var_0.c.x), 1000f);
    return var_4.b;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: f32, arg_3: vec2<i32>) -> f32 {
    let var_0 = ~_wgslsmith_div_vec3_i32(vec3<i32>(36968i, u_input.b.x, 0i), _wgslsmith_div_vec3_i32(u_input.c.ywx, u_input.c.ywz));
    var var_1 = vec3<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)) != !all(func_2(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 26u)])), global3[_wgslsmith_index_u32(4415u, 26u)], true);
    var var_2 = -select(vec2<i32>(-2147483647i, -_wgslsmith_div_i32(arg_0.x, 2147483647i)), ~_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(29813i, var_0.x)), ~u_input.b), _wgslsmith_sub_i32(2147483647i, ~u_input.c.x) >= 2147483647i);
    let var_3 = Struct_2(reverseBits(~min(-arg_0.x, _wgslsmith_dot_vec2_i32(u_input.c.yw, vec2<i32>(-31121i, var_2.x)))), select(select(var_1.xy, vec2<bool>(any(vec3<bool>(false, var_1.x, global3[_wgslsmith_index_u32(5830u, 26u)])), true), !var_1.xx), !var_1.yz, true), var_1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1983f), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_u32(vec3<u32>(26057u, global1[_wgslsmith_index_u32(30639u, 15u)], global1[_wgslsmith_index_u32(71104u, 15u)]), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)]))))), 425f));
    var var_4 = global2[_wgslsmith_index_u32(countOneBits(4294967295u << (0u % 32u)), 19u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + 480f) - _wgslsmith_f_op_f32(1825f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_3(arg_1.a, (~abs(vec2<u32>(82950u, 0u)) ^ vec2<u32>(1u & global1[_wgslsmith_index_u32(arg_1.c, 15u)], ~21186u)) & vec2<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34379u, 15u)], 15u)], 4294967295u), arg_1.b)), arg_1.b.x), 1u, arg_1.d);
    var var_1 = Struct_2(_wgslsmith_dot_vec3_i32(arg_3.wyz, -u_input.c.zxx), arg_1.d.b, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-1924f * arg_1.d.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-208f, arg_0.a)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a.d, arg_1.d.d))))));
    return Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(min(~11306u, 1u << (arg_1.b.x % 32u)), ~_wgslsmith_dot_vec2_u32(var_0.b, arg_1.b)), var_0.c), 20u)], select(func_2(true), vec2<bool>(!(global3[_wgslsmith_index_u32(arg_1.c, 26u)] && var_1.b.x), var_0.a.b.x), false), !all(!(!var_1.b)), _wgslsmith_f_op_f32(round(-1891f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 20>();
    let var_0 = Struct_2(((~(-1i) | global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 20u)]) & global0[_wgslsmith_index_u32(~1u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(3519u, 15u)], 15u)], 15u)] % 32u), 20u)]) << (global1[_wgslsmith_index_u32(~20206u, 15u)] % 32u), !(!vec2<bool>(true, !global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(84140u, 15u)], 15u)], 15u)], 26u)])), false, 840f);
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.d, -286f)), var_0.d)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.d, 1172f, var_0.d))), vec3<f32>(var_0.d, _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(func_1(u_input.c, 1i, 831f, vec2<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 20u)])))))), Struct_3(Struct_2(-11769i, vec2<bool>(all(vec3<bool>(var_0.b.x, var_0.c, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 26u)])), any(vec3<bool>(var_0.c, false, true))), any(select(vec3<bool>(var_0.b.x, global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13166u, 15u)], 26u)]), vec3<bool>(true, true, var_0.c), vec3<bool>(var_0.c, false, var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1333f, var_0.d, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 26u)])))), _wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(3924u, 15u)], 17574u), vec2<u32>(4294967295u, 10591u))), _wgslsmith_div_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(8280u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)]), _wgslsmith_mult_vec2_u32(vec2<u32>(9545u, global1[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<u32>(global1[_wgslsmith_index_u32(1u, 15u)], 11846u)))), ~abs(firstLeadingBit(2715u)), Struct_2(u_input.a, func_2(true), true || global3[_wgslsmith_index_u32(~1u, 26u)], _wgslsmith_f_op_f32(sign(-101f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(714f * var_0.d), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_div_f32(var_0.d, -217f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d, var_0.d, -1189f, var_0.d), vec4<f32>(-2037f, var_0.d, -101f, var_0.d))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, -1000f, 896f, var_0.d)))))), min(max(vec4<i32>(~0i, 1i, countOneBits(8249i), 0i), ~vec4<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(70595u, 15u)], 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], 2147483647i, -2147483647i)), firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, u_input.b.x), -u_input.a, countOneBits(0i), ~(-3053i)))));
    let var_2 = _wgslsmith_sub_vec2_u32(select(~vec2<u32>(min(19785u, global1[_wgslsmith_index_u32(143817u, 15u)]), global1[_wgslsmith_index_u32(1u, 15u)]), reverseBits(abs(vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38288u, 15u)], 15u)], 15u)], 15u)]))), false), _wgslsmith_mult_vec2_u32(min(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53923u, 15u)], 15u)], global1[_wgslsmith_index_u32(7499u, 15u)]) | select(vec2<u32>(global1[_wgslsmith_index_u32(1u, 15u)], 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(10523u, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)]), var_1.b), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39692u, 15u)], 15u)], 28276u), 15u)])), vec2<u32>(firstLeadingBit(~18061u), 1u)));
    var var_3 = Struct_1(func_4(Struct_1(1031f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, var_1.d, var_1.d)))), Struct_3(Struct_2(-7368i, vec2<bool>(false, true), true, var_0.d), vec2<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(var_2.x, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)]), var_2.x), 1u, Struct_2(reverseBits(-26171i), !var_0.b, any(var_0.b), 123f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1935f, -185f, var_0.d, _wgslsmith_f_op_f32(min(var_1.d, -173f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.d, var_1.d, var_1.d, var_0.d))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-951f, 1301f, var_0.d, 1000f) - vec4<f32>(var_0.d, var_1.d, -383f, 389f)))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, global0[_wgslsmith_index_u32(var_2.x, 20u)], -20646i), u_input.c), min(~u_input.c, u_input.c))).d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-611f, 235f, var_0.d)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.d, 1000f, var_1.d))) - vec3<f32>(var_0.d, 911f, 2409f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, 327f, -332f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~global1[_wgslsmith_index_u32(abs(4294967295u), 15u)], max(var_2.x, 1u)) & abs(max(var_2, vec2<u32>(1u, 9207u)) ^ vec2<u32>(4245u, 7739u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.b * var_3.b), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1033f)), -195f, _wgslsmith_f_op_f32(abs(var_3.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1617f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.b.x, 212f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)) - _wgslsmith_f_op_f32(abs(func_4(Struct_1(-939f, vec3<f32>(-410f, 105f, var_3.b.x)), Struct_3(var_0, vec2<u32>(0u, global1[_wgslsmith_index_u32(66640u, 15u)]), 0u, Struct_2(var_1.a, vec2<bool>(var_1.b.x, var_0.b.x), global3[_wgslsmith_index_u32(3962u, 26u)], -640f)), vec4<f32>(var_3.a, var_3.b.x, 607f, var_1.d), vec4<i32>(u_input.a, var_0.a, var_0.a, var_0.a)).d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-238f * 376f)), var_3.a, select(func_4(Struct_1(-561f, var_3.b), Struct_3(Struct_2(u_input.a, vec2<bool>(global3[_wgslsmith_index_u32(var_2.x, 26u)], var_0.c), true, var_3.b.x), vec2<u32>(72980u, global1[_wgslsmith_index_u32(1u, 15u)]), 4294967295u, Struct_2(global0[_wgslsmith_index_u32(10571u, 20u)], var_1.b, global3[_wgslsmith_index_u32(19691u, 26u)], var_1.d)), vec4<f32>(-1397f, var_1.d, var_3.a, 733f), vec4<i32>(var_0.a, 22793i, 0i, u_input.a)).c, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 26u)] | var_0.c, any(vec3<bool>(true, false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 26u)]))))) - -557f));
}

