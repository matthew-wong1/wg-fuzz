struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(1i, 23406i, 7545i), vec3<i32>(-62061i, 1i, -11565i), vec3<i32>(61352i, 12415i, 2147483647i), vec3<i32>(0i, 28932i, 2922i), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(-21669i, i32(-2147483648), i32(-2147483648)), vec3<i32>(41589i, 2147483647i, 45915i), vec3<i32>(-13095i, 1i, -13976i), vec3<i32>(i32(-2147483648), 15362i, -1i), vec3<i32>(49537i, -1i, -1i), vec3<i32>(i32(-2147483648), 0i, 21152i), vec3<i32>(-1i, -1i, -25633i), vec3<i32>(11627i, 0i, -20063i), vec3<i32>(1i, 10018i, 2147483647i), vec3<i32>(-21118i, 25807i, 1i), vec3<i32>(i32(-2147483648), 10528i, 31192i), vec3<i32>(-26175i, 2147483647i, 0i), vec3<i32>(-9115i, 2147483647i, 0i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(1i, 24640i, 1i), vec3<i32>(2147483647i, -13663i, -1i), vec3<i32>(2147483647i, -56978i, -6077i), vec3<i32>(1i, -1i, -5881i), vec3<i32>(8151i, -1i, 2147483647i), vec3<i32>(1i, i32(-2147483648), -1i), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(-39311i, 2147483647i, -1i));

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec3<i32>(0i, -29808i, -1i), Struct_1(true, vec3<f32>(-521f, -1138f, 404f), vec3<f32>(408f, -617f, -152f)), Struct_1(true, vec3<f32>(-543f, -1844f, 567f), vec3<f32>(128f, 1000f, 343f)), vec3<f32>(-2023f, 102f, -1401f), vec3<bool>(true, true, true)), Struct_2(vec3<i32>(-33042i, 2147483647i, -12583i), Struct_1(true, vec3<f32>(-781f, 422f, -588f), vec3<f32>(173f, -1836f, 847f)), Struct_1(true, vec3<f32>(-1849f, 727f, -1001f), vec3<f32>(-714f, 1049f, 1663f)), vec3<f32>(1000f, -1299f, 2638f), vec3<bool>(false, false, false)), Struct_2(vec3<i32>(35306i, 17019i, -2107i), Struct_1(false, vec3<f32>(-1178f, 902f, -810f), vec3<f32>(868f, -455f, -990f)), Struct_1(true, vec3<f32>(-713f, 308f, -319f), vec3<f32>(-1423f, -1379f, 232f)), vec3<f32>(1197f, 919f, -707f), vec3<bool>(true, false, false)), Struct_2(vec3<i32>(-33067i, 59290i, 1i), Struct_1(true, vec3<f32>(948f, -882f, -801f), vec3<f32>(-1066f, -1920f, 758f)), Struct_1(false, vec3<f32>(298f, -2029f, 535f), vec3<f32>(1897f, -2230f, -516f)), vec3<f32>(411f, -1615f, -415f), vec3<bool>(true, false, false)), Struct_2(vec3<i32>(36452i, 26328i, 2147483647i), Struct_1(true, vec3<f32>(-391f, -149f, -1807f), vec3<f32>(1000f, 508f, 307f)), Struct_1(false, vec3<f32>(1658f, -1000f, 1262f), vec3<f32>(-1289f, 373f, 1145f)), vec3<f32>(-711f, -1140f, 1965f), vec3<bool>(false, true, true)), Struct_2(vec3<i32>(-30585i, -1i, 0i), Struct_1(true, vec3<f32>(-645f, 1129f, -539f), vec3<f32>(349f, -471f, 1193f)), Struct_1(true, vec3<f32>(-958f, -350f, -1624f), vec3<f32>(1497f, 1150f, -837f)), vec3<f32>(947f, -695f, 859f), vec3<bool>(true, true, true)), Struct_2(vec3<i32>(1i, -18626i, 1i), Struct_1(true, vec3<f32>(-650f, 115f, 1091f), vec3<f32>(-106f, -1031f, 146f)), Struct_1(true, vec3<f32>(242f, -410f, 129f), vec3<f32>(1000f, 710f, -1127f)), vec3<f32>(-696f, 710f, 465f), vec3<bool>(false, true, false)), Struct_2(vec3<i32>(36071i, 2147483647i, -15973i), Struct_1(false, vec3<f32>(-384f, 985f, -182f), vec3<f32>(261f, -1313f, -1000f)), Struct_1(false, vec3<f32>(-1087f, 1024f, 322f), vec3<f32>(-734f, -279f, 1273f)), vec3<f32>(483f, 2267f, -390f), vec3<bool>(true, true, false)), Struct_2(vec3<i32>(2147483647i, -1i, i32(-2147483648)), Struct_1(true, vec3<f32>(268f, -740f, -1242f), vec3<f32>(417f, 138f, 212f)), Struct_1(false, vec3<f32>(1328f, 1050f, -266f), vec3<f32>(176f, -382f, -646f)), vec3<f32>(1000f, 437f, 1523f), vec3<bool>(false, false, false)));

var<private> global2: array<u32, 32>;

var<private> global3: array<i32, 30> = array<i32, 30>(-57785i, 11168i, 0i, -1i, 1i, 37860i, 22541i, -1i, -38292i, 2147483647i, -42353i, i32(-2147483648), 19504i, i32(-2147483648), -1i, 2147483647i, 42346i, 32588i, -30550i, -23421i, 1i, 46612i, 2147483647i, 1i, 4443i, 2147483647i, -31928i, 3657i, -17329i, -1720i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(any(select(vec2<bool>(all(vec4<bool>(true, false, arg_1.a, arg_1.a)), arg_1.b.x != 1515f), !select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, false), vec2<bool>(arg_1.a, arg_1.a)), arg_1.a)), vec3<f32>(arg_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1171f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2830f))) * arg_1.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.c)))));
    var var_1 = 49141u;
    var var_2 = firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(~abs(arg_0.b.x), abs(~4294967295u)), arg_0.b));
    global2 = array<u32, 32>();
    var_0 = arg_1;
    return 145f;
}

fn func_2() -> Struct_5 {
    global2 = array<u32, 32>();
    global0 = array<vec3<i32>, 27>();
    var var_0 = false;
    global3 = array<i32, 30>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(firstLeadingBit(vec3<u32>(88707u, global2[_wgslsmith_index_u32(0u, 32u)], u_input.a)), vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a, 32u)]), vec4<u32>(1u, u_input.a, 104112u, global2[_wgslsmith_index_u32(0u, 32u)])), Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2614f, -364f, 1452f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 278f, 774f) + vec3<f32>(1820f, 766f, 507f)))))) * 1f);
    return Struct_5(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(68379u, 32u)], 27u)]);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(vec3<i32>(firstTrailingBit(-(u_input.b ^ u_input.b)), select(~select(10864i, -8214i, false), -arg_0.a.x, true), select(~(~2147483647i), abs(u_input.b), true)), Struct_1(true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1731f, 1092f, -1390f), vec3<f32>(1000f, 1987f, -1370f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-621f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-687f * -197f), 700f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(arg_1, Struct_1(true, vec3<f32>(-1199f, -283f, 792f), vec3<f32>(-1000f, -1469f, -193f)))))))), Struct_1(select(any(vec3<bool>(false, true, false)), all(vec2<bool>(false, true)) | false, true), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-892f, _wgslsmith_f_op_f32(-309f * 1542f), 1034f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -445f), -2305f)), _wgslsmith_f_op_f32(f32(-1f) * -860f), _wgslsmith_f_op_f32(f32(-1f) * -651f)))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), true), vec3<bool>(all(vec4<bool>(false, false, false, false)), any(vec4<bool>(false, true, false, true)), true)), select(vec3<bool>(true, any(vec2<bool>(false, true)), select(true, true, true)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), any(vec3<bool>(true, false, true))), vec3<bool>(true, true, true)), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_1 = var_0.c.b.x;
    return Struct_1(!(!var_0.c.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1512f, var_0.b.c.x, 292f) - _wgslsmith_f_op_vec3_f32(floor(var_0.c.c))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.b), var_0.c.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_1, 2736f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.c)), all(!vec4<bool>(var_0.c.a, false, var_0.e.x, true))))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_2(-(~(~vec3<i32>(1i, -2147483647i, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 32u)], 32u)], 30u)]))), func_4(func_2(), Struct_3(select(vec3<u32>(0u, 8437u, 12443u), vec3<u32>(1u, 1u, u_input.a), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), ~min(vec2<u32>(global2[_wgslsmith_index_u32(arg_0, 32u)], 4869u), vec2<u32>(0u, arg_0)), ~abs(vec4<u32>(113583u, 0u, 79357u, 0u)))), func_4(Struct_5(countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 1u, arg_0), 27u)])), Struct_3(~vec3<u32>(24066u, global2[_wgslsmith_index_u32(11092u, 32u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0, 32u)], 32u)]) << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(6038u, 0u, global2[_wgslsmith_index_u32(u_input.a, 32u)])) % vec3<u32>(32u)), vec2<u32>(0u, u_input.a >> (global2[_wgslsmith_index_u32(68337u, 32u)] % 32u)), vec4<u32>(28899u, ~arg_0, 3212u, u_input.a | 1u))), vec3<f32>(1f, _wgslsmith_f_op_f32(-145f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-188f + 390f))), _wgslsmith_f_op_f32(-1f)), !vec3<bool>(true, _wgslsmith_f_op_f32(-656f - -941f) >= _wgslsmith_f_op_f32(func_3(Struct_3(vec3<u32>(u_input.a, 0u, 54476u), vec2<u32>(u_input.a, 46412u), vec4<u32>(4294967295u, 22567u, 0u, 15874u)), Struct_1(false, vec3<f32>(-1298f, 1868f, -669f), vec3<f32>(1000f, -539f, 684f)))), true));
    let var_1 = select(!select(select(!vec4<bool>(var_0.b.a, var_0.b.a, true, false), select(vec4<bool>(true, false, var_0.c.a, true), vec4<bool>(true, var_0.e.x, true, var_0.b.a), false), select(vec4<bool>(var_0.c.a, var_0.e.x, var_0.c.a, false), vec4<bool>(var_0.b.a, var_0.e.x, var_0.b.a, true), true)), select(!vec4<bool>(var_0.e.x, var_0.b.a, true, var_0.b.a), vec4<bool>(false, var_0.e.x, var_0.b.a, true), var_0.c.a), vec4<bool>(any(var_0.e), -1i != u_input.b, !var_0.b.a, global3[_wgslsmith_index_u32(arg_0, 30u)] == global3[_wgslsmith_index_u32(arg_0, 30u)])), vec4<bool>(true, true, countOneBits(u_input.a) > _wgslsmith_add_u32(4294967295u, arg_0 ^ 0u), !any(vec4<bool>(true, true, true, true))), false);
    global1 = array<Struct_2, 9>();
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-496f, -567f, var_0.b.b.x, _wgslsmith_div_f32(-1721f, -858f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1466f), _wgslsmith_f_op_f32(var_0.c.c.x - var_0.c.b.x), var_0.c.c.x, -247f)), vec4<f32>(-903f, _wgslsmith_f_op_f32(f32(-1f) * -391f), func_4(func_2(), Struct_3(vec3<u32>(arg_0, 0u, u_input.a), vec2<u32>(0u, u_input.a), vec4<u32>(0u, 4294967295u, arg_0, arg_0))).c.x, var_0.d.x), !vec4<bool>(var_1.x, false, false, var_1.x))));
    let var_3 = -2147483647i <= ~(-global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(13650u, arg_0), 32u)] ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(21841u, u_input.a)), 30u)]);
    return Struct_3(select(select(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0, u_input.a, u_input.a), ~vec3<u32>(21356u, 4294967295u, 8851u)), max(~vec3<u32>(arg_0, u_input.a, 16527u), vec3<u32>(0u, 4294967295u, u_input.a)), !(!var_1.zyz)), vec3<u32>(~_wgslsmith_mult_u32(28661u, 1u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 0u), vec4<u32>(102932u, 0u, u_input.a, 33561u)), 32u)] & global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 32u)], 83796u), select(!(!vec3<bool>(false, var_0.b.a, var_0.b.a)), vec3<bool>(true, arg_0 >= u_input.a, var_2.x <= 330f), vec3<bool>(var_3 && false, !var_1.x, var_0.b.a))), _wgslsmith_mult_vec2_u32(select(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(u_input.a, 23972u)), ~vec2<u32>(1u, u_input.a), !select(vec2<bool>(false, true), vec2<bool>(false, false), var_3)), select(vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 32u)] >> (26980u % 32u), 35610u), vec2<u32>(1u, countOneBits(31331u)), true)), vec4<u32>(global2[_wgslsmith_index_u32(24254u, 32u)], ~_wgslsmith_add_u32(min(21953u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 32u)], 32u)]), global2[_wgslsmith_index_u32(38941u, 32u)]), _wgslsmith_mod_u32(~(global2[_wgslsmith_index_u32(59060u, 32u)] | global2[_wgslsmith_index_u32(u_input.a, 32u)]), ~4294967295u), global2[_wgslsmith_index_u32(4294967295u, 32u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_add_u32(~u_input.a, ~_wgslsmith_div_u32(33422u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 32u)], 32u)])));
    global2 = array<u32, 32>();
    global0 = array<vec3<i32>, 27>();
    let var_1 = u_input.a;
    let var_2 = true;
    let var_3 = vec3<u32>(6478u, abs(var_1), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

