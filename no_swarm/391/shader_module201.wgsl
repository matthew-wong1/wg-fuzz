struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(463f, 377f, -232f, 1000f), vec4<f32>(-429f, -1753f, -324f, -1381f), vec4<f32>(1147f, -808f, -1000f, 887f), vec4<f32>(1099f, 395f, 1104f, -1111f), vec4<f32>(924f, -1819f, 1678f, 264f), vec4<f32>(1000f, 1112f, 406f, -1178f), vec4<f32>(-1000f, 1031f, -523f, 1828f), vec4<f32>(433f, -165f, -1239f, 1025f), vec4<f32>(-374f, -1565f, -689f, 726f), vec4<f32>(1795f, -725f, 965f, 684f), vec4<f32>(-100f, -945f, -1000f, -685f), vec4<f32>(748f, 942f, 307f, 344f), vec4<f32>(-1000f, 142f, 1000f, -347f), vec4<f32>(-351f, 1050f, 410f, 166f), vec4<f32>(-388f, -1454f, -117f, -1055f), vec4<f32>(234f, -575f, -270f, 1703f), vec4<f32>(-516f, -1241f, 827f, 1030f), vec4<f32>(-129f, 101f, 262f, 195f), vec4<f32>(674f, 699f, 1593f, -677f), vec4<f32>(-1000f, -3028f, -1000f, 783f), vec4<f32>(1448f, 1377f, 1290f, -1890f), vec4<f32>(-1000f, -2151f, 323f, 1553f), vec4<f32>(-1125f, -1135f, -1126f, -1016f), vec4<f32>(-1213f, -1831f, -602f, -671f), vec4<f32>(1161f, -467f, 781f, -1483f), vec4<f32>(116f, 1000f, 2292f, -1751f), vec4<f32>(-505f, -154f, -1520f, 448f), vec4<f32>(1086f, 2158f, 306f, -1000f), vec4<f32>(-1558f, -2183f, 1135f, -1241f));

var<private> global1: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(1u, 79710u, 0u));

var<private> global2: array<Struct_1, 14>;

var<private> global3: array<f32, 18> = array<f32, 18>(232f, -1671f, -1000f, -1681f, 106f, -850f, 881f, 1414f, 220f, 2206f, -920f, -875f, -671f, -629f, 197f, -1317f, 233f, -716f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(arg_0.b, _wgslsmith_mod_u32(10042u, arg_0.b << (select(4294967295u, arg_0.b, true) % 32u)))), 14u)];
    global2 = array<Struct_1, 14>();
    let var_1 = vec4<i32>(-1i) * -(countOneBits(vec4<i32>(1i, 23668i, 32716i, arg_0.c)) & vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-17286i, 1i, u_input.a), vec3<i32>(u_input.a, -53518i, var_0.e)), -1i, _wgslsmith_div_i32(0i, var_0.c), var_0.e));
    let var_2 = abs(vec4<i32>(_wgslsmith_mod_i32(arg_0.e, _wgslsmith_add_i32(1i, u_input.a)), arg_0.c, u_input.a, arg_0.c));
    global1 = array<vec3<u32>, 1>();
    return var_0.b;
}

fn func_2() -> u32 {
    return ~func_3(global2[_wgslsmith_index_u32(4294967295u, 14u)]);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_1 {
    global1 = array<vec3<u32>, 1>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(arg_1.b, 29u)] - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(507f, 419f, arg_1.c.d.x, 1527f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.d.x, 388f, -657f, global3[_wgslsmith_index_u32(arg_1.a, 18u)])))), _wgslsmith_clamp_u32(0u, 20149u, arg_1.b), -(u_input.a & u_input.a), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(arg_1.d.a.wz)))), abs(17488i));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(max(select(reverseBits(func_2()), ~abs(36424u), select(true, true, false) || true), 27881u), Struct_2(~select(1u, 4294967295u, any(vec2<bool>(false, false))), ~(1u >> (_wgslsmith_mult_u32(1u, 1u) % 32u)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(832f - 269f), 750f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(486f + global3[_wgslsmith_index_u32(69953u, 18u)])), ~_wgslsmith_mult_u32(4294967295u, 1u), firstLeadingBit(1i), vec2<f32>(-575f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 48117u, 101354u), vec3<u32>(4294967295u, 37052u, 1u)), 18u)]), reverseBits(1i)), global2[_wgslsmith_index_u32(1u, 14u)]), global1[_wgslsmith_index_u32(58892u, 1u)]);
    global0 = array<vec4<f32>, 29>();
    global1 = array<vec3<u32>, 1>();
    let var_1 = -(~(vec3<i32>(func_4(52432u, Struct_2(0u, 31382u, global2[_wgslsmith_index_u32(var_0.b, 14u)], Struct_1(var_0.a, 0u, -2147483647i, vec2<f32>(117f, 493f), var_0.c)), vec3<u32>(var_0.b, var_0.b, var_0.b)).e, var_0.e, 2147483647i) >> (~_wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(var_0.b, 1u)], vec3<u32>(4294967295u, 0u, 1u)) % vec3<u32>(32u))));
    var var_2 = -2147483647i;
    return Struct_2(4294967295u, _wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b, var_0.b), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b, 0u), vec2<u32>(var_0.b, 4294967295u))), ~vec2<u32>(var_0.b, 1u) | reverseBits(vec2<u32>(var_0.b, var_0.b)), true), select(vec2<u32>(var_0.b, abs(var_0.b)), reverseBits(vec2<u32>(var_0.b, var_0.b)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))), global2[_wgslsmith_index_u32(var_0.b | var_0.b, 14u)], Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a, var_0.a), global0[_wgslsmith_index_u32(4294967295u, 29u)]), 1u, ~func_4(1u, Struct_2(11439u, var_0.b, Struct_1(var_0.a, var_0.b, -1i, var_0.a.wy, 1i), Struct_1(vec4<f32>(-1346f, var_0.d.x, var_0.a.x, global3[_wgslsmith_index_u32(var_0.b, 18u)]), var_0.b, -43593i, vec2<f32>(-205f, -1379f), var_0.e)), global1[_wgslsmith_index_u32(36434u, 1u)] >> (global1[_wgslsmith_index_u32(var_0.b, 1u)] % vec3<u32>(32u))).e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(0u, 18u)])) - var_0.a.wz), var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<vec3<u32>, 1>();
    var var_1 = Struct_2(_wgslsmith_dot_vec3_u32(~global1[_wgslsmith_index_u32(select(func_1().d.b, ~var_0.a, all(vec2<bool>(true, true))), 1u)], global1[_wgslsmith_index_u32(16721u, 1u)]), ~var_0.c.b, func_4(~var_0.d.b, func_1(), vec3<u32>(var_0.d.b, 32999u, 4294967295u)), func_4(var_0.d.b, Struct_2(func_4(~4294967295u, func_1(), global1[_wgslsmith_index_u32(var_0.b, 1u)]).b, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(58535u, var_0.b), vec2<u32>(var_0.b, var_0.d.b)), vec2<u32>(24730u, var_0.d.b)), Struct_1(var_0.c.a, var_0.c.b & var_0.b, i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(step(var_0.d.d, vec2<f32>(-1232f, 313f))), reverseBits(-29080i)), Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(477f, 631f, -2083f, -478f))), ~var_0.a, func_4(4294967295u, Struct_2(var_0.c.b, 1u, Struct_1(vec4<f32>(1223f, 876f, var_0.d.a.x, global3[_wgslsmith_index_u32(var_0.d.b, 18u)]), 0u, u_input.a, var_0.d.d, var_0.d.c), Struct_1(vec4<f32>(global3[_wgslsmith_index_u32(31113u, 18u)], -1348f, var_0.d.d.x, global3[_wgslsmith_index_u32(var_0.b, 18u)]), 1u, u_input.a, vec2<f32>(var_0.c.d.x, global3[_wgslsmith_index_u32(var_0.c.b, 18u)]), var_0.c.c)), vec3<u32>(5490u, 59481u, 94612u)).c, vec2<f32>(1172f, -601f), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.c, var_0.d.c, 1i), vec3<i32>(-1i, 31391i, var_0.c.c)))), firstLeadingBit(vec3<u32>(var_0.c.b, abs(61976u), ~182688u))));
    global1 = array<vec3<u32>, 1>();
    let var_2 = select(vec3<bool>(true, true, var_0.b <= ~var_1.b), !vec3<bool>(true, _wgslsmith_f_op_f32(var_0.d.a.x + 1107f) <= 1003f, !all(vec3<bool>(false, true, false))), !select(vec3<bool>(2147483647i > var_1.d.c, true, all(vec3<bool>(false, false, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(~125120u, 67864u), countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, 21386u), vec2<u32>(1u, 9602u)) << (~vec2<u32>(0u, 1u) % vec2<u32>(32u)))), -_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(0i, var_1.d.e), -u_input.a, _wgslsmith_div_i32(-14734i, var_1.d.e), ~2871i), ~vec4<i32>(-2741i, -25920i, var_1.d.c, -1i)), _wgslsmith_f_op_vec2_f32(var_0.c.a.yy - _wgslsmith_f_op_vec2_f32(var_0.c.a.yx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 18u)], var_0.c.d.x)))))));
}

