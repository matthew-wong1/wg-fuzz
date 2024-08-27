struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 590f;

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(30108u, vec3<u32>(52827u, 33265u, 29490u), Struct_2(vec3<f32>(-287f, 1165f, -471f), 1806f, -750f, i32(-2147483648), vec2<bool>(true, true)), vec4<i32>(-1i, 2236i, 0i, 1409i)), Struct_3(21293u, vec3<u32>(25775u, 1u, 22824u), Struct_2(vec3<f32>(1225f, -163f, -330f), -1053f, 703f, -1i, vec2<bool>(false, false)), vec4<i32>(i32(-2147483648), 0i, 2147483647i, 0i)), Struct_3(0u, vec3<u32>(4294967295u, 110021u, 0u), Struct_2(vec3<f32>(410f, -991f, 1724f), 282f, 2245f, 0i, vec2<bool>(true, false)), vec4<i32>(-1i, 2147483647i, -1i, 0i)), Struct_3(54639u, vec3<u32>(61227u, 0u, 0u), Struct_2(vec3<f32>(872f, -341f, -978f), -383f, 1000f, i32(-2147483648), vec2<bool>(true, false)), vec4<i32>(72459i, -1i, -44801i, 0i)), Struct_3(21848u, vec3<u32>(591u, 1u, 21150u), Struct_2(vec3<f32>(410f, 489f, 256f), 249f, 1000f, -6509i, vec2<bool>(true, true)), vec4<i32>(0i, -52490i, -24307i, 2147483647i)), Struct_3(1u, vec3<u32>(0u, 1u, 1u), Struct_2(vec3<f32>(-152f, 440f, -961f), -153f, 397f, -1i, vec2<bool>(false, true)), vec4<i32>(1i, 64370i, 1779i, -27845i)), Struct_3(69156u, vec3<u32>(1u, 1u, 0u), Struct_2(vec3<f32>(-229f, -178f, 842f), 1616f, -497f, 0i, vec2<bool>(false, true)), vec4<i32>(1i, -36881i, i32(-2147483648), 24969i)), Struct_3(4294967295u, vec3<u32>(65129u, 36706u, 3328u), Struct_2(vec3<f32>(324f, 787f, 203f), -527f, 2537f, -46084i, vec2<bool>(true, true)), vec4<i32>(-1i, 0i, 0i, 1i)), Struct_3(7899u, vec3<u32>(1u, 20623u, 1u), Struct_2(vec3<f32>(234f, 1532f, -1183f), 1000f, 343f, -2725i, vec2<bool>(true, false)), vec4<i32>(-1i, -23704i, -41346i, 97217i)), Struct_3(17040u, vec3<u32>(58440u, 0u, 30373u), Struct_2(vec3<f32>(-787f, 1000f, -131f), -1992f, 2562f, -1i, vec2<bool>(true, true)), vec4<i32>(-19410i, 719i, 1i, 1i)), Struct_3(29567u, vec3<u32>(4294967295u, 67279u, 42841u), Struct_2(vec3<f32>(-134f, 416f, 2734f), -307f, 1571f, 32571i, vec2<bool>(false, true)), vec4<i32>(-54515i, 2147483647i, -18614i, 2147483647i)), Struct_3(105257u, vec3<u32>(39670u, 29988u, 0u), Struct_2(vec3<f32>(315f, 1309f, 273f), 1174f, 504f, i32(-2147483648), vec2<bool>(true, true)), vec4<i32>(1i, -18610i, i32(-2147483648), 0i)), Struct_3(4294967295u, vec3<u32>(0u, 0u, 44577u), Struct_2(vec3<f32>(1182f, 540f, -584f), -110f, -742f, -1i, vec2<bool>(true, true)), vec4<i32>(2147483647i, 1i, 2147483647i, 1i)), Struct_3(44975u, vec3<u32>(4294967295u, 85421u, 64279u), Struct_2(vec3<f32>(828f, -267f, -1169f), -210f, -800f, 26353i, vec2<bool>(true, true)), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 32154i)), Struct_3(0u, vec3<u32>(34233u, 8708u, 26039u), Struct_2(vec3<f32>(-1000f, -668f, 159f), 781f, -566f, -6726i, vec2<bool>(false, true)), vec4<i32>(0i, 0i, 0i, -27595i)), Struct_3(4294967295u, vec3<u32>(139360u, 4294967295u, 0u), Struct_2(vec3<f32>(-549f, 470f, 1541f), -1122f, -1978f, 7653i, vec2<bool>(false, true)), vec4<i32>(i32(-2147483648), 36i, 40212i, 1i)), Struct_3(0u, vec3<u32>(0u, 1u, 16864u), Struct_2(vec3<f32>(-315f, 189f, 1185f), -576f, 1402f, 0i, vec2<bool>(true, true)), vec4<i32>(-77668i, 1i, 32898i, -1770i)), Struct_3(0u, vec3<u32>(0u, 34951u, 1u), Struct_2(vec3<f32>(-508f, 944f, 263f), -120f, -535f, 1i, vec2<bool>(false, false)), vec4<i32>(15272i, 22170i, -22365i, 2147483647i)), Struct_3(47405u, vec3<u32>(30544u, 0u, 4294967295u), Struct_2(vec3<f32>(1000f, 362f, -1000f), 333f, -738f, 1019i, vec2<bool>(false, true)), vec4<i32>(-4176i, -24617i, -13289i, -26936i)));

var<private> global2: array<u32, 19> = array<u32, 19>(1u, 0u, 0u, 1u, 0u, 0u, 20854u, 1u, 17029u, 0u, 1u, 1u, 34895u, 72370u, 26081u, 1u, 46350u, 1u, 80681u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = vec4<i32>(firstTrailingBit(u_input.a.x), -1i, 2147483647i, 0i);
    global1 = array<Struct_3, 19>();
    global1 = array<Struct_3, 19>();
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1220f, -214f, _wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 394f, 1420f), vec3<f32>(740f, arg_0, 1510f), vec3<bool>(false, true, true)))), any(vec4<bool>(true, true, true, true)))))));
    var_0 = _wgslsmith_add_vec4_i32(select(vec4<i32>(firstLeadingBit(1i), 1i, firstLeadingBit(u_input.a.x), ~(-10544i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-12018i, var_0.x, var_0.x, 46245i), vec4<i32>(-30214i, var_0.x, var_0.x, 1i)), 64991i, u_input.d, _wgslsmith_add_i32(-1i, var_0.x)), true), -(vec4<i32>(13405i, u_input.d, u_input.a.x, 34460i) ^ countOneBits(vec4<i32>(-1839i, 2147483647i, -1i, 2147483647i)))) << (abs(_wgslsmith_mult_vec4_u32(min(~u_input.e, firstTrailingBit(vec4<u32>(46343u, 100621u, 62294u, global2[_wgslsmith_index_u32(1u, 19u)]))), vec4<u32>(~u_input.c, ~global2[_wgslsmith_index_u32(53194u, 19u)], global2[_wgslsmith_index_u32(~u_input.b.x, 19u)], _wgslsmith_div_u32(u_input.e.x, 4294967295u)))) % vec4<u32>(32u));
    return i32(-1i) * -47552i;
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = -1i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1076f, -502f, -401f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -1745f, 258f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(359f, -170f, 311f))))));
    var var_2 = _wgslsmith_f_op_f32(-709f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global1 = array<Struct_3, 19>();
    let var_3 = ~_wgslsmith_add_vec3_u32(arg_0.yzx, ~(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, u_input.e.x, 1u), arg_0.zyx)));
    return func_3(437f);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2) -> u32 {
    global1 = array<Struct_3, 19>();
    let var_0 = 0u;
    global2 = array<u32, 19>();
    let var_1 = arg_1;
    let var_2 = !(!vec2<bool>(func_2(u_input.e) < abs(arg_2.d), select(arg_2.e.x, !arg_2.e.x, all(vec2<bool>(false, true)))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(any(vec2<bool>(true, true)), any(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), false)), false);
    let var_1 = max(min(-u_input.a, (_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -64706i, u_input.a.x), vec3<i32>(u_input.d, u_input.a.x, u_input.a.x)) >> (firstTrailingBit(u_input.b) % vec3<u32>(32u))) >> (vec3<u32>(func_1(vec3<bool>(false, true, var_0.x), true, Struct_2(vec3<f32>(-297f, -863f, -257f), 1025f, 333f, u_input.a.x, vec2<bool>(true, false))), abs(global2[_wgslsmith_index_u32(1u, 19u)]), 33476u) % vec3<u32>(32u))), countOneBits(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.a.x) | u_input.a, vec3<i32>(u_input.d, 1i, u_input.a.x)))));
    var var_2 = 55438u;
    global2 = array<u32, 19>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1025f)), -2171f)) * _wgslsmith_f_op_f32(-409f + -198f));
    var var_3 = Struct_3(u_input.e.x, u_input.b, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1125f, 627f, 2817f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(876f, -440f)))), _wgslsmith_f_op_f32(f32(-1f) * -1041f), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(39218i, -20654i, var_1.x)) | vec3<i32>(var_1.x, 1i, 0i), u_input.a), var_0.yy), min(abs(vec4<i32>(var_1.x, 2147483647i, -3457i, -36632i) >> (vec4<u32>(global2[_wgslsmith_index_u32(20616u, 19u)], global2[_wgslsmith_index_u32(2974u, 19u)], global2[_wgslsmith_index_u32(119561u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)]) % vec4<u32>(32u))), vec4<i32>(-2147483647i, ~67559i, var_1.x | var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(25475i, -1i, var_1.x, 30111i), vec4<i32>(var_1.x, 43665i, -16284i, u_input.d)))) >> ((u_input.e & u_input.e) % vec4<u32>(32u)));
    var var_4 = -153f;
    let var_5 = _wgslsmith_f_op_vec3_f32(min(var_3.c.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.b + _wgslsmith_f_op_f32(abs(-1403f)))), 749f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.c.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, select(countOneBits(func_3(_wgslsmith_f_op_f32(-var_5.x))), -2147483647i, true), max(countOneBits(~firstLeadingBit(-24545i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, var_1.x, u_input.d), vec4<i32>(var_1.x, -2147483647i, -4943i, u_input.a.x)), var_1.x)), firstLeadingBit(~vec3<u32>(1u, var_3.a & u_input.b.x, func_1(vec3<bool>(false, false, true), true, var_3.c))), u_input.a.x);
}

