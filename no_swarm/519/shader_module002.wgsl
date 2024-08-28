struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
    d: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(80361u, 41053u, 1u, 0u, 1u, 0u, 8488u, 0u, 40512u, 30209u, 57618u, 4294967295u, 0u, 4294967295u, 1u, 1074u);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: i32 = 23826i;

var<private> global3: array<i32, 31> = array<i32, 31>(i32(-2147483648), 45537i, i32(-2147483648), 5632i, -12362i, i32(-2147483648), -12475i, -47421i, 12941i, -1i, 5646i, 321i, 28734i, 32886i, 23522i, 10722i, 2147483647i, 19397i, i32(-2147483648), -7974i, -24406i, -34893i, 15484i, 21525i, -1i, -4549i, -29829i, -19089i, 28171i, 1i, 24737i);

var<private> global4: vec4<i32> = vec4<i32>(31708i, i32(-2147483648), 2147483647i, 0i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(abs(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.d, 1763i, u_input.d), vec4<i32>(-1i, 1i, 0i, global4.x))), _wgslsmith_div_vec4_i32(max(min(vec4<i32>(-1i, u_input.a, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 31u)], 0i), vec4<i32>(global3[_wgslsmith_index_u32(12785u, 31u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42299u, 16u)], 31u)], global4.x, global4.x)), reverseBits(vec4<i32>(-9013i, 18358i, 2147483647i, u_input.b.x))), vec4<i32>(-29713i, ~global3[_wgslsmith_index_u32(31917u, 31u)], 1i >> (0u % 32u), u_input.d))), -vec4<i32>(u_input.b.x, ~_wgslsmith_clamp_i32(2147483647i, global4.x, 39587i), max(_wgslsmith_dot_vec3_i32(vec3<i32>(11292i, 26280i, global4.x), u_input.b), global4.x), global3[_wgslsmith_index_u32(u_input.c.x, 31u)]));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(285f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1f)))));
    let var_2 = Struct_2(1f, 19565u, Struct_1(~_wgslsmith_mod_u32(~u_input.c.x, u_input.c.x)), Struct_1(global0[_wgslsmith_index_u32(abs(~(u_input.c.x | u_input.c.x)), 16u)]));
    global0 = array<u32, 16>();
    var var_3 = var_2;
    return 0u;
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = !vec2<bool>(true & (func_3() == _wgslsmith_clamp_u32(arg_0.a, 8344u, global0[_wgslsmith_index_u32(19376u, 16u)])), (true || all(vec3<bool>(true, false, false))) | all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))));
    var var_1 = 1325f;
    global4 = vec4<i32>(1i, -16206i, -16529i, _wgslsmith_dot_vec3_i32(~select(~global4.yzy, ~global4.zyy, var_0.x), global4.zyy));
    return !select(select(select(vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(var_0.x, false, var_0.x)), select(!vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false)), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), true)), vec3<bool>(!var_0.x, true, var_0.x)), !select(vec3<bool>(false, false, var_0.x), !vec3<bool>(var_0.x, false, true), !vec3<bool>(false, false, var_0.x)), !vec3<bool>(!var_0.x, any(vec4<bool>(var_0.x, false, true, var_0.x)), var_0.x));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(381f)) - arg_0.x)) * -776f);
    var var_1 = select(!func_2(Struct_1(select(u_input.c.x, 4294967295u, false))), vec3<bool>(true, -(~u_input.b.x) != -u_input.d, false), !func_2(Struct_1(u_input.c.x)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1277f)))), -1000f);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
    var_0 = _wgslsmith_f_op_f32(var_2.x * var_2.x);
    return Struct_1(1u);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(min(4438u, arg_1), ~19288u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, reverseBits(21614u), ~0u, ~4294967295u), vec4<u32>(~4294967295u, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), _wgslsmith_mod_u32(1u, arg_1), min(10161u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a, 16u)], 16u)]))), ~4294967295u), _wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, u_input.c));
    var var_1 = Struct_5(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(43574u, arg_0.a, u_input.c.x), vec3<u32>(u_input.c.x, arg_1, 4294967295u), ~vec3<u32>(7948u, 86024u, var_0.x)) << (u_input.c.wyz % vec3<u32>(32u)), vec3<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(var_0.x, 16u)]), vec2<u32>(38630u, u_input.c.x) ^ vec2<u32>(arg_1, arg_0.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, arg_1, arg_0.a, global0[_wgslsmith_index_u32(39990u, 16u)]), vec4<u32>(arg_1, 1u, 4294967295u, 30972u)), select(u_input.c, u_input.c, vec4<bool>(false, false, true, true))))), 737f);
    var var_2 = Struct_5(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b)))) * var_1.b));
    let var_3 = ~(~abs(firstLeadingBit(43724u)));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(floor(-570f)), var_1.a, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 1985f, var_1.b, 1305f) * vec4<f32>(755f, var_2.b, 1195f, var_1.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, 366f, 1000f, var_1.b))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, 418f, 776f, var_2.b), vec4<f32>(var_1.b, 427f, -502f, -633f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2437f, 967f, var_2.b, -1715f)))))), func_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-661f, -1491f, var_2.b, var_1.b) + vec4<f32>(var_2.b, var_2.b, -506f, var_2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.b, var_1.b, var_2.b)))))));
    return true && any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, false, false))), vec4<bool>(true, true, any(vec4<bool>(false, false, false, false)), true), false));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec4<i32>(-u_input.b.x & ~max(-global3[_wgslsmith_index_u32(u_input.c.x, 31u)], 0i), countOneBits(firstTrailingBit(countOneBits(u_input.d) << (global0[_wgslsmith_index_u32(1u, 16u)] % 32u))), -(~u_input.a), global4.x);
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-398f, _wgslsmith_div_f32(1060f, _wgslsmith_f_op_f32(f32(-1f) * -796f)))));
    var var_1 = Struct_2(var_0.a, ~(~global0[_wgslsmith_index_u32(firstLeadingBit(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], u_input.c.x, false)), 16u)]), Struct_1(u_input.c.x), Struct_1(~40022u));
    var var_2 = true;
    var var_3 = func_4(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a, 281f, var_0.a, -163f), vec4<f32>(var_1.a, -355f, var_1.a, -1473f))))), 0u, -2147483647i) & (!any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)) || true);
    let var_4 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a, var_0.a, -185f, -170f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a, 1773f, var_1.a, 456f), vec4<f32>(582f, -238f, var_1.a, 696f), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1200f, var_0.a, -1365f, -924f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, 556f, -1000f, 1529f), vec4<f32>(1241f, var_1.a, var_1.a, 724f), false)) + _wgslsmith_div_vec4_f32(vec4<f32>(225f, -428f, var_1.a, 2039f), vec4<f32>(1000f, 479f, var_0.a, var_1.a))))));
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 828f, var_0.a, var_1.a), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, 1219f, -1000f, -1811f), vec4<f32>(-752f, -950f, 1200f, -1235f)))), vec4<f32>(-237f, _wgslsmith_f_op_f32(-354f - 597f), 1088f, var_1.a))));
    var var_6 = Struct_5(4294967295u, var_0.a);
    global2 = global3[_wgslsmith_index_u32(u_input.c.x, 31u)] ^ 0i;
    let x = u_input.a;
    s_output = StorageBuffer((u_input.c.wyw << (u_input.c.yyz % vec3<u32>(32u))) & ~u_input.c.wwx, firstLeadingBit(select(u_input.c.xwz, u_input.c.wwy, true)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(global4.x), 1i, abs(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 33394i, -25249i, 0i), vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 31u)], u_input.d, global4.x, global4.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 2147483647i, global4.x, 2147483647i), firstTrailingBit(vec4<i32>(global3[_wgslsmith_index_u32(2100u, 31u)], global4.x, -38138i, 0i)), -vec4<i32>(2147483647i, global4.x, global4.x, global3[_wgslsmith_index_u32(0u, 31u)]))), vec4<i32>(firstTrailingBit(countOneBits(global3[_wgslsmith_index_u32(var_4.a, 31u)])), -global4.x, ~(-2147483647i ^ global4.x), 19795i)), 1i, 1000f);
}

