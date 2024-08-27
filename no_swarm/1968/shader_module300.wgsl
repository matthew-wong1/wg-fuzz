struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
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

var<private> global0: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(621f, -112f), vec2<f32>(-1759f, -1399f), vec2<f32>(-371f, 859f), vec2<f32>(847f, 670f), vec2<f32>(-250f, -202f), vec2<f32>(-486f, -496f), vec2<f32>(-483f, -1548f), vec2<f32>(366f, 628f), vec2<f32>(-817f, 396f), vec2<f32>(-1886f, 445f), vec2<f32>(-399f, 633f), vec2<f32>(-758f, -122f), vec2<f32>(1232f, 1530f), vec2<f32>(1129f, -268f), vec2<f32>(214f, 1418f), vec2<f32>(-1189f, 651f), vec2<f32>(-693f, 1123f), vec2<f32>(304f, 2136f), vec2<f32>(210f, -409f), vec2<f32>(-246f, -402f), vec2<f32>(1205f, -284f), vec2<f32>(-458f, 634f), vec2<f32>(390f, -1532f), vec2<f32>(2146f, 290f), vec2<f32>(-1327f, 1158f), vec2<f32>(471f, 974f), vec2<f32>(1607f, 522f), vec2<f32>(-851f, 1172f), vec2<f32>(320f, -1398f), vec2<f32>(652f, 1000f));

var<private> global1: array<f32, 3>;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(2147483647i, vec3<u32>(1u, 65694u, 4294967295u), vec2<u32>(1u, 61711u), vec3<bool>(true, true, true)), Struct_1(0i, vec3<u32>(6271u, 94059u, 2926u), vec2<u32>(62826u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(-52497i, vec3<u32>(4294967295u, 40505u, 4294967295u), vec2<u32>(0u, 100860u), vec3<bool>(false, false, true)), Struct_1(23550i, vec3<u32>(0u, 1u, 18498u), vec2<u32>(74971u, 0u), vec3<bool>(false, false, true)), Struct_1(45877i, vec3<u32>(30144u, 1u, 0u), vec2<u32>(65493u, 1u), vec3<bool>(false, true, false)), Struct_1(0i, vec3<u32>(1u, 4294967295u, 69965u), vec2<u32>(4294967295u, 4294967295u), vec3<bool>(true, true, false)), Struct_1(-24799i, vec3<u32>(73648u, 4294967295u, 66356u), vec2<u32>(0u, 6227u), vec3<bool>(true, true, true)), Struct_1(2147483647i, vec3<u32>(44598u, 4294967295u, 37412u), vec2<u32>(1u, 4294967295u), vec3<bool>(false, true, false)), Struct_1(22028i, vec3<u32>(1u, 13906u, 33685u), vec2<u32>(40394u, 0u), vec3<bool>(true, false, false)), Struct_1(8210i, vec3<u32>(1u, 0u, 18528u), vec2<u32>(70828u, 0u), vec3<bool>(true, false, false)), Struct_1(-43433i, vec3<u32>(0u, 0u, 6753u), vec2<u32>(4294967295u, 1u), vec3<bool>(false, false, true)), Struct_1(1i, vec3<u32>(20456u, 4294967295u, 46120u), vec2<u32>(0u, 23213u), vec3<bool>(true, false, true)), Struct_1(-27531i, vec3<u32>(5500u, 35576u, 0u), vec2<u32>(0u, 0u), vec3<bool>(true, false, false)), Struct_1(-58658i, vec3<u32>(4294967295u, 0u, 1u), vec2<u32>(49469u, 1u), vec3<bool>(false, false, false)), Struct_1(4905i, vec3<u32>(65108u, 0u, 1u), vec2<u32>(40286u, 2027u), vec3<bool>(false, true, false)), Struct_1(-30644i, vec3<u32>(0u, 45429u, 1u), vec2<u32>(0u, 41722u), vec3<bool>(false, true, true)), Struct_1(57442i, vec3<u32>(0u, 4294967295u, 6895u), vec2<u32>(47862u, 17084u), vec3<bool>(true, false, true)), Struct_1(43663i, vec3<u32>(0u, 1u, 4294967295u), vec2<u32>(73566u, 0u), vec3<bool>(true, true, true)), Struct_1(i32(-2147483648), vec3<u32>(4294967295u, 1u, 19202u), vec2<u32>(1u, 35391u), vec3<bool>(false, true, false)), Struct_1(52755i, vec3<u32>(4294967295u, 0u, 40195u), vec2<u32>(74662u, 4294967295u), vec3<bool>(true, false, false)), Struct_1(-41339i, vec3<u32>(1u, 4294967295u, 73078u), vec2<u32>(17805u, 4294967295u), vec3<bool>(false, false, true)), Struct_1(26261i, vec3<u32>(79635u, 31965u, 4820u), vec2<u32>(28567u, 45332u), vec3<bool>(true, false, false)), Struct_1(-31855i, vec3<u32>(13051u, 15629u, 4294967295u), vec2<u32>(4506u, 1u), vec3<bool>(false, false, false)), Struct_1(2147483647i, vec3<u32>(4294967295u, 1u, 10209u), vec2<u32>(401u, 19389u), vec3<bool>(true, true, true)));

var<private> global3: vec3<f32>;

var<private> global4: array<bool, 29> = array<bool, 29>(true, true, false, false, true, true, false, false, true, false, false, true, false, true, false, true, true, false, false, false, true, true, true, false, true, false, true, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(abs(1u), 24u)];
    global0 = array<vec2<f32>, 30>();
    var var_1 = any(var_0.d);
    global0 = array<vec2<f32>, 30>();
    global0 = array<vec2<f32>, 30>();
    return var_0.b.x;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<bool>) -> vec4<u32> {
    var var_0 = global2[_wgslsmith_index_u32(~(u_input.a >> (43194u % 32u)), 24u)];
    var var_1 = global2[_wgslsmith_index_u32(0u, 24u)];
    global4 = array<bool, 29>();
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 1380f, global3.x, arg_1), vec4<f32>(-947f, 614f, arg_1, 1120f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-771f, global3.x, global1[_wgslsmith_index_u32(33219u, 3u)], global3.x)))))));
    var var_3 = Struct_2(Struct_1(var_0.a, firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(var_1.c.x, 88807u), ~0u, u_input.b.x ^ var_0.c.x)), abs(min(select(vec2<u32>(42898u, 21006u), u_input.b.zy, vec2<bool>(true, arg_0)), vec2<u32>(var_0.c.x, 113188u))), vec3<bool>(1128f >= var_2.x, true, ~64644u != _wgslsmith_dot_vec4_u32(vec4<u32>(15508u, 62727u, u_input.a, var_1.b.x), vec4<u32>(var_1.b.x, 4294967295u, var_1.b.x, u_input.b.x)))), select(~vec4<i32>(firstTrailingBit(1i), select(var_1.a, var_0.a, arg_2.x), 1i, ~(-2147483647i)), vec4<i32>(abs(var_0.a) << (~1u % 32u), -(~var_0.a), i32(-1i) * -25182i, abs(~var_0.a)), !vec4<bool>(any(var_1.d.zx), global4[_wgslsmith_index_u32(u_input.a, 29u)], select(arg_2.x, arg_2.x, true), var_1.d.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.x, var_0.c.x, var_0.c.x, var_0.b.x), vec4<u32>(var_0.c.x, 11571u, var_0.c.x, 1u)), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, var_1.c.x, 14383u, u_input.b.x), vec4<u32>(var_0.c.x, 43258u, 1u, var_1.c.x) << (vec4<u32>(1u, 52102u, 4294967295u, var_1.c.x) % vec4<u32>(32u)))), firstTrailingBit(~1u) >> (_wgslsmith_dot_vec3_u32(var_0.b, abs(u_input.b)) % 32u)));
    return abs(reverseBits(vec4<u32>(~var_3.c, u_input.a, 1u, u_input.b.x ^ 10878u) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 86797u, var_1.c.x, 7720u), vec4<u32>(1u, var_0.c.x, 11021u, 4294967295u))));
}

fn func_1(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = vec3<u32>(arg_0.c, arg_0.a.c.x, 0u);
    global4 = array<bool, 29>();
    var var_1 = Struct_1(2147483647i, vec3<u32>(23281u, 1u, _wgslsmith_add_u32(var_0.x, abs(func_2(true)))), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_mult_u32(u_input.b.x, 75869u)), ~(~vec2<u32>(1u, var_0.x))) ^ firstLeadingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 1u), u_input.b.zz)), !vec3<bool>(any(vec4<bool>(true, false, global4[_wgslsmith_index_u32(arg_0.a.b.x, 29u)], global4[_wgslsmith_index_u32(71482u, 29u)])) && global4[_wgslsmith_index_u32(19094u, 29u)], false, false));
    let var_2 = !arg_0.a.d.x;
    var_1 = global2[_wgslsmith_index_u32(func_2(!(any(vec4<bool>(false, true, false, true)) | !(u_input.c <= arg_0.a.a))), 24u)];
    return abs(countOneBits(func_3(all(vec2<bool>(true, global4[_wgslsmith_index_u32(arg_0.a.b.x, 29u)])), _wgslsmith_f_op_f32(-1481f - global3.x), vec4<bool>(var_1.d.x, true, arg_0.a.d.x, true)) >> (vec4<u32>(_wgslsmith_div_u32(46338u, 49677u), u_input.a, _wgslsmith_mult_u32(arg_0.c, 1u), 73260u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, u_input.b.x), u_input.a, u_input.b.x, u_input.b.x), ~func_1(Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], vec4<i32>(7506i, u_input.c, -5357i, 12633i), 11557u))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 75586u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.b.x, 9943u)), abs(vec4<u32>(40422u, 9497u, u_input.a, u_input.b.x)), select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.a), ~vec4<u32>(55712u, u_input.a, 4294967295u, 7931u), 2147483647i > u_input.c))), vec4<u32>(firstTrailingBit(u_input.b.x), u_input.a, select(_wgslsmith_div_u32(u_input.a, u_input.a), 0u, true), _wgslsmith_clamp_u32(~(~u_input.a), u_input.b.x, abs(countOneBits(u_input.b.x)))));
    let var_1 = true;
    var var_2 = select(!(!(!(!vec3<bool>(global4[_wgslsmith_index_u32(1u, 29u)], true, false)))), select(select(select(select(vec3<bool>(var_1, var_1, true), vec3<bool>(true, false, true), vec3<bool>(var_1, var_1, global4[_wgslsmith_index_u32(0u, 29u)])), vec3<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 29u)], global4[_wgslsmith_index_u32(1u, 29u)], var_1), select(vec3<bool>(global4[_wgslsmith_index_u32(0u, 29u)], var_1, var_1), vec3<bool>(false, var_1, false), global4[_wgslsmith_index_u32(21634u, 29u)])), !(!vec3<bool>(global4[_wgslsmith_index_u32(1u, 29u)], global4[_wgslsmith_index_u32(1u, 29u)], false)), select(select(vec3<bool>(false, true, global4[_wgslsmith_index_u32(var_0.x, 29u)]), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 29u)], global4[_wgslsmith_index_u32(1u, 29u)], true), vec3<bool>(var_1, var_1, false)), select(vec3<bool>(true, true, global4[_wgslsmith_index_u32(0u, 29u)]), vec3<bool>(var_1, var_1, true), vec3<bool>(true, false, true)), !vec3<bool>(global4[_wgslsmith_index_u32(16048u, 29u)], global4[_wgslsmith_index_u32(u_input.b.x, 29u)], false))), !(!(!vec3<bool>(var_1, false, var_1))), !select(!vec3<bool>(var_1, false, global4[_wgslsmith_index_u32(var_0.x, 29u)]), !vec3<bool>(true, global4[_wgslsmith_index_u32(var_0.x, 29u)], true), select(vec3<bool>(false, true, var_1), vec3<bool>(true, var_1, var_1), false))), all(vec4<bool>((u_input.a <= u_input.a) != (u_input.a <= u_input.a), var_1 & !global4[_wgslsmith_index_u32(u_input.a, 29u)], any(!vec2<bool>(global4[_wgslsmith_index_u32(20864u, 29u)], true)), all(vec2<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 29u)], false)) && global4[_wgslsmith_index_u32(1u, 29u)])));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -698f), -955f, _wgslsmith_f_op_f32(-873f - global1[_wgslsmith_index_u32(1u, 3u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], -663f, -670f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(291f, 2363f, global3.x))), select(select(!vec3<bool>(true, var_1, var_1), !vec3<bool>(var_2.x, global4[_wgslsmith_index_u32(82369u, 29u)], false), vec3<bool>(false, var_1, var_2.x)), !select(vec3<bool>(var_1, var_2.x, global4[_wgslsmith_index_u32(var_0.x, 29u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 29u)], var_1), var_2.x), vec3<bool>(true, !var_1, true)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -750f), global1[_wgslsmith_index_u32(66141u, 3u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_0.x, 3u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-2057f, 1000f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(631f, 2022f, global3.x, -1096f), vec4<f32>(708f, 673f, global1[_wgslsmith_index_u32(var_0.x, 3u)], global1[_wgslsmith_index_u32(var_0.x, 3u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-548f, 438f, -1712f, global3.x))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 3u)] - -1189f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 3u)]))), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-global3.x), var_2.x)), -788f)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(187f, _wgslsmith_f_op_f32(-var_3.x), var_3.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.xwy))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1580f, -320f), 347f)))));
}

