struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(true, true, true, false, true, false, false, true, true, true, true, true, true, false, false, false, true, false, true);

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), i32(-2147483648));

var<private> global2: vec4<u32>;

var<private> global3: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-837f, -1897f, -1426f, 1490f), vec4<f32>(753f, -398f, -974f, -766f), vec4<f32>(-1424f, 645f, -176f, 592f), vec4<f32>(603f, -223f, 237f, -1335f), vec4<f32>(434f, -428f, -1000f, -715f), vec4<f32>(1286f, 352f, 1399f, 128f), vec4<f32>(-660f, 733f, 123f, 299f), vec4<f32>(1365f, 259f, 967f, 817f), vec4<f32>(-530f, 500f, -2226f, 1545f), vec4<f32>(-479f, -1591f, -2422f, 854f), vec4<f32>(421f, 276f, 152f, 460f), vec4<f32>(541f, 1041f, 840f, 2284f), vec4<f32>(679f, 880f, 606f, -2347f), vec4<f32>(634f, -894f, 589f, 888f), vec4<f32>(-638f, -516f, 667f, 1225f), vec4<f32>(-713f, -838f, 1000f, -183f), vec4<f32>(-179f, -1000f, -294f, 188f), vec4<f32>(851f, 309f, -856f, 1312f), vec4<f32>(1042f, 413f, -350f, -426f), vec4<f32>(852f, 898f, -1535f, -1280f), vec4<f32>(1000f, 900f, -1000f, -460f), vec4<f32>(-756f, -849f, -238f, 685f), vec4<f32>(-375f, 138f, 732f, -1381f), vec4<f32>(1306f, -1000f, 1768f, -1906f), vec4<f32>(2201f, 235f, 970f, 392f), vec4<f32>(-1800f, 1000f, 441f, -1000f), vec4<f32>(1552f, -790f, -607f, 643f), vec4<f32>(-1440f, -990f, -733f, 1315f), vec4<f32>(-839f, -337f, 758f, 142f), vec4<f32>(-2421f, -342f, 102f, 1220f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = vec2<bool>(false, !any(vec3<bool>(false, 5540i >= arg_0.c.d.x, true)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(646f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.c.a.x)) * 1067f)) + _wgslsmith_f_op_f32(abs(-1000f))), 1i, Struct_2(arg_0.c.a, firstTrailingBit(vec3<u32>(~u_input.a, 1u, arg_0.c.b.x)), !all(!vec4<bool>(var_0.x, true, var_0.x, false)), firstTrailingBit(firstTrailingBit(abs(vec4<i32>(u_input.c, arg_0.c.d.x, -1i, -50127i))))), 1169f);
    return _wgslsmith_add_i32(var_1.b << (_wgslsmith_mult_u32(arg_0.c.b.x >> (5761u % 32u), _wgslsmith_div_u32(global2.x, 39692u)) % 32u), reverseBits(global1.x)) | ~abs(var_1.c.d.x << (global2.x % 32u));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: bool) -> vec2<i32> {
    global3 = array<vec4<f32>, 30>();
    let var_0 = (arg_1.x || any(select(!vec2<bool>(arg_2, global0[_wgslsmith_index_u32(u_input.a, 19u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(11318u, 19u)]), !arg_2))) && all(vec4<bool>(arg_1.x, true, (i32(-1i) * -2147483647i) < abs(u_input.b), !(u_input.b >= global1.x)));
    let var_1 = _wgslsmith_add_i32(-8619i, global1.x);
    let var_2 = global1.x;
    global3 = array<vec4<f32>, 30>();
    return vec2<i32>(-(~u_input.b & func_3(Struct_3(1254f, -19034i, Struct_2(vec2<f32>(-1000f, 477f), global2.xww, arg_1.x, vec4<i32>(1i, 3317i, global1.x, var_1)), -171f))), ~(~(u_input.c >> (38445u % 32u))) | (0i & _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 42227i, u_input.b), vec3<i32>(1i, global1.x, 1i))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_mult_vec2_i32(~(vec2<i32>(-1i) * -func_2(u_input.a, vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 19u)], true, false), true)), -(~vec2<i32>(-global1.x, global1.x)));
    let var_1 = global2.zxz;
    let var_2 = Struct_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(505f, -416f)), _wgslsmith_f_op_f32(2032f + -335f))), global2.ywy, !all(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(arg_0.x, 19u)], global0[_wgslsmith_index_u32(arg_0.x, 19u)])), reverseBits(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 20914i, global1.x, -1i), vec4<i32>(global1.x, -9156i, var_0.x, -1i)))), reverseBits(arg_0.x) >> (_wgslsmith_mult_u32(abs(u_input.a), ~global2.x) % 32u));
    global0 = array<bool, 19>();
    let var_3 = global0[_wgslsmith_index_u32(u_input.a, 19u)];
    return firstLeadingBit(_wgslsmith_sub_u32(arg_0.x, _wgslsmith_div_u32(~4294967295u | arg_0.x, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_1.x, 4294967295u, 1u)), countOneBits(vec3<u32>(0u, 0u, 11696u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 30>();
    global0 = array<bool, 19>();
    global3 = array<vec4<f32>, 30>();
    global2 = ~vec4<u32>(((u_input.a >> (4294967295u % 32u)) & firstTrailingBit(global2.x)) ^ (0u >> (global2.x % 32u)), func_1(~global2.yx), 0u, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(1u | select(reverseBits(12693u), ~_wgslsmith_mod_u32(global2.x, 1u), global0[_wgslsmith_index_u32(u_input.a & 1u, 19u)] && select(false, global0[_wgslsmith_index_u32(22463u, 19u)], global0[_wgslsmith_index_u32(36148u, 19u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-678f, -630f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1584f, 270f) - vec2<f32>(1454f, -1799f)))) + vec2<f32>(_wgslsmith_div_f32(-414f, _wgslsmith_f_op_f32(-497f - -1025f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-662f * 625f) - _wgslsmith_f_op_f32(ceil(-1743f))))), vec4<i32>(-98856i, select(~(-39174i), _wgslsmith_sub_i32(u_input.b, global1.x), !global0[_wgslsmith_index_u32(u_input.a, 19u)]) ^ _wgslsmith_div_i32(15461i, abs(u_input.b)), _wgslsmith_add_i32(global1.x ^ 18235i, _wgslsmith_clamp_i32(global1.x, min(29768i, -1i), -1i)), _wgslsmith_clamp_i32((i32(-1i) * -1890i) >> (u_input.a % 32u), u_input.c, _wgslsmith_add_i32(-2147483647i, 1i))));
}

