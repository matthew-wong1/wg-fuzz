struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 24>;

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(true, Struct_1(vec3<u32>(0u, 30341u, 39347u), vec3<f32>(1917f, 829f, -433f), true, vec2<i32>(19681i, 0i)), Struct_1(vec3<u32>(1u, 3366u, 0u), vec3<f32>(1182f, -855f, 2031f), true, vec2<i32>(i32(-2147483648), 0i)), vec4<i32>(-1i, 0i, 21798i, 30770i)), Struct_2(false, Struct_1(vec3<u32>(58961u, 0u, 42090u), vec3<f32>(1000f, 276f, 2556f), true, vec2<i32>(35036i, 0i)), Struct_1(vec3<u32>(57473u, 25611u, 20263u), vec3<f32>(-2366f, 723f, -1258f), false, vec2<i32>(-1i, 0i)), vec4<i32>(1553i, 2147483647i, 2147483647i, 23719i)), Struct_2(false, Struct_1(vec3<u32>(94641u, 11130u, 4294967295u), vec3<f32>(1000f, -1401f, 2431f), false, vec2<i32>(2147483647i, -11656i)), Struct_1(vec3<u32>(0u, 4294967295u, 17142u), vec3<f32>(-1976f, 113f, -965f), true, vec2<i32>(0i, 58960i)), vec4<i32>(2147483647i, -9059i, -34849i, 1i)), Struct_2(true, Struct_1(vec3<u32>(20071u, 2898u, 0u), vec3<f32>(110f, -1943f, 115f), true, vec2<i32>(-25762i, 1i)), Struct_1(vec3<u32>(18836u, 0u, 32480u), vec3<f32>(1434f, 2290f, 720f), true, vec2<i32>(9664i, -11556i)), vec4<i32>(-1i, 1i, 1i, -48508i)), Struct_2(true, Struct_1(vec3<u32>(36613u, 4294967295u, 0u), vec3<f32>(-1000f, 2162f, -1000f), false, vec2<i32>(-5460i, -23417i)), Struct_1(vec3<u32>(56322u, 9989u, 76586u), vec3<f32>(-1260f, -377f, 957f), true, vec2<i32>(53165i, 1i)), vec4<i32>(8961i, -34833i, 0i, 85106i)), Struct_2(false, Struct_1(vec3<u32>(4294967295u, 36447u, 0u), vec3<f32>(419f, 1700f, -151f), false, vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec3<u32>(4294967295u, 56300u, 1u), vec3<f32>(-795f, -219f, -2859f), true, vec2<i32>(-1i, 1i)), vec4<i32>(-17334i, 1i, -14687i, 1i)), Struct_2(true, Struct_1(vec3<u32>(39803u, 1563u, 4294967295u), vec3<f32>(-654f, -893f, -412f), false, vec2<i32>(-34544i, i32(-2147483648))), Struct_1(vec3<u32>(3818u, 1u, 1u), vec3<f32>(906f, 2125f, 560f), false, vec2<i32>(3997i, i32(-2147483648))), vec4<i32>(-9793i, 18831i, 0i, -1i)), Struct_2(false, Struct_1(vec3<u32>(32658u, 73564u, 47547u), vec3<f32>(-1118f, 789f, 453f), false, vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec3<u32>(0u, 0u, 75854u), vec3<f32>(-1301f, 1392f, -825f), true, vec2<i32>(1i, 52142i)), vec4<i32>(1i, i32(-2147483648), 1i, -1i)), Struct_2(true, Struct_1(vec3<u32>(112597u, 1u, 0u), vec3<f32>(849f, 1000f, 297f), false, vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec3<u32>(49334u, 29512u, 1u), vec3<f32>(358f, -406f, 1085f), true, vec2<i32>(2147483647i, 81252i)), vec4<i32>(1i, 1i, 39101i, 34082i)), Struct_2(true, Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<f32>(-1000f, 576f, 724f), true, vec2<i32>(-1i, -11099i)), Struct_1(vec3<u32>(0u, 43024u, 4294967295u), vec3<f32>(1445f, -519f, 464f), false, vec2<i32>(i32(-2147483648), 1i)), vec4<i32>(2147483647i, i32(-2147483648), 50484i, i32(-2147483648))), Struct_2(true, Struct_1(vec3<u32>(0u, 0u, 24690u), vec3<f32>(-722f, -125f, 2356f), false, vec2<i32>(18444i, i32(-2147483648))), Struct_1(vec3<u32>(67361u, 94677u, 38916u), vec3<f32>(-257f, 412f, -889f), true, vec2<i32>(-10589i, 0i)), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 1i)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1.b.yy))), arg_1.b.yz)));
    let var_1 = min(~_wgslsmith_div_i32(-75900i, u_input.d.x), -u_input.d.x);
    global0 = 15802i;
    return ~(max(~arg_1.a >> (~vec3<u32>(4294967295u, arg_2, arg_2) % vec3<u32>(32u)), arg_1.a) << ((arg_1.a >> (~arg_1.a % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global2 = array<Struct_2, 11>();
    let var_0 = -firstLeadingBit(u_input.d.x);
    var var_1 = global2[_wgslsmith_index_u32(0u, 11u)];
    global1 = array<u32, 24>();
    global1 = array<u32, 24>();
    return Struct_1(~var_1.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.b))), true, u_input.d.zw);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x) - _wgslsmith_f_op_f32(sign(arg_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.x))) + _wgslsmith_div_f32(_wgslsmith_div_f32(-547f, arg_0.b.x), arg_0.b.x)), _wgslsmith_f_op_f32(select(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(952f, arg_0.b.x))).b.x, -536f, arg_0.c)), -820f));
    global1 = array<u32, 24>();
    var var_1 = ~vec4<u32>(_wgslsmith_mult_u32(1u, ~global1[_wgslsmith_index_u32(4294967295u, 24u)]), u_input.a, ~1u, arg_0.a.x);
    let var_2 = arg_1.x;
    return !arg_1.wx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -596f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1139f, -1000f), vec2<f32>(-1543f, -297f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(776f, -1013f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1635f, 227f) + vec2<f32>(859f, -753f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(411f, -1289f))))));
    global0 = u_input.c;
    let var_2 = select(select(!vec2<bool>(any(vec4<bool>(true, false, true, false)), true), !vec2<bool>(var_1.x <= var_1.x, true), true), vec2<bool>(true, true), select(!vec2<bool>(true, any(vec2<bool>(true, false))), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_0 = var_1.x;
    let var_3 = !(!vec3<bool>(true, any(vec2<bool>(false, var_2.x)), any(var_2)));
    var_0 = -262f;
    global2 = array<Struct_2, 11>();
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(select(857f, var_1.x, ~_wgslsmith_mod_i32(u_input.d.x, u_input.c) > -48355i)), -1363f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1045f + var_1.x), _wgslsmith_f_op_f32(var_1.x - -2415f))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(60109u, global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(52894u, 24u)]), vec3<u32>(609u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57147u, 24u)], 24u)], 102625u)) | ~vec3<u32>(4294967295u, u_input.b, 934u), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], 59874u, global1[_wgslsmith_index_u32(0u, 24u)])), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.b, 1u), vec3<u32>(u_input.a, u_input.a, 5129u)), func_1(vec4<bool>(var_2.x, var_3.x, true, var_3.x), Struct_1(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(42065u, 24u)], u_input.a), vec3<f32>(var_4.x, var_1.x, var_1.x), true, vec2<i32>(u_input.c, u_input.d.x)), 29413u, vec3<u32>(1u, u_input.a, 1u)))), (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b, 21758u), vec3<u32>(global1[_wgslsmith_index_u32(85362u, 24u)], 54498u, 4294967295u), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.b, 24u)], 0u)) & vec3<u32>(1u, u_input.a, 1u)) & (~vec3<u32>(global1[_wgslsmith_index_u32(19385u, 24u)], u_input.b, 4294967295u) >> (select(vec3<u32>(global1[_wgslsmith_index_u32(35935u, 24u)], 40642u, 0u), vec3<u32>(1u, 9700u, u_input.a), var_2.x) % vec3<u32>(32u)))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(-u_input.d, vec4<i32>(u_input.c, -43355i, -2147483647i, u_input.d.x)), u_input.d), ~abs(u_input.d)), ~(-u_input.c), ~select(~_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.d.x), u_input.d.xx), _wgslsmith_clamp_vec2_i32(-u_input.d.wy, firstLeadingBit(u_input.d.xx), u_input.d.zx), func_3(func_2(var_4.yx), vec4<bool>(true, var_2.x, false, true), 0i)), -1234f);
}

